module api.classes;

import api.methods, api.util;

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
	
	void finalizeDeserialization(Asdf data)
	{
		// strip the underscore from certain class names
		internal_name = name;
		name = name.stripName;
		
		if(base_class != "Object" && name != "Object") used_classes ~= base_class;
		
		// generate the set of referenced classes
		foreach(ref m; methods)
		{
			import std.algorithm.searching;
			if(!isPrimitive(m.return_type) && !isCoreType(m.return_type) && m.return_type != name
				&& m.return_type != "Object" && !used_classes.canFind(m.return_type))
				used_classes ~= (m.return_type);
			foreach(const a; m.arguments)
			{
				if(!isPrimitive(a.type) && !isCoreType(a.type) && a.type != name
					&& a.type != "Object" && !used_classes.canFind(a.type))
					used_classes ~= (a.type);
			}
			
			m.parent = this;
		}
		assert(!used_classes.canFind(name));
		assert(!used_classes.canFind("Object"));
	}
	
	@serializationIgnore:
	
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
	
	ClassList* parent;
}

