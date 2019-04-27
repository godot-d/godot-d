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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.csgprimitive;
import godot.material;
import godot.csgshape;
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
A CSG Sphere shape.

This node allows you to create a sphere for use with the CSG system.
*/
@GodotBaseClass struct CSGSphere
{
	enum string _GODOT_internal_name = "CSGSphere";
public:
@nogc nothrow:
	union { godot_object _godot_object; CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("set_radial_segments") GodotMethod!(void, long) setRadialSegments;
		@GodotName("get_radial_segments") GodotMethod!(long) getRadialSegments;
		@GodotName("set_rings") GodotMethod!(void, long) setRings;
		@GodotName("get_rings") GodotMethod!(long) getRings;
		@GodotName("set_smooth_faces") GodotMethod!(void, bool) setSmoothFaces;
		@GodotName("get_smooth_faces") GodotMethod!(bool) getSmoothFaces;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
	}
	bool opEquals(in CSGSphere other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CSGSphere opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadius, _godot_object, radius);
	}
	/**
	
	*/
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRadius, _godot_object);
	}
	/**
	
	*/
	void setRadialSegments(in long radial_segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadialSegments, _godot_object, radial_segments);
	}
	/**
	
	*/
	long getRadialSegments() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRadialSegments, _godot_object);
	}
	/**
	
	*/
	void setRings(in long rings)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRings, _godot_object, rings);
	}
	/**
	
	*/
	long getRings() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRings, _godot_object);
	}
	/**
	
	*/
	void setSmoothFaces(in bool smooth_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSmoothFaces, _godot_object, smooth_faces);
	}
	/**
	
	*/
	bool getSmoothFaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getSmoothFaces, _godot_object);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaterial, _godot_object, material);
	}
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(_classBinding.getMaterial, _godot_object);
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
