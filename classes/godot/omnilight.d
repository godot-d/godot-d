/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.omnilight;
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
import godot.visualinstance;
/**

*/
@GodotBaseClass struct OmniLight
{
	package(godot) enum string _GODOT_internal_name = "OmniLight";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Light _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_shadow_detail") GodotMethod!(OmniLight.ShadowDetail) getShadowDetail;
		@GodotName("get_shadow_mode") GodotMethod!(OmniLight.ShadowMode) getShadowMode;
		@GodotName("set_shadow_detail") GodotMethod!(void, long) setShadowDetail;
		@GodotName("set_shadow_mode") GodotMethod!(void, long) setShadowMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in OmniLight other) const
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
	/// Construct a new instance of OmniLight.
	/// Note: use `memnew!OmniLight` instead.
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
		/** */
		shadowDualParaboloid = 0,
		/** */
		shadowCube = 1,
	}
	/// 
	enum ShadowDetail : int
	{
		/** */
		shadowDetailVertical = 0,
		/** */
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
	/**
	
	*/
	OmniLight.ShadowDetail getShadowDetail() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OmniLight.ShadowDetail)(GDNativeClassBinding.getShadowDetail, _godot_object);
	}
	/**
	
	*/
	OmniLight.ShadowMode getShadowMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OmniLight.ShadowMode)(GDNativeClassBinding.getShadowMode, _godot_object);
	}
	/**
	
	*/
	void setShadowDetail(in long detail)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowDetail, _godot_object, detail);
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
	@property double omniAttenuation()
	{
		return getParam(5);
	}
	/// ditto
	@property void omniAttenuation(double v)
	{
		setParam(5, v);
	}
	/**
	
	*/
	@property double omniRange()
	{
		return getParam(4);
	}
	/// ditto
	@property void omniRange(double v)
	{
		setParam(4, v);
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
}
