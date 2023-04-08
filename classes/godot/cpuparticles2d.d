/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cpuparticles2d;
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
import godot.node;
import godot.gradient;
import godot.texture;
import godot.curve;
/**

*/
@GodotBaseClass struct CPUParticles2D
{
	package(godot) enum string _GODOT_internal_name = "CPUParticles2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_texture_changed") GodotMethod!(void) _textureChanged;
		@GodotName("_update_render_thread") GodotMethod!(void) _updateRenderThread;
		@GodotName("convert_from_particles") GodotMethod!(void, Node) convertFromParticles;
		@GodotName("get_amount") GodotMethod!(long) getAmount;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_color_initial_ramp") GodotMethod!(Gradient) getColorInitialRamp;
		@GodotName("get_color_ramp") GodotMethod!(Gradient) getColorRamp;
		@GodotName("get_direction") GodotMethod!(Vector2) getDirection;
		@GodotName("get_draw_order") GodotMethod!(CPUParticles2D.DrawOrder) getDrawOrder;
		@GodotName("get_emission_colors") GodotMethod!(PoolColorArray) getEmissionColors;
		@GodotName("get_emission_normals") GodotMethod!(PoolVector2Array) getEmissionNormals;
		@GodotName("get_emission_points") GodotMethod!(PoolVector2Array) getEmissionPoints;
		@GodotName("get_emission_rect_extents") GodotMethod!(Vector2) getEmissionRectExtents;
		@GodotName("get_emission_shape") GodotMethod!(CPUParticles2D.EmissionShape) getEmissionShape;
		@GodotName("get_emission_sphere_radius") GodotMethod!(double) getEmissionSphereRadius;
		@GodotName("get_explosiveness_ratio") GodotMethod!(double) getExplosivenessRatio;
		@GodotName("get_fixed_fps") GodotMethod!(long) getFixedFps;
		@GodotName("get_fractional_delta") GodotMethod!(bool) getFractionalDelta;
		@GodotName("get_gravity") GodotMethod!(Vector2) getGravity;
		@GodotName("get_lifetime") GodotMethod!(double) getLifetime;
		@GodotName("get_lifetime_randomness") GodotMethod!(double) getLifetimeRandomness;
		@GodotName("get_normalmap") GodotMethod!(Texture) getNormalmap;
		@GodotName("get_one_shot") GodotMethod!(bool) getOneShot;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("get_param_curve") GodotMethod!(Curve, long) getParamCurve;
		@GodotName("get_param_randomness") GodotMethod!(double, long) getParamRandomness;
		@GodotName("get_particle_flag") GodotMethod!(bool, long) getParticleFlag;
		@GodotName("get_pre_process_time") GodotMethod!(double) getPreProcessTime;
		@GodotName("get_randomness_ratio") GodotMethod!(double) getRandomnessRatio;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("get_spread") GodotMethod!(double) getSpread;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_use_local_coordinates") GodotMethod!(bool) getUseLocalCoordinates;
		@GodotName("is_emitting") GodotMethod!(bool) isEmitting;
		@GodotName("restart") GodotMethod!(void) restart;
		@GodotName("set_amount") GodotMethod!(void, long) setAmount;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_color_initial_ramp") GodotMethod!(void, Gradient) setColorInitialRamp;
		@GodotName("set_color_ramp") GodotMethod!(void, Gradient) setColorRamp;
		@GodotName("set_direction") GodotMethod!(void, Vector2) setDirection;
		@GodotName("set_draw_order") GodotMethod!(void, long) setDrawOrder;
		@GodotName("set_emission_colors") GodotMethod!(void, PoolColorArray) setEmissionColors;
		@GodotName("set_emission_normals") GodotMethod!(void, PoolVector2Array) setEmissionNormals;
		@GodotName("set_emission_points") GodotMethod!(void, PoolVector2Array) setEmissionPoints;
		@GodotName("set_emission_rect_extents") GodotMethod!(void, Vector2) setEmissionRectExtents;
		@GodotName("set_emission_shape") GodotMethod!(void, long) setEmissionShape;
		@GodotName("set_emission_sphere_radius") GodotMethod!(void, double) setEmissionSphereRadius;
		@GodotName("set_emitting") GodotMethod!(void, bool) setEmitting;
		@GodotName("set_explosiveness_ratio") GodotMethod!(void, double) setExplosivenessRatio;
		@GodotName("set_fixed_fps") GodotMethod!(void, long) setFixedFps;
		@GodotName("set_fractional_delta") GodotMethod!(void, bool) setFractionalDelta;
		@GodotName("set_gravity") GodotMethod!(void, Vector2) setGravity;
		@GodotName("set_lifetime") GodotMethod!(void, double) setLifetime;
		@GodotName("set_lifetime_randomness") GodotMethod!(void, double) setLifetimeRandomness;
		@GodotName("set_normalmap") GodotMethod!(void, Texture) setNormalmap;
		@GodotName("set_one_shot") GodotMethod!(void, bool) setOneShot;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
		@GodotName("set_param_curve") GodotMethod!(void, long, Curve) setParamCurve;
		@GodotName("set_param_randomness") GodotMethod!(void, long, double) setParamRandomness;
		@GodotName("set_particle_flag") GodotMethod!(void, long, bool) setParticleFlag;
		@GodotName("set_pre_process_time") GodotMethod!(void, double) setPreProcessTime;
		@GodotName("set_randomness_ratio") GodotMethod!(void, double) setRandomnessRatio;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("set_spread") GodotMethod!(void, double) setSpread;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_use_local_coordinates") GodotMethod!(void, bool) setUseLocalCoordinates;
	}
	/// 
	pragma(inline, true) bool opEquals(in CPUParticles2D other) const
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
	/// Construct a new instance of CPUParticles2D.
	/// Note: use `memnew!CPUParticles2D` instead.
	static CPUParticles2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CPUParticles2D");
		if(constructor is null) return typeof(this).init;
		return cast(CPUParticles2D)(constructor());
	}
	@disable new(size_t s);
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
		emissionShapeRectangle = 2,
		/** */
		emissionShapePoints = 3,
		/** */
		emissionShapeDirectedPoints = 4,
		/** */
		emissionShapeMax = 5,
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
	}
	/// 
	enum Constants : int
	{
		flagAlignYToVelocity = 0,
		emissionShapePoint = 0,
		drawOrderIndex = 0,
		paramInitialLinearVelocity = 0,
		paramAngularVelocity = 1,
		drawOrderLifetime = 1,
		emissionShapeSphere = 1,
		flagRotateY = 1,
		emissionShapeRectangle = 2,
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
	void _textureChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_texture_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	Vector2 getDirection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getDirection, _godot_object);
	}
	/**
	
	*/
	CPUParticles2D.DrawOrder getDrawOrder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CPUParticles2D.DrawOrder)(GDNativeClassBinding.getDrawOrder, _godot_object);
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
	PoolVector2Array getEmissionNormals() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getEmissionNormals, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getEmissionPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getEmissionPoints, _godot_object);
	}
	/**
	
	*/
	Vector2 getEmissionRectExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getEmissionRectExtents, _godot_object);
	}
	/**
	
	*/
	CPUParticles2D.EmissionShape getEmissionShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CPUParticles2D.EmissionShape)(GDNativeClassBinding.getEmissionShape, _godot_object);
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
	bool getFractionalDelta() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFractionalDelta, _godot_object);
	}
	/**
	
	*/
	Vector2 getGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGravity, _godot_object);
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
	Ref!Texture getNormalmap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getNormalmap, _godot_object);
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
	void setDirection(in Vector2 direction)
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
	void setEmissionColors(in PoolColorArray array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionColors, _godot_object, array);
	}
	/**
	
	*/
	void setEmissionNormals(in PoolVector2Array array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionNormals, _godot_object, array);
	}
	/**
	
	*/
	void setEmissionPoints(in PoolVector2Array array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionPoints, _godot_object, array);
	}
	/**
	
	*/
	void setEmissionRectExtents(in Vector2 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionRectExtents, _godot_object, extents);
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
	void setFractionalDelta(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFractionalDelta, _godot_object, enable);
	}
	/**
	
	*/
	void setGravity(in Vector2 accel_vec)
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
	void setNormalmap(Texture normalmap)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormalmap, _godot_object, normalmap);
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
	@property Vector2 direction()
	{
		return getDirection();
	}
	/// ditto
	@property void direction(Vector2 v)
	{
		setDirection(v);
	}
	/**
	
	*/
	@property CPUParticles2D.DrawOrder drawOrder()
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
	@property PoolVector2Array emissionNormals()
	{
		return getEmissionNormals();
	}
	/// ditto
	@property void emissionNormals(PoolVector2Array v)
	{
		setEmissionNormals(v);
	}
	/**
	
	*/
	@property PoolVector2Array emissionPoints()
	{
		return getEmissionPoints();
	}
	/// ditto
	@property void emissionPoints(PoolVector2Array v)
	{
		setEmissionPoints(v);
	}
	/**
	
	*/
	@property Vector2 emissionRectExtents()
	{
		return getEmissionRectExtents();
	}
	/// ditto
	@property void emissionRectExtents(Vector2 v)
	{
		setEmissionRectExtents(v);
	}
	/**
	
	*/
	@property CPUParticles2D.EmissionShape emissionShape()
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
	@property Vector2 gravity()
	{
		return getGravity();
	}
	/// ditto
	@property void gravity(Vector2 v)
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
	@property Texture normalmap()
	{
		return getNormalmap();
	}
	/// ditto
	@property void normalmap(Texture v)
	{
		setNormalmap(v);
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
	/**
	
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
}
