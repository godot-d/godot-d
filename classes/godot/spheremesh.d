/**
Class representing a spherical $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spheremesh;
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
Class representing a spherical $(D PrimitiveMesh).


*/
@GodotBaseClass struct SphereMesh
{
	static immutable string _GODOT_internal_name = "SphereMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in SphereMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SphereMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SphereMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SphereMesh");
		if(constructor is null) return typeof(this).init;
		return cast(SphereMesh)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, double) _GODOT_set_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radius") = _GODOT_set_radius;
	/**
	
	*/
	void setRadius(in double radius)
	{
		_GODOT_set_radius.bind("SphereMesh", "set_radius");
		ptrcall!(void)(_GODOT_set_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radius") = _GODOT_get_radius;
	/**
	
	*/
	double getRadius() const
	{
		_GODOT_get_radius.bind("SphereMesh", "get_radius");
		return ptrcall!(double)(_GODOT_get_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	/**
	
	*/
	void setHeight(in double height)
	{
		_GODOT_set_height.bind("SphereMesh", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	/**
	
	*/
	double getHeight() const
	{
		_GODOT_get_height.bind("SphereMesh", "get_height");
		return ptrcall!(double)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_segments") = _GODOT_set_radial_segments;
	/**
	
	*/
	void setRadialSegments(in long radial_segments)
	{
		_GODOT_set_radial_segments.bind("SphereMesh", "set_radial_segments");
		ptrcall!(void)(_GODOT_set_radial_segments, _godot_object, radial_segments);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_segments") = _GODOT_get_radial_segments;
	/**
	
	*/
	long getRadialSegments() const
	{
		_GODOT_get_radial_segments.bind("SphereMesh", "get_radial_segments");
		return ptrcall!(long)(_GODOT_get_radial_segments, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rings") = _GODOT_set_rings;
	/**
	
	*/
	void setRings(in long rings)
	{
		_GODOT_set_rings.bind("SphereMesh", "set_rings");
		ptrcall!(void)(_GODOT_set_rings, _godot_object, rings);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rings") = _GODOT_get_rings;
	/**
	
	*/
	long getRings() const
	{
		_GODOT_get_rings.bind("SphereMesh", "get_rings");
		return ptrcall!(long)(_GODOT_get_rings, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_is_hemisphere;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_is_hemisphere") = _GODOT_set_is_hemisphere;
	/**
	
	*/
	void setIsHemisphere(in bool is_hemisphere)
	{
		_GODOT_set_is_hemisphere.bind("SphereMesh", "set_is_hemisphere");
		ptrcall!(void)(_GODOT_set_is_hemisphere, _godot_object, is_hemisphere);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_is_hemisphere;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_is_hemisphere") = _GODOT_get_is_hemisphere;
	/**
	
	*/
	bool getIsHemisphere() const
	{
		_GODOT_get_is_hemisphere.bind("SphereMesh", "get_is_hemisphere");
		return ptrcall!(bool)(_GODOT_get_is_hemisphere, _godot_object);
	}
	/**
	Radius of sphere. Defaults to 1.0.
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
	Full height of the sphere. Defaults to 2.0.
	*/
	@property double height()
	{
		return getHeight();
	}
	/// ditto
	@property void height(double v)
	{
		setHeight(v);
	}
	/**
	Number of radial segments on the sphere. Defaults to 64.
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
	Number of segments along the height of the sphere. Defaults to 32.
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
	/**
	Determines whether a full sphere or a hemisphere is created. Attention: To get a regular hemisphere the height and radius of the sphere have to equal. Defaults to false.
	*/
	@property bool isHemisphere()
	{
		return getIsHemisphere();
	}
	/// ditto
	@property void isHemisphere(bool v)
	{
		setIsHemisphere(v);
	}
}
