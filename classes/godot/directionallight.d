/**


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
		/** */
		shadowOrthogonal = 0,
		/** */
		shadowParallel2Splits = 1,
		/** */
		shadowParallel4Splits = 2,
	}
	/// 
	enum ShadowDepthRange : int
	{
		/** */
		shadowDepthRangeStable = 0,
		/** */
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
	
	*/
	@property double directionalShadowBiasSplitScale()
	{
		return getParam(15);
	}
	/// ditto
	@property void directionalShadowBiasSplitScale(double v)
	{
		setParam(15, v);
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
		return getParam(9);
	}
	/// ditto
	@property void directionalShadowMaxDistance(double v)
	{
		setParam(9, v);
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
	@property double directionalShadowNormalBias()
	{
		return getParam(13);
	}
	/// ditto
	@property void directionalShadowNormalBias(double v)
	{
		setParam(13, v);
	}
	/**
	
	*/
	@property double directionalShadowSplit1()
	{
		return getParam(10);
	}
	/// ditto
	@property void directionalShadowSplit1(double v)
	{
		setParam(10, v);
	}
	/**
	
	*/
	@property double directionalShadowSplit2()
	{
		return getParam(11);
	}
	/// ditto
	@property void directionalShadowSplit2(double v)
	{
		setParam(11, v);
	}
	/**
	
	*/
	@property double directionalShadowSplit3()
	{
		return getParam(12);
	}
	/// ditto
	@property void directionalShadowSplit3(double v)
	{
		setParam(12, v);
	}
}
