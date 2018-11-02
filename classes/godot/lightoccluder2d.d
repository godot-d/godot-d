/**
Occludes light cast by a Light2D, casting shadows.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.lightoccluder2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.occluderpolygon2d;
import godot.canvasitem;
import godot.node;
/**
Occludes light cast by a Light2D, casting shadows.

The LightOccluder2D must be provided with an $(D OccluderPolygon2D) in order for the shadow to be computed.
*/
@GodotBaseClass struct LightOccluder2D
{
	enum string _GODOT_internal_name = "LightOccluder2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_occluder_polygon") GodotMethod!(void, OccluderPolygon2D) setOccluderPolygon;
		@GodotName("get_occluder_polygon") GodotMethod!(OccluderPolygon2D) getOccluderPolygon;
		@GodotName("set_occluder_light_mask") GodotMethod!(void, long) setOccluderLightMask;
		@GodotName("get_occluder_light_mask") GodotMethod!(long) getOccluderLightMask;
		@GodotName("_poly_changed") GodotMethod!(void) _polyChanged;
	}
	bool opEquals(in LightOccluder2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LightOccluder2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setOccluderPolygon(OccluderPolygon2D polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOccluderPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	Ref!OccluderPolygon2D getOccluderPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OccluderPolygon2D)(_classBinding.getOccluderPolygon, _godot_object);
	}
	/**
	
	*/
	void setOccluderLightMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOccluderLightMask, _godot_object, mask);
	}
	/**
	
	*/
	long getOccluderLightMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOccluderLightMask, _godot_object);
	}
	/**
	
	*/
	void _polyChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_poly_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The $(D OccluderPolygon2D) used to compute the shadow.
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
	/**
	The LightOccluder2D's light mask. The LightOccluder2D will cast shadows only from Light2D(s) that have the same light mask(s).
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
}
