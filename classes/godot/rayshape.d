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

Ray shape for 3D collisions, which can be set into a $(D PhysicsBody) or $(D Area). A ray is not really a collision body, instead it tries to separate itself from whatever is touching its far endpoint. It's often useful for characters.
*/
@GodotBaseClass struct RayShape
{
	static immutable string _GODOT_internal_name = "RayShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in RayShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RayShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RayShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RayShape");
		if(constructor is null) return typeof(this).init;
		return cast(RayShape)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, double) _GODOT_set_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_length") = _GODOT_set_length;
	/**
	
	*/
	void setLength(in double length)
	{
		_GODOT_set_length.bind("RayShape", "set_length");
		ptrcall!(void)(_GODOT_set_length, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	/**
	
	*/
	double getLength() const
	{
		_GODOT_get_length.bind("RayShape", "get_length");
		return ptrcall!(double)(_GODOT_get_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_slips_on_slope;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_slips_on_slope") = _GODOT_set_slips_on_slope;
	/**
	
	*/
	void setSlipsOnSlope(in bool active)
	{
		_GODOT_set_slips_on_slope.bind("RayShape", "set_slips_on_slope");
		ptrcall!(void)(_GODOT_set_slips_on_slope, _godot_object, active);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_slips_on_slope;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slips_on_slope") = _GODOT_get_slips_on_slope;
	/**
	
	*/
	bool getSlipsOnSlope() const
	{
		_GODOT_get_slips_on_slope.bind("RayShape", "get_slips_on_slope");
		return ptrcall!(bool)(_GODOT_get_slips_on_slope, _godot_object);
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
	If `true` allow the shape to return the correct normal. Default value: `false`.
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
