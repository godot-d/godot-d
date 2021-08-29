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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.light;
/**
Directional light from a distance, as from the Sun.

A directional light is a type of $(D Light) node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene to model sunlight or moonlight. The worldspace location of the DirectionalLight transform (origin) is ignored. Only the basis is used to determine light direction.
*/
@GodotBaseClass struct DirectionalLight
{
	package(godot) enum string _GODOT_internal_name = "DirectionalLight";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Light _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_shadow_depth_range") GodotMethod!(DirectionalLight.ShadowDepthRange) getShadowDepthRange;
		@GodotName("get_shadow_mode") GodotMethod!(DirectionalLight.ShadowMode) getShadowMode;
		@GodotName("is_blend_splits_enabled") GodotMethod!(bool) isBlendSplitsEnabled;
		@GodotName("set_blend_splits") GodotMethod!(void, bool) setBlendSplits;
		@GodotName("set_shadow_depth_range") GodotMethod!(void, long) setShadowDepthRange;
		@GodotName("set_shadow_mode") GodotMethod!(void, long) setShadowMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in DirectionalLight other) const
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
	/// Construct a new instance of DirectionalLight.
	/// Note: use `memnew!DirectionalLight` instead.
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
		Renders the entire scene's shadow map from an orthogonal point of view. This is the fastest directional shadow mode. May result in blurrier shadows on close objects.
		*/
		shadowOrthogonal = 0,
		/**
		Splits the view frustum in 2 areas, each with its own shadow map. This shadow mode is a compromise between $(D constant SHADOW_ORTHOGONAL) and $(D constant SHADOW_PARALLEL_4_SPLITS) in terms of performance.
		*/
		shadowParallel2Splits = 1,
		/**
		Splits the view frustum in 4 areas, each with its own shadow map. This is the slowest directional shadow mode.
		*/
		shadowParallel4Splits = 2,
	}
	/// 
	enum ShadowDepthRange : int
	{
		/**
		Keeps the shadow stable when the camera moves, at the cost of lower effective shadow resolution.
		*/
		shadowDepthRangeStable = 0,
		/**
		Tries to achieve maximum shadow resolution. May result in saw effect on shadow edges. This mode typically works best in games where the camera will often move at high speeds, such as most racing games.
		*/
		shadowDepthRangeOptimized = 1,
	}
	/// 
	enum Constants : int
	{
		shadowDepthRangeStable = 0,
		shadowOrthogonal = 0,
		shadowParallel2Splits = 1,
		shadowDepthRangeOptimized = 1,
		shadowParallel4Splits = 2,
	}
	/**
	
	*/
	DirectionalLight.ShadowDepthRange getShadowDepthRange() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DirectionalLight.ShadowDepthRange)(GDNativeClassBinding.getShadowDepthRange, _godot_object);
	}
	/**
	
	*/
	DirectionalLight.ShadowMode getShadowMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DirectionalLight.ShadowMode)(GDNativeClassBinding.getShadowMode, _godot_object);
	}
	/**
	
	*/
	bool isBlendSplitsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBlendSplitsEnabled, _godot_object);
	}
	/**
	
	*/
	void setBlendSplits(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendSplits, _godot_object, enabled);
	}
	/**
	
	*/
	void setShadowDepthRange(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowDepthRange, _godot_object, mode);
	}
	/**
	
	*/
	void setShadowMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowMode, _godot_object, mode);
	}
	/**
	Amount of extra bias for shadow splits that are far away. If self-shadowing occurs only on the splits far away, increasing this value can fix them.
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
	If `true`, shadow detail is sacrificed in exchange for smoother transitions between splits.
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
	The distance from camera to shadow split 1. Relative to $(D directionalShadowMaxDistance). Only used when $(D directionalShadowMode) is `SHADOW_PARALLEL_2_SPLITS` or `SHADOW_PARALLEL_4_SPLITS`.
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
	The distance from shadow split 1 to split 2. Relative to $(D directionalShadowMaxDistance). Only used when $(D directionalShadowMode) is `SHADOW_PARALLEL_2_SPLITS` or `SHADOW_PARALLEL_4_SPLITS`.
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
}
