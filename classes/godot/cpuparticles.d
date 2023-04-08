/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cpuparticles;
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
import godot.geometryinstance;
import godot.node;
import godot.gradient;
import godot.mesh;
import godot.curve;
/**

*/
@GodotBaseClass struct CPUParticles
{
	package(godot) enum string _GODOT_internal_name = "CPUParticles";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_update_render_thread") GodotMethod!(void) _updateRenderThread;
		@GodotName("convert_from_particles") GodotMethod!(void, Node) convertFromParticles;
		@GodotName("get_amount") GodotMethod!(long) getAmount;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_color_initial_ramp") GodotMethod!(Gradient) getColorInitialRamp;
		@GodotName("get_color_ramp") GodotMethod!(Gradient) getColorRamp;
		@GodotName("get_direction") GodotMethod!(Vector3) getDirection;
		@GodotName("get_draw_order") GodotMethod!(CPUParticles.DrawOrder) getDrawOrder;
		@GodotName("get_emission_box_extents") GodotMethod!(Vector3) getEmissionBoxExtents;
		@GodotName("get_emission_colors") GodotMethod!(PoolColorArray) getEmissionColors;
		@GodotName("get_emission_normals") GodotMethod!(PoolVector3Array) getEmissionNormals;
		@GodotName("get_emission_points") GodotMethod!(PoolVector3Array) getEmissionPoints;
		@GodotName("get_emission_ring_axis") GodotMethod!(Vector3) getEmissionRingAxis;
		@GodotName("get_emission_ring_height") GodotMethod!(double) getEmissionRingHeight;
		@GodotName("get_emission_ring_inner_radius") GodotMethod!(double) getEmissionRingInnerRadius;
		@GodotName("get_emission_ring_radius") GodotMethod!(double) getEmissionRingRadius;
		@GodotName("get_emission_shape") GodotMethod!(CPUParticles.EmissionShape) getEmissionShape;
		@GodotName("get_emission_sphere_radius") GodotMethod!(double) getEmissionSphereRadius;
		@GodotName("get_explosiveness_ratio") GodotMethod!(double) getExplosivenessRatio;
		@GodotName("get_fixed_fps") GodotMethod!(long) getFixedFps;
		@GodotName("get_flatness") GodotMethod!(double) getFlatness;
		@GodotName("get_fractional_delta") GodotMethod!(bool) getFractionalDelta;
		@GodotName("get_gravity") GodotMethod!(Vector3) getGravity;
		@GodotName("get_lifetime") GodotMethod!(double) getLifetime;
		@GodotName("get_lifetime_randomness") GodotMethod!(double) getLifetimeRandomness;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("get_one_shot") GodotMethod!(bool) getOneShot;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("get_param_curve") GodotMethod!(Curve, long) getParamCurve;
		@GodotName("get_param_randomness") GodotMethod!(double, long) getParamRandomness;
		@GodotName("get_particle_flag") GodotMethod!(bool, long) getParticleFlag;
		@GodotName("get_pre_process_time") GodotMethod!(double) getPreProcessTime;
		@GodotName("get_randomness_ratio") GodotMethod!(double) getRandomnessRatio;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("get_spread") GodotMethod!(double) getSpread;
		@GodotName("get_use_local_coordinates") GodotMethod!(bool) getUseLocalCoordinates;
		@GodotName("is_emitting") GodotMethod!(bool) isEmitting;
		@GodotName("restart") GodotMethod!(void) restart;
		@GodotName("set_amount") GodotMethod!(void, long) setAmount;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_color_initial_ramp") GodotMethod!(void, Gradient) setColorInitialRamp;
		@GodotName("set_color_ramp") GodotMethod!(void, Gradient) setColorRamp;
		@GodotName("set_direction") GodotMethod!(void, Vector3) setDirection;
		@GodotName("set_draw_order") GodotMethod!(void, long) setDrawOrder;
		@GodotName("set_emission_box_extents") GodotMethod!(void, Vector3) setEmissionBoxExtents;
		@GodotName("set_emission_colors") GodotMethod!(void, PoolColorArray) setEmissionColors;
		@GodotName("set_emission_normals") GodotMethod!(void, PoolVector3Array) setEmissionNormals;
		@GodotName("set_emission_points") GodotMethod!(void, PoolVector3Array) setEmissionPoints;
		@GodotName("set_emission_ring_axis") GodotMethod!(void, Vector3) setEmissionRingAxis;
		@GodotName("set_emission_ring_height") GodotMethod!(void, double) setEmissionRingHeight;
		@GodotName("set_emission_ring_inner_radius") GodotMethod!(void, double) setEmissionRingInnerRadius;
		@GodotName("set_emission_ring_radius") GodotMethod!(void, double) setEmissionRingRadius;
		@GodotName("set_emission_shape") GodotMethod!(void, long) setEmissionShape;
		@GodotName("set_emission_sphere_radius") GodotMethod!(void, double) setEmissionSphereRadius;
		@GodotName("set_emitting") GodotMethod!(void, bool) setEmitting;
		@GodotName("set_explosiveness_ratio") GodotMethod!(void, double) setExplosivenessRatio;
		@GodotName("set_fixed_fps") GodotMethod!(void, long) setFixedFps;
		@GodotName("set_flatness") GodotMethod!(void, double) setFlatness;
		@GodotName("set_fractional_delta") GodotMethod!(void, bool) setFractionalDelta;
		@GodotName("set_gravity") GodotMethod!(void, Vector3) setGravity;
		@GodotName("set_lifetime") GodotMethod!(void, double) setLifetime;
		@GodotName("set_lifetime_randomness") GodotMethod!(void, double) setLifetimeRandomness;
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
		@GodotName("set_one_shot") GodotMethod!(void, bool) setOneShot;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
		@GodotName("set_param_curve") GodotMethod!(void, long, Curve) setParamCurve;
		@GodotName("set_param_randomness") GodotMethod!(void, long, double) setParamRandomness;
		@GodotName("set_particle_flag") GodotMethod!(void, long, bool) setParticleFlag;
		@GodotName("set_pre_process_time") GodotMethod!(void, double) setPreProcessTime;
		@GodotName("set_randomness_ratio") GodotMethod!(void, double) setRandomnessRatio;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("set_spread") GodotMethod!(void, double) setSpread;
		@GodotName("set_use_local_coordinates") GodotMethod!(void, bool) setUseLocalCoordinates;
	}
	/// 
	pragma(inline, true) bool opEquals(in CPUParticles other) const
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
	/// Construct a new instance of CPUParticles.
	/// Note: use `memnew!CPUParticles` instead.
	static CPUParticles _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CPUParticles");
		if(constructor is null) return typeof(this).init;
		return cast(CPUParticles)(constructor());
	}
	/// 
	enum Flags : int
	{
		/** */
		flagAlignYToVelocity = 0,
		/** */
		flagRotateY = 1,
		/** */
		flagDisableZ = 2,
		/** */
		flagMax = 3,
	}
	/// 
	enum EmissionShape : int
	{
		/** */
		emissionShapePoint = 0,
		/** */
		emissionShapeSphere = 1,
		/** */
		emissionShapeBox = 2,
		/** */
		emissionShapePoints = 3,
		/** */
		emissionShapeDirectedPoints = 4,
		/** */
		emissionShapeRing = 5,
		/** */
		emissionShapeMax = 6,
	}
	/// 
	enum Parameter : int
	{
		/** */
		paramInitialLinearVelocity = 0,
		/** */
		paramAngularVelocity = 1,
		/** */
		paramOrbitVelocity = 2,
		/** */
		paramLinearAccel = 3,
		/** */
		paramRadialAccel = 4,
		/** */
		paramTangentialAccel = 5,
		/** */
		paramDamping = 6,
		/** */
		paramAngle = 7,
		/** */
		paramScale = 8,
		/** */
		paramHueVariation = 9,
		/** */
		paramAnimSpeed = 10,
		/** */
		paramAnimOffset = 11,
		/** */
		paramMax = 12,
	}
	/// 
	enum DrawOrder : int
	{
		/** */
		drawOrderIndex = 0,
		/** */
		drawOrderLifetime = 1,
		/** */
		drawOrderViewDepth = 2,
	}
	/// 
	enum Constants : int
	{
		emissionShapePoint = 0,
		paramInitialLinearVelocity = 0,
		flagAlignYToVelocity = 0,
		drawOrderIndex = 0,
		flagRotateY = 1,
		paramAngularVelocity = 1,
		drawOrderLifetime = 1,
		emissionShapeSphere = 1,
		emissionShapeBox = 2,
		drawOrderViewDepth = 2,
		flagDisableZ = 2,
		paramOrbitVelocity = 2,
		flagMax = 3,
		paramLinearAccel = 3,
		emissionShapePoints = 3,
		paramRadialAccel = 4,
		emissionShapeDirectedPoints = 4,
		paramTangentialAccel = 5,
		emissionShapeRing = 5,
		paramDamping = 6,
		emissionShapeMax = 6,
		paramAngle = 7,
		paramScale = 8,
		paramHueVariation = 9,
		paramAnimSpeed = 10,
		paramAnimOffset = 11,
		paramMax = 12,
	}
	/**
	
	*/
	void _updateRenderThread()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_render_thread");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void convertFromParticles(Node particles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.convertFromParticles, _godot_object, particles);
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
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object);
	}
	/**
	
	*/
	Ref!Gradient getColorInitialRamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Gradient)(GDNativeClassBinding.getColorInitialRamp, _godot_object);
	}
	/**
	
	*/
	Ref!Gradient getColorRamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Gradient)(GDNativeClassBinding.getColorRamp, _godot_object);
	}
	/**
	
	*/
	Vector3 getDirection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getDirection, _godot_object);
	}
	/**
	
	*/
	CPUParticles.DrawOrder getDrawOrder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CPUParticles.DrawOrder)(GDNativeClassBinding.getDrawOrder, _godot_object);
	}
	/**
	
	*/
	Vector3 getEmissionBoxExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getEmissionBoxExtents, _godot_object);
	}
	/**
	
	*/
	PoolColorArray getEmissionColors() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolColorArray)(GDNativeClassBinding.getEmissionColors, _godot_object);
	}
	/**
	
	*/
	PoolVector3Array getEmissionNormals() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getEmissionNormals, _godot_object);
	}
	/**
	
	*/
	PoolVector3Array getEmissionPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getEmissionPoints, _godot_object);
	}
	/**
	
	*/
	Vector3 getEmissionRingAxis() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getEmissionRingAxis, _godot_object);
	}
	/**
	
	*/
	double getEmissionRingHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEmissionRingHeight, _godot_object);
	}
	/**
	
	*/
	double getEmissionRingInnerRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEmissionRingInnerRadius, _godot_object);
	}
	/**
	
	*/
	double getEmissionRingRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEmissionRingRadius, _godot_object);
	}
	/**
	
	*/
	CPUParticles.EmissionShape getEmissionShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CPUParticles.EmissionShape)(GDNativeClassBinding.getEmissionShape, _godot_object);
	}
	/**
	
	*/
	double getEmissionSphereRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEmissionSphereRadius, _godot_object);
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
	double getFlatness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFlatness, _godot_object);
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
	Vector3 getGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getGravity, _godot_object);
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
	double getLifetimeRandomness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLifetimeRandomness, _godot_object);
	}
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
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
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParam, _godot_object, param);
	}
	/**
	
	*/
	Ref!Curve getParamCurve(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve)(GDNativeClassBinding.getParamCurve, _godot_object, param);
	}
	/**
	
	*/
	double getParamRandomness(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParamRandomness, _godot_object, param);
	}
	/**
	
	*/
	bool getParticleFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getParticleFlag, _godot_object, flag);
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
	double getSpread() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSpread, _godot_object);
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
	bool isEmitting() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEmitting, _godot_object);
	}
	/**
	
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
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	void setColorInitialRamp(Gradient ramp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColorInitialRamp, _godot_object, ramp);
	}
	/**
	
	*/
	void setColorRamp(Gradient ramp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColorRamp, _godot_object, ramp);
	}
	/**
	
	*/
	void setDirection(in Vector3 direction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDirection, _godot_object, direction);
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
	void setEmissionBoxExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionBoxExtents, _godot_object, extents);
	}
	/**
	
	*/
	void setEmissionColors(in PoolColorArray array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionColors, _godot_object, array);
	}
	/**
	
	*/
	void setEmissionNormals(in PoolVector3Array array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionNormals, _godot_object, array);
	}
	/**
	
	*/
	void setEmissionPoints(in PoolVector3Array array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionPoints, _godot_object, array);
	}
	/**
	
	*/
	void setEmissionRingAxis(in Vector3 axis)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionRingAxis, _godot_object, axis);
	}
	/**
	
	*/
	void setEmissionRingHeight(in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionRingHeight, _godot_object, height);
	}
	/**
	
	*/
	void setEmissionRingInnerRadius(in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionRingInnerRadius, _godot_object, offset);
	}
	/**
	
	*/
	void setEmissionRingRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionRingRadius, _godot_object, radius);
	}
	/**
	
	*/
	void setEmissionShape(in long shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionShape, _godot_object, shape);
	}
	/**
	
	*/
	void setEmissionSphereRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionSphereRadius, _godot_object, radius);
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
	void setFlatness(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlatness, _godot_object, amount);
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
	void setGravity(in Vector3 accel_vec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGravity, _godot_object, accel_vec);
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
	void setLifetimeRandomness(in double random)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLifetimeRandomness, _godot_object, random);
	}
	/**
	
	*/
	void setMesh(Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMesh, _godot_object, mesh);
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
	void setParam(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParam, _godot_object, param, value);
	}
	/**
	
	*/
	void setParamCurve(in long param, Curve curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamCurve, _godot_object, param, curve);
	}
	/**
	
	*/
	void setParamRandomness(in long param, in double randomness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamRandomness, _godot_object, param, randomness);
	}
	/**
	
	*/
	void setParticleFlag(in long flag, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParticleFlag, _godot_object, flag, enable);
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
	void setSpread(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpread, _godot_object, degrees);
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
	
	*/
	@property double angle()
	{
		return getParam(7);
	}
	/// ditto
	@property void angle(double v)
	{
		setParam(7, v);
	}
	/**
	
	*/
	@property Curve angleCurve()
	{
		return getParamCurve(7);
	}
	/// ditto
	@property void angleCurve(Curve v)
	{
		setParamCurve(7, v);
	}
	/**
	
	*/
	@property double angleRandom()
	{
		return getParamRandomness(7);
	}
	/// ditto
	@property void angleRandom(double v)
	{
		setParamRandomness(7, v);
	}
	/**
	
	*/
	@property double angularVelocity()
	{
		return getParam(1);
	}
	/// ditto
	@property void angularVelocity(double v)
	{
		setParam(1, v);
	}
	/**
	
	*/
	@property Curve angularVelocityCurve()
	{
		return getParamCurve(1);
	}
	/// ditto
	@property void angularVelocityCurve(Curve v)
	{
		setParamCurve(1, v);
	}
	/**
	
	*/
	@property double angularVelocityRandom()
	{
		return getParamRandomness(1);
	}
	/// ditto
	@property void angularVelocityRandom(double v)
	{
		setParamRandomness(1, v);
	}
	/**
	
	*/
	@property double animOffset()
	{
		return getParam(11);
	}
	/// ditto
	@property void animOffset(double v)
	{
		setParam(11, v);
	}
	/**
	
	*/
	@property Curve animOffsetCurve()
	{
		return getParamCurve(11);
	}
	/// ditto
	@property void animOffsetCurve(Curve v)
	{
		setParamCurve(11, v);
	}
	/**
	
	*/
	@property double animOffsetRandom()
	{
		return getParamRandomness(11);
	}
	/// ditto
	@property void animOffsetRandom(double v)
	{
		setParamRandomness(11, v);
	}
	/**
	
	*/
	@property double animSpeed()
	{
		return getParam(10);
	}
	/// ditto
	@property void animSpeed(double v)
	{
		setParam(10, v);
	}
	/**
	
	*/
	@property Curve animSpeedCurve()
	{
		return getParamCurve(10);
	}
	/// ditto
	@property void animSpeedCurve(Curve v)
	{
		setParamCurve(10, v);
	}
	/**
	
	*/
	@property double animSpeedRandom()
	{
		return getParamRandomness(10);
	}
	/// ditto
	@property void animSpeedRandom(double v)
	{
		setParamRandomness(10, v);
	}
	/**
	
	*/
	@property Color color()
	{
		return getColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setColor(v);
	}
	/**
	
	*/
	@property Gradient colorInitialRamp()
	{
		return getColorInitialRamp();
	}
	/// ditto
	@property void colorInitialRamp(Gradient v)
	{
		setColorInitialRamp(v);
	}
	/**
	
	*/
	@property Gradient colorRamp()
	{
		return getColorRamp();
	}
	/// ditto
	@property void colorRamp(Gradient v)
	{
		setColorRamp(v);
	}
	/**
	
	*/
	@property double damping()
	{
		return getParam(6);
	}
	/// ditto
	@property void damping(double v)
	{
		setParam(6, v);
	}
	/**
	
	*/
	@property Curve dampingCurve()
	{
		return getParamCurve(6);
	}
	/// ditto
	@property void dampingCurve(Curve v)
	{
		setParamCurve(6, v);
	}
	/**
	
	*/
	@property double dampingRandom()
	{
		return getParamRandomness(6);
	}
	/// ditto
	@property void dampingRandom(double v)
	{
		setParamRandomness(6, v);
	}
	/**
	
	*/
	@property Vector3 direction()
	{
		return getDirection();
	}
	/// ditto
	@property void direction(Vector3 v)
	{
		setDirection(v);
	}
	/**
	
	*/
	@property CPUParticles.DrawOrder drawOrder()
	{
		return getDrawOrder();
	}
	/// ditto
	@property void drawOrder(long v)
	{
		setDrawOrder(v);
	}
	/**
	
	*/
	@property Vector3 emissionBoxExtents()
	{
		return getEmissionBoxExtents();
	}
	/// ditto
	@property void emissionBoxExtents(Vector3 v)
	{
		setEmissionBoxExtents(v);
	}
	/**
	
	*/
	@property PoolColorArray emissionColors()
	{
		return getEmissionColors();
	}
	/// ditto
	@property void emissionColors(PoolColorArray v)
	{
		setEmissionColors(v);
	}
	/**
	
	*/
	@property PoolVector3Array emissionNormals()
	{
		return getEmissionNormals();
	}
	/// ditto
	@property void emissionNormals(PoolVector3Array v)
	{
		setEmissionNormals(v);
	}
	/**
	
	*/
	@property PoolVector3Array emissionPoints()
	{
		return getEmissionPoints();
	}
	/// ditto
	@property void emissionPoints(PoolVector3Array v)
	{
		setEmissionPoints(v);
	}
	/**
	
	*/
	@property Vector3 emissionRingAxis()
	{
		return getEmissionRingAxis();
	}
	/// ditto
	@property void emissionRingAxis(Vector3 v)
	{
		setEmissionRingAxis(v);
	}
	/**
	
	*/
	@property double emissionRingHeight()
	{
		return getEmissionRingHeight();
	}
	/// ditto
	@property void emissionRingHeight(double v)
	{
		setEmissionRingHeight(v);
	}
	/**
	
	*/
	@property double emissionRingInnerRadius()
	{
		return getEmissionRingInnerRadius();
	}
	/// ditto
	@property void emissionRingInnerRadius(double v)
	{
		setEmissionRingInnerRadius(v);
	}
	/**
	
	*/
	@property double emissionRingRadius()
	{
		return getEmissionRingRadius();
	}
	/// ditto
	@property void emissionRingRadius(double v)
	{
		setEmissionRingRadius(v);
	}
	/**
	
	*/
	@property CPUParticles.EmissionShape emissionShape()
	{
		return getEmissionShape();
	}
	/// ditto
	@property void emissionShape(long v)
	{
		setEmissionShape(v);
	}
	/**
	
	*/
	@property double emissionSphereRadius()
	{
		return getEmissionSphereRadius();
	}
	/// ditto
	@property void emissionSphereRadius(double v)
	{
		setEmissionSphereRadius(v);
	}
	/**
	
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
	@property bool flagAlignY()
	{
		return getParticleFlag(0);
	}
	/// ditto
	@property void flagAlignY(bool v)
	{
		setParticleFlag(0, v);
	}
	/**
	
	*/
	@property bool flagDisableZ()
	{
		return getParticleFlag(2);
	}
	/// ditto
	@property void flagDisableZ(bool v)
	{
		setParticleFlag(2, v);
	}
	/**
	
	*/
	@property bool flagRotateY()
	{
		return getParticleFlag(1);
	}
	/// ditto
	@property void flagRotateY(bool v)
	{
		setParticleFlag(1, v);
	}
	/**
	
	*/
	@property double flatness()
	{
		return getFlatness();
	}
	/// ditto
	@property void flatness(double v)
	{
		setFlatness(v);
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
	
	*/
	@property Vector3 gravity()
	{
		return getGravity();
	}
	/// ditto
	@property void gravity(Vector3 v)
	{
		setGravity(v);
	}
	/**
	
	*/
	@property double hueVariation()
	{
		return getParam(9);
	}
	/// ditto
	@property void hueVariation(double v)
	{
		setParam(9, v);
	}
	/**
	
	*/
	@property Curve hueVariationCurve()
	{
		return getParamCurve(9);
	}
	/// ditto
	@property void hueVariationCurve(Curve v)
	{
		setParamCurve(9, v);
	}
	/**
	
	*/
	@property double hueVariationRandom()
	{
		return getParamRandomness(9);
	}
	/// ditto
	@property void hueVariationRandom(double v)
	{
		setParamRandomness(9, v);
	}
	/**
	
	*/
	@property double initialVelocity()
	{
		return getParam(0);
	}
	/// ditto
	@property void initialVelocity(double v)
	{
		setParam(0, v);
	}
	/**
	
	*/
	@property double initialVelocityRandom()
	{
		return getParamRandomness(0);
	}
	/// ditto
	@property void initialVelocityRandom(double v)
	{
		setParamRandomness(0, v);
	}
	/**
	
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
	
	*/
	@property double lifetimeRandomness()
	{
		return getLifetimeRandomness();
	}
	/// ditto
	@property void lifetimeRandomness(double v)
	{
		setLifetimeRandomness(v);
	}
	/**
	
	*/
	@property double linearAccel()
	{
		return getParam(3);
	}
	/// ditto
	@property void linearAccel(double v)
	{
		setParam(3, v);
	}
	/**
	
	*/
	@property Curve linearAccelCurve()
	{
		return getParamCurve(3);
	}
	/// ditto
	@property void linearAccelCurve(Curve v)
	{
		setParamCurve(3, v);
	}
	/**
	
	*/
	@property double linearAccelRandom()
	{
		return getParamRandomness(3);
	}
	/// ditto
	@property void linearAccelRandom(double v)
	{
		setParamRandomness(3, v);
	}
	/**
	
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
	
	*/
	@property Mesh mesh()
	{
		return getMesh();
	}
	/// ditto
	@property void mesh(Mesh v)
	{
		setMesh(v);
	}
	/**
	
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
	
	*/
	@property double orbitVelocity()
	{
		return getParam(2);
	}
	/// ditto
	@property void orbitVelocity(double v)
	{
		setParam(2, v);
	}
	/**
	
	*/
	@property Curve orbitVelocityCurve()
	{
		return getParamCurve(2);
	}
	/// ditto
	@property void orbitVelocityCurve(Curve v)
	{
		setParamCurve(2, v);
	}
	/**
	
	*/
	@property double orbitVelocityRandom()
	{
		return getParamRandomness(2);
	}
	/// ditto
	@property void orbitVelocityRandom(double v)
	{
		setParamRandomness(2, v);
	}
	/**
	
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
	
	*/
	@property double radialAccel()
	{
		return getParam(4);
	}
	/// ditto
	@property void radialAccel(double v)
	{
		setParam(4, v);
	}
	/**
	
	*/
	@property Curve radialAccelCurve()
	{
		return getParamCurve(4);
	}
	/// ditto
	@property void radialAccelCurve(Curve v)
	{
		setParamCurve(4, v);
	}
	/**
	
	*/
	@property double radialAccelRandom()
	{
		return getParamRandomness(4);
	}
	/// ditto
	@property void radialAccelRandom(double v)
	{
		setParamRandomness(4, v);
	}
	/**
	
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
	@property double scaleAmount()
	{
		return getParam(8);
	}
	/// ditto
	@property void scaleAmount(double v)
	{
		setParam(8, v);
	}
	/**
	
	*/
	@property Curve scaleAmountCurve()
	{
		return getParamCurve(8);
	}
	/// ditto
	@property void scaleAmountCurve(Curve v)
	{
		setParamCurve(8, v);
	}
	/**
	
	*/
	@property double scaleAmountRandom()
	{
		return getParamRandomness(8);
	}
	/// ditto
	@property void scaleAmountRandom(double v)
	{
		setParamRandomness(8, v);
	}
	/**
	
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
	
	*/
	@property double spread()
	{
		return getSpread();
	}
	/// ditto
	@property void spread(double v)
	{
		setSpread(v);
	}
	/**
	
	*/
	@property double tangentialAccel()
	{
		return getParam(5);
	}
	/// ditto
	@property void tangentialAccel(double v)
	{
		setParam(5, v);
	}
	/**
	
	*/
	@property Curve tangentialAccelCurve()
	{
		return getParamCurve(5);
	}
	/// ditto
	@property void tangentialAccelCurve(Curve v)
	{
		setParamCurve(5, v);
	}
	/**
	
	*/
	@property double tangentialAccelRandom()
	{
		return getParamRandomness(5);
	}
	/// ditto
	@property void tangentialAccelRandom(double v)
	{
		setParamRandomness(5, v);
	}
}
