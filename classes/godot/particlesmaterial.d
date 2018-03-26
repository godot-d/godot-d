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
/**
Particle properties for $(D Particles) and $(D Particles2D) nodes.

ParticlesMaterial defines particle properties and behavior. It is used in the `process_material` of $(D Particles) and $(D Particles2D) emitter nodes.
Some of this material's properties are applied to each particle when emitted, while others can have a $(D CurveTexture) applied to vary values over the lifetime of the particle.
*/
@GodotBaseClass struct ParticlesMaterial
{
	static immutable string _GODOT_internal_name = "ParticlesMaterial";
public:
@nogc nothrow:
	union { godot_object _godot_object; Material _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		flagMax = 4,
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
		
		*/
		emissionShapePoints = 3,
		/**
		
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
		emissionShapePoint = 0,
		flagAlignYToVelocity = 0,
		paramInitialLinearVelocity = 0,
		emissionShapeSphere = 1,
		paramAngularVelocity = 1,
		flagRotateY = 1,
		emissionShapeBox = 2,
		paramOrbitVelocity = 2,
		paramLinearAccel = 3,
		emissionShapePoints = 3,
		emissionShapeDirectedPoints = 4,
		flagMax = 4,
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
	package(godot) static GodotMethod!(void, double) _GODOT_set_spread;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_spread") = _GODOT_set_spread;
	/**
	
	*/
	void setSpread(in double degrees)
	{
		_GODOT_set_spread.bind("ParticlesMaterial", "set_spread");
		ptrcall!(void)(_GODOT_set_spread, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_spread;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_spread") = _GODOT_get_spread;
	/**
	
	*/
	double getSpread() const
	{
		_GODOT_get_spread.bind("ParticlesMaterial", "get_spread");
		return ptrcall!(double)(_GODOT_get_spread, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_flatness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flatness") = _GODOT_set_flatness;
	/**
	
	*/
	void setFlatness(in double amount)
	{
		_GODOT_set_flatness.bind("ParticlesMaterial", "set_flatness");
		ptrcall!(void)(_GODOT_set_flatness, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_flatness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flatness") = _GODOT_get_flatness;
	/**
	
	*/
	double getFlatness() const
	{
		_GODOT_get_flatness.bind("ParticlesMaterial", "get_flatness");
		return ptrcall!(double)(_GODOT_get_flatness, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	/**
	
	*/
	void setParam(in long param, in double value)
	{
		_GODOT_set_param.bind("ParticlesMaterial", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	/**
	
	*/
	double getParam(in long param) const
	{
		_GODOT_get_param.bind("ParticlesMaterial", "get_param");
		return ptrcall!(double)(_GODOT_get_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_param_randomness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_randomness") = _GODOT_set_param_randomness;
	/**
	
	*/
	void setParamRandomness(in long param, in double randomness)
	{
		_GODOT_set_param_randomness.bind("ParticlesMaterial", "set_param_randomness");
		ptrcall!(void)(_GODOT_set_param_randomness, _godot_object, param, randomness);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_param_randomness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_randomness") = _GODOT_get_param_randomness;
	/**
	
	*/
	double getParamRandomness(in long param) const
	{
		_GODOT_get_param_randomness.bind("ParticlesMaterial", "get_param_randomness");
		return ptrcall!(double)(_GODOT_get_param_randomness, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_param_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param_texture") = _GODOT_set_param_texture;
	/**
	
	*/
	void setParamTexture(in long param, Texture texture)
	{
		_GODOT_set_param_texture.bind("ParticlesMaterial", "set_param_texture");
		ptrcall!(void)(_GODOT_set_param_texture, _godot_object, param, texture);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_param_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param_texture") = _GODOT_get_param_texture;
	/**
	
	*/
	Ref!Texture getParamTexture(in long param) const
	{
		_GODOT_get_param_texture.bind("ParticlesMaterial", "get_param_texture");
		return ptrcall!(Texture)(_GODOT_get_param_texture, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	/**
	
	*/
	void setColor(in Color color)
	{
		_GODOT_set_color.bind("ParticlesMaterial", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	/**
	
	*/
	Color getColor() const
	{
		_GODOT_get_color.bind("ParticlesMaterial", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_color_ramp;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color_ramp") = _GODOT_set_color_ramp;
	/**
	
	*/
	void setColorRamp(Texture ramp)
	{
		_GODOT_set_color_ramp.bind("ParticlesMaterial", "set_color_ramp");
		ptrcall!(void)(_GODOT_set_color_ramp, _godot_object, ramp);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_color_ramp;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color_ramp") = _GODOT_get_color_ramp;
	/**
	
	*/
	Ref!Texture getColorRamp() const
	{
		_GODOT_get_color_ramp.bind("ParticlesMaterial", "get_color_ramp");
		return ptrcall!(Texture)(_GODOT_get_color_ramp, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag") = _GODOT_set_flag;
	/**
	
	*/
	void setFlag(in long flag, in bool enable)
	{
		_GODOT_set_flag.bind("ParticlesMaterial", "set_flag");
		ptrcall!(void)(_GODOT_set_flag, _godot_object, flag, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag") = _GODOT_get_flag;
	/**
	
	*/
	bool getFlag(in long flag) const
	{
		_GODOT_get_flag.bind("ParticlesMaterial", "get_flag");
		return ptrcall!(bool)(_GODOT_get_flag, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_emission_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_shape") = _GODOT_set_emission_shape;
	/**
	
	*/
	void setEmissionShape(in long shape)
	{
		_GODOT_set_emission_shape.bind("ParticlesMaterial", "set_emission_shape");
		ptrcall!(void)(_GODOT_set_emission_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(ParticlesMaterial.EmissionShape) _GODOT_get_emission_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_shape") = _GODOT_get_emission_shape;
	/**
	
	*/
	ParticlesMaterial.EmissionShape getEmissionShape() const
	{
		_GODOT_get_emission_shape.bind("ParticlesMaterial", "get_emission_shape");
		return ptrcall!(ParticlesMaterial.EmissionShape)(_GODOT_get_emission_shape, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_emission_sphere_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_sphere_radius") = _GODOT_set_emission_sphere_radius;
	/**
	
	*/
	void setEmissionSphereRadius(in double radius)
	{
		_GODOT_set_emission_sphere_radius.bind("ParticlesMaterial", "set_emission_sphere_radius");
		ptrcall!(void)(_GODOT_set_emission_sphere_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_emission_sphere_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_sphere_radius") = _GODOT_get_emission_sphere_radius;
	/**
	
	*/
	double getEmissionSphereRadius() const
	{
		_GODOT_get_emission_sphere_radius.bind("ParticlesMaterial", "get_emission_sphere_radius");
		return ptrcall!(double)(_GODOT_get_emission_sphere_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_emission_box_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_box_extents") = _GODOT_set_emission_box_extents;
	/**
	
	*/
	void setEmissionBoxExtents(in Vector3 extents)
	{
		_GODOT_set_emission_box_extents.bind("ParticlesMaterial", "set_emission_box_extents");
		ptrcall!(void)(_GODOT_set_emission_box_extents, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_emission_box_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_box_extents") = _GODOT_get_emission_box_extents;
	/**
	
	*/
	Vector3 getEmissionBoxExtents() const
	{
		_GODOT_get_emission_box_extents.bind("ParticlesMaterial", "get_emission_box_extents");
		return ptrcall!(Vector3)(_GODOT_get_emission_box_extents, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_emission_point_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_point_texture") = _GODOT_set_emission_point_texture;
	/**
	
	*/
	void setEmissionPointTexture(Texture texture)
	{
		_GODOT_set_emission_point_texture.bind("ParticlesMaterial", "set_emission_point_texture");
		ptrcall!(void)(_GODOT_set_emission_point_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_emission_point_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_point_texture") = _GODOT_get_emission_point_texture;
	/**
	
	*/
	Ref!Texture getEmissionPointTexture() const
	{
		_GODOT_get_emission_point_texture.bind("ParticlesMaterial", "get_emission_point_texture");
		return ptrcall!(Texture)(_GODOT_get_emission_point_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_emission_normal_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_normal_texture") = _GODOT_set_emission_normal_texture;
	/**
	
	*/
	void setEmissionNormalTexture(Texture texture)
	{
		_GODOT_set_emission_normal_texture.bind("ParticlesMaterial", "set_emission_normal_texture");
		ptrcall!(void)(_GODOT_set_emission_normal_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_emission_normal_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_normal_texture") = _GODOT_get_emission_normal_texture;
	/**
	
	*/
	Ref!Texture getEmissionNormalTexture() const
	{
		_GODOT_get_emission_normal_texture.bind("ParticlesMaterial", "get_emission_normal_texture");
		return ptrcall!(Texture)(_GODOT_get_emission_normal_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_emission_color_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_color_texture") = _GODOT_set_emission_color_texture;
	/**
	
	*/
	void setEmissionColorTexture(Texture texture)
	{
		_GODOT_set_emission_color_texture.bind("ParticlesMaterial", "set_emission_color_texture");
		ptrcall!(void)(_GODOT_set_emission_color_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_emission_color_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_color_texture") = _GODOT_get_emission_color_texture;
	/**
	
	*/
	Ref!Texture getEmissionColorTexture() const
	{
		_GODOT_get_emission_color_texture.bind("ParticlesMaterial", "get_emission_color_texture");
		return ptrcall!(Texture)(_GODOT_get_emission_color_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_emission_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_point_count") = _GODOT_set_emission_point_count;
	/**
	
	*/
	void setEmissionPointCount(in long point_count)
	{
		_GODOT_set_emission_point_count.bind("ParticlesMaterial", "set_emission_point_count");
		ptrcall!(void)(_GODOT_set_emission_point_count, _godot_object, point_count);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_emission_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_point_count") = _GODOT_get_emission_point_count;
	/**
	
	*/
	long getEmissionPointCount() const
	{
		_GODOT_get_emission_point_count.bind("ParticlesMaterial", "get_emission_point_count");
		return ptrcall!(long)(_GODOT_get_emission_point_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_trail_divisor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_trail_divisor") = _GODOT_set_trail_divisor;
	/**
	
	*/
	void setTrailDivisor(in long divisor)
	{
		_GODOT_set_trail_divisor.bind("ParticlesMaterial", "set_trail_divisor");
		ptrcall!(void)(_GODOT_set_trail_divisor, _godot_object, divisor);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_trail_divisor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_trail_divisor") = _GODOT_get_trail_divisor;
	/**
	
	*/
	long getTrailDivisor() const
	{
		_GODOT_get_trail_divisor.bind("ParticlesMaterial", "get_trail_divisor");
		return ptrcall!(long)(_GODOT_get_trail_divisor, _godot_object);
	}
	package(godot) static GodotMethod!(void, CurveTexture) _GODOT_set_trail_size_modifier;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_trail_size_modifier") = _GODOT_set_trail_size_modifier;
	/**
	
	*/
	void setTrailSizeModifier(CurveTexture texture)
	{
		_GODOT_set_trail_size_modifier.bind("ParticlesMaterial", "set_trail_size_modifier");
		ptrcall!(void)(_GODOT_set_trail_size_modifier, _godot_object, texture);
	}
	package(godot) static GodotMethod!(CurveTexture) _GODOT_get_trail_size_modifier;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_trail_size_modifier") = _GODOT_get_trail_size_modifier;
	/**
	
	*/
	Ref!CurveTexture getTrailSizeModifier() const
	{
		_GODOT_get_trail_size_modifier.bind("ParticlesMaterial", "get_trail_size_modifier");
		return ptrcall!(CurveTexture)(_GODOT_get_trail_size_modifier, _godot_object);
	}
	package(godot) static GodotMethod!(void, GradientTexture) _GODOT_set_trail_color_modifier;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_trail_color_modifier") = _GODOT_set_trail_color_modifier;
	/**
	
	*/
	void setTrailColorModifier(GradientTexture texture)
	{
		_GODOT_set_trail_color_modifier.bind("ParticlesMaterial", "set_trail_color_modifier");
		ptrcall!(void)(_GODOT_set_trail_color_modifier, _godot_object, texture);
	}
	package(godot) static GodotMethod!(GradientTexture) _GODOT_get_trail_color_modifier;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_trail_color_modifier") = _GODOT_get_trail_color_modifier;
	/**
	
	*/
	Ref!GradientTexture getTrailColorModifier() const
	{
		_GODOT_get_trail_color_modifier.bind("ParticlesMaterial", "get_trail_color_modifier");
		return ptrcall!(GradientTexture)(_GODOT_get_trail_color_modifier, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gravity") = _GODOT_get_gravity;
	/**
	
	*/
	Vector3 getGravity() const
	{
		_GODOT_get_gravity.bind("ParticlesMaterial", "get_gravity");
		return ptrcall!(Vector3)(_GODOT_get_gravity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_gravity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gravity") = _GODOT_set_gravity;
	/**
	
	*/
	void setGravity(in Vector3 accel_vec)
	{
		_GODOT_set_gravity.bind("ParticlesMaterial", "set_gravity");
		ptrcall!(void)(_GODOT_set_gravity, _godot_object, accel_vec);
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
	If `true` particles will not move on the z axis. Default value: `true` for $(D Particles2D), `false` for $(D Particles).
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
	Each particle's initial direction range from `+spread` to `-spread` degrees. Default value: `45`.
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
	Initial velocity for each particle.
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
	Initial angular velocity applied to each particle.
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
	Orbital velocity applied to each particle.
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
	Linear acceleration applied to each particle.
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
	Radial acceleration applied to each particle.
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
	Tangential acceleration applied to each particle. Tangential acceleration is perpendicular to the particle's velocity.
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
	Initial rotation applied to each particle.
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
	Each particle's initial color. If the $(D Particle2D)'s `texture` is defined, it will be multiplied by this color.
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
	/**
	If `true` animation will loop. Default value: `false`.
	*/
	@property bool animLoop()
	{
		return getFlag(3);
	}
	/// ditto
	@property void animLoop(bool v)
	{
		setFlag(3, v);
	}
}
