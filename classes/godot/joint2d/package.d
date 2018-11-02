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
import godot.canvasitem;
import godot.node;
/**
Base node for all joint constraints in 2D physics.

Joints take 2 bodies and apply a custom constraint.
*/
@GodotBaseClass struct Joint2D
{
	enum string _GODOT_internal_name = "Joint2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_node_a") GodotMethod!(void, NodePath) setNodeA;
		@GodotName("get_node_a") GodotMethod!(NodePath) getNodeA;
		@GodotName("set_node_b") GodotMethod!(void, NodePath) setNodeB;
		@GodotName("get_node_b") GodotMethod!(NodePath) getNodeB;
		@GodotName("set_bias") GodotMethod!(void, double) setBias;
		@GodotName("get_bias") GodotMethod!(double) getBias;
		@GodotName("set_exclude_nodes_from_collision") GodotMethod!(void, bool) setExcludeNodesFromCollision;
		@GodotName("get_exclude_nodes_from_collision") GodotMethod!(bool) getExcludeNodesFromCollision;
	}
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
	/**
	
	*/
	void setNodeA(NodePathArg0)(in NodePathArg0 node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodeA, _godot_object, node);
	}
	/**
	
	*/
	NodePath getNodeA() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getNodeA, _godot_object);
	}
	/**
	
	*/
	void setNodeB(NodePathArg0)(in NodePathArg0 node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodeB, _godot_object, node);
	}
	/**
	
	*/
	NodePath getNodeB() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getNodeB, _godot_object);
	}
	/**
	
	*/
	void setBias(in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBias, _godot_object, bias);
	}
	/**
	
	*/
	double getBias() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBias, _godot_object);
	}
	/**
	
	*/
	void setExcludeNodesFromCollision(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExcludeNodesFromCollision, _godot_object, enable);
	}
	/**
	
	*/
	bool getExcludeNodesFromCollision() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getExcludeNodesFromCollision, _godot_object);
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
