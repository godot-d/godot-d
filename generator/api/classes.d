module api.classes;

import godot.d.string;
import api.methods, api.enums, api.util;

import asdf;

import std.range;
import std.algorithm.searching, std.algorithm.iteration;
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
	GodotEnum[] enums;
	
	void finalizeDeserialization(Asdf data)
	{
		if(base_class && base_class.godot != "Object" && name.godot != "Object") used_classes ~= base_class;
		
		void addUsedClass(in Type c)
		{
			if(c.isPrimitive || c.isCoreType || c.godot == "Object") return;
			if(!used_classes.canFind(c)) used_classes ~= c;
		}
		
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
			
			m.parent = this;
		}
		foreach(ref e; enums)
		{
			e.parent = this;
		}
		assert(!used_classes.canFind(name));
		assert(!used_classes.canFind!(c => c.godot == "Object"));
	}
	
	@serializationIgnore:
	ClassList* parent;
	
	const(Type)[] used_classes;
	GodotClass base_class_ptr = null; // needs to be set after all classes loaded
	GodotClass[] descendant_ptrs; /// direct descendent classes
	
	/++
	Certain classes have an underscore prefix in their API representation.
	The only place this underscore should actually be used is with
	godot_method_bind_get_method, so the $(D name) field will have it stripped
	off, while $(D internal_name) keeps the full name used with the C API.
	+/
	string internal_name;
	
	string source() const
	{
		string className = name.d;
		if(singleton) className ~= "Singleton";
		string ret = "@GodotBaseClass struct "~className;
		ret ~= "\n{\n";
		ret ~= "\tstatic immutable string _GODOT_internal_name = \""~name.godot~"\";\n";
		ret ~= "public:\n";
		//ret ~= "@nogc nothrow:\n";
		if(singleton)
		{
			ret ~= "\tstatic typeof(this) _GODOT_singleton()\n\t{\n";
			ret ~= "\t\tstatic immutable char* _GODOT_singleton_name = \""~name.godot.chompPrefix("_")~"\";\n";
			ret ~= "\t\tstatic typeof(this) _GODOT_singleton_ptr;\n";
			ret ~= "\t\tif(_GODOT_singleton_ptr == null)\n";
			ret ~= "\t\t\t_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);\n";
			ret ~= "\t\treturn _GODOT_singleton_ptr;\n";
			ret ~= "\t}\n";
		}
		
		// Pointer to Godot object, fake inheritance through alias this
		if(name.godot != "Object")
		{
			ret ~= "\tunion { godot_object _godot_object; "~base_class.d;
			if(base_class_ptr.singleton) ret ~= "Singleton";
			ret ~= " base; }\n\talias base this;\n";
			ret ~= "\talias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);\n";
		}
		else
		{
			ret ~= "\tgodot_object _godot_object;\n";
			ret ~= "\talias BaseClasses = AliasSeq!();\n";
		}
		
		
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
		ret ~= "\t\tif(constructor is null) constructor = _godot_api.godot_get_class_constructor(\""~internal_name~"\");\n";
		ret ~= "\t\tif(constructor is null) return typeof(this).init;\n";
		ret ~= "\t\treturn cast("~className~")(constructor());\n";
		ret ~= "\t}\n";
		
		foreach(const ref e; enums)
		{
			ret ~= e.source;
		}
		
		foreach(const string name, const int value; constants)
		{
			ret ~= "\tenum int "~name.snakeToCamel.escapeD~" = "~text(value)~";\n";
		}
		
		foreach(const m; methods)
		{
			ret ~= m.bindingStruct;
			ret ~= m.source;
		}
		
		
		
		
		
		
		ret ~= "}\n";
		
		if(singleton)
		{
			ret ~= "@property pragma(inline, true)\n";
			ret ~= className ~ " " ~ name.d;
			ret ~= "()\n{\n";
			ret ~= "\treturn "~className~"._GODOT_singleton();\n";
			ret ~= "}\n";
		}
		
		return ret;
	}
}


