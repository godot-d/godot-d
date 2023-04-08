/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.lightoccluder2d;
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
import godot.node2d;
import godot.occluderpolygon2d;
/**

*/
@GodotBaseClass struct LightOccluder2D
{
	package(godot) enum string _GODOT_internal_name = "LightOccluder2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_poly_changed") GodotMethod!(void) _polyChanged;
		@GodotName("get_occluder_light_mask") GodotMethod!(long) getOccluderLightMask;
		@GodotName("get_occluder_polygon") GodotMethod!(OccluderPolygon2D) getOccluderPolygon;
		@GodotName("set_occluder_light_mask") GodotMethod!(void, long) setOccluderLightMask;
		@GodotName("set_occluder_polygon") GodotMethod!(void, OccluderPolygon2D) setOccluderPolygon;
	}
	/// 
	pragma(inline, true) bool opEquals(in LightOccluder2D other) const
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
	/// Construct a new instance of LightOccluder2D.
	/// Note: use `memnew!LightOccluder2D` instead.
	static LightOccluder2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("LightOccluder2D");
		if(constructor is null) return typeof(this).init;
		return cast(LightOccluder2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _polyChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_poly_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long getOccluderLightMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOccluderLightMask, _godot_object);
	}
	/**
	
	*/
	Ref!OccluderPolygon2D getOccluderPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OccluderPolygon2D)(GDNativeClassBinding.getOccluderPolygon, _godot_object);
	}
	/**
	
	*/
	void setOccluderLightMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOccluderLightMask, _godot_object, mask);
	}
	/**
	
	*/
	void setOccluderPolygon(OccluderPolygon2D polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOccluderPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	@property long lightMask()
	{
		return getOccluderLightMask();
	}
	/// ditto
	@property void lightMask(long v)
	{
		setOccluderLightMask(v);
	}
	/**
	
	*/
	@property OccluderPolygon2D occluder()
	{
		return getOccluderPolygon();
	}
	/// ditto
	@property void occluder(OccluderPolygon2D v)
	{
		setOccluderPolygon(v);
	}
}
