module godotapi;

import asdf;

import std.range;
import std.algorithm.searching, std.algorithm.iteration;

bool isPrimitive(in string type)
{
	return only("int", "bool", "real", "float", "void").canFind(type);
}

bool isCoreType(in string type)
{
	auto coreTypes = only("Array",
	                      "Basis",
	                      "Color",
	                      "Dictionary",
	                      "Error",
	                      "Image",
	                      "InputEvent",
	                      "NodePath",
	                      "Plane",
	                      "PoolByteArray",
	                      "PoolIntArray",
	                      "PoolRealArray",
	                      "PoolStringArray",
	                      "PoolVector2Array",
	                      "PoolVector3Array",
	                      "PoolColorArray",
	                      "Quat",
	                      "Rect2",
	                      "Rect3",
	                      "RID",
	                      "String",
	                      "Transform",
	                      "Transform2D",
	                      "Variant",
	                      "Vector2",
	                      "Vector3");
	return coreTypes.canFind(type);
}

string stripName(in string name)
{
	return (name[0] == '_')?(name[1..$]):name;
}

struct GodotClass
{
	string name;
	string base_class;
	string api_type;
	bool singleton;
	bool instanciable;
	bool is_reference;
	int[string] constants; // TODO: can constants be things other than ints?
	GodotMethod[] methods;
	
	@serializationIgnore
	{
		string[] used_classes;
		GodotClass* base_class_ptr = null; // needs to be set after all classes loaded
	}
	
	/++
	Certain classes have an underscore prefix in their API representation.
	The only place this underscore should actually be used is with
	godot_method_bind_get_method, so the $(D name) field will have it stripped
	off, while $(D internal_name) keeps the full name used with the C API.
	+/
	@serializationIgnore
	string internal_name;
	
	void finalizeDeserialization(Asdf data)
	{
		// strip the underscore from certain class names
		internal_name = name;
		name = name.stripName;
		
		if(base_class != "Object" && name != "Object") used_classes ~= base_class;
		
		// generate the set of referenced classes
		foreach(const m; methods)
		{
			import std.algorithm.searching;
			if(!isPrimitive(m.return_type) && !isCoreType(m.return_type) && !used_classes.canFind(m.return_type))
				used_classes ~= (m.return_type);
			foreach(const a; m.arguments)
			{
				if(!isPrimitive(a.type) && !isCoreType(a.type) && !used_classes.canFind(a.type))
					used_classes ~= (a.type);
			}
		}
	}
}

struct GodotMethod
{
	string name;
	string return_type;
	bool is_editor;
	bool is_noscript;
	bool is_const;
	bool is_virtual;
	bool has_varargs;
	bool is_from_script;
	GodotArgument[] arguments;
	
	bool same(in GodotMethod other) const
	{
		return name == other.name && is_const == other.is_const;
	}
}

struct GodotArgument
{
	string name;
	string type;
	bool has_default_value;
	string default_value;
}




 
