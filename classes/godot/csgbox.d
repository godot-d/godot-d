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
A CSG Box shape.

This node allows you to create a box for use with the CSG system.
*/
@GodotBaseClass struct CSGBox
{
	package(godot) enum string _GODOT_internal_name = "CSGBox";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_depth") GodotMethod!(double) getDepth;
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_width") GodotMethod!(double) getWidth;
		@GodotName("set_depth") GodotMethod!(void, double) setDepth;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("set_width") GodotMethod!(void, double) setWidth;
	}
	/// 
	pragma(inline, true) bool opEquals(in CSGBox other) const
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
	/// Construct a new instance of CSGBox.
	/// Note: use `memnew!CSGBox` instead.
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
	double getDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDepth, _godot_object);
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
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getMaterial, _godot_object);
	}
	/**
	
	*/
	double getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWidth, _godot_object);
	}
	/**
	
	*/
	void setDepth(in double depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepth, _godot_object, depth);
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
	void setWidth(in double width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWidth, _godot_object, width);
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
}
