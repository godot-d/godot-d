/**
A CSG Torus shape.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgtorus;
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
A CSG Torus shape.

This node allows you to create a torus for use with the CSG system.
*/
@GodotBaseClass struct CSGTorus
{
	enum string _GODOT_internal_name = "CSGTorus";
public:
@nogc nothrow:
	union { godot_object _godot_object; CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_inner_radius") GodotMethod!(void, double) setInnerRadius;
		@GodotName("get_inner_radius") GodotMethod!(double) getInnerRadius;
		@GodotName("set_outer_radius") GodotMethod!(void, double) setOuterRadius;
		@GodotName("get_outer_radius") GodotMethod!(double) getOuterRadius;
		@GodotName("set_sides") GodotMethod!(void, long) setSides;
		@GodotName("get_sides") GodotMethod!(long) getSides;
		@GodotName("set_ring_sides") GodotMethod!(void, long) setRingSides;
		@GodotName("get_ring_sides") GodotMethod!(long) getRingSides;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("set_smooth_faces") GodotMethod!(void, bool) setSmoothFaces;
		@GodotName("get_smooth_faces") GodotMethod!(bool) getSmoothFaces;
	}
	bool opEquals(in CSGTorus other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CSGTorus opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CSGTorus _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGTorus");
		if(constructor is null) return typeof(this).init;
		return cast(CSGTorus)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setInnerRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInnerRadius, _godot_object, radius);
	}
	/**
	
	*/
	double getInnerRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getInnerRadius, _godot_object);
	}
	/**
	
	*/
	void setOuterRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOuterRadius, _godot_object, radius);
	}
	/**
	
	*/
	double getOuterRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getOuterRadius, _godot_object);
	}
	/**
	
	*/
	void setSides(in long sides)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSides, _godot_object, sides);
	}
	/**
	
	*/
	long getSides() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSides, _godot_object);
	}
	/**
	
	*/
	void setRingSides(in long sides)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRingSides, _godot_object, sides);
	}
	/**
	
	*/
	long getRingSides() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRingSides, _godot_object);
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
	The inner radius of the torus.
	*/
	@property double innerRadius()
	{
		return getInnerRadius();
	}
	/// ditto
	@property void innerRadius(double v)
	{
		setInnerRadius(v);
	}
	/**
	The outer radius of the torus.
	*/
	@property double outerRadius()
	{
		return getOuterRadius();
	}
	/// ditto
	@property void outerRadius(double v)
	{
		setOuterRadius(v);
	}
	/**
	The number of slices the torus is constructed of.
	*/
	@property long sides()
	{
		return getSides();
	}
	/// ditto
	@property void sides(long v)
	{
		setSides(v);
	}
	/**
	The number of edges each ring of the torus is constructed of.
	*/
	@property long ringSides()
	{
		return getRingSides();
	}
	/// ditto
	@property void ringSides(long v)
	{
		setRingSides(v);
	}
	/**
	If true the normals of the torus are set to give a smooth effect making the torus seem rounded. When false the torus will have a flat shaded look.
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
