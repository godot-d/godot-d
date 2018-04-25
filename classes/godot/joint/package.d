/**
Base class for all 3D joints

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.joint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.spatial;
/**
Base class for all 3D joints

All 3D joints link two nodes, has a priority, and can decide if the two bodies of the nodes should be able to collide with each other
*/
@GodotBaseClass struct Joint
{
	static immutable string _GODOT_internal_name = "Joint";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Joint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Joint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Joint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Joint");
		if(constructor is null) return typeof(this).init;
		return cast(Joint)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_a") = _GODOT_set_node_a;
	/**
	
	*/
	void setNodeA(NodePathArg0)(in NodePathArg0 node)
	{
		_GODOT_set_node_a.bind("Joint", "set_node_a");
		ptrcall!(void)(_GODOT_set_node_a, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_a") = _GODOT_get_node_a;
	/**
	
	*/
	NodePath getNodeA() const
	{
		_GODOT_get_node_a.bind("Joint", "get_node_a");
		return ptrcall!(NodePath)(_GODOT_get_node_a, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_b") = _GODOT_set_node_b;
	/**
	
	*/
	void setNodeB(NodePathArg0)(in NodePathArg0 node)
	{
		_GODOT_set_node_b.bind("Joint", "set_node_b");
		ptrcall!(void)(_GODOT_set_node_b, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_b") = _GODOT_get_node_b;
	/**
	
	*/
	NodePath getNodeB() const
	{
		_GODOT_get_node_b.bind("Joint", "get_node_b");
		return ptrcall!(NodePath)(_GODOT_get_node_b, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_solver_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_solver_priority") = _GODOT_set_solver_priority;
	/**
	
	*/
	void setSolverPriority(in long priority)
	{
		_GODOT_set_solver_priority.bind("Joint", "set_solver_priority");
		ptrcall!(void)(_GODOT_set_solver_priority, _godot_object, priority);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_solver_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_solver_priority") = _GODOT_get_solver_priority;
	/**
	
	*/
	long getSolverPriority() const
	{
		_GODOT_get_solver_priority.bind("Joint", "get_solver_priority");
		return ptrcall!(long)(_GODOT_get_solver_priority, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exclude_nodes_from_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude_nodes_from_collision") = _GODOT_set_exclude_nodes_from_collision;
	/**
	
	*/
	void setExcludeNodesFromCollision(in bool enable)
	{
		_GODOT_set_exclude_nodes_from_collision.bind("Joint", "set_exclude_nodes_from_collision");
		ptrcall!(void)(_GODOT_set_exclude_nodes_from_collision, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_exclude_nodes_from_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude_nodes_from_collision") = _GODOT_get_exclude_nodes_from_collision;
	/**
	
	*/
	bool getExcludeNodesFromCollision() const
	{
		_GODOT_get_exclude_nodes_from_collision.bind("Joint", "get_exclude_nodes_from_collision");
		return ptrcall!(bool)(_GODOT_get_exclude_nodes_from_collision, _godot_object);
	}
	/**
	The $(D Node), the first side of the Joint attaches to.
	*/
	@property NodePath nodesNodeA()
	{
		return getNodeA();
	}
	/// ditto
	@property void nodesNodeA(NodePath v)
	{
		setNodeA(v);
	}
	/**
	The $(D Node), the second side of the Joint attaches to.
	*/
	@property NodePath nodesNodeB()
	{
		return getNodeB();
	}
	/// ditto
	@property void nodesNodeB(NodePath v)
	{
		setNodeB(v);
	}
	/**
	The order in which the solver is executed compared to the other $(D Joints), the lower, the earlier.
	*/
	@property long solverPriority()
	{
		return getSolverPriority();
	}
	/// ditto
	@property void solverPriority(long v)
	{
		setSolverPriority(v);
	}
	/**
	If `true` the two bodies of the nodes are not able to collide with each other.
	*/
	@property bool collisionExcludeNodes()
	{
		return getExcludeNodesFromCollision();
	}
	/// ditto
	@property void collisionExcludeNodes(bool v)
	{
		setExcludeNodesFromCollision(v);
	}
}
