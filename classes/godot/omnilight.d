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
Omnidirectional light, such as a light bulb or a candle.

An Omnidirectional light is a type of $(D Light) that emits light in all directions. The light is attenuated by distance and this attenuation can be configured by changing its energy, radius, and attenuation parameters.
$(B Note:) By default, only 32 OmniLights may affect a single mesh $(I resource) at once. Consider splitting your level into several meshes to decrease the likelihood that more than 32 lights will affect the same mesh resource. Splitting the level mesh will also improve frustum culling effectiveness, leading to greater performance. If you need to use more lights per mesh, you can increase $(D ProjectSettings.rendering/limits/rendering/maxLightsPerObject) at the cost of shader compilation times.
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
		/**
		Shadows are rendered to a dual-paraboloid texture. Faster than $(D constant SHADOW_CUBE), but lower-quality.
		*/
		shadowDualParaboloid = 0,
		/**
		Shadows are rendered to a cubemap. Slower than $(D constant SHADOW_DUAL_PARABOLOID), but higher-quality.
		*/
		shadowCube = 1,
	}
	/// 
	enum ShadowDetail : int
	{
		/**
		Use more detail vertically when computing the shadow.
		*/
		shadowDetailVertical = 0,
		/**
		Use more detail horizontally when computing the shadow.
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
	The light's attenuation (drop-off) curve. A number of presets are available in the $(B Inspector) by right-clicking the curve.
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
	The light's radius. Note that the effectively lit area may appear to be smaller depending on the $(D omniAttenuation) in use. No matter the $(D omniAttenuation) in use, the light will never reach anything outside this radius.
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
}
