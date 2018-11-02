/**
Omnidirectional light, such as a light bulb or a candle.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.omnilight;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.light;
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
Omnidirectional light, such as a light bulb or a candle.

An Omnidirectional light is a type of $(D Light) that emits light in all directions. The light is attenuated by distance and this attenuation can be configured by changing its energy, radius, and attenuation parameters.
*/
@GodotBaseClass struct OmniLight
{
	enum string _GODOT_internal_name = "OmniLight";
public:
@nogc nothrow:
	union { godot_object _godot_object; Light _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_shadow_mode") GodotMethod!(void, long) setShadowMode;
		@GodotName("get_shadow_mode") GodotMethod!(OmniLight.ShadowMode) getShadowMode;
		@GodotName("set_shadow_detail") GodotMethod!(void, long) setShadowDetail;
		@GodotName("get_shadow_detail") GodotMethod!(OmniLight.ShadowDetail) getShadowDetail;
	}
	bool opEquals(in OmniLight other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OmniLight opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static OmniLight _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("OmniLight");
		if(constructor is null) return typeof(this).init;
		return cast(OmniLight)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ShadowMode : int
	{
		/**
		
		*/
		shadowDualParaboloid = 0,
		/**
		
		*/
		shadowCube = 1,
	}
	/// 
	enum ShadowDetail : int
	{
		/**
		
		*/
		shadowDetailVertical = 0,
		/**
		
		*/
		shadowDetailHorizontal = 1,
	}
	/// 
	enum Constants : int
	{
		shadowDetailVertical = 0,
		shadowDualParaboloid = 0,
		shadowCube = 1,
		shadowDetailHorizontal = 1,
	}
	/**
	
	*/
	void setShadowMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowMode, _godot_object, mode);
	}
	/**
	
	*/
	OmniLight.ShadowMode getShadowMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OmniLight.ShadowMode)(_classBinding.getShadowMode, _godot_object);
	}
	/**
	
	*/
	void setShadowDetail(in long detail)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowDetail, _godot_object, detail);
	}
	/**
	
	*/
	OmniLight.ShadowDetail getShadowDetail() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OmniLight.ShadowDetail)(_classBinding.getShadowDetail, _godot_object);
	}
	/**
	Maximum distance the light affects.
	*/
	@property double omniRange()
	{
		return getParam(3);
	}
	/// ditto
	@property void omniRange(double v)
	{
		setParam(3, v);
	}
	/**
	The light's attenuation (drop-off) curve. A number of presets are available in the Inspector.
	*/
	@property double omniAttenuation()
	{
		return getParam(4);
	}
	/// ditto
	@property void omniAttenuation(double v)
	{
		setParam(4, v);
	}
	/**
	See $(D shadowmode).
	*/
	@property OmniLight.ShadowMode omniShadowMode()
	{
		return getShadowMode();
	}
	/// ditto
	@property void omniShadowMode(long v)
	{
		setShadowMode(v);
	}
	/**
	See $(D shadowdetail).
	*/
	@property OmniLight.ShadowDetail omniShadowDetail()
	{
		return getShadowDetail();
	}
	/// ditto
	@property void omniShadowDetail(long v)
	{
		setShadowDetail(v);
	}
}
