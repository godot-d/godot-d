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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
/**
Class representing a cylindrical $(D PrimitiveMesh).

This class can be used to create cones by setting either the $(D topRadius) or $(D bottomRadius) properties to 0.0.
*/
@GodotBaseClass struct CylinderMesh
{
	package(godot) enum string _GODOT_internal_name = "CylinderMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_bottom_radius") GodotMethod!(double) getBottomRadius;
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("get_radial_segments") GodotMethod!(long) getRadialSegments;
		@GodotName("get_rings") GodotMethod!(long) getRings;
		@GodotName("get_top_radius") GodotMethod!(double) getTopRadius;
		@GodotName("set_bottom_radius") GodotMethod!(void, double) setBottomRadius;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
		@GodotName("set_radial_segments") GodotMethod!(void, long) setRadialSegments;
		@GodotName("set_rings") GodotMethod!(void, long) setRings;
		@GodotName("set_top_radius") GodotMethod!(void, double) setTopRadius;
	}
	/// 
	pragma(inline, true) bool opEquals(in CylinderMesh other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of CylinderMesh.
	/// Note: use `memnew!CylinderMesh` instead.
	static CylinderMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CylinderMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CylinderMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getBottomRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBottomRadius, _godot_object);
	}
	/**
	
	*/
	double getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	long getRadialSegments() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRadialSegments, _godot_object);
	}
	/**
	
	*/
	long getRings() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRings, _godot_object);
	}
	/**
	
	*/
	double getTopRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTopRadius, _godot_object);
	}
	/**
	
	*/
	void setBottomRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBottomRadius, _godot_object, radius);
	}
	/**
	
	*/
	void setHeight(in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHeight, _godot_object, height);
	}
	/**
	
	*/
	void setRadialSegments(in long segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadialSegments, _godot_object, segments);
	}
	/**
	
	*/
	void setRings(in long rings)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRings, _godot_object, rings);
	}
	/**
	
	*/
	void setTopRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTopRadius, _godot_object, radius);
	}
	/**
	Bottom radius of the cylinder.
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
	Full height of the cylinder.
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
	Number of radial segments on the cylinder.
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
	Number of edge rings along the height of the cylinder.
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
	Top radius of the cylinder.
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
}
