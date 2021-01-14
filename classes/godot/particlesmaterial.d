/**
Particle properties for $(D Particles) and $(D Particles2D) nodes.

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
import godot.object;
import godot.classdb;
import godot.material;
import godot.resource;
import godot.texture;
import godot.gradienttexture;
import godot.curvetexture;
/**
Particle properties for $(D Particles) and $(D Particles2D) nodes.

ParticlesMaterial defines particle properties and behavior. It is used in the `process_material` of $(D Particles) and $(D Particles2D) emitter nodes.
Some of this material's properties are applied to each particle when emitted, while others can have a $(D CurveTexture) applied to vary values over the lifetime of the particle.
When a randomness ratio is applied to a property it is used to scale that property by a random amount. The random ratio is used to interpolate between `1.0` and a random number less than one, the result is multiplied by the property to obtain the randomized property. For example a random ratio of `0.4` would scale the original property between `0.4-1.0` of its original value.
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
		@GodotName("get_color_ramp") GodotMethod!(Texture) getColorRamp;
		@GodotName("get_direction") GodotMethod!(Vector3) getDirection;
		@GodotName("get_emission_box_extents") GodotMethod!(Vector3) getEmissionBoxExtents;
		@GodotName("get_emission_color_texture") GodotMethod!(Texture) getEmissionColorTexture;
		@GodotName("get_emission_normal_texture") GodotMethod!(Texture) getEmissionNormalTexture;
		@GodotName("get_emission_point_count") GodotMethod!(long) getEmissionPointCount;
		@GodotName("get_emission_point_texture") GodotMethod!(Texture) getEmissionPointTexture;
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
		@GodotName("set_color_ramp") GodotMethod!(void, Texture) setColorRamp;
		@GodotName("set_direction") GodotMethod!(void, Vector3) setDirection;
		@GodotName("set_emission_box_extents") GodotMethod!(void, Vector3) setEmissionBoxExtents;
		@GodotName("set_emission_color_texture") GodotMethod!(void, Texture) setEmissionColorTexture;
		@GodotName("set_emission_normal_texture") GodotMethod!(void, Texture) setEmissionNormalTexture;
		@GodotName("set_emission_point_count") GodotMethod!(void, long) setEmissionPointCount;
		@GodotName("set_emission_point_texture") GodotMethod!(void, Texture) setEmissionPointTexture;
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
		/**
		Use with $(D setFlag) to set $(D flagAlignY).
		*/
		flagAlignYToVelocity = 0,
		/**
		Use with $(D setFlag) to set $(D flagRotateY).
		*/
		flagRotateY = 1,
		/**
		Use with $(D setFlag) to set $(D flagDisableZ).
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
		Particles will be emitted at a position determined by sampling a random point on the $(D emissionPointTexture). Particle color will be modulated by $(D emissionColorTexture).
		*/
		emissionShapePoints = 3,
		/**
		Particles will be emitted at a position determined by sampling a random point on the $(D emissionPointTexture). Particle velocity and rotation will be set based on $(D emissionNormalTexture). Particle color will be modulated by $(D emissionColorTexture).
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
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set initial velocity properties.
		*/
		paramInitialLinearVelocity = 0,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set angular velocity properties.
		*/
		paramAngularVelocity = 1,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set orbital velocity properties.
		*/
		paramOrbitVelocity = 2,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set linear acceleration properties.
		*/
		paramLinearAccel = 3,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set radial acceleration properties.
		*/
		paramRadialAccel = 4,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set tangential acceleration properties.
		*/
		paramTangentialAccel = 5,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set damping properties.
		*/
		paramDamping = 6,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set angle properties.
		*/
		paramAngle = 7,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set scale properties.
		*/
		paramScale = 8,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set hue variation properties.
		*/
		paramHueVariation = 9,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set animation speed properties.
		*/
		paramAnimSpeed = 10,
		/**
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set animation offset properties.
		*/
		paramAnimOffset = 11,
		/**
		Represents the size of the $(D parameter) enum.
		*/
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
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object);
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
	Returns `true` if the specified flag is enabled.
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
	Returns the value of the specified parameter.
	*/
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParam, _godot_object, param);
	}
	/**
	Returns the randomness ratio associated with the specified parameter.
	*/
	double getParamRandomness(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParamRandomness, _godot_object, param);
	}
	/**
	Returns the $(D Texture) used by the specified parameter.
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
	If `true`, enables the specified flag. See $(D flags) for options.
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
	Sets the specified $(D parameter).
	*/
	void setParam(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParam, _godot_object, param, value);
	}
	/**
	Sets the randomness ratio for the specified $(D parameter).
	*/
	void setParamRandomness(in long param, in double randomness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParamRandomness, _godot_object, param, randomness);
	}
	/**
	Sets the $(D Texture) for the specified $(D parameter).
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
	Initial rotation applied to each particle, in degrees.
	Only applied when $(D flagDisableZ) or $(D flagRotateY) are `true` or the $(D SpatialMaterial) being used to draw the particle is using $(D constant SpatialMaterial.BILLBOARD_PARTICLES).
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
	Each particle's rotation will be animated along this $(D CurveTexture).
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
	Only applied when $(D flagDisableZ) or $(D flagRotateY) are `true` or the $(D SpatialMaterial) being used to draw the particle is using $(D constant SpatialMaterial.BILLBOARD_PARTICLES).
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
	Each particle's angular velocity will vary along this $(D CurveTexture).
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
	Each particle's animation offset will vary along this $(D CurveTexture).
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
	Each particle's animation speed will vary along this $(D CurveTexture).
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
	Each particle's initial color. If the $(D Particles2D)'s `texture` is defined, it will be multiplied by this color. To have particle display color in a $(D SpatialMaterial) make sure to set $(D SpatialMaterial.vertexColorUseAsAlbedo) to `true`.
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
	Each particle's color will vary along this $(D GradientTexture).
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
	Damping will vary along this $(D CurveTexture).
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
	The box's extents if `emission_shape` is set to $(D constant EMISSION_SHAPE_BOX).
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
	Particle color will be modulated by color determined by sampling this texture at the same point as the $(D emissionPointTexture).
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
	Particle velocity and rotation will be set by sampling this texture at the same point as the $(D emissionPointTexture). Used only in $(D constant EMISSION_SHAPE_DIRECTED_POINTS). Can be created automatically from mesh or node by selecting "Create Emission Points from Mesh/Node" under the "Particles" tool in the toolbar.
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
	The number of emission points if `emission_shape` is set to $(D constant EMISSION_SHAPE_POINTS) or $(D constant EMISSION_SHAPE_DIRECTED_POINTS).
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
	Particles will be emitted at positions determined by sampling this texture at a random position. Used with $(D constant EMISSION_SHAPE_POINTS) and $(D constant EMISSION_SHAPE_DIRECTED_POINTS). Can be created automatically from mesh or node by selecting "Create Emission Points from Mesh/Node" under the "Particles" tool in the toolbar.
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
	Particles will be emitted inside this region. Use $(D emissionshape) constants for values.
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
	The sphere's radius if `emission_shape` is set to $(D constant EMISSION_SHAPE_SPHERE).
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
	Align Y axis of particle with the direction of its velocity.
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
	If `true`, particles will not move on the z axis.
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
	If `true`, particles rotate around Y axis by $(D angle).
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
	Each particle's hue will vary along this $(D CurveTexture).
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
	Each particle's linear acceleration will vary along this $(D CurveTexture).
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
	Orbital velocity applied to each particle. Makes the particles circle around origin. Specified in number of full rotations around origin per second.
	Only available when $(D flagDisableZ) is `true`.
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
	Each particle's orbital velocity will vary along this $(D CurveTexture).
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
	Each particle's radial acceleration will vary along this $(D CurveTexture).
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
	Initial scale applied to each particle.
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
	Each particle's scale will vary along this $(D CurveTexture).
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
	Scale randomness ratio.
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
	Each particle's tangential acceleration will vary along this $(D CurveTexture).
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
	/**
	Trail particles' color will vary along this $(D GradientTexture).
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
	Emitter will emit `amount` divided by `trail_divisor` particles. The remaining particles will be used as trail(s).
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
	Trail particles' size will vary along this $(D CurveTexture).
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
