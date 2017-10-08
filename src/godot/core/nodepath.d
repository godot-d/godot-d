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
	
	String get_name(in int idx) const
	{
		godot_string str = _godot_api.godot_node_path_get_name(&_node_path, idx);
		return String(str);
	}
	
	int get_name_count() const
	{
		return _godot_api.godot_node_path_get_name_count(&_node_path);
	}
	
	String get_property() const
	{
		godot_string str = _godot_api.godot_node_path_get_property(&_node_path);
		return String(str);
	}
	
	String get_subname(in int idx) const
	{
		godot_string str = _godot_api.godot_node_path_get_subname(&_node_path, idx);
		return String(str);
	}
	
	int get_subname_count() const
	{
		return _godot_api.godot_node_path_get_subname_count(&_node_path);
	}
	
	bool is_absolute() const
	{
		return cast(bool)_godot_api.godot_node_path_is_absolute(&_node_path);
	}
	
	bool is_empty() const
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
