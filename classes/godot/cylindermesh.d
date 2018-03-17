/**
Class representing a cylindrical $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cylindermesh;
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
Class representing a cylindrical $(D PrimitiveMesh).


*/
@GodotBaseClass struct CylinderMesh
{
	static immutable string _GODOT_internal_name = "CylinderMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CylinderMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CylinderMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CylinderMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CylinderMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CylinderMesh)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_top_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_top_radius") = _GODOT_set_top_radius;
	/**
	
	*/
	void setTopRadius(in double radius)
	{
		_GODOT_set_top_radius.bind("CylinderMesh", "set_top_radius");
		ptrcall!(void)(_GODOT_set_top_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_top_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_top_radius") = _GODOT_get_top_radius;
	/**
	
	*/
	double getTopRadius() const
	{
		_GODOT_get_top_radius.bind("CylinderMesh", "get_top_radius");
		return ptrcall!(double)(_GODOT_get_top_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bottom_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bottom_radius") = _GODOT_set_bottom_radius;
	/**
	
	*/
	void setBottomRadius(in double radius)
	{
		_GODOT_set_bottom_radius.bind("CylinderMesh", "set_bottom_radius");
		ptrcall!(void)(_GODOT_set_bottom_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bottom_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bottom_radius") = _GODOT_get_bottom_radius;
	/**
	
	*/
	double getBottomRadius() const
	{
		_GODOT_get_bottom_radius.bind("CylinderMesh", "get_bottom_radius");
		return ptrcall!(double)(_GODOT_get_bottom_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	/**
	
	*/
	void setHeight(in double height)
	{
		_GODOT_set_height.bind("CylinderMesh", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	/**
	
	*/
	double getHeight() const
	{
		_GODOT_get_height.bind("CylinderMesh", "get_height");
		return ptrcall!(double)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radial_segments") = _GODOT_set_radial_segments;
	/**
	
	*/
	void setRadialSegments(in long segments)
	{
		_GODOT_set_radial_segments.bind("CylinderMesh", "set_radial_segments");
		ptrcall!(void)(_GODOT_set_radial_segments, _godot_object, segments);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_radial_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radial_segments") = _GODOT_get_radial_segments;
	/**
	
	*/
	long getRadialSegments() const
	{
		_GODOT_get_radial_segments.bind("CylinderMesh", "get_radial_segments");
		return ptrcall!(long)(_GODOT_get_radial_segments, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rings") = _GODOT_set_rings;
	/**
	
	*/
	void setRings(in long rings)
	{
		_GODOT_set_rings.bind("CylinderMesh", "set_rings");
		ptrcall!(void)(_GODOT_set_rings, _godot_object, rings);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_rings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rings") = _GODOT_get_rings;
	/**
	
	*/
	long getRings() const
	{
		_GODOT_get_rings.bind("CylinderMesh", "get_rings");
		return ptrcall!(long)(_GODOT_get_rings, _godot_object);
	}
	/**
	Top radius of the cylinder. Defaults to 1.0.
	*/
	@property double topRadius()
	{
		return getTopRadius();
	}
	/// ditto
	@property void topRadius(double v)
	{
		setTopRadius(v);
	}
	/**
	Bottom radius of the cylinder. Defaults to 1.0.
	*/
	@property double bottomRadius()
	{
		return getBottomRadius();
	}
	/// ditto
	@property void bottomRadius(double v)
	{
		setBottomRadius(v);
	}
	/**
	Full height of the cylinder. Defaults to 2.0.
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
	Number of radial segments on the cylinder. Defaults to 64.
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
	Number of edge rings along the height of the cylinder. Defaults to 4.
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
