/**
Class representing a capsule-shaped $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.capsulemesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
/**
Class representing a capsule-shaped $(D PrimitiveMesh).


*/
@GodotBaseClass struct CapsuleMesh
{
	static immutable string _GODOT_internal_name = "CapsuleMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CapsuleMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CapsuleMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CapsuleMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CapsuleMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CapsuleMesh)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radius") = _GODOT_set_radius;
	/**
	
	*/
	void setRadius(in double radius)
	{
		_GODOT_set_radius.bind("CapsuleMesh", "set_radius");
		ptrcall!(void)(_GODOT_set_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radius") = _GODOT_get_radius;
	/**
	
	*/
	double getRadius() const
	{
		_GODOT_get_radius.bind("CapsuleMesh", "get_radius");
		return ptrcall!(double)(_GODOT_get_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_mid_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mid_height") = _GODOT_set_mid_height;
	/**
	
	*/
	void setMidHeight(in double mid_height)
	{
		_GODOT_set_mid_height.bind("CapsuleMesh", "set_mid_height");
		ptrcall!(void)(_GODOT_set_mid_height, _godot_object, mid_height);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_mid_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mid_height") = _GODOT_get_mid_height;
	/**
	
	*/
	double getMidHeight() const
	{
		_GODOT_get_mid_height.bind("CapsuleMesh", "get_mid_height");
		return ptrcall!(double)(_GODOT_get_mid_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_segments") = _GODOT_set_radial_segments;
	/**
	
	*/
	void setRadialSegments(in long segments)
	{
		_GODOT_set_radial_segments.bind("CapsuleMesh", "set_radial_segments");
		ptrcall!(void)(_GODOT_set_radial_segments, _godot_object, segments);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_segments") = _GODOT_get_radial_segments;
	/**
	
	*/
	long getRadialSegments() const
	{
		_GODOT_get_radial_segments.bind("CapsuleMesh", "get_radial_segments");
		return ptrcall!(long)(_GODOT_get_radial_segments, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rings") = _GODOT_set_rings;
	/**
	
	*/
	void setRings(in long rings)
	{
		_GODOT_set_rings.bind("CapsuleMesh", "set_rings");
		ptrcall!(void)(_GODOT_set_rings, _godot_object, rings);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rings") = _GODOT_get_rings;
	/**
	
	*/
	long getRings() const
	{
		_GODOT_get_rings.bind("CapsuleMesh", "get_rings");
		return ptrcall!(long)(_GODOT_get_rings, _godot_object);
	}
	/**
	Radius of the capsule mesh. Defaults to 1.0.
	*/
	@property double radius()
	{
		return getRadius();
	}
	/// ditto
	@property void radius(double v)
	{
		setRadius(v);
	}
	/**
	Height of the capsule mesh from the center point. Defaults to 1.0.
	*/
	@property double midHeight()
	{
		return getMidHeight();
	}
	/// ditto
	@property void midHeight(double v)
	{
		setMidHeight(v);
	}
	/**
	Number of radial segments on the capsule mesh. Defaults to 64.
	*/
	@property long radialSegments()
	{
		return getRadialSegments();
	}
	/// ditto
	@property void radialSegments(long v)
	{
		setRadialSegments(v);
	}
	/**
	Number of rings along the height of the capsule. Defaults to 8.
	*/
	@property long rings()
	{
		return getRings();
	}
	/// ditto
	@property void rings(long v)
	{
		setRings(v);
	}
}
