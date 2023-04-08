/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgtorus;
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

*/
@GodotBaseClass struct CSGTorus
{
	package(godot) enum string _GODOT_internal_name = "CSGTorus";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_inner_radius") GodotMethod!(double) getInnerRadius;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_outer_radius") GodotMethod!(double) getOuterRadius;
		@GodotName("get_ring_sides") GodotMethod!(long) getRingSides;
		@GodotName("get_sides") GodotMethod!(long) getSides;
		@GodotName("get_smooth_faces") GodotMethod!(bool) getSmoothFaces;
		@GodotName("set_inner_radius") GodotMethod!(void, double) setInnerRadius;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("set_outer_radius") GodotMethod!(void, double) setOuterRadius;
		@GodotName("set_ring_sides") GodotMethod!(void, long) setRingSides;
		@GodotName("set_sides") GodotMethod!(void, long) setSides;
		@GodotName("set_smooth_faces") GodotMethod!(void, bool) setSmoothFaces;
	}
	/// 
	pragma(inline, true) bool opEquals(in CSGTorus other) const
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
	/// Construct a new instance of CSGTorus.
	/// Note: use `memnew!CSGTorus` instead.
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
	double getInnerRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInnerRadius, _godot_object);
	}
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getMaterial, _godot_object);
	}
	/**
	
	*/
	double getOuterRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOuterRadius, _godot_object);
	}
	/**
	
	*/
	long getRingSides() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRingSides, _godot_object);
	}
	/**
	
	*/
	long getSides() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSides, _godot_object);
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
	void setInnerRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInnerRadius, _godot_object, radius);
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
	void setOuterRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOuterRadius, _godot_object, radius);
	}
	/**
	
	*/
	void setRingSides(in long sides)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRingSides, _godot_object, sides);
	}
	/**
	
	*/
	void setSides(in long sides)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSides, _godot_object, sides);
	}
	/**
	
	*/
	void setSmoothFaces(in bool smooth_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSmoothFaces, _godot_object, smooth_faces);
	}
	/**
	
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
