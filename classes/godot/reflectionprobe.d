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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.visualinstance;
/**

*/
@GodotBaseClass struct ReflectionProbe
{
	package(godot) enum string _GODOT_internal_name = "ReflectionProbe";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("are_shadows_enabled") GodotMethod!(bool) areShadowsEnabled;
		@GodotName("get_cull_mask") GodotMethod!(long) getCullMask;
		@GodotName("get_extents") GodotMethod!(Vector3) getExtents;
		@GodotName("get_intensity") GodotMethod!(double) getIntensity;
		@GodotName("get_interior_ambient") GodotMethod!(Color) getInteriorAmbient;
		@GodotName("get_interior_ambient_energy") GodotMethod!(double) getInteriorAmbientEnergy;
		@GodotName("get_interior_ambient_probe_contribution") GodotMethod!(double) getInteriorAmbientProbeContribution;
		@GodotName("get_max_distance") GodotMethod!(double) getMaxDistance;
		@GodotName("get_origin_offset") GodotMethod!(Vector3) getOriginOffset;
		@GodotName("get_update_mode") GodotMethod!(ReflectionProbe.UpdateMode) getUpdateMode;
		@GodotName("is_box_projection_enabled") GodotMethod!(bool) isBoxProjectionEnabled;
		@GodotName("is_set_as_interior") GodotMethod!(bool) isSetAsInterior;
		@GodotName("set_as_interior") GodotMethod!(void, bool) setAsInterior;
		@GodotName("set_cull_mask") GodotMethod!(void, long) setCullMask;
		@GodotName("set_enable_box_projection") GodotMethod!(void, bool) setEnableBoxProjection;
		@GodotName("set_enable_shadows") GodotMethod!(void, bool) setEnableShadows;
		@GodotName("set_extents") GodotMethod!(void, Vector3) setExtents;
		@GodotName("set_intensity") GodotMethod!(void, double) setIntensity;
		@GodotName("set_interior_ambient") GodotMethod!(void, Color) setInteriorAmbient;
		@GodotName("set_interior_ambient_energy") GodotMethod!(void, double) setInteriorAmbientEnergy;
		@GodotName("set_interior_ambient_probe_contribution") GodotMethod!(void, double) setInteriorAmbientProbeContribution;
		@GodotName("set_max_distance") GodotMethod!(void, double) setMaxDistance;
		@GodotName("set_origin_offset") GodotMethod!(void, Vector3) setOriginOffset;
		@GodotName("set_update_mode") GodotMethod!(void, long) setUpdateMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in ReflectionProbe other) const
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
	/// Construct a new instance of ReflectionProbe.
	/// Note: use `memnew!ReflectionProbe` instead.
	static ReflectionProbe _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ReflectionProbe");
		if(constructor is null) return typeof(this).init;
		return cast(ReflectionProbe)(constructor());
	}
	/// 
	enum UpdateMode : int
	{
		/** */
		updateOnce = 0,
		/** */
		updateAlways = 1,
	}
	/// 
	enum Constants : int
	{
		updateOnce = 0,
		updateAlways = 1,
	}
	/**
	
	*/
	bool areShadowsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.areShadowsEnabled, _godot_object);
	}
	/**
	
	*/
	long getCullMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCullMask, _godot_object);
	}
	/**
	
	*/
	Vector3 getExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getExtents, _godot_object);
	}
	/**
	
	*/
	double getIntensity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getIntensity, _godot_object);
	}
	/**
	
	*/
	Color getInteriorAmbient() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getInteriorAmbient, _godot_object);
	}
	/**
	
	*/
	double getInteriorAmbientEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInteriorAmbientEnergy, _godot_object);
	}
	/**
	
	*/
	double getInteriorAmbientProbeContribution() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInteriorAmbientProbeContribution, _godot_object);
	}
	/**
	
	*/
	double getMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMaxDistance, _godot_object);
	}
	/**
	
	*/
	Vector3 getOriginOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getOriginOffset, _godot_object);
	}
	/**
	
	*/
	ReflectionProbe.UpdateMode getUpdateMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ReflectionProbe.UpdateMode)(GDNativeClassBinding.getUpdateMode, _godot_object);
	}
	/**
	
	*/
	bool isBoxProjectionEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBoxProjectionEnabled, _godot_object);
	}
	/**
	
	*/
	bool isSetAsInterior() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSetAsInterior, _godot_object);
	}
	/**
	
	*/
	void setAsInterior(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsInterior, _godot_object, enable);
	}
	/**
	
	*/
	void setCullMask(in long layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCullMask, _godot_object, layers);
	}
	/**
	
	*/
	void setEnableBoxProjection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnableBoxProjection, _godot_object, enable);
	}
	/**
	
	*/
	void setEnableShadows(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnableShadows, _godot_object, enable);
	}
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExtents, _godot_object, extents);
	}
	/**
	
	*/
	void setIntensity(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIntensity, _godot_object, intensity);
	}
	/**
	
	*/
	void setInteriorAmbient(in Color ambient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInteriorAmbient, _godot_object, ambient);
	}
	/**
	
	*/
	void setInteriorAmbientEnergy(in double ambient_energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInteriorAmbientEnergy, _godot_object, ambient_energy);
	}
	/**
	
	*/
	void setInteriorAmbientProbeContribution(in double ambient_probe_contribution)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInteriorAmbientProbeContribution, _godot_object, ambient_probe_contribution);
	}
	/**
	
	*/
	void setMaxDistance(in double max_distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxDistance, _godot_object, max_distance);
	}
	/**
	
	*/
	void setOriginOffset(in Vector3 origin_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOriginOffset, _godot_object, origin_offset);
	}
	/**
	
	*/
	void setUpdateMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUpdateMode, _godot_object, mode);
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
	@property double interiorAmbientContrib()
	{
		return getInteriorAmbientProbeContribution();
	}
	/// ditto
	@property void interiorAmbientContrib(double v)
	{
		setInteriorAmbientProbeContribution(v);
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
	@property ReflectionProbe.UpdateMode updateMode()
	{
		return getUpdateMode();
	}
	/// ditto
	@property void updateMode(long v)
	{
		setUpdateMode(v);
	}
}
