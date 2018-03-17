/**
Manages the SceneTree selection in the editor.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorselection;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
/**
Manages the SceneTree selection in the editor.

This object manages the SceneTree selection in the editor.
*/
@GodotBaseClass struct EditorSelection
{
	static immutable string _GODOT_internal_name = "EditorSelection";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorSelection other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSelection opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorSelection _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSelection");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSelection)(constructor());
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__node_removed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_node_removed") = _GODOT__node_removed;
	/**
	
	*/
	void _nodeRemoved(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear the selection.
	*/
	void clear()
	{
		_GODOT_clear.bind("EditorSelection", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_node") = _GODOT_add_node;
	/**
	Add a node to the selection.
	*/
	void addNode(GodotObject node)
	{
		_GODOT_add_node.bind("EditorSelection", "add_node");
		ptrcall!(void)(_GODOT_add_node, _godot_object, node);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_node") = _GODOT_remove_node;
	/**
	Remove a node from the selection.
	*/
	void removeNode(GodotObject node)
	{
		_GODOT_remove_node.bind("EditorSelection", "remove_node");
		ptrcall!(void)(_GODOT_remove_node, _godot_object, node);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_selected_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_nodes") = _GODOT_get_selected_nodes;
	/**
	Get the list of selected nodes.
	*/
	Array getSelectedNodes()
	{
		_GODOT_get_selected_nodes.bind("EditorSelection", "get_selected_nodes");
		return ptrcall!(Array)(_GODOT_get_selected_nodes, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_transformable_selected_nodes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transformable_selected_nodes") = _GODOT_get_transformable_selected_nodes;
	/**
	Get the list of selected nodes, optimized for transform operations (ie, moving them, rotating, etc). This list avoids situations where a node is selected and also chid/grandchild.
	*/
	Array getTransformableSelectedNodes()
	{
		_GODOT_get_transformable_selected_nodes.bind("EditorSelection", "get_transformable_selected_nodes");
		return ptrcall!(Array)(_GODOT_get_transformable_selected_nodes, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__emit_change;
	package(godot) alias _GODOT_methodBindInfo(string name : "_emit_change") = _GODOT__emit_change;
	/**
	
	*/
	void _emitChange()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_emit_change");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
