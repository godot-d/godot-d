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
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
3D particle emitter.

3D particle node used to create a variety of particle systems and effects. $(D Particles) features an emitter that generates some number of particles at a given rate.
Use the `process_material` property to add a $(D ParticlesMaterial) to configure particle appearance and behavior. Alternatively, you can add a $(D ShaderMaterial) which will be applied to all particles.
*/
@GodotBaseClass struct Particles
{
	enum string _GODOT_internal_name = "Particles";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
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
		@GodotName("set_visibility_aabb") GodotMethod!(void, AABB) setVisibilityAabb;
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
		@GodotName("get_visibility_aabb") GodotMethod!(AABB) getVisibilityAabb;
		@GodotName("get_use_local_coordinates") GodotMethod!(bool) getUseLocalCoordinates;
		@GodotName("get_fixed_fps") GodotMethod!(long) getFixedFps;
		@GodotName("get_fractional_delta") GodotMethod!(bool) getFractionalDelta;
		@GodotName("get_process_material") GodotMethod!(Material) getProcessMaterial;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("set_draw_order") GodotMethod!(void, long) setDrawOrder;
		@GodotName("get_draw_order") GodotMethod!(Particles.DrawOrder) getDrawOrder;
		@GodotName("set_draw_passes") GodotMethod!(void, long) setDrawPasses;
		@GodotName("set_draw_pass_mesh") GodotMethod!(void, long, Mesh) setDrawPassMesh;
		@GodotName("get_draw_passes") GodotMethod!(long) getDrawPasses;
		@GodotName("get_draw_pass_mesh") GodotMethod!(Mesh, long) getDrawPassMesh;
		@GodotName("restart") GodotMethod!(void) restart;
		@GodotName("capture_aabb") GodotMethod!(AABB) captureAabb;
	}
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
	void setOneShot(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOneShot, _godot_object, enable);
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
	void setVisibilityAabb(in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVisibilityAabb, _godot_object, aabb);
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
	AABB getVisibilityAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.getVisibilityAabb, _godot_object);
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
	Particles.DrawOrder getDrawOrder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Particles.DrawOrder)(_classBinding.getDrawOrder, _godot_object);
	}
	/**
	
	*/
	void setDrawPasses(in long passes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawPasses, _godot_object, passes);
	}
	/**
	
	*/
	void setDrawPassMesh(in long pass, Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawPassMesh, _godot_object, pass, mesh);
	}
	/**
	
	*/
	long getDrawPasses() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDrawPasses, _godot_object);
	}
	/**
	
	*/
	Ref!Mesh getDrawPassMesh(in long pass) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(_classBinding.getDrawPassMesh, _godot_object, pass);
	}
	/**
	Restarts the particle emmission, clearing existing particles.
	*/
	void restart()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.restart, _godot_object);
	}
	/**
	
	*/
	AABB captureAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.captureAabb, _godot_object);
	}
	/**
	If `true`, particles are being emitted. Default value: `true`.
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
	If `true`, only `amount` particles will be emitted. Default value: `false`.
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
	Speed scaling ratio. Default value: `1`. A value of `0` can be used to pause the particles.
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
	If `true`, particles use the parent node's coordinate space. If `false`, they use global coordinates. Default value: `true`.
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
