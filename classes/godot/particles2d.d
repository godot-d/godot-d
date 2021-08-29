/**
GPU-based 2D particle emitter.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.particles2d;
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
import godot.node2d;
import godot.canvasitem;
import godot.node;
import godot.texture;
import godot.material;
/**
GPU-based 2D particle emitter.

2D particle node used to create a variety of particle systems and effects. $(D Particles2D) features an emitter that generates some number of particles at a given rate.
Use the `process_material` property to add a $(D ParticlesMaterial) to configure particle appearance and behavior. Alternatively, you can add a $(D ShaderMaterial) which will be applied to all particles.
$(B Note:) $(D Particles2D) only work when using the GLES3 renderer. If using the GLES2 renderer, use $(D CPUParticles2D) instead. You can convert $(D Particles2D) to $(D CPUParticles2D) by selecting the node, clicking the $(B Particles) menu at the top of the 2D editor viewport then choosing $(B Convert to CPUParticles2D).
$(B Note:) After working on a Particles node, remember to update its $(D visibilityRect) by selecting it, clicking the $(B Particles) menu at the top of the 2D editor viewport then choose $(B Generate Visibility Rect). Otherwise, particles may suddenly disappear depending on the camera position and angle.
$(B Note:) Unlike $(D CPUParticles2D), $(D Particles2D) currently ignore the texture region defined in $(D AtlasTexture)s.
*/
@GodotBaseClass struct Particles2D
{
	package(godot) enum string _GODOT_internal_name = "Particles2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("capture_rect") GodotMethod!(Rect2) captureRect;
		@GodotName("get_amount") GodotMethod!(long) getAmount;
		@GodotName("get_draw_order") GodotMethod!(Particles2D.DrawOrder) getDrawOrder;
		@GodotName("get_explosiveness_ratio") GodotMethod!(double) getExplosivenessRatio;
		@GodotName("get_fixed_fps") GodotMethod!(long) getFixedFps;
		@GodotName("get_fractional_delta") GodotMethod!(bool) getFractionalDelta;
		@GodotName("get_lifetime") GodotMethod!(double) getLifetime;
		@GodotName("get_normal_map") GodotMethod!(Texture) getNormalMap;
		@GodotName("get_one_shot") GodotMethod!(bool) getOneShot;
		@GodotName("get_pre_process_time") GodotMethod!(double) getPreProcessTime;
		@GodotName("get_process_material") GodotMethod!(Material) getProcessMaterial;
		@GodotName("get_randomness_ratio") GodotMethod!(double) getRandomnessRatio;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_use_local_coordinates") GodotMethod!(bool) getUseLocalCoordinates;
		@GodotName("get_visibility_rect") GodotMethod!(Rect2) getVisibilityRect;
		@GodotName("is_emitting") GodotMethod!(bool) isEmitting;
		@GodotName("restart") GodotMethod!(void) restart;
		@GodotName("set_amount") GodotMethod!(void, long) setAmount;
		@GodotName("set_draw_order") GodotMethod!(void, long) setDrawOrder;
		@GodotName("set_emitting") GodotMethod!(void, bool) setEmitting;
		@GodotName("set_explosiveness_ratio") GodotMethod!(void, double) setExplosivenessRatio;
		@GodotName("set_fixed_fps") GodotMethod!(void, long) setFixedFps;
		@GodotName("set_fractional_delta") GodotMethod!(void, bool) setFractionalDelta;
		@GodotName("set_lifetime") GodotMethod!(void, double) setLifetime;
		@GodotName("set_normal_map") GodotMethod!(void, Texture) setNormalMap;
		@GodotName("set_one_shot") GodotMethod!(void, bool) setOneShot;
		@GodotName("set_pre_process_time") GodotMethod!(void, double) setPreProcessTime;
		@GodotName("set_process_material") GodotMethod!(void, Material) setProcessMaterial;
		@GodotName("set_randomness_ratio") GodotMethod!(void, double) setRandomnessRatio;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_use_local_coordinates") GodotMethod!(void, bool) setUseLocalCoordinates;
		@GodotName("set_visibility_rect") GodotMethod!(void, Rect2) setVisibilityRect;
	}
	/// 
	pragma(inline, true) bool opEquals(in Particles2D other) const
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
	/// Construct a new instance of Particles2D.
	/// Note: use `memnew!Particles2D` instead.
	static Particles2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Particles2D");
		if(constructor is null) return typeof(this).init;
		return cast(Particles2D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum DrawOrder : int
	{
		/**
		Particles are drawn in the order emitted.
		*/
		drawOrderIndex = 0,
		/**
		Particles are drawn in order of remaining lifetime.
		*/
		drawOrderLifetime = 1,
	}
	/// 
	enum Constants : int
	{
		drawOrderIndex = 0,
		drawOrderLifetime = 1,
	}
	/**
	Returns a rectangle containing the positions of all existing particles.
	*/
	Rect2 captureRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.captureRect, _godot_object);
	}
	/**
	
	*/
	long getAmount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAmount, _godot_object);
	}
	/**
	
	*/
	Particles2D.DrawOrder getDrawOrder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Particles2D.DrawOrder)(GDNativeClassBinding.getDrawOrder, _godot_object);
	}
	/**
	
	*/
	double getExplosivenessRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getExplosivenessRatio, _godot_object);
	}
	/**
	
	*/
	long getFixedFps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFixedFps, _godot_object);
	}
	/**
	
	*/
	bool getFractionalDelta() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFractionalDelta, _godot_object);
	}
	/**
	
	*/
	double getLifetime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLifetime, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getNormalMap, _godot_object);
	}
	/**
	
	*/
	bool getOneShot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getOneShot, _godot_object);
	}
	/**
	
	*/
	double getPreProcessTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPreProcessTime, _godot_object);
	}
	/**
	
	*/
	Ref!Material getProcessMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getProcessMaterial, _godot_object);
	}
	/**
	
	*/
	double getRandomnessRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRandomnessRatio, _godot_object);
	}
	/**
	
	*/
	double getSpeedScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSpeedScale, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	bool getUseLocalCoordinates() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseLocalCoordinates, _godot_object);
	}
	/**
	
	*/
	Rect2 getVisibilityRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getVisibilityRect, _godot_object);
	}
	/**
	
	*/
	bool isEmitting() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEmitting, _godot_object);
	}
	/**
	Restarts all the existing particles.
	*/
	void restart()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.restart, _godot_object);
	}
	/**
	
	*/
	void setAmount(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAmount, _godot_object, amount);
	}
	/**
	
	*/
	void setDrawOrder(in long order)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrawOrder, _godot_object, order);
	}
	/**
	
	*/
	void setEmitting(in bool emitting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmitting, _godot_object, emitting);
	}
	/**
	
	*/
	void setExplosivenessRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExplosivenessRatio, _godot_object, ratio);
	}
	/**
	
	*/
	void setFixedFps(in long fps)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFixedFps, _godot_object, fps);
	}
	/**
	
	*/
	void setFractionalDelta(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFractionalDelta, _godot_object, enable);
	}
	/**
	
	*/
	void setLifetime(in double secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLifetime, _godot_object, secs);
	}
	/**
	
	*/
	void setNormalMap(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormalMap, _godot_object, texture);
	}
	/**
	
	*/
	void setOneShot(in bool secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOneShot, _godot_object, secs);
	}
	/**
	
	*/
	void setPreProcessTime(in double secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPreProcessTime, _godot_object, secs);
	}
	/**
	
	*/
	void setProcessMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessMaterial, _godot_object, material);
	}
	/**
	
	*/
	void setRandomnessRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRandomnessRatio, _godot_object, ratio);
	}
	/**
	
	*/
	void setSpeedScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpeedScale, _godot_object, scale);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setUseLocalCoordinates(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseLocalCoordinates, _godot_object, enable);
	}
	/**
	
	*/
	void setVisibilityRect(in Rect2 visibility_rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVisibilityRect, _godot_object, visibility_rect);
	}
	/**
	The number of particles emitted in one emission cycle (corresponding to the $(D lifetime)).
	$(B Note:) Changing $(D amount) will reset the particle emission, therefore removing all particles that were already emitted before changing $(D amount).
	*/
	@property long amount()
	{
		return getAmount();
	}
	/// ditto
	@property void amount(long v)
	{
		setAmount(v);
	}
	/**
	Particle draw order. Uses $(D draworder) values.
	*/
	@property Particles2D.DrawOrder drawOrder()
	{
		return getDrawOrder();
	}
	/// ditto
	@property void drawOrder(long v)
	{
		setDrawOrder(v);
	}
	/**
	If `true`, particles are being emitted.
	*/
	@property bool emitting()
	{
		return isEmitting();
	}
	/// ditto
	@property void emitting(bool v)
	{
		setEmitting(v);
	}
	/**
	How rapidly particles in an emission cycle are emitted. If greater than `0`, there will be a gap in emissions before the next cycle begins.
	*/
	@property double explosiveness()
	{
		return getExplosivenessRatio();
	}
	/// ditto
	@property void explosiveness(double v)
	{
		setExplosivenessRatio(v);
	}
	/**
	The particle system's frame rate is fixed to a value. For instance, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the simulation of the particle system itself.
	*/
	@property long fixedFps()
	{
		return getFixedFps();
	}
	/// ditto
	@property void fixedFps(long v)
	{
		setFixedFps(v);
	}
	/**
	If `true`, results in fractional delta calculation which has a smoother particles display effect.
	*/
	@property bool fractDelta()
	{
		return getFractionalDelta();
	}
	/// ditto
	@property void fractDelta(bool v)
	{
		setFractionalDelta(v);
	}
	/**
	The amount of time each particle will exist (in seconds).
	*/
	@property double lifetime()
	{
		return getLifetime();
	}
	/// ditto
	@property void lifetime(double v)
	{
		setLifetime(v);
	}
	/**
	If `true`, particles use the parent node's coordinate space. If `false`, they use global coordinates.
	*/
	@property bool localCoords()
	{
		return getUseLocalCoordinates();
	}
	/// ditto
	@property void localCoords(bool v)
	{
		setUseLocalCoordinates(v);
	}
	/**
	Normal map to be used for the $(D texture) property.
	$(B Note:) Godot expects the normal map to use X+, Y-, and Z+ coordinates. See $(D url=http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates)this page$(D /url) for a comparison of normal map coordinates expected by popular engines.
	*/
	@property Texture normalMap()
	{
		return getNormalMap();
	}
	/// ditto
	@property void normalMap(Texture v)
	{
		setNormalMap(v);
	}
	/**
	If `true`, only one emission cycle occurs. If set `true` during a cycle, emission will stop at the cycle's end.
	*/
	@property bool oneShot()
	{
		return getOneShot();
	}
	/// ditto
	@property void oneShot(bool v)
	{
		setOneShot(v);
	}
	/**
	Particle system starts as if it had already run for this many seconds.
	*/
	@property double preprocess()
	{
		return getPreProcessTime();
	}
	/// ditto
	@property void preprocess(double v)
	{
		setPreProcessTime(v);
	}
	/**
	Emission lifetime randomness ratio.
	*/
	@property double randomness()
	{
		return getRandomnessRatio();
	}
	/// ditto
	@property void randomness(double v)
	{
		setRandomnessRatio(v);
	}
	/**
	Particle system's running speed scaling ratio. A value of `0` can be used to pause the particles.
	*/
	@property double speedScale()
	{
		return getSpeedScale();
	}
	/// ditto
	@property void speedScale(double v)
	{
		setSpeedScale(v);
	}
	/**
	Particle texture. If `null`, particles will be squares.
	*/
	@property Texture texture()
	{
		return getTexture();
	}
	/// ditto
	@property void texture(Texture v)
	{
		setTexture(v);
	}
	/**
	The $(D Rect2) that determines the node's region which needs to be visible on screen for the particle system to be active.
	Grow the rect if particles suddenly appear/disappear when the node enters/exits the screen. The $(D Rect2) can be grown via code or with the $(B Particles → Generate Visibility Rect) editor tool.
	*/
	@property Rect2 visibilityRect()
	{
		return getVisibilityRect();
	}
	/// ditto
	@property void visibilityRect(Rect2 v)
	{
		setVisibilityRect(v);
	}
}
