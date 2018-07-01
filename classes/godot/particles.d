/**
3D particle emitter.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.particles;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.material;
import godot.mesh;
/**
3D particle emitter.

3D particle node used to create a variety of particle systems and effects. `Particles` features an emitter that generates some number of particles at a given rate.
Use the `process_material` property to add a $(D ParticlesMaterial) to configure particle appearance and behavior. Alternatively, you can add a $(D ShaderMaterial) which will be applied to all particles.
*/
@GodotBaseClass struct Particles
{
	static immutable string _GODOT_internal_name = "Particles";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Particles other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Particles opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Particles _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Particles");
		if(constructor is null) return typeof(this).init;
		return cast(Particles)(constructor());
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
		/**
		Particles are drawn in order of depth.
		*/
		drawOrderViewDepth = 2,
	}
	/// 
	enum Constants : int
	{
		drawOrderIndex = 0,
		drawOrderLifetime = 1,
		drawOrderViewDepth = 2,
		/**
		Maximum number of draw passes supported.
		*/
		maxDrawPasses = 4,
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_emitting;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emitting") = _GODOT_set_emitting;
	/**
	
	*/
	void setEmitting(in bool emitting)
	{
		_GODOT_set_emitting.bind("Particles", "set_emitting");
		ptrcall!(void)(_GODOT_set_emitting, _godot_object, emitting);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_amount") = _GODOT_set_amount;
	/**
	
	*/
	void setAmount(in long amount)
	{
		_GODOT_set_amount.bind("Particles", "set_amount");
		ptrcall!(void)(_GODOT_set_amount, _godot_object, amount);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_lifetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lifetime") = _GODOT_set_lifetime;
	/**
	
	*/
	void setLifetime(in double secs)
	{
		_GODOT_set_lifetime.bind("Particles", "set_lifetime");
		ptrcall!(void)(_GODOT_set_lifetime, _godot_object, secs);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_one_shot") = _GODOT_set_one_shot;
	/**
	
	*/
	void setOneShot(in bool enable)
	{
		_GODOT_set_one_shot.bind("Particles", "set_one_shot");
		ptrcall!(void)(_GODOT_set_one_shot, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pre_process_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pre_process_time") = _GODOT_set_pre_process_time;
	/**
	
	*/
	void setPreProcessTime(in double secs)
	{
		_GODOT_set_pre_process_time.bind("Particles", "set_pre_process_time");
		ptrcall!(void)(_GODOT_set_pre_process_time, _godot_object, secs);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_explosiveness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_explosiveness_ratio") = _GODOT_set_explosiveness_ratio;
	/**
	
	*/
	void setExplosivenessRatio(in double ratio)
	{
		_GODOT_set_explosiveness_ratio.bind("Particles", "set_explosiveness_ratio");
		ptrcall!(void)(_GODOT_set_explosiveness_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_randomness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_randomness_ratio") = _GODOT_set_randomness_ratio;
	/**
	
	*/
	void setRandomnessRatio(in double ratio)
	{
		_GODOT_set_randomness_ratio.bind("Particles", "set_randomness_ratio");
		ptrcall!(void)(_GODOT_set_randomness_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, AABB) _GODOT_set_visibility_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visibility_aabb") = _GODOT_set_visibility_aabb;
	/**
	
	*/
	void setVisibilityAabb(in AABB aabb)
	{
		_GODOT_set_visibility_aabb.bind("Particles", "set_visibility_aabb");
		ptrcall!(void)(_GODOT_set_visibility_aabb, _godot_object, aabb);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_local_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_local_coordinates") = _GODOT_set_use_local_coordinates;
	/**
	
	*/
	void setUseLocalCoordinates(in bool enable)
	{
		_GODOT_set_use_local_coordinates.bind("Particles", "set_use_local_coordinates");
		ptrcall!(void)(_GODOT_set_use_local_coordinates, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_fixed_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fixed_fps") = _GODOT_set_fixed_fps;
	/**
	
	*/
	void setFixedFps(in long fps)
	{
		_GODOT_set_fixed_fps.bind("Particles", "set_fixed_fps");
		ptrcall!(void)(_GODOT_set_fixed_fps, _godot_object, fps);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_fractional_delta;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fractional_delta") = _GODOT_set_fractional_delta;
	/**
	
	*/
	void setFractionalDelta(in bool enable)
	{
		_GODOT_set_fractional_delta.bind("Particles", "set_fractional_delta");
		ptrcall!(void)(_GODOT_set_fractional_delta, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_process_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_process_material") = _GODOT_set_process_material;
	/**
	
	*/
	void setProcessMaterial(Material material)
	{
		_GODOT_set_process_material.bind("Particles", "set_process_material");
		ptrcall!(void)(_GODOT_set_process_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed_scale") = _GODOT_set_speed_scale;
	/**
	
	*/
	void setSpeedScale(in double scale)
	{
		_GODOT_set_speed_scale.bind("Particles", "set_speed_scale");
		ptrcall!(void)(_GODOT_set_speed_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_emitting;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_emitting") = _GODOT_is_emitting;
	/**
	
	*/
	bool isEmitting() const
	{
		_GODOT_is_emitting.bind("Particles", "is_emitting");
		return ptrcall!(bool)(_GODOT_is_emitting, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_amount") = _GODOT_get_amount;
	/**
	
	*/
	long getAmount() const
	{
		_GODOT_get_amount.bind("Particles", "get_amount");
		return ptrcall!(long)(_GODOT_get_amount, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_lifetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lifetime") = _GODOT_get_lifetime;
	/**
	
	*/
	double getLifetime() const
	{
		_GODOT_get_lifetime.bind("Particles", "get_lifetime");
		return ptrcall!(double)(_GODOT_get_lifetime, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_one_shot") = _GODOT_get_one_shot;
	/**
	
	*/
	bool getOneShot() const
	{
		_GODOT_get_one_shot.bind("Particles", "get_one_shot");
		return ptrcall!(bool)(_GODOT_get_one_shot, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pre_process_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pre_process_time") = _GODOT_get_pre_process_time;
	/**
	
	*/
	double getPreProcessTime() const
	{
		_GODOT_get_pre_process_time.bind("Particles", "get_pre_process_time");
		return ptrcall!(double)(_GODOT_get_pre_process_time, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_explosiveness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_explosiveness_ratio") = _GODOT_get_explosiveness_ratio;
	/**
	
	*/
	double getExplosivenessRatio() const
	{
		_GODOT_get_explosiveness_ratio.bind("Particles", "get_explosiveness_ratio");
		return ptrcall!(double)(_GODOT_get_explosiveness_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_randomness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_randomness_ratio") = _GODOT_get_randomness_ratio;
	/**
	
	*/
	double getRandomnessRatio() const
	{
		_GODOT_get_randomness_ratio.bind("Particles", "get_randomness_ratio");
		return ptrcall!(double)(_GODOT_get_randomness_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(AABB) _GODOT_get_visibility_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visibility_aabb") = _GODOT_get_visibility_aabb;
	/**
	
	*/
	AABB getVisibilityAabb() const
	{
		_GODOT_get_visibility_aabb.bind("Particles", "get_visibility_aabb");
		return ptrcall!(AABB)(_GODOT_get_visibility_aabb, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_local_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_local_coordinates") = _GODOT_get_use_local_coordinates;
	/**
	
	*/
	bool getUseLocalCoordinates() const
	{
		_GODOT_get_use_local_coordinates.bind("Particles", "get_use_local_coordinates");
		return ptrcall!(bool)(_GODOT_get_use_local_coordinates, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_fixed_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fixed_fps") = _GODOT_get_fixed_fps;
	/**
	
	*/
	long getFixedFps() const
	{
		_GODOT_get_fixed_fps.bind("Particles", "get_fixed_fps");
		return ptrcall!(long)(_GODOT_get_fixed_fps, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_fractional_delta;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fractional_delta") = _GODOT_get_fractional_delta;
	/**
	
	*/
	bool getFractionalDelta() const
	{
		_GODOT_get_fractional_delta.bind("Particles", "get_fractional_delta");
		return ptrcall!(bool)(_GODOT_get_fractional_delta, _godot_object);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_process_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_process_material") = _GODOT_get_process_material;
	/**
	
	*/
	Ref!Material getProcessMaterial() const
	{
		_GODOT_get_process_material.bind("Particles", "get_process_material");
		return ptrcall!(Material)(_GODOT_get_process_material, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed_scale") = _GODOT_get_speed_scale;
	/**
	
	*/
	double getSpeedScale() const
	{
		_GODOT_get_speed_scale.bind("Particles", "get_speed_scale");
		return ptrcall!(double)(_GODOT_get_speed_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_draw_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_order") = _GODOT_set_draw_order;
	/**
	
	*/
	void setDrawOrder(in long order)
	{
		_GODOT_set_draw_order.bind("Particles", "set_draw_order");
		ptrcall!(void)(_GODOT_set_draw_order, _godot_object, order);
	}
	package(godot) static GodotMethod!(Particles.DrawOrder) _GODOT_get_draw_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_draw_order") = _GODOT_get_draw_order;
	/**
	
	*/
	Particles.DrawOrder getDrawOrder() const
	{
		_GODOT_get_draw_order.bind("Particles", "get_draw_order");
		return ptrcall!(Particles.DrawOrder)(_GODOT_get_draw_order, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_draw_passes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_passes") = _GODOT_set_draw_passes;
	/**
	
	*/
	void setDrawPasses(in long passes)
	{
		_GODOT_set_draw_passes.bind("Particles", "set_draw_passes");
		ptrcall!(void)(_GODOT_set_draw_passes, _godot_object, passes);
	}
	package(godot) static GodotMethod!(void, long, Mesh) _GODOT_set_draw_pass_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_pass_mesh") = _GODOT_set_draw_pass_mesh;
	/**
	
	*/
	void setDrawPassMesh(in long pass, Mesh mesh)
	{
		_GODOT_set_draw_pass_mesh.bind("Particles", "set_draw_pass_mesh");
		ptrcall!(void)(_GODOT_set_draw_pass_mesh, _godot_object, pass, mesh);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_draw_passes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_draw_passes") = _GODOT_get_draw_passes;
	/**
	
	*/
	long getDrawPasses() const
	{
		_GODOT_get_draw_passes.bind("Particles", "get_draw_passes");
		return ptrcall!(long)(_GODOT_get_draw_passes, _godot_object);
	}
	package(godot) static GodotMethod!(Mesh, long) _GODOT_get_draw_pass_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_draw_pass_mesh") = _GODOT_get_draw_pass_mesh;
	/**
	
	*/
	Ref!Mesh getDrawPassMesh(in long pass) const
	{
		_GODOT_get_draw_pass_mesh.bind("Particles", "get_draw_pass_mesh");
		return ptrcall!(Mesh)(_GODOT_get_draw_pass_mesh, _godot_object, pass);
	}
	package(godot) static GodotMethod!(void) _GODOT_restart;
	package(godot) alias _GODOT_methodBindInfo(string name : "restart") = _GODOT_restart;
	/**
	Restarts the particle emmission, clearing existing particles.
	*/
	void restart()
	{
		_GODOT_restart.bind("Particles", "restart");
		ptrcall!(void)(_GODOT_restart, _godot_object);
	}
	package(godot) static GodotMethod!(AABB) _GODOT_capture_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "capture_aabb") = _GODOT_capture_aabb;
	/**
	
	*/
	AABB captureAabb() const
	{
		_GODOT_capture_aabb.bind("Particles", "capture_aabb");
		return ptrcall!(AABB)(_GODOT_capture_aabb, _godot_object);
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
	Number of particles to emit.
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
	If `true` only `amount` particles will be emitted. Default value: `false`.
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
	Amount of time to preprocess the particles before animation starts. Lets you start the animation some time after particles have started emitting.
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
	Speed scaling ratio. Default value: `1`.
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
	Time ratio between each emission. If `0` particles are emitted continuously. If `1` all particles are emitted simultaneously. Default value: `0`.
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
	Emission randomness ratio. Default value: `0`.
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
	The $(D AABB) that determines the area of the world part of which needs to be visible on screen for the particle system to be active.
	*/
	@property AABB visibilityAabb()
	{
		return getVisibilityAabb();
	}
	/// ditto
	@property void visibilityAabb(AABB v)
	{
		setVisibilityAabb(v);
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
	@property Particles.DrawOrder drawOrder()
	{
		return getDrawOrder();
	}
	/// ditto
	@property void drawOrder(long v)
	{
		setDrawOrder(v);
	}
	/**
	The number of draw passes when rendering particles.
	*/
	@property long drawPasses()
	{
		return getDrawPasses();
	}
	/// ditto
	@property void drawPasses(long v)
	{
		setDrawPasses(v);
	}
	/**
	$(D Mesh) that is drawn for the first draw pass.
	*/
	@property Mesh drawPass1()
	{
		return getDrawPassMesh(0);
	}
	/// ditto
	@property void drawPass1(Mesh v)
	{
		setDrawPassMesh(0, v);
	}
	/**
	$(D Mesh) that is drawn for the second draw pass.
	*/
	@property Mesh drawPass2()
	{
		return getDrawPassMesh(1);
	}
	/// ditto
	@property void drawPass2(Mesh v)
	{
		setDrawPassMesh(1, v);
	}
	/**
	$(D Mesh) that is drawn for the third draw pass.
	*/
	@property Mesh drawPass3()
	{
		return getDrawPassMesh(2);
	}
	/// ditto
	@property void drawPass3(Mesh v)
	{
		setDrawPassMesh(2, v);
	}
	/**
	$(D Mesh) that is drawn for the fourth draw pass.
	*/
	@property Mesh drawPass4()
	{
		return getDrawPassMesh(3);
	}
	/// ditto
	@property void drawPass4(Mesh v)
	{
		setDrawPassMesh(3, v);
	}
}
