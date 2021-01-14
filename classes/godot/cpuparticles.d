/**
CPU-based 3D particle emitter.

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
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.node;
import godot.gradient;
import godot.mesh;
import godot.curve;
/**
CPU-based 3D particle emitter.

CPU-based 3D particle node used to create a variety of particle systems and effects.
See also $(D Particles), which provides the same functionality with hardware acceleration, but may not run on older devices.
$(B Note:) Unlike $(D Particles), the visibility rect is generated on-the-fly and doesn't need to be configured by the user.
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
		@GodotName("get_color_ramp") GodotMethod!(Gradient) getColorRamp;
		@GodotName("get_direction") GodotMethod!(Vector3) getDirection;
		@GodotName("get_draw_order") GodotMethod!(CPUParticles.DrawOrder) getDrawOrder;
		@GodotName("get_emission_box_extents") GodotMethod!(Vector3) getEmissionBoxExtents;
		@GodotName("get_emission_colors") GodotMethod!(PoolColorArray) getEmissionColors;
		@GodotName("get_emission_normals") GodotMethod!(PoolVector3Array) getEmissionNormals;
		@GodotName("get_emission_points") GodotMethod!(PoolVector3Array) getEmissionPoints;
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
		@GodotName("set_color_ramp") GodotMethod!(void, Gradient) setColorRamp;
		@GodotName("set_direction") GodotMethod!(void, Vector3) setDirection;
		@GodotName("set_draw_order") GodotMethod!(void, long) setDrawOrder;
		@GodotName("set_emission_box_extents") GodotMethod!(void, Vector3) setEmissionBoxExtents;
		@GodotName("set_emission_colors") GodotMethod!(void, PoolColorArray) setEmissionColors;
		@GodotName("set_emission_normals") GodotMethod!(void, PoolVector3Array) setEmissionNormals;
		@GodotName("set_emission_points") GodotMethod!(void, PoolVector3Array) setEmissionPoints;
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
	@disable new(size_t s);
	/// 
	enum Flags : int
	{
		/**
		Use with $(D setParticleFlag) to set $(D flagAlignY).
		*/
		flagAlignYToVelocity = 0,
		/**
		Use with $(D setParticleFlag) to set $(D flagRotateY).
		*/
		flagRotateY = 1,
		/**
		Use with $(D setParticleFlag) to set $(D flagDisableZ).
		*/
		flagDisableZ = 2,
		/**
		Represents the size of the $(D flags) enum.
		*/
		flagMax = 3,
	}
	/// 
	enum EmissionShape : int
	{
		/**
		All particles will be emitted from a single point.
		*/
		emissionShapePoint = 0,
		/**
		Particles will be emitted in the volume of a sphere.
		*/
		emissionShapeSphere = 1,
		/**
		Particles will be emitted in the volume of a box.
		*/
		emissionShapeBox = 2,
		/**
		Particles will be emitted at a position chosen randomly among $(D emissionPoints). Particle color will be modulated by $(D emissionColors).
		*/
		emissionShapePoints = 3,
		/**
		Particles will be emitted at a position chosen randomly among $(D emissionPoints). Particle velocity and rotation will be set based on $(D emissionNormals). Particle color will be modulated by $(D emissionColors).
		*/
		emissionShapeDirectedPoints = 4,
		/**
		Represents the size of the $(D emissionshape) enum.
		*/
		emissionShapeMax = 5,
	}
	/// 
	enum Parameter : int
	{
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set initial velocity properties.
		*/
		paramInitialLinearVelocity = 0,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set angular velocity properties.
		*/
		paramAngularVelocity = 1,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set orbital velocity properties.
		*/
		paramOrbitVelocity = 2,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set linear acceleration properties.
		*/
		paramLinearAccel = 3,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set radial acceleration properties.
		*/
		paramRadialAccel = 4,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set tangential acceleration properties.
		*/
		paramTangentialAccel = 5,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set damping properties.
		*/
		paramDamping = 6,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set angle properties.
		*/
		paramAngle = 7,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set scale properties.
		*/
		paramScale = 8,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set hue variation properties.
		*/
		paramHueVariation = 9,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set animation speed properties.
		*/
		paramAnimSpeed = 10,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamCurve) to set animation offset properties.
		*/
		paramAnimOffset = 11,
		/**
		Represents the size of the $(D parameter) enum.
		*/
		paramMax = 12,
	}
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
		emissionShapeMax = 5,
		paramDamping = 6,
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
	Sets this node's properties to match a given $(D Particles) node with an assigned $(D ParticlesMaterial).
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
	Returns the base value of the parameter specified by $(D parameter).
	*/
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParam, _godot_object, param);
	}
	/**
	Returns the $(D Curve) of the parameter specified by $(D parameter).
	*/
	Ref!Curve getParamCurve(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve)(GDNativeClassBinding.getParamCurve, _godot_object, param);
	}
	/**
	Returns the randomness factor of the parameter specified by $(D parameter).
	*/
	double getParamRandomness(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParamRandomness, _godot_object, param);
	}
	/**
	Returns the enabled state of the given flag (see $(D flags) for options).
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
	Restarts the particle emitter.
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
	Sets the base value of the parameter specified by $(D parameter).
	*/
	void setParam(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParam, _godot_object, param, value);
	}
	/**
	Sets the $(D Curve) of the parameter specified by $(D parameter).
	*/
	void setParamCurve(in long param, Curve curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamCurve, _godot_object, param, curve);
	}
	/**
	Sets the randomness factor of the parameter specified by $(D parameter).
	*/
	void setParamRandomness(in long param, in double randomness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamRandomness, _godot_object, param, randomness);
	}
	/**
	Enables or disables the given flag (see $(D flags) for options).
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
	Initial rotation applied to each particle, in degrees.
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
	Each particle's rotation will be animated along this $(D Curve).
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
	Rotation randomness ratio.
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
	Initial angular velocity applied to each particle. Sets the speed of rotation of the particle.
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
	Each particle's angular velocity will vary along this $(D Curve).
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
	Angular velocity randomness ratio.
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
	Particle animation offset.
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
	Each particle's animation offset will vary along this $(D Curve).
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
	Animation offset randomness ratio.
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
	Particle animation speed.
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
	Each particle's animation speed will vary along this $(D Curve).
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
	Animation speed randomness ratio.
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
	Unused for 3D particles.
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
	Unused for 3D particles.
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
	The rate at which particles lose velocity.
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
	Damping will vary along this $(D Curve).
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
	Damping randomness ratio.
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
	Unit vector specifying the particles' emission direction.
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
	Particle draw order. Uses $(D draworder) values.
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
	The rectangle's extents if $(D emissionShape) is set to $(D constant EMISSION_SHAPE_BOX).
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
	Sets the $(D Color)s to modulate particles by when using $(D constant EMISSION_SHAPE_POINTS) or $(D constant EMISSION_SHAPE_DIRECTED_POINTS).
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
	Sets the direction the particles will be emitted in when using $(D constant EMISSION_SHAPE_DIRECTED_POINTS).
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
	Sets the initial positions to spawn particles when using $(D constant EMISSION_SHAPE_POINTS) or $(D constant EMISSION_SHAPE_DIRECTED_POINTS).
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
	Particles will be emitted inside this region. See $(D emissionshape) for possible values.
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
	The sphere's radius if $(D emissionshape) is set to $(D constant EMISSION_SHAPE_SPHERE).
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
	The particle system's frame rate is fixed to a value. For instance, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the particle system itself.
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
	Align Y axis of particle with the direction of its velocity.
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
	If `true`, particles will not move on the z axis.
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
	If `true`, particles rotate around Y axis by $(D angle).
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
	Amount of $(D spread) in Y/Z plane. A value of `1` restricts particles to X/Z plane.
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
	Gravity applied to every particle.
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
	Initial hue variation applied to each particle.
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
	Each particle's hue will vary along this $(D Curve).
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
	Hue variation randomness ratio.
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
	Initial velocity magnitude for each particle. Direction comes from $(D spread) and the node's orientation.
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
	Initial velocity randomness ratio.
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
	Particle lifetime randomness ratio.
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
	Linear acceleration applied to each particle in the direction of motion.
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
	Each particle's linear acceleration will vary along this $(D Curve).
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
	Linear acceleration randomness ratio.
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
	The $(D Mesh) used for each particle. If `null`, particles will be spheres.
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
	Orbital velocity applied to each particle. Makes the particles circle around origin in the local XY plane. Specified in number of full rotations around origin per second.
	This property is only available when $(D flagDisableZ) is `true`.
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
	Each particle's orbital velocity will vary along this $(D Curve).
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
	Orbital velocity randomness ratio.
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
	Radial acceleration applied to each particle. Makes particle accelerate away from origin.
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
	Each particle's radial acceleration will vary along this $(D Curve).
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
	Radial acceleration randomness ratio.
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
	Initial scale applied to each particle.
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
	Each particle's scale will vary along this $(D Curve).
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
	Scale randomness ratio.
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
	Each particle's initial direction range from `+spread` to `-spread` degrees. Applied to X/Z plane and Y/Z planes.
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
	Tangential acceleration applied to each particle. Tangential acceleration is perpendicular to the particle's velocity giving the particles a swirling motion.
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
	Each particle's tangential acceleration will vary along this $(D Curve).
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
	Tangential acceleration randomness ratio.
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
