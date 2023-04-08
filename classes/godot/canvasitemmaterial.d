/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.canvasitemmaterial;
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
import godot.material;
/**

*/
@GodotBaseClass struct CanvasItemMaterial
{
	package(godot) enum string _GODOT_internal_name = "CanvasItemMaterial";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_blend_mode") GodotMethod!(CanvasItemMaterial.BlendMode) getBlendMode;
		@GodotName("get_light_mode") GodotMethod!(CanvasItemMaterial.LightMode) getLightMode;
		@GodotName("get_particles_anim_h_frames") GodotMethod!(long) getParticlesAnimHFrames;
		@GodotName("get_particles_anim_loop") GodotMethod!(bool) getParticlesAnimLoop;
		@GodotName("get_particles_anim_v_frames") GodotMethod!(long) getParticlesAnimVFrames;
		@GodotName("get_particles_animation") GodotMethod!(bool) getParticlesAnimation;
		@GodotName("set_blend_mode") GodotMethod!(void, long) setBlendMode;
		@GodotName("set_light_mode") GodotMethod!(void, long) setLightMode;
		@GodotName("set_particles_anim_h_frames") GodotMethod!(void, long) setParticlesAnimHFrames;
		@GodotName("set_particles_anim_loop") GodotMethod!(void, bool) setParticlesAnimLoop;
		@GodotName("set_particles_anim_v_frames") GodotMethod!(void, long) setParticlesAnimVFrames;
		@GodotName("set_particles_animation") GodotMethod!(void, bool) setParticlesAnimation;
	}
	/// 
	pragma(inline, true) bool opEquals(in CanvasItemMaterial other) const
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
	/// Construct a new instance of CanvasItemMaterial.
	/// Note: use `memnew!CanvasItemMaterial` instead.
	static CanvasItemMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CanvasItemMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasItemMaterial)(constructor());
	}
	/// 
	enum LightMode : int
	{
		/** */
		lightModeNormal = 0,
		/** */
		lightModeUnshaded = 1,
		/** */
		lightModeLightOnly = 2,
	}
	/// 
	enum BlendMode : int
	{
		/** */
		blendModeMix = 0,
		/** */
		blendModeAdd = 1,
		/** */
		blendModeSub = 2,
		/** */
		blendModeMul = 3,
		/** */
		blendModePremultAlpha = 4,
	}
	/// 
	enum Constants : int
	{
		lightModeNormal = 0,
		blendModeMix = 0,
		blendModeAdd = 1,
		lightModeUnshaded = 1,
		lightModeLightOnly = 2,
		blendModeSub = 2,
		blendModeMul = 3,
		blendModePremultAlpha = 4,
	}
	/**
	
	*/
	CanvasItemMaterial.BlendMode getBlendMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CanvasItemMaterial.BlendMode)(GDNativeClassBinding.getBlendMode, _godot_object);
	}
	/**
	
	*/
	CanvasItemMaterial.LightMode getLightMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CanvasItemMaterial.LightMode)(GDNativeClassBinding.getLightMode, _godot_object);
	}
	/**
	
	*/
	long getParticlesAnimHFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getParticlesAnimHFrames, _godot_object);
	}
	/**
	
	*/
	bool getParticlesAnimLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getParticlesAnimLoop, _godot_object);
	}
	/**
	
	*/
	long getParticlesAnimVFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getParticlesAnimVFrames, _godot_object);
	}
	/**
	
	*/
	bool getParticlesAnimation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getParticlesAnimation, _godot_object);
	}
	/**
	
	*/
	void setBlendMode(in long blend_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendMode, _godot_object, blend_mode);
	}
	/**
	
	*/
	void setLightMode(in long light_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLightMode, _godot_object, light_mode);
	}
	/**
	
	*/
	void setParticlesAnimHFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParticlesAnimHFrames, _godot_object, frames);
	}
	/**
	
	*/
	void setParticlesAnimLoop(in bool loop)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParticlesAnimLoop, _godot_object, loop);
	}
	/**
	
	*/
	void setParticlesAnimVFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParticlesAnimVFrames, _godot_object, frames);
	}
	/**
	
	*/
	void setParticlesAnimation(in bool particles_anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParticlesAnimation, _godot_object, particles_anim);
	}
	/**
	
	*/
	@property CanvasItemMaterial.BlendMode blendMode()
	{
		return getBlendMode();
	}
	/// ditto
	@property void blendMode(long v)
	{
		setBlendMode(v);
	}
	/**
	
	*/
	@property CanvasItemMaterial.LightMode lightMode()
	{
		return getLightMode();
	}
	/// ditto
	@property void lightMode(long v)
	{
		setLightMode(v);
	}
	/**
	
	*/
	@property long particlesAnimHFrames()
	{
		return getParticlesAnimHFrames();
	}
	/// ditto
	@property void particlesAnimHFrames(long v)
	{
		setParticlesAnimHFrames(v);
	}
	/**
	
	*/
	@property bool particlesAnimLoop()
	{
		return getParticlesAnimLoop();
	}
	/// ditto
	@property void particlesAnimLoop(bool v)
	{
		setParticlesAnimLoop(v);
	}
	/**
	
	*/
	@property long particlesAnimVFrames()
	{
		return getParticlesAnimVFrames();
	}
	/// ditto
	@property void particlesAnimVFrames(long v)
	{
		setParticlesAnimVFrames(v);
	}
	/**
	
	*/
	@property bool particlesAnimation()
	{
		return getParticlesAnimation();
	}
	/// ditto
	@property void particlesAnimation(bool v)
	{
		setParticlesAnimation(v);
	}
}
