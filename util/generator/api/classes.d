module api.classes;

import godotutil.string;
import api.methods, api.enums, api.util;

import asdf;

import std.range;
import std.algorithm.searching, std.algorithm.iteration, std.algorithm.sorting;
import std.path;
import std.conv : text;
import std.string;

struct ClassList
{
	GodotClass[] classes;
	GodotClass[Type] dictionary;
}

class GodotClass
{
	Type name;
	Type base_class;
	string api_type;
	bool singleton;
	bool instanciable;
	bool is_reference;
	int[string] constants; // TODO: can constants be things other than ints?
	GodotMethod[] methods;
	GodotProperty[] properties;
	GodotEnum[] enums;
	
	void addUsedClass(in Type c)
	{
		if(c.isPrimitive || c.isCoreType || c.godot == "Object") return;
		if(!used_classes.canFind(c)) used_classes ~= c;
	}

	void finalizeDeserialization(Asdf data)
	{
		assert(name.objectClass is null);
		name.objectClass = this;
		
		if(base_class && base_class.godot != "Object" && name.godot != "Object") used_classes ~= base_class;
		
		foreach(m; methods)
		{
			m.parent = this;
		}
		foreach(ref e; enums)
		{
			e.parent = this;
			foreach(n; e.values.keys) constantsInEnums ~= n;
		}
	}
	
	@serializationIgnore:
	ClassList* parent;
	
	const(Type)[] used_classes;
	GodotClass base_class_ptr = null; // needs to be set after all classes loaded
	GodotClass[] descendant_ptrs; /// direct descendent classes
	
	Type[] missingEnums; /// enums that were left unregistered in Godot
	
	string ddocBrief;
	string ddoc;
	string[string] ddocConstants;
	
	string[] constantsInEnums; // names of constants that are enum members
	
	string bindingStruct() const
	{
		string ret = "\tpackage(godot) __gshared bool _classBindingInitialized = false;\n";
		ret ~= "\tpackage(godot) static struct _classBinding\n\t{\n";
		ret ~= "\t\t__gshared:\n";
		if(singleton)
		{
			ret ~= "\t\tgodot_object _singleton;\n";
			ret ~= "\t\timmutable char* _singletonName = \""~name.godot.chompPrefix("_")~"\";\n";
		}
		foreach(const m; methods)
		{
			ret ~= m.binding;
		}
		ret ~= "\t}\n";
		return ret;
	}
	
	string source()
	{
		string ret;

		// generate the set of referenced classes
		foreach(m; methods)
		{
			import std.algorithm.searching;
			if(m.return_type.isEnum)
			{
				auto c = m.return_type.enumParent;
				if(c && c !is name) addUsedClass(c);
			}
			else if(m.return_type !is name)
			{
				addUsedClass(m.return_type);
			}
			foreach(const a; m.arguments)
			{
				if(a.type.isEnum)
				{
					auto c = a.type.enumParent;
					if(c && c !is name) addUsedClass(c);
				}
				else if(a.type !is name)
				{
					addUsedClass(a.type);
				}
			}
		}
		foreach(p; properties)
		{
			Type pType;
			GodotMethod getterMethod;
			foreach(GodotClass c; BaseRange(cast()this))
			{
				if(!getterMethod)
				{
					auto g = c.methods.find!(m => m.name == p.getter);
					if(!g.empty) getterMethod = g.front;
				}
				
				if(getterMethod) break;
				if(c.base_class_ptr is null) break;
			}
			if(getterMethod) pType = getterMethod.return_type;
			else pType = p.type;

			if(pType.godot.canFind(',')) continue; /// FIXME: handle with common base. Also see godot#35467
			if(pType.isEnum)
			{
				auto c = pType.enumParent;
				if(c && c !is name) addUsedClass(c);
			}
			else if(pType !is name)
			{
				addUsedClass(pType);
			}
		}
		assert(!used_classes.canFind(name));
		assert(!used_classes.canFind!(c => c.godot == "Object"));

		foreach(const u; used_classes)
		{
			ret ~= "import godot.";
			ret ~= u.moduleName;
			ret ~= ";\n";
		}

		string className = name.d;
		if(singleton) className ~= "Singleton";
		ret ~= "/**\n"~ddoc~"\n*/\n";
		ret ~= "@GodotBaseClass struct "~className;
		ret ~= "\n{\n";
		ret ~= "\tenum string _GODOT_internal_name = \""~name.godot~"\";\n";
		ret ~= "public:\n";
		ret ~= "@nogc nothrow:\n";
		
		// Pointer to Godot object, fake inheritance through alias this
		if(name.godot != "Object")
		{
			ret ~= "\tunion { godot_object _godot_object; "~base_class.d;
			if(base_class_ptr.singleton) ret ~= "Singleton";
			ret ~= " _GODOT_base; }\n\talias _GODOT_base this;\n";
			ret ~= "\talias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);\n";
		}
		else
		{
			ret ~= "\tgodot_object _godot_object;\n";
			ret ~= "\talias BaseClasses = AliasSeq!();\n";
		}
		
		ret ~= bindingStruct;
		
		// equality
		ret ~= "\tbool opEquals(in "~className~" other) const ";
		ret ~= "{ return _godot_object.ptr is other._godot_object.ptr; }\n";
		// null assignment to simulate D class references
		ret ~= "\t"~className~" opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }\n";
		// equality with null; unfortunately `_godot_object is null` doesn't work with structs
		ret ~= "\tbool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }\n";
		
		ret ~= "\tmixin baseCasts;\n";
		
		// Godot constructor.
		ret ~= "\tstatic "~className~" _new()\n\t{\n";
		ret ~= "\t\tstatic godot_class_constructor constructor;\n";
		ret ~= "\t\tif(constructor is null) constructor = _godot_api.godot_get_class_constructor(\""~name.godot~"\");\n";
		ret ~= "\t\tif(constructor is null) return typeof(this).init;\n";
		ret ~= "\t\treturn cast("~className~")(constructor());\n";
		ret ~= "\t}\n";

		ret ~= "\t@disable new(size_t s);\n";
		
		foreach(const ref e; enums)
		{
			ret ~= e.source;
		}
		
		foreach(const ref e; missingEnums)
		{
			import std.stdio;
			writeln("Warning: The enum "~e.d~" is missing from Godot's script API; using a non-typesafe int instead.");
			ret ~= "\t/// Warning: The enum "~e.d~" is missing from Godot's script API; using a non-typesafe int instead.\n";
			ret ~= "\tdeprecated(\"The enum "~e.d~" is missing from Godot's script API; using a non-typesafe int instead.\")\n";
			string shortName = e.d[e.d.countUntil(".")+1..$];
			ret ~= "\talias " ~ shortName ~ " = int;\n";
		}
		
		if(constants.length)
		{
			ret ~= "\t/// \n";
			ret ~= "\tenum Constants : int\n\t{\n";
			foreach(const string name; constants.keys.sort!((a, b)=>(constants[a] < constants[b])))
			{
				if(!constantsInEnums.canFind(name)) // don't document enums here; they have their own ddoc
				{
					if(auto ptr = name in ddocConstants) ret ~= "\t\t/**\n\t\t" ~ (*ptr).replace("\n", "\n\t\t") ~ "\n\t\t*/\n";
					else ret ~= "\t\t/** */\n";
				}
				ret ~= "\t\t"~name.snakeToCamel.escapeD~" = "~text(constants[name])~",\n";
			}
			ret ~= "\t}\n";
		}
		
		foreach(const m; methods)
		{
			ret ~= m.source;
		}
		
		foreach(const p; properties)
		{
			import std.stdio : writeln;
			if(p.type.godot.canFind(',')) continue; /// FIXME: handle with common base
			
			GodotMethod getterMethod, setterMethod;
			
			foreach(GodotClass c; BaseRange(cast()this))
			{
				if(!getterMethod)
				{
					auto g = c.methods.find!(m => m.name == p.getter);
					if(!g.empty) getterMethod = g.front;
				}
				if(!setterMethod)
				{
					auto s = c.methods.find!(m => m.name == p.setter);
					if(!s.empty) setterMethod = s.front;
				}
				
				if(getterMethod && setterMethod) break;
				
				if(c.base_class_ptr is null)
				{
					if(!getterMethod) writeln("Warning: property ", name.godot, ".", p.name, " specifies a getter that doesn't exist: ", p.getter);
					if(p.setter.length && !setterMethod) writeln("Warning: property ", name.godot, ".", p.name, " specifies a setter that doesn't exist: ", p.setter);
					break;
				}
			}
			
			if(getterMethod) ret ~= p.getterSource(getterMethod);
			if(p.setter.length)
			{
				if(setterMethod) ret ~= p.setterSource(setterMethod);
			}
		}
		
		
		
		
		ret ~= "}\n";
		
		if(singleton)
		{
			ret ~= "/// Returns: the "~className~"\n";
			ret ~= "@property @nogc nothrow pragma(inline, true)\n";
			ret ~= className ~ " " ~ name.d;
			ret ~= "()\n{\n";
			ret ~= "\tcheckClassBinding!"~className~"();\n";
			ret ~= "\treturn "~className~"("~className~"._classBinding._singleton);\n";
			ret ~= "}\n";
		}
		
		return ret;
	}
	
	struct BaseRange
	{
		GodotClass front;
		BaseRange save() const { return cast()this; }
		bool empty() const { return front is null; }
		void popFront() { front = front.base_class_ptr; }
	}
}


