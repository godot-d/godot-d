module godot.core.nodepath;

import godot.core.string;
import godot.c;

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
