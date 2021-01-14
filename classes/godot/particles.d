/**
GPU-based 3D particle emitter.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.particles;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.visualinstance;
import godot.mesh;
import godot.material;
/**
GPU-based 3D particle emitter.

3D particle node used to create a variety of particle systems and effects. $(D Particles) features an emitter that generates some number of particles at a given rate.
Use the `process_material` property to add a $(D ParticlesMaterial) to configure particle appearance and behavior. Alternatively, you can add a $(D ShaderMaterial) which will be applied to all particles.
$(B Note:) $(D Particles) only work when using the GLES3 renderer. If using the GLES2 renderer, use $(D CPUParticles) instead. You can convert $(D Particles) to $(D CPUParticles) by selecting the node, clicking the $(B Particles) menu at the top of the 3D editor viewport then choosing $(B Convert to CPUParticles).
$(B Note:) After working on a Particles node, remember to update its $(D visibilityAabb) by selecting it, clicking the $(B Particles) menu at the top of the 3D editor viewport then choose $(B Generate Visibility AABB). Otherwise, particles may suddenly disappear depending on the camera position and angle.
*/
@GodotBaseClass struct Particles
{
	package(godot) enum string _GODOT_internal_name = "Particles";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("capture_aabb") GodotMethod!(AABB) captureAabb;
		@GodotName("get_amount") GodotMethod!(long) getAmount;
		@GodotName("get_draw_order") GodotMethod!(Particles.DrawOrder) getDrawOrder;
		@GodotName("get_draw_pass_mesh") GodotMethod!(Mesh, long) getDrawPassMesh;
		@GodotName("get_draw_passes") GodotMethod!(long) getDrawPasses;
		@GodotName("get_explosiveness_ratio") GodotMethod!(double) getExplosivenessRatio;
		@GodotName("get_fixed_fps") GodotMethod!(long) getFixedFps;
		@GodotName("get_fractional_delta") GodotMethod!(bool) getFractionalDelta;
		@GodotName("get_lifetime") GodotMethod!(double) getLifetime;
		@GodotName("get_one_shot") GodotMethod!(bool) getOneShot;
		@GodotName("get_pre_process_time") GodotMethod!(double) getPreProcessTime;
		@GodotName("get_process_material") GodotMethod!(Material) getProcessMaterial;
		@GodotName("get_randomness_ratio") GodotMethod!(double) getRandomnessRatio;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("get_use_local_coordinates") GodotMethod!(bool) getUseLocalCoordinates;
		@GodotName("get_visibility_aabb") GodotMethod!(AABB) getVisibilityAabb;
		@GodotName("is_emitting") GodotMethod!(bool) isEmitting;
		@GodotName("restart") GodotMethod!(void) restart;
		@GodotName("set_amount") GodotMethod!(void, long) setAmount;
		@GodotName("set_draw_order") GodotMethod!(void, long) setDrawOrder;
		@GodotName("set_draw_pass_mesh") GodotMethod!(void, long, Mesh) setDrawPassMesh;
		@GodotName("set_draw_passes") GodotMethod!(void, long) setDrawPasses;
		@GodotName("set_emitting") GodotMethod!(void, bool) setEmitting;
		@GodotName("set_explosiveness_ratio") GodotMethod!(void, double) setExplosivenessRatio;
		@GodotName("set_fixed_fps") GodotMethod!(void, long) setFixedFps;
		@GodotName("set_fractional_delta") GodotMethod!(void, bool) setFractionalDelta;
		@GodotName("set_lifetime") GodotMethod!(void, double) setLifetime;
		@GodotName("set_one_shot") GodotMethod!(void, bool) setOneShot;
		@GodotName("set_pre_process_time") GodotMethod!(void, double) setPreProcessTime;
		@GodotName("set_process_material") GodotMethod!(void, Material) setProcessMaterial;
		@GodotName("set_randomness_ratio") GodotMethod!(void, double) setRandomnessRatio;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("set_use_local_coordinates") GodotMethod!(void, bool) setUseLocalCoordinates;
		@GodotName("set_visibility_aabb") GodotMethod!(void, AABB) setVisibilityAabb;
	}
	/// 
	pragma(inline, true) bool opEquals(in Particles other) const
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
	/// Construct a new instance of Particles.
	/// Note: use `memnew!Particles` instead.
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
	Returns the axis-aligned bounding box that contains all the particles that are active in the current frame.
	*/
	AABB captureAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.captureAabb, _godot_object);
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
	Particles.DrawOrder getDrawOrder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Particles.DrawOrder)(GDNativeClassBinding.getDrawOrder, _godot_object);
	}
	/**
	Returns the $(D Mesh) that is drawn at index `pass`.
	*/
	Ref!Mesh getDrawPassMesh(in long pass) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getDrawPassMesh, _godot_object, pass);
	}
	/**
	
	*/
	long getDrawPasses() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDrawPasses, _godot_object);
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
	bool getUseLocalCoordinates() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseLocalCoordinates, _godot_object);
	}
	/**
	
	*/
	AABB getVisibilityAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getVisibilityAabb, _godot_object);
	}
	/**
	
	*/
	bool isEmitting() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEmitting, _godot_object);
	}
	/**
	Restarts the particle emission, clearing existing particles.
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
	Sets the $(D Mesh) that is drawn at index `pass`.
	*/
	void setDrawPassMesh(in long pass, Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrawPassMesh, _godot_object, pass, mesh);
	}
	/**
	
	*/
	void setDrawPasses(in long passes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrawPasses, _godot_object, passes);
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
	void setOneShot(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOneShot, _godot_object, enable);
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
	void setUseLocalCoordinates(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseLocalCoordinates, _godot_object, enable);
	}
	/**
	
	*/
	void setVisibilityAabb(in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVisibilityAabb, _godot_object, aabb);
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
	Time ratio between each emission. If `0`, particles are emitted continuously. If `1`, all particles are emitted simultaneously.
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
	If `true`, only `amount` particles will be emitted.
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
	Emission randomness ratio.
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
	Speed scaling ratio. A value of `0` can be used to pause the particles.
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
	The $(D AABB) that determines the area of the world part of which needs to be visible on screen for the particle system to be active.
	$(B Note:) If the $(D ParticlesMaterial) in use is configured to cast shadows, you may want to enlarge this AABB to ensure the shadow is updated when particles are off-screen.
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
}
