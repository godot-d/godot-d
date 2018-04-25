/**
OmniDirectional Light, such as a light bulb or a candle.

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
/**
OmniDirectional Light, such as a light bulb or a candle.

An OmniDirectional light is a type of $(D Light) node that emits lights in all directions. The light is attenuated through the distance and this attenuation can be configured by changing the energy, radius and attenuation parameters of $(D Light).
*/
@GodotBaseClass struct OmniLight
{
	static immutable string _GODOT_internal_name = "OmniLight";
public:
@nogc nothrow:
	union { godot_object _godot_object; Light _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		shadowDualParaboloid = 0,
		shadowDetailVertical = 0,
		shadowDetailHorizontal = 1,
		shadowCube = 1,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_mode") = _GODOT_set_shadow_mode;
	/**
	
	*/
	void setShadowMode(in long mode)
	{
		_GODOT_set_shadow_mode.bind("OmniLight", "set_shadow_mode");
		ptrcall!(void)(_GODOT_set_shadow_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(OmniLight.ShadowMode) _GODOT_get_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_mode") = _GODOT_get_shadow_mode;
	/**
	
	*/
	OmniLight.ShadowMode getShadowMode() const
	{
		_GODOT_get_shadow_mode.bind("OmniLight", "get_shadow_mode");
		return ptrcall!(OmniLight.ShadowMode)(_GODOT_get_shadow_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_shadow_detail;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_detail") = _GODOT_set_shadow_detail;
	/**
	
	*/
	void setShadowDetail(in long detail)
	{
		_GODOT_set_shadow_detail.bind("OmniLight", "set_shadow_detail");
		ptrcall!(void)(_GODOT_set_shadow_detail, _godot_object, detail);
	}
	package(godot) static GodotMethod!(OmniLight.ShadowDetail) _GODOT_get_shadow_detail;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_detail") = _GODOT_get_shadow_detail;
	/**
	
	*/
	OmniLight.ShadowDetail getShadowDetail() const
	{
		_GODOT_get_shadow_detail.bind("OmniLight", "get_shadow_detail");
		return ptrcall!(OmniLight.ShadowDetail)(_GODOT_get_shadow_detail, _godot_object);
	}
	/**
	
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
