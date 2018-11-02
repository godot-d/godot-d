/**
A CSG Box shape.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgbox;
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
A CSG Box shape.

This node allows you to create a box for use with the CSG system.
*/
@GodotBaseClass struct CSGBox
{
	enum string _GODOT_internal_name = "CSGBox";
public:
@nogc nothrow:
	union { godot_object _godot_object; CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_width") GodotMethod!(void, double) setWidth;
		@GodotName("get_width") GodotMethod!(double) getWidth;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("set_depth") GodotMethod!(void, double) setDepth;
		@GodotName("get_depth") GodotMethod!(double) getDepth;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
	}
	bool opEquals(in CSGBox other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CSGBox opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CSGBox _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGBox");
		if(constructor is null) return typeof(this).init;
		return cast(CSGBox)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setWidth(in double width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWidth, _godot_object, width);
	}
	/**
	
	*/
	double getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getWidth, _godot_object);
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
	double getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	void setDepth(in double depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepth, _godot_object, depth);
	}
	/**
	
	*/
	double getDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDepth, _godot_object);
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
	Width of the box measured from the center of the box.
	*/
	@property double width()
	{
		return getWidth();
	}
	/// ditto
	@property void width(double v)
	{
		setWidth(v);
	}
	/**
	Height of the box measured from the center of the box.
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
	Depth of the box measured from the center of the box.
	*/
	@property double depth()
	{
		return getDepth();
	}
	/// ditto
	@property void depth(double v)
	{
		setDepth(v);
	}
}
