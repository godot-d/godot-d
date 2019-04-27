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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.material;
import godot.texture;
import godot.curvetexture;
import godot.gradienttexture;
import godot.resource;
import godot.reference;
/**
Particle properties for $(D Particles) and $(D Particles2D) nodes.

ParticlesMaterial defines particle properties and behavior. It is used in the `process_material` of $(D Particles) and $(D Particles2D) emitter nodes.
Some of this material's properties are applied to each particle when emitted, while others can have a $(D CurveTexture) applied to vary values over the lifetime of the particle.
When a randomness ratio is applied to a property it is used to scale that property by a random amount. The random ratio is used to interpolate between `1.0` and a random number less than one, the result is multiplied by the property to obtain the randomized property. For example a random ratio of `0.4` would scale the original property between `0.4-1.0` of its original value.
*/
@GodotBaseClass struct ParticlesMaterial
{
	enum string _GODOT_internal_name = "ParticlesMaterial";
public:
@nogc nothrow:
	union { godot_object _godot_object; Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_spread") GodotMethod!(void, double) setSpread;
		@GodotName("get_spread") GodotMethod!(double) getSpread;
		@GodotName("set_flatness") GodotMethod!(void, double) setFlatness;
		@GodotName("get_flatness") GodotMethod!(double) getFlatness;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("set_param_randomness") GodotMethod!(void, long, double) setParamRandomness;
		@GodotName("get_param_randomness") GodotMethod!(double, long) getParamRandomness;
		@GodotName("set_param_texture") GodotMethod!(void, long, Texture) setParamTexture;
		@GodotName("get_param_texture") GodotMethod!(Texture, long) getParamTexture;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("set_color_ramp") GodotMethod!(void, Texture) setColorRamp;
		@GodotName("get_color_ramp") GodotMethod!(Texture) getColorRamp;
		@GodotName("set_flag") GodotMethod!(void, long, bool) setFlag;
		@GodotName("get_flag") GodotMethod!(bool, long) getFlag;
		@GodotName("set_emission_shape") GodotMethod!(void, long) setEmissionShape;
		@GodotName("get_emission_shape") GodotMethod!(ParticlesMaterial.EmissionShape) getEmissionShape;
		@GodotName("set_emission_sphere_radius") GodotMethod!(void, double) setEmissionSphereRadius;
		@GodotName("get_emission_sphere_radius") GodotMethod!(double) getEmissionSphereRadius;
		@GodotName("set_emission_box_extents") GodotMethod!(void, Vector3) setEmissionBoxExtents;
		@GodotName("get_emission_box_extents") GodotMethod!(Vector3) getEmissionBoxExtents;
		@GodotName("set_emission_point_texture") GodotMethod!(void, Texture) setEmissionPointTexture;
		@GodotName("get_emission_point_texture") GodotMethod!(Texture) getEmissionPointTexture;
		@GodotName("set_emission_normal_texture") GodotMethod!(void, Texture) setEmissionNormalTexture;
		@GodotName("get_emission_normal_texture") GodotMethod!(Texture) getEmissionNormalTexture;
		@GodotName("set_emission_color_texture") GodotMethod!(void, Texture) setEmissionColorTexture;
		@GodotName("get_emission_color_texture") GodotMethod!(Texture) getEmissionColorTexture;
		@GodotName("set_emission_point_count") GodotMethod!(void, long) setEmissionPointCount;
		@GodotName("get_emission_point_count") GodotMethod!(long) getEmissionPointCount;
		@GodotName("set_trail_divisor") GodotMethod!(void, long) setTrailDivisor;
		@GodotName("get_trail_divisor") GodotMethod!(long) getTrailDivisor;
		@GodotName("set_trail_size_modifier") GodotMethod!(void, CurveTexture) setTrailSizeModifier;
		@GodotName("get_trail_size_modifier") GodotMethod!(CurveTexture) getTrailSizeModifier;
		@GodotName("set_trail_color_modifier") GodotMethod!(void, GradientTexture) setTrailColorModifier;
		@GodotName("get_trail_color_modifier") GodotMethod!(GradientTexture) getTrailColorModifier;
		@GodotName("get_gravity") GodotMethod!(Vector3) getGravity;
		@GodotName("set_gravity") GodotMethod!(void, Vector3) setGravity;
	}
	bool opEquals(in ParticlesMaterial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ParticlesMaterial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Use with $(D setFlag) to set $(D flagRotateY)
		*/
		flagRotateY = 1,
		/**
		
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
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set orbital_velocity properties.
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
		Use with $(D setParam), $(D setParamRandomness), and $(D setParamTexture) to set hue_variation properties.
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
		
		*/
		paramMax = 12,
	}
	/// 
	enum Constants : int
	{
		flagAlignYToVelocity = 0,
		paramInitialLinearVelocity = 0,
		emissionShapePoint = 0,
		paramAngularVelocity = 1,
		flagRotateY = 1,
		emissionShapeSphere = 1,
		paramOrbitVelocity = 2,
		emissionShapeBox = 2,
		emissionShapePoints = 3,
		flagMax = 3,
		paramLinearAccel = 3,
		emissionShapeDirectedPoints = 4,
		paramRadialAccel = 4,
		paramTangentialAccel = 5,
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
	void setSpread(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpread, _godot_object, degrees);
	}
	/**
	
	*/
	double getSpread() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpread, _godot_object);
	}
	/**
	
	*/
	void setFlatness(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlatness, _godot_object, amount);
	}
	/**
	
	*/
	double getFlatness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFlatness, _godot_object);
	}
	/**
	
	*/
	void setParam(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParam, _godot_object, param, value);
	}
	/**
	
	*/
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getParam, _godot_object, param);
	}
	/**
	
	*/
	void setParamRandomness(in long param, in double randomness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParamRandomness, _godot_object, param, randomness);
	}
	/**
	
	*/
	double getParamRandomness(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getParamRandomness, _godot_object, param);
	}
	/**
	
	*/
	void setParamTexture(in long param, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParamTexture, _godot_object, param, texture);
	}
	/**
	
	*/
	Ref!Texture getParamTexture(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getParamTexture, _godot_object, param);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object);
	}
	/**
	
	*/
	void setColorRamp(Texture ramp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColorRamp, _godot_object, ramp);
	}
	/**
	
	*/
	Ref!Texture getColorRamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getColorRamp, _godot_object);
	}
	/**
	
	*/
	void setFlag(in long flag, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlag, _godot_object, flag, enable);
	}
	/**
	
	*/
	bool getFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFlag, _godot_object, flag);
	}
	/**
	
	*/
	void setEmissionShape(in long shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionShape, _godot_object, shape);
	}
	/**
	
	*/
	ParticlesMaterial.EmissionShape getEmissionShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ParticlesMaterial.EmissionShape)(_classBinding.getEmissionShape, _godot_object);
	}
	/**
	
	*/
	void setEmissionSphereRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionSphereRadius, _godot_object, radius);
	}
	/**
	
	*/
	double getEmissionSphereRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEmissionSphereRadius, _godot_object);
	}
	/**
	
	*/
	void setEmissionBoxExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionBoxExtents, _godot_object, extents);
	}
	/**
	
	*/
	Vector3 getEmissionBoxExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getEmissionBoxExtents, _godot_object);
	}
	/**
	
	*/
	void setEmissionPointTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionPointTexture, _godot_object, texture);
	}
	/**
	
	*/
	Ref!Texture getEmissionPointTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getEmissionPointTexture, _godot_object);
	}
	/**
	
	*/
	void setEmissionNormalTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionNormalTexture, _godot_object, texture);
	}
	/**
	
	*/
	Ref!Texture getEmissionNormalTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getEmissionNormalTexture, _godot_object);
	}
	/**
	
	*/
	void setEmissionColorTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionColorTexture, _godot_object, texture);
	}
	/**
	
	*/
	Ref!Texture getEmissionColorTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getEmissionColorTexture, _godot_object);
	}
	/**
	
	*/
	void setEmissionPointCount(in long point_count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionPointCount, _godot_object, point_count);
	}
	/**
	
	*/
	long getEmissionPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getEmissionPointCount, _godot_object);
	}
	/**
	
	*/
	void setTrailDivisor(in long divisor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTrailDivisor, _godot_object, divisor);
	}
	/**
	
	*/
	long getTrailDivisor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTrailDivisor, _godot_object);
	}
	/**
	
	*/
	void setTrailSizeModifier(CurveTexture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTrailSizeModifier, _godot_object, texture);
	}
	/**
	
	*/
	Ref!CurveTexture getTrailSizeModifier() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CurveTexture)(_classBinding.getTrailSizeModifier, _godot_object);
	}
	/**
	
	*/
	void setTrailColorModifier(GradientTexture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTrailColorModifier, _godot_object, texture);
	}
	/**
	
	*/
	Ref!GradientTexture getTrailColorModifier() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GradientTexture)(_classBinding.getTrailColorModifier, _godot_object);
	}
	/**
	
	*/
	Vector3 getGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getGravity, _godot_object);
	}
	/**
	
	*/
	void setGravity(in Vector3 accel_vec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGravity, _godot_object, accel_vec);
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
	Particles will be emitted inside this region. Use `EMISSION_SHAPE_*` constants for values. Default value: `EMISSION_SHAPE_POINT`.
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
	The sphere's radius if `emission_shape` is set to `EMISSION_SHAPE_SPHERE`.
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
	The box's extents if `emission_shape` is set to `EMISSION_SHAPE_BOX`.
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
	Particles will be emitted at positions determined by sampling this texture at a random position. Used with `EMISSION_SHAPE_POINTS` and `EMISSION_SHAPE_DIRECTED_POINTS`. Can be created automatically from mesh or node by selecting "Create Emission Points from Mesh/Node" under the "Particles" tool in the toolbar.
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
	Particle velocity and rotation will be set by sampling this texture at the same point as the $(D emissionPointTexture). Used only in `EMISSION_SHAPE_DIRECTED`. Can be created automatically from mesh or node by selecting "Create Emission Points from Mesh/Node" under the "Particles" tool in the toolbar.
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
	The number of emission points if `emission_shape` is set to `EMISSION_SHAPE_POINTS` or `EMISSION_SHAPE_DIRECTED_POINTS`.
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
	Align y-axis of particle with the direction of its velocity.
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
	If `true`, particles rotate around y-axis by $(D angle).
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
	If `true`, particles will not move on the z axis. Default value: `true` for $(D Particles2D), `false` for $(D Particles).
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
	Each particle's initial direction range from `+spread` to `-spread` degrees. Default value: `45`. Applied to X/Z plane and Y/Z planes.
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
	Amount of $(D spread) in Y/Z plane. A value of `1` restricts particles to X/Z plane. Default `0`.
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
	Gravity applied to every particle. Default value: `(0, 98, 0)`.
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
	Initial velocity magnitude for each particle. Direction comes from $(D spread).
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
	Initial velocity randomness ratio. Default value: `0`.
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
	Initial angular velocity applied to each particle. Sets the speed of rotation of the particle.
	Only applied when $(D flagDisableZ) or $(D flagRotateY) are `true` or the $(D SpatialMaterial) being used to draw the particle is using `BillboardMode.BILLBOARD_PARTICLES`.
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
	Angular velocity randomness ratio. Default value: `0`.
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
	Orbital velocity randomness ratio. Default value: `0`.
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
	Linear acceleration applied to each particle. Acceleration increases velocity magnitude each frame without affecting direction.
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
	Linear acceleration randomness ratio. Default value: `0`.
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
	Radial acceleration randomness ratio. Default value: `0`.
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
	Tangential acceleration randomness ratio. Default value: `0`.
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
	Damping randomness ratio. Default value: `0`.
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
	Initial rotation applied to each particle, in degrees.
	Only applied when $(D flagDisableZ) or $(D flagRotateY) are `true` or the $(D SpatialMaterial) being used to draw the particle is using `BillboardMode.BILLBOARD_PARTICLES`.
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
	Rotation randomness ratio. Default value: `0`.
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
	Scale randomness ratio. Default value: `0`.
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
	Hue variation randomness ratio. Default value: `0`.
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
	Animation speed randomness ratio. Default value: `0`.
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
	Animation offset randomness ratio. Default value: `0`.
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
}
