module api.classes;

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
	GodotClass[string] dictionary;
}

class GodotClass
{
	string name;
	string base_class;
	string api_type;
	bool singleton;
	bool instanciable;
	bool is_reference;
	int[string] constants; // TODO: can constants be things other than ints?
	GodotMethod[] methods;
	GodotEnum[] enums;
	
	void finalizeDeserialization(Asdf data)
	{
		// strip the underscore from certain class names
		internal_name = name;
		name = name.stripName;
		
		if(base_class != "Object" && name != "Object") used_classes ~= base_class;
		
		void addUsedClass(string c)
		{
			if(c.isPrimitive || c.isCoreType || c == "Object") return;
			if(!used_classes.canFind(c)) used_classes ~= c;
		}
		
		// generate the set of referenced classes
		foreach(m; methods)
		{
			import std.algorithm.searching;
			if(m.return_type.startsWith("enum."))
			{
				auto c = enumParent(m.return_type).stripName;
				if(c && c != name) addUsedClass(c);
			}
			else if(m.return_type != name)
			{
				addUsedClass(m.return_type);
			}
			foreach(const a; m.arguments)
			{
				if(a.type.startsWith("enum."))
				{
					auto c = enumParent(a.type).stripName;
					if(c && c != name) addUsedClass(c);
				}
				else if(a.type != name)
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
		assert(!used_classes.canFind("Object"));
	}
	
	@serializationIgnore:
	ClassList* parent;
	
	string[] used_classes;
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
		string className = name.escapeType;
		if(singleton) className ~= "Singleton";
		string ret = "@GodotBaseClass struct "~className;
		ret ~= "\n{\n";
		ret ~= "\tstatic immutable string _GODOT_internal_name = \""~internal_name~"\";\n";
		ret ~= "public:\n";
		//ret ~= "@nogc nothrow:\n";
		if(singleton)
		{
			ret ~= "\tstatic typeof(this) _GODOT_singleton()\n\t{\n";
			ret ~= "\t\tstatic immutable char* _GODOT_singleton_name = \""~internal_name~"\";\n";
			ret ~= "\t\tstatic typeof(this) _GODOT_singleton_ptr;\n";
			ret ~= "\t\tif(_GODOT_singleton_ptr == null)\n";
			ret ~= "\t\t\t_GODOT_singleton_ptr = cast(typeof(this))godot_global_get_singleton(cast(char*)_GODOT_singleton_name);\n";
			ret ~= "\t\treturn _GODOT_singleton_ptr;\n";
			ret ~= "\t}\n";
		}
		
		// Pointer to Godot object, fake inheritance through alias this
		if(name != "Object")
		{
			ret ~= "\tunion { godot_object _godot_object; "~base_class.escapeType;
			if(base_class_ptr.singleton) ret ~= "Singleton";
			ret ~= " base; }\n\talias base this;\n";
			ret ~= "\talias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);\n";
		}
		else
		{
			ret ~= "\tgodot_object _godot_object;\n";
			ret ~= "\talias BaseClasses = AliasSeq!();\n";
		}
		
		// void* cast for passing this type to ptrcalls
		ret ~= "\tpackage(godot) void* opCast(T : void*)() const { return cast(void*)_godot_object.ptr; }\n";
		// strip const, because the C API sometimes expects a non-const godot_object
		ret ~= "\tgodot_object opCast(T : godot_object)() const { return cast(godot_object)_godot_object; }\n";
		
		// equality
		ret ~= "\tbool opEquals(in "~className~" other) const ";
		ret ~= "{ return _godot_object.ptr is other._godot_object.ptr; }\n";
		// null assignment to simulate D class references
		ret ~= "\t"~className~" opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }\n";
		// equality with null; unfortunately `_godot_object is null` doesn't work with structs
		ret ~= "\tbool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }\n";
		// implicit conversion to bool like D class references
		ret ~= "\tbool opCast(T : bool)() const { return _godot_object.ptr !is null; }\n";
		
		// downcast is handled by `alias this`.
		
		// upcast to derived Godot class:
		ret ~= "\tinout(T) opCast(T)() inout if(isGodotBaseClass!T)\n\t{\n";
		ret ~= "\t\tstatic assert(staticIndexOf!("~className~", T.BaseClasses) != -1, ";
		ret ~= "\"Godot class \"~T.stringof~\" does not inherit "~className~"\");\n";
		ret ~= "\t\tif(_godot_object.ptr is null) return T.init;\n";
		ret ~= "\t\tString c = String(T._GODOT_internal_name);\n";
		ret ~= "\t\tif(is_class(c)) return inout(T)(_godot_object);\n\t\treturn T.init;\n\t}\n";
		
		// upcast to derived D Native Script:
		ret ~= "\tinout(T) opCast(T)() inout if(extendsGodotBaseClass!T)\n\t{\n";
		ret ~= "\t\tstatic assert(is(typeof(T.owner) : "~className~") || ";
		ret ~= "staticIndexOf!("~className~", typeof(T.owner).BaseClasses) != -1, ";
		ret ~= "\"D class \"~T.stringof~\" does not extend "~className~"\");\n";
		ret ~= "\t\tif(_godot_object.ptr is null) return null;\n";
		ret ~= "\t\tif(has_method(String(`_GDNATIVE_D_typeid`)))\n\t\t{\n";
		ret ~= "\t\t\tObject o = cast(Object)godot_nativescript_get_userdata(opCast!godot_object);\n";
		ret ~= "\t\t\treturn cast(inout(T))o;\n\t\t}\n\t\treturn null;\n\t}\n";
		
		// Godot constructor.
		ret ~= "\tstatic "~className~" _new()\n\t{\n";
		ret ~= "\t\tstatic godot_class_constructor constructor;\n";
		ret ~= "\t\tif(constructor is null) constructor = godot_get_class_constructor(\""~internal_name~"\");\n";
		ret ~= "\t\tif(constructor is null) return typeof(this).init;\n";
		ret ~= "\t\treturn cast("~className~")(constructor());\n";
		ret ~= "\t}\n";
		
		foreach(const ref e; enums)
		{
			ret ~= e.source;
		}
		
		foreach(const string name, const int value; constants)
		{
			ret ~= "\tenum int "~name.escapeD~" = "~text(value)~";\n";
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
			ret ~= className ~ " " ~ name.escapeType;
			ret ~= "()\n{\n";
			ret ~= "\treturn "~className~"._GODOT_singleton();\n";
			ret ~= "}\n";
		}
		
		return ret;
	}
}


