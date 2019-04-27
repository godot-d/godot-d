/**
Directional light from a distance, as from the Sun.

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
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
Directional light from a distance, as from the Sun.

A directional light is a type of $(D Light) node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene to model sunlight or moonlight. The worldspace location of the DirectionalLight transform (origin) is ignored. Only the basis is used do determine light direction.
*/
@GodotBaseClass struct DirectionalLight
{
	enum string _GODOT_internal_name = "DirectionalLight";
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
		@GodotName("get_shadow_mode") GodotMethod!(DirectionalLight.ShadowMode) getShadowMode;
		@GodotName("set_shadow_depth_range") GodotMethod!(void, long) setShadowDepthRange;
		@GodotName("get_shadow_depth_range") GodotMethod!(DirectionalLight.ShadowDepthRange) getShadowDepthRange;
		@GodotName("set_blend_splits") GodotMethod!(void, bool) setBlendSplits;
		@GodotName("is_blend_splits_enabled") GodotMethod!(bool) isBlendSplitsEnabled;
	}
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
	@disable new(size_t s);
	/// 
	enum ShadowMode : int
	{
		/**
		Renders the entire scene's shadow map from an orthogonal point of view. May result in blockier shadows on close objects.
		*/
		shadowOrthogonal = 0,
		/**
		Splits the view frustum in 2 areas, each with its own shadow map.
		*/
		shadowParallel2Splits = 1,
		/**
		Splits the view frustum in 4 areas, each with its own shadow map.
		*/
		shadowParallel4Splits = 2,
	}
	/// 
	enum ShadowDepthRange : int
	{
		/**
		Keeps the shadow stable when the camera moves, at the cost of lower effective shadow resolution. Default value.
		*/
		shadowDepthRangeStable = 0,
		/**
		Tries to achieve maximum shadow resolution. May result in saw effect on shadow edges.
		*/
		shadowDepthRangeOptimized = 1,
	}
	/// 
	enum Constants : int
	{
		shadowOrthogonal = 0,
		shadowDepthRangeStable = 0,
		shadowDepthRangeOptimized = 1,
		shadowParallel2Splits = 1,
		shadowParallel4Splits = 2,
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
	DirectionalLight.ShadowMode getShadowMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DirectionalLight.ShadowMode)(_classBinding.getShadowMode, _godot_object);
	}
	/**
	
	*/
	void setShadowDepthRange(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowDepthRange, _godot_object, mode);
	}
	/**
	
	*/
	DirectionalLight.ShadowDepthRange getShadowDepthRange() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DirectionalLight.ShadowDepthRange)(_classBinding.getShadowDepthRange, _godot_object);
	}
	/**
	
	*/
	void setBlendSplits(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlendSplits, _godot_object, enabled);
	}
	/**
	
	*/
	bool isBlendSplitsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBlendSplitsEnabled, _godot_object);
	}
	/**
	The light's shadow rendering algorithm. See $(D shadowmode).
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
	The distance from camera to shadow split 1. Relative to $(D directionalShadowMaxDistance). Only used when $(D directionalShadowMode) is one of the `SHADOW_PARALLEL_*_SPLITS` constants.
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
	The distance from shadow split 1 to split 2. Relative to $(D directionalShadowMaxDistance). Only used when $(D directionalShadowMode) is `SHADOW_PARALLEL_3_SPLITS` or `SHADOW_PARALLEL_4_SPLITS`.
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
	The distance from shadow split 2 to split 3. Relative to $(D directionalShadowMaxDistance). Only used when $(D directionalShadowMode) is `SHADOW_PARALLEL_4_SPLITS`.
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
	If `true`, shadow detail is sacrificed in exchange for smoother transitions between splits. Default value:`false`.
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
	Can be used to fix special cases of self shadowing when objects are perpendicular to the light.
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
	Amount of extra bias for shadow splits that are far away. If self shadowing occurs only on the splits far away, this value can fix them.
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
	Optimizes shadow rendering for detail versus movement. See $(D shadowdepthrange).
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
	The maximum distance for shadow splits.
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
