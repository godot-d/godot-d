/**
Pre-parsed scene tree path.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.core.nodepath;

import godot.core.string;
import godot.c;

/**
A pre-parsed relative or absolute path in a scene tree, for use with $(D Node.getNode) and similar functions. It can reference a node, a resource within a node, or a property of a node or resource. For instance, `"Path2D/PathFollow2D/Sprite:texture:size"` would refer to the size property of the texture resource on the node named “Sprite” which is a child of the other named nodes in the path. Note that if you want to get a resource, you must end the path with a colon, otherwise the last element will be used as a property name.

Exporting a `NodePath` variable will give you a node selection widget in the properties panel of the editor, which can often be useful.

A `NodePath` is made up of a list of node names, a list of “subnode” (resource) names, and the name of a property in the final node or resource.
*/
struct NodePath
{
	@nogc nothrow:
	
	package(godot) godot_node_path _node_path;
	
	this(this)
	{
		godot_node_path other = _node_path;
		_godot_api.godot_node_path_new_copy(&_node_path, &other);
	}
	
	this(in String from)
	{
		_godot_api.godot_node_path_new(&_node_path, &from._godot_string);
	}
	
	this(in string name)
	{
		String from = String(name);
		_godot_api.godot_node_path_new(&_node_path, &from._godot_string);
	}
	
	String getName(in int idx) const
	{
		godot_string str = _godot_api.godot_node_path_get_name(&_node_path, idx);
		return String(str);
	}
	
	int getNameCount() const
	{
		return _godot_api.godot_node_path_get_name_count(&_node_path);
	}
	
	String getSubname(in int idx) const
	{
		godot_string str = _godot_api.godot_node_path_get_subname(&_node_path, idx);
		return String(str);
	}
	
	int getSubnameCount() const
	{
		return _godot_api.godot_node_path_get_subname_count(&_node_path);
	}
	
	bool isAbsolute() const
	{
		return cast(bool)_godot_api.godot_node_path_is_absolute(&_node_path);
	}
	
	bool isEmpty() const
	{
		return cast(bool)_godot_api.godot_node_path_is_empty(&_node_path);
	}
	
	String str() const
	{
		godot_string str = _godot_api.godot_node_path_as_string(&_node_path);
		return String(str);
	}
	
	/+void opAssign(in ref NodePath other)
	{
		godot_node_path_copy(&_node_path, &other._node_path);
	}+/
	
	~this()
	{
		_godot_api.godot_node_path_destroy(&_node_path);
	}
}
