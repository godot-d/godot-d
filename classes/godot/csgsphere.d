/**
A CSG Sphere shape.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgsphere;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.csgprimitive;
import godot.csgshape;
import godot.geometryinstance;
import godot.material;
/**
A CSG Sphere shape.

This node allows you to create a sphere for use with the CSG system.
*/
@GodotBaseClass struct CSGSphere
{
	package(godot) enum string _GODOT_internal_name = "CSGSphere";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_radial_segments") GodotMethod!(long) getRadialSegments;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("get_rings") GodotMethod!(long) getRings;
		@GodotName("get_smooth_faces") GodotMethod!(bool) getSmoothFaces;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("set_radial_segments") GodotMethod!(void, long) setRadialSegments;
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
		@GodotName("set_rings") GodotMethod!(void, long) setRings;
		@GodotName("set_smooth_faces") GodotMethod!(void, bool) setSmoothFaces;
	}
	/// 
	pragma(inline, true) bool opEquals(in CSGSphere other) const
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
	/// Construct a new instance of CSGSphere.
	/// Note: use `memnew!CSGSphere` instead.
	static CSGSphere _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGSphere");
		if(constructor is null) return typeof(this).init;
		return cast(CSGSphere)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getMaterial, _godot_object);
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
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRadius, _godot_object);
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
	bool getSmoothFaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getSmoothFaces, _godot_object);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterial, _godot_object, material);
	}
	/**
	
	*/
	void setRadialSegments(in long radial_segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadialSegments, _godot_object, radial_segments);
	}
	/**
	
	*/
	void setRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadius, _godot_object, radius);
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
	void setSmoothFaces(in bool smooth_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSmoothFaces, _godot_object, smooth_faces);
	}
	/**
	Number of vertical slices for the sphere.
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
	Radius of the sphere.
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
	Number of horizontal slices for the sphere.
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
	If `true` the normals of the sphere are set to give a smooth effect making the sphere seem rounded. If `false` the sphere will have a flat shaded look.
	*/
	@property bool smoothFaces()
	{
		return getSmoothFaces();
	}
	/// ditto
	@property void smoothFaces(bool v)
	{
		setSmoothFaces(v);
	}
}
