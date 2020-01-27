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
import godot.resource;
import godot.reference;
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
	enum string _GODOT_internal_name = "VisualScriptSceneNode";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_node_path") GodotMethod!(NodePath) getNodePath;
		@GodotName("set_node_path") GodotMethod!(void, NodePath) setNodePath;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	NodePath getNodePath()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getNodePath, _godot_object);
	}
	/**
	
	*/
	void setNodePath(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodePath, _godot_object, path);
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
