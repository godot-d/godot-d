/**
A material for $(D CanvasItem)s.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.canvasitemmaterial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.material;
import godot.resource;
import godot.reference;
/**
A material for $(D CanvasItem)s.

$(D CanvasItemMaterial)s provide a means of modifying the textures associated with a CanvasItem. They specialize in describing blend and lighting behaviors for textures. Use a $(D ShaderMaterial) to more fully customize a material's interactions with a $(D CanvasItem).
*/
@GodotBaseClass struct CanvasItemMaterial
{
	enum string _GODOT_internal_name = "CanvasItemMaterial";
public:
@nogc nothrow:
	union { godot_object _godot_object; Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_blend_mode") GodotMethod!(void, long) setBlendMode;
		@GodotName("get_blend_mode") GodotMethod!(CanvasItemMaterial.BlendMode) getBlendMode;
		@GodotName("set_light_mode") GodotMethod!(void, long) setLightMode;
		@GodotName("get_light_mode") GodotMethod!(CanvasItemMaterial.LightMode) getLightMode;
		@GodotName("set_particles_animation") GodotMethod!(void, bool) setParticlesAnimation;
		@GodotName("get_particles_animation") GodotMethod!(bool) getParticlesAnimation;
		@GodotName("set_particles_anim_h_frames") GodotMethod!(void, long) setParticlesAnimHFrames;
		@GodotName("get_particles_anim_h_frames") GodotMethod!(long) getParticlesAnimHFrames;
		@GodotName("set_particles_anim_v_frames") GodotMethod!(void, long) setParticlesAnimVFrames;
		@GodotName("get_particles_anim_v_frames") GodotMethod!(long) getParticlesAnimVFrames;
		@GodotName("set_particles_anim_loop") GodotMethod!(void, bool) setParticlesAnimLoop;
		@GodotName("get_particles_anim_loop") GodotMethod!(bool) getParticlesAnimLoop;
	}
	bool opEquals(in CanvasItemMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasItemMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CanvasItemMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CanvasItemMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasItemMaterial)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum LightMode : int
	{
		/**
		Render the material using both light and non-light sensitive material properties.
		*/
		lightModeNormal = 0,
		/**
		Render the material as if there were no light.
		*/
		lightModeUnshaded = 1,
		/**
		Render the material as if there were only light.
		*/
		lightModeLightOnly = 2,
	}
	/// 
	enum BlendMode : int
	{
		/**
		Mix blending mode. Colors are assumed to be independent of the alpha (opacity) value.
		*/
		blendModeMix = 0,
		/**
		Additive blending mode.
		*/
		blendModeAdd = 1,
		/**
		Subtractive blending mode.
		*/
		blendModeSub = 2,
		/**
		Multiplicative blending mode.
		*/
		blendModeMul = 3,
		/**
		Mix blending mode. Colors are assumed to be premultiplied by the alpha (opacity) value.
		*/
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
	void setBlendMode(in long blend_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlendMode, _godot_object, blend_mode);
	}
	/**
	
	*/
	CanvasItemMaterial.BlendMode getBlendMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CanvasItemMaterial.BlendMode)(_classBinding.getBlendMode, _godot_object);
	}
	/**
	
	*/
	void setLightMode(in long light_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLightMode, _godot_object, light_mode);
	}
	/**
	
	*/
	CanvasItemMaterial.LightMode getLightMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CanvasItemMaterial.LightMode)(_classBinding.getLightMode, _godot_object);
	}
	/**
	
	*/
	void setParticlesAnimation(in bool particles_anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParticlesAnimation, _godot_object, particles_anim);
	}
	/**
	
	*/
	bool getParticlesAnimation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getParticlesAnimation, _godot_object);
	}
	/**
	
	*/
	void setParticlesAnimHFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParticlesAnimHFrames, _godot_object, frames);
	}
	/**
	
	*/
	long getParticlesAnimHFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getParticlesAnimHFrames, _godot_object);
	}
	/**
	
	*/
	void setParticlesAnimVFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParticlesAnimVFrames, _godot_object, frames);
	}
	/**
	
	*/
	long getParticlesAnimVFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getParticlesAnimVFrames, _godot_object);
	}
	/**
	
	*/
	void setParticlesAnimLoop(in bool loop)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParticlesAnimLoop, _godot_object, loop);
	}
	/**
	
	*/
	bool getParticlesAnimLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getParticlesAnimLoop, _godot_object);
	}
	/**
	The manner in which a material's rendering is applied to underlying textures.
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
	The manner in which material reacts to lighting.
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
	@property bool particlesAnimation()
	{
		return getParticlesAnimation();
	}
	/// ditto
	@property void particlesAnimation(bool v)
	{
		setParticlesAnimation(v);
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
	@property bool particlesAnimLoop()
	{
		return getParticlesAnimLoop();
	}
	/// ditto
	@property void particlesAnimLoop(bool v)
	{
		setParticlesAnimLoop(v);
	}
}
