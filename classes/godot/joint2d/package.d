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
	package(godot) enum string _GODOT_internal_name = "Joint2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_bias") GodotMethod!(double) getBias;
		@GodotName("get_exclude_nodes_from_collision") GodotMethod!(bool) getExcludeNodesFromCollision;
		@GodotName("get_node_a") GodotMethod!(NodePath) getNodeA;
		@GodotName("get_node_b") GodotMethod!(NodePath) getNodeB;
		@GodotName("set_bias") GodotMethod!(void, double) setBias;
		@GodotName("set_exclude_nodes_from_collision") GodotMethod!(void, bool) setExcludeNodesFromCollision;
		@GodotName("set_node_a") GodotMethod!(void, NodePath) setNodeA;
		@GodotName("set_node_b") GodotMethod!(void, NodePath) setNodeB;
	}
	/// 
	pragma(inline, true) bool opEquals(in Joint2D other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) Joint2D opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of Joint2D.
	/// Note: use `memnew!Joint2D` instead.
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
	double getBias() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBias, _godot_object);
	}
	/**
	
	*/
	bool getExcludeNodesFromCollision() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getExcludeNodesFromCollision, _godot_object);
	}
	/**
	
	*/
	NodePath getNodeA() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getNodeA, _godot_object);
	}
	/**
	
	*/
	NodePath getNodeB() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getNodeB, _godot_object);
	}
	/**
	
	*/
	void setBias(in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBias, _godot_object, bias);
	}
	/**
	
	*/
	void setExcludeNodesFromCollision(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExcludeNodesFromCollision, _godot_object, enable);
	}
	/**
	
	*/
	void setNodeA(NodePathArg0)(in NodePathArg0 node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNodeA, _godot_object, node);
	}
	/**
	
	*/
	void setNodeB(NodePathArg0)(in NodePathArg0 node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNodeB, _godot_object, node);
	}
	/**
	When $(D nodeA) and $(D nodeB) move in different directions the `bias` controls how fast the joint pulls them back to their original position. The lower the `bias` the more the two bodies can pull on the joint.
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
	If `true`, $(D nodeA) and $(D nodeB) can not collide.
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
}
