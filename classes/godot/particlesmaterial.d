/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.particlesmaterial;
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
import godot.material;
import godot.resource;
import godot.texture;
import godot.gradienttexture;
import godot.curvetexture;
/**

*/
@GodotBaseClass struct ParticlesMaterial
{
	package(godot) enum string _GODOT_internal_name = "ParticlesMaterial";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_color_initial_ramp") GodotMethod!(Texture) getColorInitialRamp;
		@GodotName("get_color_ramp") GodotMethod!(Texture) getColorRamp;
		@GodotName("get_direction") GodotMethod!(Vector3) getDirection;
		@GodotName("get_emission_box_extents") GodotMethod!(Vector3) getEmissionBoxExtents;
		@GodotName("get_emission_color_texture") GodotMethod!(Texture) getEmissionColorTexture;
		@GodotName("get_emission_normal_texture") GodotMethod!(Texture) getEmissionNormalTexture;
		@GodotName("get_emission_point_count") GodotMethod!(long) getEmissionPointCount;
		@GodotName("get_emission_point_texture") GodotMethod!(Texture) getEmissionPointTexture;
		@GodotName("get_emission_ring_axis") GodotMethod!(Vector3) getEmissionRingAxis;
		@GodotName("get_emission_ring_height") GodotMethod!(double) getEmissionRingHeight;
		@GodotName("get_emission_ring_inner_radius") GodotMethod!(double) getEmissionRingInnerRadius;
		@GodotName("get_emission_ring_radius") GodotMethod!(double) getEmissionRingRadius;
		@GodotName("get_emission_shape") GodotMethod!(ParticlesMaterial.EmissionShape) getEmissionShape;
		@GodotName("get_emission_sphere_radius") GodotMethod!(double) getEmissionSphereRadius;
		@GodotName("get_flag") GodotMethod!(bool, long) getFlag;
		@GodotName("get_flatness") GodotMethod!(double) getFlatness;
		@GodotName("get_gravity") GodotMethod!(Vector3) getGravity;
		@GodotName("get_lifetime_randomness") GodotMethod!(double) getLifetimeRandomness;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("get_param_randomness") GodotMethod!(double, long) getParamRandomness;
		@GodotName("get_param_texture") GodotMethod!(Texture, long) getParamTexture;
		@GodotName("get_spread") GodotMethod!(double) getSpread;
		@GodotName("get_trail_color_modifier") GodotMethod!(GradientTexture) getTrailColorModifier;
		@GodotName("get_trail_divisor") GodotMethod!(long) getTrailDivisor;
		@GodotName("get_trail_size_modifier") GodotMethod!(CurveTexture) getTrailSizeModifier;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_color_initial_ramp") GodotMethod!(void, Texture) setColorInitialRamp;
		@GodotName("set_color_ramp") GodotMethod!(void, Texture) setColorRamp;
		@GodotName("set_direction") GodotMethod!(void, Vector3) setDirection;
		@GodotName("set_emission_box_extents") GodotMethod!(void, Vector3) setEmissionBoxExtents;
		@GodotName("set_emission_color_texture") GodotMethod!(void, Texture) setEmissionColorTexture;
		@GodotName("set_emission_normal_texture") GodotMethod!(void, Texture) setEmissionNormalTexture;
		@GodotName("set_emission_point_count") GodotMethod!(void, long) setEmissionPointCount;
		@GodotName("set_emission_point_texture") GodotMethod!(void, Texture) setEmissionPointTexture;
		@GodotName("set_emission_ring_axis") GodotMethod!(void, Vector3) setEmissionRingAxis;
		@GodotName("set_emission_ring_height") GodotMethod!(void, double) setEmissionRingHeight;
		@GodotName("set_emission_ring_inner_radius") GodotMethod!(void, double) setEmissionRingInnerRadius;
		@GodotName("set_emission_ring_radius") GodotMethod!(void, double) setEmissionRingRadius;
		@GodotName("set_emission_shape") GodotMethod!(void, long) setEmissionShape;
		@GodotName("set_emission_sphere_radius") GodotMethod!(void, double) setEmissionSphereRadius;
		@GodotName("set_flag") GodotMethod!(void, long, bool) setFlag;
		@GodotName("set_flatness") GodotMethod!(void, double) setFlatness;
		@GodotName("set_gravity") GodotMethod!(void, Vector3) setGravity;
		@GodotName("set_lifetime_randomness") GodotMethod!(void, double) setLifetimeRandomness;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
		@GodotName("set_param_randomness") GodotMethod!(void, long, double) setParamRandomness;
		@GodotName("set_param_texture") GodotMethod!(void, long, Texture) setParamTexture;
		@GodotName("set_spread") GodotMethod!(void, double) setSpread;
		@GodotName("set_trail_color_modifier") GodotMethod!(void, GradientTexture) setTrailColorModifier;
		@GodotName("set_trail_divisor") GodotMethod!(void, long) setTrailDivisor;
		@GodotName("set_trail_size_modifier") GodotMethod!(void, CurveTexture) setTrailSizeModifier;
	}
	/// 
	pragma(inline, true) bool opEquals(in ParticlesMaterial other) const
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
	/// Construct a new instance of ParticlesMaterial.
	/// Note: use `memnew!ParticlesMaterial` instead.
	static ParticlesMaterial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ParticlesMaterial");
		if(constructor is null) return typeof(this).init;
		return cast(ParticlesMaterial)(constructor());
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
	enum Constants : int
	{
		flagAlignYToVelocity = 0,
		emissionShapePoint = 0,
		paramInitialLinearVelocity = 0,
		paramAngularVelocity = 1,
		emissionShapeSphere = 1,
		flagRotateY = 1,
		flagDisableZ = 2,
		emissionShapeBox = 2,
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
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getColorInitialRamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getColorInitialRamp, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getColorRamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getColorRamp, _godot_object);
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
	Vector3 getEmissionBoxExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getEmissionBoxExtents, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getEmissionColorTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getEmissionColorTexture, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getEmissionNormalTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getEmissionNormalTexture, _godot_object);
	}
	/**
	
	*/
	long getEmissionPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getEmissionPointCount, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getEmissionPointTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getEmissionPointTexture, _godot_object);
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
	ParticlesMaterial.EmissionShape getEmissionShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ParticlesMaterial.EmissionShape)(GDNativeClassBinding.getEmissionShape, _godot_object);
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
	bool getFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFlag, _godot_object, flag);
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
	Vector3 getGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getGravity, _godot_object);
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
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParam, _godot_object, param);
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
	Ref!Texture getParamTexture(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getParamTexture, _godot_object, param);
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
	Ref!GradientTexture getTrailColorModifier() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GradientTexture)(GDNativeClassBinding.getTrailColorModifier, _godot_object);
	}
	/**
	
	*/
	long getTrailDivisor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTrailDivisor, _godot_object);
	}
	/**
	
	*/
	Ref!CurveTexture getTrailSizeModifier() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CurveTexture)(GDNativeClassBinding.getTrailSizeModifier, _godot_object);
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
	void setColorInitialRamp(Texture ramp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColorInitialRamp, _godot_object, ramp);
	}
	/**
	
	*/
	void setColorRamp(Texture ramp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColorRamp, _godot_object, ramp);
	}
	/**
	
	*/
	void setDirection(in Vector3 degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDirection, _godot_object, degrees);
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
	void setEmissionColorTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionColorTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setEmissionNormalTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionNormalTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setEmissionPointCount(in long point_count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionPointCount, _godot_object, point_count);
	}
	/**
	
	*/
	void setEmissionPointTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionPointTexture, _godot_object, texture);
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
	void setFlag(in long flag, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlag, _godot_object, flag, enable);
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
	void setGravity(in Vector3 accel_vec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGravity, _godot_object, accel_vec);
	}
	/**
	
	*/
	void setLifetimeRandomness(in double randomness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLifetimeRandomness, _godot_object, randomness);
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
	void setParamRandomness(in long param, in double randomness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamRandomness, _godot_object, param, randomness);
	}
	/**
	
	*/
	void setParamTexture(in long param, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamTexture, _godot_object, param, texture);
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
	void setTrailColorModifier(GradientTexture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTrailColorModifier, _godot_object, texture);
	}
	/**
	
	*/
	void setTrailDivisor(in long divisor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTrailDivisor, _godot_object, divisor);
	}
	/**
	
	*/
	void setTrailSizeModifier(CurveTexture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTrailSizeModifier, _godot_object, texture);
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
	@property Texture angleCurve()
	{
		return getParamTexture(7);
	}
	/// ditto
	@property void angleCurve(Texture v)
	{
		setParamTexture(7, v);
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
	@property Texture angularVelocityCurve()
	{
		return getParamTexture(1);
	}
	/// ditto
	@property void angularVelocityCurve(Texture v)
	{
		setParamTexture(1, v);
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
	@property Texture animOffsetCurve()
	{
		return getParamTexture(11);
	}
	/// ditto
	@property void animOffsetCurve(Texture v)
	{
		setParamTexture(11, v);
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
	@property Texture animSpeedCurve()
	{
		return getParamTexture(10);
	}
	/// ditto
	@property void animSpeedCurve(Texture v)
	{
		setParamTexture(10, v);
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
	@property Texture colorInitialRamp()
	{
		return getColorInitialRamp();
	}
	/// ditto
	@property void colorInitialRamp(Texture v)
	{
		setColorInitialRamp(v);
	}
	/**
	
	*/
	@property Texture colorRamp()
	{
		return getColorRamp();
	}
	/// ditto
	@property void colorRamp(Texture v)
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
	@property Texture dampingCurve()
	{
		return getParamTexture(6);
	}
	/// ditto
	@property void dampingCurve(Texture v)
	{
		setParamTexture(6, v);
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
	@property Texture emissionColorTexture()
	{
		return getEmissionColorTexture();
	}
	/// ditto
	@property void emissionColorTexture(Texture v)
	{
		setEmissionColorTexture(v);
	}
	/**
	
	*/
	@property Texture emissionNormalTexture()
	{
		return getEmissionNormalTexture();
	}
	/// ditto
	@property void emissionNormalTexture(Texture v)
	{
		setEmissionNormalTexture(v);
	}
	/**
	
	*/
	@property long emissionPointCount()
	{
		return getEmissionPointCount();
	}
	/// ditto
	@property void emissionPointCount(long v)
	{
		setEmissionPointCount(v);
	}
	/**
	
	*/
	@property Texture emissionPointTexture()
	{
		return getEmissionPointTexture();
	}
	/// ditto
	@property void emissionPointTexture(Texture v)
	{
		setEmissionPointTexture(v);
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
	@property ParticlesMaterial.EmissionShape emissionShape()
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
	@property bool flagAlignY()
	{
		return getFlag(0);
	}
	/// ditto
	@property void flagAlignY(bool v)
	{
		setFlag(0, v);
	}
	/**
	
	*/
	@property bool flagDisableZ()
	{
		return getFlag(2);
	}
	/// ditto
	@property void flagDisableZ(bool v)
	{
		setFlag(2, v);
	}
	/**
	
	*/
	@property bool flagRotateY()
	{
		return getFlag(1);
	}
	/// ditto
	@property void flagRotateY(bool v)
	{
		setFlag(1, v);
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
	@property Texture hueVariationCurve()
	{
		return getParamTexture(9);
	}
	/// ditto
	@property void hueVariationCurve(Texture v)
	{
		setParamTexture(9, v);
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
	@property Texture linearAccelCurve()
	{
		return getParamTexture(3);
	}
	/// ditto
	@property void linearAccelCurve(Texture v)
	{
		setParamTexture(3, v);
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
	@property Texture orbitVelocityCurve()
	{
		return getParamTexture(2);
	}
	/// ditto
	@property void orbitVelocityCurve(Texture v)
	{
		setParamTexture(2, v);
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
	@property Texture radialAccelCurve()
	{
		return getParamTexture(4);
	}
	/// ditto
	@property void radialAccelCurve(Texture v)
	{
		setParamTexture(4, v);
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
	@property double scale()
	{
		return getParam(8);
	}
	/// ditto
	@property void scale(double v)
	{
		setParam(8, v);
	}
	/**
	
	*/
	@property Texture scaleCurve()
	{
		return getParamTexture(8);
	}
	/// ditto
	@property void scaleCurve(Texture v)
	{
		setParamTexture(8, v);
	}
	/**
	
	*/
	@property double scaleRandom()
	{
		return getParamRandomness(8);
	}
	/// ditto
	@property void scaleRandom(double v)
	{
		setParamRandomness(8, v);
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
	@property Texture tangentialAccelCurve()
	{
		return getParamTexture(5);
	}
	/// ditto
	@property void tangentialAccelCurve(Texture v)
	{
		setParamTexture(5, v);
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
	@property GradientTexture trailColorModifier()
	{
		return getTrailColorModifier();
	}
	/// ditto
	@property void trailColorModifier(GradientTexture v)
	{
		setTrailColorModifier(v);
	}
	/**
	
	*/
	@property long trailDivisor()
	{
		return getTrailDivisor();
	}
	/// ditto
	@property void trailDivisor(long v)
	{
		setTrailDivisor(v);
	}
	/**
	
	*/
	@property CurveTexture trailSizeModifier()
	{
		return getTrailSizeModifier();
	}
	/// ditto
	@property void trailSizeModifier(CurveTexture v)
	{
		setTrailSizeModifier(v);
	}
}
