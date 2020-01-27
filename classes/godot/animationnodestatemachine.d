/**
State machine for control of animations.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodestatemachine;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.animationrootnode;
import godot.animationnode;
import godot.animationnodestatemachinetransition;
/**
State machine for control of animations.

Contains multiple nodes representing animation states, connected in a graph. Node transitions can be configured to happen automatically or via code, using a shortest-path algorithm. Retrieve the $(D AnimationNodeStateMachinePlayback) object from the $(D AnimationTree) node to control it programmatically.
$(B Example:)


var state_machine = $AnimationTree.get("parameters/playback")
state_machine.travel("some_state")


*/
@GodotBaseClass struct AnimationNodeStateMachine
{
	enum string _GODOT_internal_name = "AnimationNodeStateMachine";
public:
@nogc nothrow:
	union { godot_object _godot_object; AnimationRootNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
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
		@GodotName("set_end_node") GodotMethod!(void, String) setEndNode;
		@GodotName("set_graph_offset") GodotMethod!(void, Vector2) setGraphOffset;
		@GodotName("set_node_position") GodotMethod!(void, String, Vector2) setNodePosition;
		@GodotName("set_start_node") GodotMethod!(void, String) setStartNode;
	}
	bool opEquals(in AnimationNodeStateMachine other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNodeStateMachine opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimationNodeStateMachine _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeStateMachine");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeStateMachine)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _treeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_tree_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a new node to the graph. The `position` is used for display in the editor.
	*/
	void addNode(in String name, AnimationNode node, in Vector2 position = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addNode, _godot_object, name, node, position);
	}
	/**
	Adds a transition between the given nodes.
	*/
	void addTransition(in String from, in String to, AnimationNodeStateMachineTransition transition)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addTransition, _godot_object, from, to, transition);
	}
	/**
	Returns the graph's end node.
	*/
	String getEndNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getEndNode, _godot_object);
	}
	/**
	Returns the draw offset of the graph. Used for display in the editor.
	*/
	Vector2 getGraphOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getGraphOffset, _godot_object);
	}
	/**
	Returns the animation node with the given name.
	*/
	Ref!AnimationNode getNode(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNode)(_classBinding.getNode, _godot_object, name);
	}
	/**
	Returns the given animation node's name.
	*/
	String getNodeName(AnimationNode node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getNodeName, _godot_object, node);
	}
	/**
	Returns the given node's coordinates. Used for display in the editor.
	*/
	Vector2 getNodePosition(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getNodePosition, _godot_object, name);
	}
	/**
	Returns the graph's end node.
	*/
	String getStartNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getStartNode, _godot_object);
	}
	/**
	Returns the given transition.
	*/
	Ref!AnimationNodeStateMachineTransition getTransition(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNodeStateMachineTransition)(_classBinding.getTransition, _godot_object, idx);
	}
	/**
	Returns the number of connections in the graph.
	*/
	long getTransitionCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTransitionCount, _godot_object);
	}
	/**
	Returns the given transition's start node.
	*/
	String getTransitionFrom(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTransitionFrom, _godot_object, idx);
	}
	/**
	Returns the given transition's end node.
	*/
	String getTransitionTo(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTransitionTo, _godot_object, idx);
	}
	/**
	Returns `true` if the graph contains the given node.
	*/
	bool hasNode(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasNode, _godot_object, name);
	}
	/**
	Returns `true` if there is a transition between the given nodes.
	*/
	bool hasTransition(in String from, in String to) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasTransition, _godot_object, from, to);
	}
	/**
	Deletes the given node from the graph.
	*/
	void removeNode(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeNode, _godot_object, name);
	}
	/**
	Deletes the transition between the two specified nodes.
	*/
	void removeTransition(in String from, in String to)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeTransition, _godot_object, from, to);
	}
	/**
	Deletes the given transition by index.
	*/
	void removeTransitionByIndex(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeTransitionByIndex, _godot_object, idx);
	}
	/**
	Renames the given node.
	*/
	void renameNode(in String name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameNode, _godot_object, name, new_name);
	}
	/**
	Sets the given node as the graph end point.
	*/
	void setEndNode(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEndNode, _godot_object, name);
	}
	/**
	Sets the draw offset of the graph. Used for display in the editor.
	*/
	void setGraphOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGraphOffset, _godot_object, offset);
	}
	/**
	Sets the node's coordinates. Used for display in the editor.
	*/
	void setNodePosition(in String name, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodePosition, _godot_object, name, position);
	}
	/**
	Sets the given node as the graph start point.
	*/
	void setStartNode(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStartNode, _godot_object, name);
	}
}
