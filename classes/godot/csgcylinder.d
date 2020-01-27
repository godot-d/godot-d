/**
A CSG Cylinder shape.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgcylinder;
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
/**
A CSG Cylinder shape.

This node allows you to create a cylinder (or cone) for use with the CSG system.
*/
@GodotBaseClass struct CSGCylinder
{
	enum string _GODOT_internal_name = "CSGCylinder";
public:
@nogc nothrow:
	union { godot_object _godot_object; CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
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
	bool opEquals(in CSGCylinder other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CSGCylinder opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		return ptrcall!(double)(_classBinding.getHeight, _godot_object);
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
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRadius, _godot_object);
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
	bool getSmoothFaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getSmoothFaces, _godot_object);
	}
	/**
	
	*/
	bool isCone() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCone, _godot_object);
	}
	/**
	
	*/
	void setCone(in bool cone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCone, _godot_object, cone);
	}
	/**
	
	*/
	void setHeight(in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHeight, _godot_object, height);
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
	void setRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadius, _godot_object, radius);
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
	void setSmoothFaces(in bool smooth_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSmoothFaces, _godot_object, smooth_faces);
	}
	/**
	If `true` a cone is created, the $(D radius) will only apply to one side.
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
	The height of the cylinder.
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
	The radius of the cylinder.
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
	The number of sides of the cylinder, the higher this number the more detail there will be in the cylinder.
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
	If `true` the normals of the cylinder are set to give a smooth effect making the cylinder seem rounded. If `false` the cylinder will have a flat shaded look.
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
