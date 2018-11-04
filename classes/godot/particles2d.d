/**
2D particle emitter.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.particles2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.material;
import godot.texture;
import godot.canvasitem;
import godot.node;
/**
2D particle emitter.

2D particle node used to create a variety of particle systems and effects. `Particles2D` features an emitter that generates some number of particles at a given rate.
Use the `process_material` property to add a $(D ParticlesMaterial) to configure particle appearance and behavior. Alternatively, you can add a $(D ShaderMaterial) which will be applied to all particles.
*/
@GodotBaseClass struct Particles2D
{
	enum string _GODOT_internal_name = "Particles2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_emitting") GodotMethod!(void, bool) setEmitting;
		@GodotName("set_amount") GodotMethod!(void, long) setAmount;
		@GodotName("set_lifetime") GodotMethod!(void, double) setLifetime;
		@GodotName("set_one_shot") GodotMethod!(void, bool) setOneShot;
		@GodotName("set_pre_process_time") GodotMethod!(void, double) setPreProcessTime;
		@GodotName("set_explosiveness_ratio") GodotMethod!(void, double) setExplosivenessRatio;
		@GodotName("set_randomness_ratio") GodotMethod!(void, double) setRandomnessRatio;
		@GodotName("set_visibility_rect") GodotMethod!(void, Rect2) setVisibilityRect;
		@GodotName("set_use_local_coordinates") GodotMethod!(void, bool) setUseLocalCoordinates;
		@GodotName("set_fixed_fps") GodotMethod!(void, long) setFixedFps;
		@GodotName("set_fractional_delta") GodotMethod!(void, bool) setFractionalDelta;
		@GodotName("set_process_material") GodotMethod!(void, Material) setProcessMaterial;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("is_emitting") GodotMethod!(bool) isEmitting;
		@GodotName("get_amount") GodotMethod!(long) getAmount;
		@GodotName("get_lifetime") GodotMethod!(double) getLifetime;
		@GodotName("get_one_shot") GodotMethod!(bool) getOneShot;
		@GodotName("get_pre_process_time") GodotMethod!(double) getPreProcessTime;
		@GodotName("get_explosiveness_ratio") GodotMethod!(double) getExplosivenessRatio;
		@GodotName("get_randomness_ratio") GodotMethod!(double) getRandomnessRatio;
		@GodotName("get_visibility_rect") GodotMethod!(Rect2) getVisibilityRect;
		@GodotName("get_use_local_coordinates") GodotMethod!(bool) getUseLocalCoordinates;
		@GodotName("get_fixed_fps") GodotMethod!(long) getFixedFps;
		@GodotName("get_fractional_delta") GodotMethod!(bool) getFractionalDelta;
		@GodotName("get_process_material") GodotMethod!(Material) getProcessMaterial;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("set_draw_order") GodotMethod!(void, long) setDrawOrder;
		@GodotName("get_draw_order") GodotMethod!(Particles2D.DrawOrder) getDrawOrder;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_normal_map") GodotMethod!(void, Texture) setNormalMap;
		@GodotName("get_normal_map") GodotMethod!(Texture) getNormalMap;
		@GodotName("capture_rect") GodotMethod!(Rect2) captureRect;
		@GodotName("set_v_frames") GodotMethod!(void, long) setVFrames;
		@GodotName("get_v_frames") GodotMethod!(long) getVFrames;
		@GodotName("set_h_frames") GodotMethod!(void, long) setHFrames;
		@GodotName("get_h_frames") GodotMethod!(long) getHFrames;
		@GodotName("restart") GodotMethod!(void) restart;
	}
	bool opEquals(in Particles2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Particles2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	
	*/
	void setEmitting(in bool emitting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmitting, _godot_object, emitting);
	}
	/**
	
	*/
	void setAmount(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAmount, _godot_object, amount);
	}
	/**
	
	*/
	void setLifetime(in double secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLifetime, _godot_object, secs);
	}
	/**
	
	*/
	void setOneShot(in bool secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOneShot, _godot_object, secs);
	}
	/**
	
	*/
	void setPreProcessTime(in double secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPreProcessTime, _godot_object, secs);
	}
	/**
	
	*/
	void setExplosivenessRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExplosivenessRatio, _godot_object, ratio);
	}
	/**
	
	*/
	void setRandomnessRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRandomnessRatio, _godot_object, ratio);
	}
	/**
	
	*/
	void setVisibilityRect(in Rect2 visibility_rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVisibilityRect, _godot_object, visibility_rect);
	}
	/**
	
	*/
	void setUseLocalCoordinates(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseLocalCoordinates, _godot_object, enable);
	}
	/**
	
	*/
	void setFixedFps(in long fps)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFixedFps, _godot_object, fps);
	}
	/**
	
	*/
	void setFractionalDelta(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFractionalDelta, _godot_object, enable);
	}
	/**
	
	*/
	void setProcessMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessMaterial, _godot_object, material);
	}
	/**
	
	*/
	void setSpeedScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpeedScale, _godot_object, scale);
	}
	/**
	
	*/
	bool isEmitting() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEmitting, _godot_object);
	}
	/**
	
	*/
	long getAmount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAmount, _godot_object);
	}
	/**
	
	*/
	double getLifetime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLifetime, _godot_object);
	}
	/**
	
	*/
	bool getOneShot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getOneShot, _godot_object);
	}
	/**
	
	*/
	double getPreProcessTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPreProcessTime, _godot_object);
	}
	/**
	
	*/
	double getExplosivenessRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getExplosivenessRatio, _godot_object);
	}
	/**
	
	*/
	double getRandomnessRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRandomnessRatio, _godot_object);
	}
	/**
	
	*/
	Rect2 getVisibilityRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getVisibilityRect, _godot_object);
	}
	/**
	
	*/
	bool getUseLocalCoordinates() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getUseLocalCoordinates, _godot_object);
	}
	/**
	
	*/
	long getFixedFps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFixedFps, _godot_object);
	}
	/**
	
	*/
	bool getFractionalDelta() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFractionalDelta, _godot_object);
	}
	/**
	
	*/
	Ref!Material getProcessMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(_classBinding.getProcessMaterial, _godot_object);
	}
	/**
	
	*/
	double getSpeedScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpeedScale, _godot_object);
	}
	/**
	
	*/
	void setDrawOrder(in long order)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawOrder, _godot_object, order);
	}
	/**
	
	*/
	Particles2D.DrawOrder getDrawOrder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Particles2D.DrawOrder)(_classBinding.getDrawOrder, _godot_object);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	void setNormalMap(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNormalMap, _godot_object, texture);
	}
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getNormalMap, _godot_object);
	}
	/**
	
	*/
	Rect2 captureRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.captureRect, _godot_object);
	}
	/**
	
	*/
	void setVFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVFrames, _godot_object, frames);
	}
	/**
	
	*/
	long getVFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVFrames, _godot_object);
	}
	/**
	
	*/
	void setHFrames(in long frames)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHFrames, _godot_object, frames);
	}
	/**
	
	*/
	long getHFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHFrames, _godot_object);
	}
	/**
	
	*/
	void restart()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.restart, _godot_object);
	}
	/**
	If `true` particles are being emitted. Default value: `true`.
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
	Number of particles emitted in one emission cycle.
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
	Amount of time each particle will exist. Default value: `1`.
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
	If `true` only one emission cycle occurs. If set `true` during a cycle, emission will stop at the cycle's end. Default value: `false`.
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
	Particle system's running speed scaling ratio. Default value: `1`. A value of `0` can be used to pause the particles.
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
	How rapidly particles in an emission cycle are emitted. If greater than `0`, there will be a gap in emissions before the next cycle begins. Default value: `0`.
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
	Emission lifetime randomness ratio. Default value: `0`.
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
	Editor visibility helper.
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
	/**
	If `true` particles use the parent node's coordinate space. If `false` they use global coordinates. Default value: `true`.
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
	Particle draw order. Uses `DRAW_ORDER_*` values. Default value: `DRAW_ORDER_INDEX`.
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
	Particle texture. If `null` particles will be squares.
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
	Number of horizontal frames in `texture`.
	*/
	@property long hFrames()
	{
		return getHFrames();
	}
	/// ditto
	@property void hFrames(long v)
	{
		setHFrames(v);
	}
	/**
	Number of vertical frames in `texture`.
	*/
	@property long vFrames()
	{
		return getVFrames();
	}
	/// ditto
	@property void vFrames(long v)
	{
		setVFrames(v);
	}
}