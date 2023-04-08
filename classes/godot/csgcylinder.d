/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgcylinder;
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
import godot.material;
/**

*/
@GodotBaseClass struct CSGCylinder
{
	package(godot) enum string _GODOT_internal_name = "CSGCylinder";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("get_sides") GodotMethod!(long) getSides;
		@GodotName("get_smooth_faces") GodotMethod!(bool) getSmoothFaces;
		@GodotName("is_cone") GodotMethod!(bool) isCone;
		@GodotName("set_cone") GodotMethod!(void, bool) setCone;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
		@GodotName("set_sides") GodotMethod!(void, long) setSides;
		@GodotName("set_smooth_faces") GodotMethod!(void, bool) setSmoothFaces;
	}
	/// 
	pragma(inline, true) bool opEquals(in CSGCylinder other) const
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
	/// Construct a new instance of CSGCylinder.
	/// Note: use `memnew!CSGCylinder` instead.
	static CSGCylinder _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGCylinder");
		if(constructor is null) return typeof(this).init;
		return cast(CSGCylinder)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHeight, _godot_object);
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
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRadius, _godot_object);
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
	bool isCone() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCone, _godot_object);
	}
	/**
	
	*/
	void setCone(in bool cone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCone, _godot_object, cone);
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
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterial, _godot_object, material);
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
	@property bool cone()
	{
		return isCone();
	}
	/// ditto
	@property void cone(bool v)
	{
		setCone(v);
	}
	/**
	
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
