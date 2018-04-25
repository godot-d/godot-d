/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.reflectionprobe;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualinstance;
/**

*/
@GodotBaseClass struct ReflectionProbe
{
	static immutable string _GODOT_internal_name = "ReflectionProbe";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ReflectionProbe other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ReflectionProbe opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ReflectionProbe _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ReflectionProbe");
		if(constructor is null) return typeof(this).init;
		return cast(ReflectionProbe)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum UpdateMode : int
	{
		/**
		
		*/
		updateOnce = 0,
		/**
		
		*/
		updateAlways = 1,
	}
	/// 
	enum Constants : int
	{
		updateOnce = 0,
		updateAlways = 1,
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_intensity") = _GODOT_set_intensity;
	/**
	
	*/
	void setIntensity(in double intensity)
	{
		_GODOT_set_intensity.bind("ReflectionProbe", "set_intensity");
		ptrcall!(void)(_GODOT_set_intensity, _godot_object, intensity);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_intensity") = _GODOT_get_intensity;
	/**
	
	*/
	double getIntensity() const
	{
		_GODOT_get_intensity.bind("ReflectionProbe", "get_intensity");
		return ptrcall!(double)(_GODOT_get_intensity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_interior_ambient;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_interior_ambient") = _GODOT_set_interior_ambient;
	/**
	
	*/
	void setInteriorAmbient(in Color ambient)
	{
		_GODOT_set_interior_ambient.bind("ReflectionProbe", "set_interior_ambient");
		ptrcall!(void)(_GODOT_set_interior_ambient, _godot_object, ambient);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_interior_ambient;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_interior_ambient") = _GODOT_get_interior_ambient;
	/**
	
	*/
	Color getInteriorAmbient() const
	{
		_GODOT_get_interior_ambient.bind("ReflectionProbe", "get_interior_ambient");
		return ptrcall!(Color)(_GODOT_get_interior_ambient, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_interior_ambient_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_interior_ambient_energy") = _GODOT_set_interior_ambient_energy;
	/**
	
	*/
	void setInteriorAmbientEnergy(in double ambient_energy)
	{
		_GODOT_set_interior_ambient_energy.bind("ReflectionProbe", "set_interior_ambient_energy");
		ptrcall!(void)(_GODOT_set_interior_ambient_energy, _godot_object, ambient_energy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_interior_ambient_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_interior_ambient_energy") = _GODOT_get_interior_ambient_energy;
	/**
	
	*/
	double getInteriorAmbientEnergy() const
	{
		_GODOT_get_interior_ambient_energy.bind("ReflectionProbe", "get_interior_ambient_energy");
		return ptrcall!(double)(_GODOT_get_interior_ambient_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_interior_ambient_probe_contribution;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_interior_ambient_probe_contribution") = _GODOT_set_interior_ambient_probe_contribution;
	/**
	
	*/
	void setInteriorAmbientProbeContribution(in double ambient_probe_contribution)
	{
		_GODOT_set_interior_ambient_probe_contribution.bind("ReflectionProbe", "set_interior_ambient_probe_contribution");
		ptrcall!(void)(_GODOT_set_interior_ambient_probe_contribution, _godot_object, ambient_probe_contribution);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_interior_ambient_probe_contribution;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_interior_ambient_probe_contribution") = _GODOT_get_interior_ambient_probe_contribution;
	/**
	
	*/
	double getInteriorAmbientProbeContribution() const
	{
		_GODOT_get_interior_ambient_probe_contribution.bind("ReflectionProbe", "get_interior_ambient_probe_contribution");
		return ptrcall!(double)(_GODOT_get_interior_ambient_probe_contribution, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_distance") = _GODOT_set_max_distance;
	/**
	
	*/
	void setMaxDistance(in double max_distance)
	{
		_GODOT_set_max_distance.bind("ReflectionProbe", "set_max_distance");
		ptrcall!(void)(_GODOT_set_max_distance, _godot_object, max_distance);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_distance") = _GODOT_get_max_distance;
	/**
	
	*/
	double getMaxDistance() const
	{
		_GODOT_get_max_distance.bind("ReflectionProbe", "get_max_distance");
		return ptrcall!(double)(_GODOT_get_max_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_extents") = _GODOT_set_extents;
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		_GODOT_set_extents.bind("ReflectionProbe", "set_extents");
		ptrcall!(void)(_GODOT_set_extents, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_extents") = _GODOT_get_extents;
	/**
	
	*/
	Vector3 getExtents() const
	{
		_GODOT_get_extents.bind("ReflectionProbe", "get_extents");
		return ptrcall!(Vector3)(_GODOT_get_extents, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_origin_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_origin_offset") = _GODOT_set_origin_offset;
	/**
	
	*/
	void setOriginOffset(in Vector3 origin_offset)
	{
		_GODOT_set_origin_offset.bind("ReflectionProbe", "set_origin_offset");
		ptrcall!(void)(_GODOT_set_origin_offset, _godot_object, origin_offset);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_origin_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_origin_offset") = _GODOT_get_origin_offset;
	/**
	
	*/
	Vector3 getOriginOffset() const
	{
		_GODOT_get_origin_offset.bind("ReflectionProbe", "get_origin_offset");
		return ptrcall!(Vector3)(_GODOT_get_origin_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_as_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_interior") = _GODOT_set_as_interior;
	/**
	
	*/
	void setAsInterior(in bool enable)
	{
		_GODOT_set_as_interior.bind("ReflectionProbe", "set_as_interior");
		ptrcall!(void)(_GODOT_set_as_interior, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_set_as_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_set_as_interior") = _GODOT_is_set_as_interior;
	/**
	
	*/
	bool isSetAsInterior() const
	{
		_GODOT_is_set_as_interior.bind("ReflectionProbe", "is_set_as_interior");
		return ptrcall!(bool)(_GODOT_is_set_as_interior, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_box_projection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_box_projection") = _GODOT_set_enable_box_projection;
	/**
	
	*/
	void setEnableBoxProjection(in bool enable)
	{
		_GODOT_set_enable_box_projection.bind("ReflectionProbe", "set_enable_box_projection");
		ptrcall!(void)(_GODOT_set_enable_box_projection, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_box_projection_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_box_projection_enabled") = _GODOT_is_box_projection_enabled;
	/**
	
	*/
	bool isBoxProjectionEnabled() const
	{
		_GODOT_is_box_projection_enabled.bind("ReflectionProbe", "is_box_projection_enabled");
		return ptrcall!(bool)(_GODOT_is_box_projection_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_shadows;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_shadows") = _GODOT_set_enable_shadows;
	/**
	
	*/
	void setEnableShadows(in bool enable)
	{
		_GODOT_set_enable_shadows.bind("ReflectionProbe", "set_enable_shadows");
		ptrcall!(void)(_GODOT_set_enable_shadows, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_are_shadows_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "are_shadows_enabled") = _GODOT_are_shadows_enabled;
	/**
	
	*/
	bool areShadowsEnabled() const
	{
		_GODOT_are_shadows_enabled.bind("ReflectionProbe", "are_shadows_enabled");
		return ptrcall!(bool)(_GODOT_are_shadows_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cull_mask") = _GODOT_set_cull_mask;
	/**
	
	*/
	void setCullMask(in long layers)
	{
		_GODOT_set_cull_mask.bind("ReflectionProbe", "set_cull_mask");
		ptrcall!(void)(_GODOT_set_cull_mask, _godot_object, layers);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cull_mask") = _GODOT_get_cull_mask;
	/**
	
	*/
	long getCullMask() const
	{
		_GODOT_get_cull_mask.bind("ReflectionProbe", "get_cull_mask");
		return ptrcall!(long)(_GODOT_get_cull_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_update_mode") = _GODOT_set_update_mode;
	/**
	
	*/
	void setUpdateMode(in long mode)
	{
		_GODOT_set_update_mode.bind("ReflectionProbe", "set_update_mode");
		ptrcall!(void)(_GODOT_set_update_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(ReflectionProbe.UpdateMode) _GODOT_get_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_update_mode") = _GODOT_get_update_mode;
	/**
	
	*/
	ReflectionProbe.UpdateMode getUpdateMode() const
	{
		_GODOT_get_update_mode.bind("ReflectionProbe", "get_update_mode");
		return ptrcall!(ReflectionProbe.UpdateMode)(_GODOT_get_update_mode, _godot_object);
	}
	/**
	
	*/
	@property ReflectionProbe.UpdateMode updateMode()
	{
		return getUpdateMode();
	}
	/// ditto
	@property void updateMode(long v)
	{
		setUpdateMode(v);
	}
	/**
	
	*/
	@property double intensity()
	{
		return getIntensity();
	}
	/// ditto
	@property void intensity(double v)
	{
		setIntensity(v);
	}
	/**
	
	*/
	@property double maxDistance()
	{
		return getMaxDistance();
	}
	/// ditto
	@property void maxDistance(double v)
	{
		setMaxDistance(v);
	}
	/**
	
	*/
	@property Vector3 extents()
	{
		return getExtents();
	}
	/// ditto
	@property void extents(Vector3 v)
	{
		setExtents(v);
	}
	/**
	
	*/
	@property Vector3 originOffset()
	{
		return getOriginOffset();
	}
	/// ditto
	@property void originOffset(Vector3 v)
	{
		setOriginOffset(v);
	}
	/**
	
	*/
	@property bool boxProjection()
	{
		return isBoxProjectionEnabled();
	}
	/// ditto
	@property void boxProjection(bool v)
	{
		setEnableBoxProjection(v);
	}
	/**
	
	*/
	@property bool enableShadows()
	{
		return areShadowsEnabled();
	}
	/// ditto
	@property void enableShadows(bool v)
	{
		setEnableShadows(v);
	}
	/**
	
	*/
	@property long cullMask()
	{
		return getCullMask();
	}
	/// ditto
	@property void cullMask(long v)
	{
		setCullMask(v);
	}
	/**
	
	*/
	@property bool interiorEnable()
	{
		return isSetAsInterior();
	}
	/// ditto
	@property void interiorEnable(bool v)
	{
		setAsInterior(v);
	}
	/**
	
	*/
	@property Color interiorAmbientColor()
	{
		return getInteriorAmbient();
	}
	/// ditto
	@property void interiorAmbientColor(Color v)
	{
		setInteriorAmbient(v);
	}
	/**
	
	*/
	@property double interiorAmbientEnergy()
	{
		return getInteriorAmbientEnergy();
	}
	/// ditto
	@property void interiorAmbientEnergy(double v)
	{
		setInteriorAmbientEnergy(v);
	}
	/**
	
	*/
	@property double interiorAmbientContrib()
	{
		return getInteriorAmbientProbeContribution();
	}
	/// ditto
	@property void interiorAmbientContrib(double v)
	{
		setInteriorAmbientProbeContribution(v);
	}
}
