/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodestatemachine;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.animationrootnode;
import godot.animationnode;
import godot.animationnodestatemachinetransition;
/**

*/
@GodotBaseClass struct AnimationNodeStateMachine
{
	package(godot) enum string _GODOT_internal_name = "AnimationNodeStateMachine";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AnimationRootNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_tree_changed") GodotMethod!(void) _treeChanged;
		@GodotName("add_node") GodotMethod!(void, String, AnimationNode, Vector2) addNode;
		@GodotName("add_transition") GodotMethod!(void, String, String, AnimationNodeStateMachineTransition) addTransition;
		@GodotName("get_end_node") GodotMethod!(String) getEndNode;
		@GodotName("get_graph_offset") GodotMethod!(Vector2) getGraphOffset;
		@GodotName("get_node") GodotMethod!(AnimationNode, String) getNode;
		@GodotName("get_node_name") GodotMethod!(String, AnimationNode) getNodeName;
		@GodotName("get_node_position") GodotMethod!(Vector2, String) getNodePosition;
		@GodotName("get_start_node") GodotMethod!(String) getStartNode;
		@GodotName("get_transition") GodotMethod!(AnimationNodeStateMachineTransition, long) getTransition;
		@GodotName("get_transition_count") GodotMethod!(long) getTransitionCount;
		@GodotName("get_transition_from") GodotMethod!(String, long) getTransitionFrom;
		@GodotName("get_transition_to") GodotMethod!(String, long) getTransitionTo;
		@GodotName("has_node") GodotMethod!(bool, String) hasNode;
		@GodotName("has_transition") GodotMethod!(bool, String, String) hasTransition;
		@GodotName("remove_node") GodotMethod!(void, String) removeNode;
		@GodotName("remove_transition") GodotMethod!(void, String, String) removeTransition;
		@GodotName("remove_transition_by_index") GodotMethod!(void, long) removeTransitionByIndex;
		@GodotName("rename_node") GodotMethod!(void, String, String) renameNode;
		@GodotName("replace_node") GodotMethod!(void, String, AnimationNode) replaceNode;
		@GodotName("set_end_node") GodotMethod!(void, String) setEndNode;
		@GodotName("set_graph_offset") GodotMethod!(void, Vector2) setGraphOffset;
		@GodotName("set_node_position") GodotMethod!(void, String, Vector2) setNodePosition;
		@GodotName("set_start_node") GodotMethod!(void, String) setStartNode;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNodeStateMachine other) const
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
	/// Construct a new instance of AnimationNodeStateMachine.
	/// Note: use `memnew!AnimationNodeStateMachine` instead.
	static AnimationNodeStateMachine _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeStateMachine");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeStateMachine)(constructor());
	}
	/**
	
	*/
	void _treeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_tree_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addNode(in String name, AnimationNode node, in Vector2 position = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addNode, _godot_object, name, node, position);
	}
	/**
	
	*/
	void addTransition(in String from, in String to, AnimationNodeStateMachineTransition transition)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTransition, _godot_object, from, to, transition);
	}
	/**
	
	*/
	String getEndNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getEndNode, _godot_object);
	}
	/**
	
	*/
	Vector2 getGraphOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGraphOffset, _godot_object);
	}
	/**
	
	*/
	Ref!AnimationNode getNode(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNode)(GDNativeClassBinding.getNode, _godot_object, name);
	}
	/**
	
	*/
	String getNodeName(AnimationNode node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNodeName, _godot_object, node);
	}
	/**
	
	*/
	Vector2 getNodePosition(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getNodePosition, _godot_object, name);
	}
	/**
	
	*/
	String getStartNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getStartNode, _godot_object);
	}
	/**
	
	*/
	Ref!AnimationNodeStateMachineTransition getTransition(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNodeStateMachineTransition)(GDNativeClassBinding.getTransition, _godot_object, idx);
	}
	/**
	
	*/
	long getTransitionCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTransitionCount, _godot_object);
	}
	/**
	
	*/
	String getTransitionFrom(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTransitionFrom, _godot_object, idx);
	}
	/**
	
	*/
	String getTransitionTo(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTransitionTo, _godot_object, idx);
	}
	/**
	
	*/
	bool hasNode(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasNode, _godot_object, name);
	}
	/**
	
	*/
	bool hasTransition(in String from, in String to) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasTransition, _godot_object, from, to);
	}
	/**
	
	*/
	void removeNode(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeNode, _godot_object, name);
	}
	/**
	
	*/
	void removeTransition(in String from, in String to)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeTransition, _godot_object, from, to);
	}
	/**
	
	*/
	void removeTransitionByIndex(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeTransitionByIndex, _godot_object, idx);
	}
	/**
	
	*/
	void renameNode(in String name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameNode, _godot_object, name, new_name);
	}
	/**
	
	*/
	void replaceNode(in String name, AnimationNode node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.replaceNode, _godot_object, name, node);
	}
	/**
	
	*/
	void setEndNode(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEndNode, _godot_object, name);
	}
	/**
	
	*/
	void setGraphOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGraphOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setNodePosition(in String name, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNodePosition, _godot_object, name, position);
	}
	/**
	
	*/
	void setStartNode(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStartNode, _godot_object, name);
	}
}
