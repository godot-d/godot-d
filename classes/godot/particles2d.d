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
/**
2D particle emitter.

2D particle node used to create a variety of particle systems and effects. `Particles2D` features an emitter that generates some number of particles at a given rate.
Use the `process_material` property to add a $(D ParticlesMaterial) to configure particle appearance and behavior. Alternatively, you can add a $(D ShaderMaterial) which will be applied to all particles.
*/
@GodotBaseClass struct Particles2D
{
	static immutable string _GODOT_internal_name = "Particles2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, bool) _GODOT_set_emitting;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emitting") = _GODOT_set_emitting;
	/**
	
	*/
	void setEmitting(in bool emitting)
	{
		_GODOT_set_emitting.bind("Particles2D", "set_emitting");
		ptrcall!(void)(_GODOT_set_emitting, _godot_object, emitting);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_amount") = _GODOT_set_amount;
	/**
	
	*/
	void setAmount(in long amount)
	{
		_GODOT_set_amount.bind("Particles2D", "set_amount");
		ptrcall!(void)(_GODOT_set_amount, _godot_object, amount);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_lifetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lifetime") = _GODOT_set_lifetime;
	/**
	
	*/
	void setLifetime(in double secs)
	{
		_GODOT_set_lifetime.bind("Particles2D", "set_lifetime");
		ptrcall!(void)(_GODOT_set_lifetime, _godot_object, secs);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_one_shot") = _GODOT_set_one_shot;
	/**
	
	*/
	void setOneShot(in bool secs)
	{
		_GODOT_set_one_shot.bind("Particles2D", "set_one_shot");
		ptrcall!(void)(_GODOT_set_one_shot, _godot_object, secs);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pre_process_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pre_process_time") = _GODOT_set_pre_process_time;
	/**
	
	*/
	void setPreProcessTime(in double secs)
	{
		_GODOT_set_pre_process_time.bind("Particles2D", "set_pre_process_time");
		ptrcall!(void)(_GODOT_set_pre_process_time, _godot_object, secs);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_explosiveness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_explosiveness_ratio") = _GODOT_set_explosiveness_ratio;
	/**
	
	*/
	void setExplosivenessRatio(in double ratio)
	{
		_GODOT_set_explosiveness_ratio.bind("Particles2D", "set_explosiveness_ratio");
		ptrcall!(void)(_GODOT_set_explosiveness_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_randomness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_randomness_ratio") = _GODOT_set_randomness_ratio;
	/**
	
	*/
	void setRandomnessRatio(in double ratio)
	{
		_GODOT_set_randomness_ratio.bind("Particles2D", "set_randomness_ratio");
		ptrcall!(void)(_GODOT_set_randomness_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_visibility_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visibility_rect") = _GODOT_set_visibility_rect;
	/**
	
	*/
	void setVisibilityRect(in Rect2 aabb)
	{
		_GODOT_set_visibility_rect.bind("Particles2D", "set_visibility_rect");
		ptrcall!(void)(_GODOT_set_visibility_rect, _godot_object, aabb);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_local_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_local_coordinates") = _GODOT_set_use_local_coordinates;
	/**
	
	*/
	void setUseLocalCoordinates(in bool enable)
	{
		_GODOT_set_use_local_coordinates.bind("Particles2D", "set_use_local_coordinates");
		ptrcall!(void)(_GODOT_set_use_local_coordinates, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_fixed_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fixed_fps") = _GODOT_set_fixed_fps;
	/**
	
	*/
	void setFixedFps(in long fps)
	{
		_GODOT_set_fixed_fps.bind("Particles2D", "set_fixed_fps");
		ptrcall!(void)(_GODOT_set_fixed_fps, _godot_object, fps);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fractional_delta;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fractional_delta") = _GODOT_set_fractional_delta;
	/**
	
	*/
	void setFractionalDelta(in bool enable)
	{
		_GODOT_set_fractional_delta.bind("Particles2D", "set_fractional_delta");
		ptrcall!(void)(_GODOT_set_fractional_delta, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_process_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_material") = _GODOT_set_process_material;
	/**
	
	*/
	void setProcessMaterial(Material material)
	{
		_GODOT_set_process_material.bind("Particles2D", "set_process_material");
		ptrcall!(void)(_GODOT_set_process_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed_scale") = _GODOT_set_speed_scale;
	/**
	
	*/
	void setSpeedScale(in double scale)
	{
		_GODOT_set_speed_scale.bind("Particles2D", "set_speed_scale");
		ptrcall!(void)(_GODOT_set_speed_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_emitting;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_emitting") = _GODOT_is_emitting;
	/**
	
	*/
	bool isEmitting() const
	{
		_GODOT_is_emitting.bind("Particles2D", "is_emitting");
		return ptrcall!(bool)(_GODOT_is_emitting, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_amount") = _GODOT_get_amount;
	/**
	
	*/
	long getAmount() const
	{
		_GODOT_get_amount.bind("Particles2D", "get_amount");
		return ptrcall!(long)(_GODOT_get_amount, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_lifetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lifetime") = _GODOT_get_lifetime;
	/**
	
	*/
	double getLifetime() const
	{
		_GODOT_get_lifetime.bind("Particles2D", "get_lifetime");
		return ptrcall!(double)(_GODOT_get_lifetime, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_one_shot") = _GODOT_get_one_shot;
	/**
	
	*/
	bool getOneShot() const
	{
		_GODOT_get_one_shot.bind("Particles2D", "get_one_shot");
		return ptrcall!(bool)(_GODOT_get_one_shot, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pre_process_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pre_process_time") = _GODOT_get_pre_process_time;
	/**
	
	*/
	double getPreProcessTime() const
	{
		_GODOT_get_pre_process_time.bind("Particles2D", "get_pre_process_time");
		return ptrcall!(double)(_GODOT_get_pre_process_time, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_explosiveness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_explosiveness_ratio") = _GODOT_get_explosiveness_ratio;
	/**
	
	*/
	double getExplosivenessRatio() const
	{
		_GODOT_get_explosiveness_ratio.bind("Particles2D", "get_explosiveness_ratio");
		return ptrcall!(double)(_GODOT_get_explosiveness_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_randomness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_randomness_ratio") = _GODOT_get_randomness_ratio;
	/**
	
	*/
	double getRandomnessRatio() const
	{
		_GODOT_get_randomness_ratio.bind("Particles2D", "get_randomness_ratio");
		return ptrcall!(double)(_GODOT_get_randomness_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_visibility_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visibility_rect") = _GODOT_get_visibility_rect;
	/**
	
	*/
	Rect2 getVisibilityRect() const
	{
		_GODOT_get_visibility_rect.bind("Particles2D", "get_visibility_rect");
		return ptrcall!(Rect2)(_GODOT_get_visibility_rect, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_local_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_local_coordinates") = _GODOT_get_use_local_coordinates;
	/**
	
	*/
	bool getUseLocalCoordinates() const
	{
		_GODOT_get_use_local_coordinates.bind("Particles2D", "get_use_local_coordinates");
		return ptrcall!(bool)(_GODOT_get_use_local_coordinates, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_fixed_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fixed_fps") = _GODOT_get_fixed_fps;
	/**
	
	*/
	long getFixedFps() const
	{
		_GODOT_get_fixed_fps.bind("Particles2D", "get_fixed_fps");
		return ptrcall!(long)(_GODOT_get_fixed_fps, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_fractional_delta;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fractional_delta") = _GODOT_get_fractional_delta;
	/**
	
	*/
	bool getFractionalDelta() const
	{
		_GODOT_get_fractional_delta.bind("Particles2D", "get_fractional_delta");
		return ptrcall!(bool)(_GODOT_get_fractional_delta, _godot_object);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_process_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_material") = _GODOT_get_process_material;
	/**
	
	*/
	Ref!Material getProcessMaterial() const
	{
		_GODOT_get_process_material.bind("Particles2D", "get_process_material");
		return ptrcall!(Material)(_GODOT_get_process_material, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed_scale") = _GODOT_get_speed_scale;
	/**
	
	*/
	double getSpeedScale() const
	{
		_GODOT_get_speed_scale.bind("Particles2D", "get_speed_scale");
		return ptrcall!(double)(_GODOT_get_speed_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_draw_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_order") = _GODOT_set_draw_order;
	/**
	
	*/
	void setDrawOrder(in long order)
	{
		_GODOT_set_draw_order.bind("Particles2D", "set_draw_order");
		ptrcall!(void)(_GODOT_set_draw_order, _godot_object, order);
	}
	package(godot) static GodotMethod!(Particles2D.DrawOrder) _GODOT_get_draw_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_draw_order") = _GODOT_get_draw_order;
	/**
	
	*/
	Particles2D.DrawOrder getDrawOrder() const
	{
		_GODOT_get_draw_order.bind("Particles2D", "get_draw_order");
		return ptrcall!(Particles2D.DrawOrder)(_GODOT_get_draw_order, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("Particles2D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("Particles2D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_map") = _GODOT_set_normal_map;
	/**
	
	*/
	void setNormalMap(Texture texture)
	{
		_GODOT_set_normal_map.bind("Particles2D", "set_normal_map");
		ptrcall!(void)(_GODOT_set_normal_map, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_normal_map;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_map") = _GODOT_get_normal_map;
	/**
	
	*/
	Ref!Texture getNormalMap() const
	{
		_GODOT_get_normal_map.bind("Particles2D", "get_normal_map");
		return ptrcall!(Texture)(_GODOT_get_normal_map, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_capture_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "capture_rect") = _GODOT_capture_rect;
	/**
	
	*/
	Rect2 captureRect() const
	{
		_GODOT_capture_rect.bind("Particles2D", "capture_rect");
		return ptrcall!(Rect2)(_GODOT_capture_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_v_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_frames") = _GODOT_set_v_frames;
	/**
	
	*/
	void setVFrames(in long frames)
	{
		_GODOT_set_v_frames.bind("Particles2D", "set_v_frames");
		ptrcall!(void)(_GODOT_set_v_frames, _godot_object, frames);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_v_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_frames") = _GODOT_get_v_frames;
	/**
	
	*/
	long getVFrames() const
	{
		_GODOT_get_v_frames.bind("Particles2D", "get_v_frames");
		return ptrcall!(long)(_GODOT_get_v_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_h_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_frames") = _GODOT_set_h_frames;
	/**
	
	*/
	void setHFrames(in long frames)
	{
		_GODOT_set_h_frames.bind("Particles2D", "set_h_frames");
		ptrcall!(void)(_GODOT_set_h_frames, _godot_object, frames);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_h_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_frames") = _GODOT_get_h_frames;
	/**
	
	*/
	long getHFrames() const
	{
		_GODOT_get_h_frames.bind("Particles2D", "get_h_frames");
		return ptrcall!(long)(_GODOT_get_h_frames, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_restart;
	package(godot) alias _GODOT_methodBindInfo(string name : "restart") = _GODOT_restart;
	/**
	
	*/
	void restart()
	{
		_GODOT_restart.bind("Particles2D", "restart");
		ptrcall!(void)(_GODOT_restart, _godot_object);
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
	Particle system's running speed scaling ratio. Default value: `1`.
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
