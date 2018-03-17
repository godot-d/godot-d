/**
Node reference.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptscenenode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**
Node reference.

A direct reference to a node.
$(B Input Ports:)
none
$(B Output Ports:)
- Data: `node` (obj)
*/
@GodotBaseClass struct VisualScriptSceneNode
{
	static immutable string _GODOT_internal_name = "VisualScriptSceneNode";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptSceneNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptSceneNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptSceneNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptSceneNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSceneNode)(constructor());
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_path") = _GODOT_set_node_path;
	/**
	
	*/
	void setNodePath(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_set_node_path.bind("VisualScriptSceneNode", "set_node_path");
		ptrcall!(void)(_GODOT_set_node_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_path") = _GODOT_get_node_path;
	/**
	
	*/
	NodePath getNodePath()
	{
		_GODOT_get_node_path.bind("VisualScriptSceneNode", "get_node_path");
		return ptrcall!(NodePath)(_GODOT_get_node_path, _godot_object);
	}
	/**
	The node's path in the scene tree.
	*/
	@property NodePath nodePath()
	{
		return getNodePath();
	}
	/// ditto
	@property void nodePath(NodePath v)
	{
		setNodePath(v);
	}
}
