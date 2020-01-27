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
import godot.node;
/**
Manages the SceneTree selection in the editor.

This object manages the SceneTree selection in the editor.
*/
@GodotBaseClass struct EditorSelection
{
	enum string _GODOT_internal_name = "EditorSelection";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_emit_change") GodotMethod!(void) _emitChange;
		@GodotName("_node_removed") GodotMethod!(void, Node) _nodeRemoved;
		@GodotName("add_node") GodotMethod!(void, Node) addNode;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_selected_nodes") GodotMethod!(Array) getSelectedNodes;
		@GodotName("get_transformable_selected_nodes") GodotMethod!(Array) getTransformableSelectedNodes;
		@GodotName("remove_node") GodotMethod!(void, Node) removeNode;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void _emitChange()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_emit_change");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _nodeRemoved(Node arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a node to the selection.
	*/
	void addNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addNode, _godot_object, node);
	}
	/**
	Clear the selection.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Gets the list of selected nodes.
	*/
	Array getSelectedNodes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getSelectedNodes, _godot_object);
	}
	/**
	Gets the list of selected nodes, optimized for transform operations (i.e. moving them, rotating, etc). This list avoids situations where a node is selected and also child/grandchild.
	*/
	Array getTransformableSelectedNodes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getTransformableSelectedNodes, _godot_object);
	}
	/**
	Removes a node from the selection.
	*/
	void removeNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeNode, _godot_object, node);
	}
}
