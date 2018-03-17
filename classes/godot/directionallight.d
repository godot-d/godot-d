/**
Directional Light, such as the Sun or the Moon.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.directionallight;
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
Directional Light, such as the Sun or the Moon.

A DirectionalLight is a type of $(D Light) node that emits light constantly in one direction (the negative z axis of the node). It is used lights with strong intensity that are located far away from the scene to model sunlight or moonlight. The worldspace location of the DirectionalLight transform (origin) is ignored, only the basis is used do determine light direction.
*/
@GodotBaseClass struct DirectionalLight
{
	static immutable string _GODOT_internal_name = "DirectionalLight";
public:
@nogc nothrow:
	union { godot_object _godot_object; Light _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in DirectionalLight other) const { return _godot_object.ptr is other._godot_object.ptr; }
	DirectionalLight opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static DirectionalLight _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("DirectionalLight");
		if(constructor is null) return typeof(this).init;
		return cast(DirectionalLight)(constructor());
	}
	/// 
	enum ShadowMode : int
	{
		/**
		
		*/
		shadowOrthogonal = 0,
		/**
		
		*/
		shadowParallel2Splits = 1,
		/**
		
		*/
		shadowParallel4Splits = 2,
	}
	/// 
	enum ShadowDepthRange : int
	{
		/**
		
		*/
		shadowDepthRangeStable = 0,
		/**
		
		*/
		shadowDepthRangeOptimized = 1,
	}
	/// 
	enum Constants : int
	{
		shadowOrthogonal = 0,
		shadowDepthRangeStable = 0,
		shadowParallel2Splits = 1,
		shadowDepthRangeOptimized = 1,
		shadowParallel4Splits = 2,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_mode") = _GODOT_set_shadow_mode;
	/**
	
	*/
	void setShadowMode(in long mode)
	{
		_GODOT_set_shadow_mode.bind("DirectionalLight", "set_shadow_mode");
		ptrcall!(void)(_GODOT_set_shadow_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(DirectionalLight.ShadowMode) _GODOT_get_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_mode") = _GODOT_get_shadow_mode;
	/**
	
	*/
	DirectionalLight.ShadowMode getShadowMode() const
	{
		_GODOT_get_shadow_mode.bind("DirectionalLight", "get_shadow_mode");
		return ptrcall!(DirectionalLight.ShadowMode)(_GODOT_get_shadow_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_shadow_depth_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_depth_range") = _GODOT_set_shadow_depth_range;
	/**
	
	*/
	void setShadowDepthRange(in long mode)
	{
		_GODOT_set_shadow_depth_range.bind("DirectionalLight", "set_shadow_depth_range");
		ptrcall!(void)(_GODOT_set_shadow_depth_range, _godot_object, mode);
	}
	package(godot) static GodotMethod!(DirectionalLight.ShadowDepthRange) _GODOT_get_shadow_depth_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_depth_range") = _GODOT_get_shadow_depth_range;
	/**
	
	*/
	DirectionalLight.ShadowDepthRange getShadowDepthRange() const
	{
		_GODOT_get_shadow_depth_range.bind("DirectionalLight", "get_shadow_depth_range");
		return ptrcall!(DirectionalLight.ShadowDepthRange)(_GODOT_get_shadow_depth_range, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_blend_splits;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_blend_splits") = _GODOT_set_blend_splits;
	/**
	
	*/
	void setBlendSplits(in bool enabled)
	{
		_GODOT_set_blend_splits.bind("DirectionalLight", "set_blend_splits");
		ptrcall!(void)(_GODOT_set_blend_splits, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_blend_splits_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_blend_splits_enabled") = _GODOT_is_blend_splits_enabled;
	/**
	
	*/
	bool isBlendSplitsEnabled() const
	{
		_GODOT_is_blend_splits_enabled.bind("DirectionalLight", "is_blend_splits_enabled");
		return ptrcall!(bool)(_GODOT_is_blend_splits_enabled, _godot_object);
	}
	/**
	
	*/
	@property DirectionalLight.ShadowMode directionalShadowMode()
	{
		return getShadowMode();
	}
	/// ditto
	@property void directionalShadowMode(long v)
	{
		setShadowMode(v);
	}
	/**
	
	*/
	@property double directionalShadowSplit1()
	{
		return getParam(9);
	}
	/// ditto
	@property void directionalShadowSplit1(double v)
	{
		setParam(9, v);
	}
	/**
	
	*/
	@property double directionalShadowSplit2()
	{
		return getParam(10);
	}
	/// ditto
	@property void directionalShadowSplit2(double v)
	{
		setParam(10, v);
	}
	/**
	
	*/
	@property double directionalShadowSplit3()
	{
		return getParam(11);
	}
	/// ditto
	@property void directionalShadowSplit3(double v)
	{
		setParam(11, v);
	}
	/**
	
	*/
	@property bool directionalShadowBlendSplits()
	{
		return isBlendSplitsEnabled();
	}
	/// ditto
	@property void directionalShadowBlendSplits(bool v)
	{
		setBlendSplits(v);
	}
	/**
	
	*/
	@property double directionalShadowNormalBias()
	{
		return getParam(12);
	}
	/// ditto
	@property void directionalShadowNormalBias(double v)
	{
		setParam(12, v);
	}
	/**
	
	*/
	@property double directionalShadowBiasSplitScale()
	{
		return getParam(14);
	}
	/// ditto
	@property void directionalShadowBiasSplitScale(double v)
	{
		setParam(14, v);
	}
	/**
	
	*/
	@property DirectionalLight.ShadowDepthRange directionalShadowDepthRange()
	{
		return getShadowDepthRange();
	}
	/// ditto
	@property void directionalShadowDepthRange(long v)
	{
		setShadowDepthRange(v);
	}
	/**
	
	*/
	@property double directionalShadowMaxDistance()
	{
		return getParam(8);
	}
	/// ditto
	@property void directionalShadowMaxDistance(double v)
	{
		setParam(8, v);
	}
}
