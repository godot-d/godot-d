/**
Base node for all joint constraints in 2D physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.joint2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.node2d;
/**
Base node for all joint constraints in 2D physics.

Joints take 2 bodies and apply a custom constraint.
*/
@GodotBaseClass struct Joint2D
{
	static immutable string _GODOT_internal_name = "Joint2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Joint2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Joint2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Joint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Joint2D");
		if(constructor is null) return typeof(this).init;
		return cast(Joint2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_a") = _GODOT_set_node_a;
	/**
	
	*/
	void setNodeA(NodePathArg0)(in NodePathArg0 node)
	{
		_GODOT_set_node_a.bind("Joint2D", "set_node_a");
		ptrcall!(void)(_GODOT_set_node_a, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_a;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_a") = _GODOT_get_node_a;
	/**
	
	*/
	NodePath getNodeA() const
	{
		_GODOT_get_node_a.bind("Joint2D", "get_node_a");
		return ptrcall!(NodePath)(_GODOT_get_node_a, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_node_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_b") = _GODOT_set_node_b;
	/**
	
	*/
	void setNodeB(NodePathArg0)(in NodePathArg0 node)
	{
		_GODOT_set_node_b.bind("Joint2D", "set_node_b");
		ptrcall!(void)(_GODOT_set_node_b, _godot_object, node);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_node_b;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_b") = _GODOT_get_node_b;
	/**
	
	*/
	NodePath getNodeB() const
	{
		_GODOT_get_node_b.bind("Joint2D", "get_node_b");
		return ptrcall!(NodePath)(_GODOT_get_node_b, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bias") = _GODOT_set_bias;
	/**
	
	*/
	void setBias(in double bias)
	{
		_GODOT_set_bias.bind("Joint2D", "set_bias");
		ptrcall!(void)(_GODOT_set_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bias") = _GODOT_get_bias;
	/**
	
	*/
	double getBias() const
	{
		_GODOT_get_bias.bind("Joint2D", "get_bias");
		return ptrcall!(double)(_GODOT_get_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exclude_nodes_from_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclude_nodes_from_collision") = _GODOT_set_exclude_nodes_from_collision;
	/**
	
	*/
	void setExcludeNodesFromCollision(in bool enable)
	{
		_GODOT_set_exclude_nodes_from_collision.bind("Joint2D", "set_exclude_nodes_from_collision");
		ptrcall!(void)(_GODOT_set_exclude_nodes_from_collision, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_exclude_nodes_from_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_exclude_nodes_from_collision") = _GODOT_get_exclude_nodes_from_collision;
	/**
	
	*/
	bool getExcludeNodesFromCollision() const
	{
		_GODOT_get_exclude_nodes_from_collision.bind("Joint2D", "get_exclude_nodes_from_collision");
		return ptrcall!(bool)(_GODOT_get_exclude_nodes_from_collision, _godot_object);
	}
	/**
	The first body attached to the joint. Must derive from $(D PhysicsBody2D).
	*/
	@property NodePath nodeA()
	{
		return getNodeA();
	}
	/// ditto
	@property void nodeA(NodePath v)
	{
		setNodeA(v);
	}
	/**
	The second body attached to the joint. Must derive from $(D PhysicsBody2D).
	*/
	@property NodePath nodeB()
	{
		return getNodeB();
	}
	/// ditto
	@property void nodeB(NodePath v)
	{
		setNodeB(v);
	}
	/**
	When $(D nodeA) and $(D nodeB) move in different directions the `bias` controls how fast the joint pulls them back to their original position. The lower the `bias` the more the two bodies can pull on the joint. Default value: `0`
	*/
	@property double bias()
	{
		return getBias();
	}
	/// ditto
	@property void bias(double v)
	{
		setBias(v);
	}
	/**
	If `true` $(D nodeA) and $(D nodeB) can collide. Default value: `false`.
	*/
	@property bool disableCollision()
	{
		return getExcludeNodesFromCollision();
	}
	/// ditto
	@property void disableCollision(bool v)
	{
		setExcludeNodesFromCollision(v);
	}
}
