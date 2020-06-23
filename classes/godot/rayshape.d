/**
Ray shape for 3D collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.rayshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape;
/**
Ray shape for 3D collisions.

Ray shape for 3D collisions, which can be set into a $(D PhysicsBody) or $(D Area). A ray is not really a collision body; instead, it tries to separate itself from whatever is touching its far endpoint. It's often useful for characters.
*/
@GodotBaseClass struct RayShape
{
	package(godot) enum string _GODOT_internal_name = "RayShape";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_length") GodotMethod!(double) getLength;
		@GodotName("get_slips_on_slope") GodotMethod!(bool) getSlipsOnSlope;
		@GodotName("set_length") GodotMethod!(void, double) setLength;
		@GodotName("set_slips_on_slope") GodotMethod!(void, bool) setSlipsOnSlope;
	}
	/// 
	pragma(inline, true) bool opEquals(in RayShape other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) RayShape opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of RayShape.
	/// Note: use `memnew!RayShape` instead.
	static RayShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RayShape");
		if(constructor is null) return typeof(this).init;
		return cast(RayShape)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLength, _godot_object);
	}
	/**
	
	*/
	bool getSlipsOnSlope() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getSlipsOnSlope, _godot_object);
	}
	/**
	
	*/
	void setLength(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLength, _godot_object, length);
	}
	/**
	
	*/
	void setSlipsOnSlope(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSlipsOnSlope, _godot_object, active);
	}
	/**
	The ray's length.
	*/
	@property double length()
	{
		return getLength();
	}
	/// ditto
	@property void length(double v)
	{
		setLength(v);
	}
	/**
	If `true`, allow the shape to return the correct normal.
	*/
	@property bool slipsOnSlope()
	{
		return getSlipsOnSlope();
	}
	/// ditto
	@property void slipsOnSlope(bool v)
	{
		setSlipsOnSlope(v);
	}
}
