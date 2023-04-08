/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorselection;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.node;
/**

*/
@GodotBaseClass struct EditorSelection
{
	package(godot) enum string _GODOT_internal_name = "EditorSelection";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in EditorSelection other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of EditorSelection.
	/// Note: use `memnew!EditorSelection` instead.
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
	
	*/
	void addNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addNode, _godot_object, node);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	Array getSelectedNodes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getSelectedNodes, _godot_object);
	}
	/**
	
	*/
	Array getTransformableSelectedNodes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getTransformableSelectedNodes, _godot_object);
	}
	/**
	
	*/
	void removeNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeNode, _godot_object, node);
	}
}
