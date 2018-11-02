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
import godot.spatial;
import godot.node;
/**

*/
@GodotBaseClass struct ReflectionProbe
{
	enum string _GODOT_internal_name = "ReflectionProbe";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_intensity") GodotMethod!(void, double) setIntensity;
		@GodotName("get_intensity") GodotMethod!(double) getIntensity;
		@GodotName("set_interior_ambient") GodotMethod!(void, Color) setInteriorAmbient;
		@GodotName("get_interior_ambient") GodotMethod!(Color) getInteriorAmbient;
		@GodotName("set_interior_ambient_energy") GodotMethod!(void, double) setInteriorAmbientEnergy;
		@GodotName("get_interior_ambient_energy") GodotMethod!(double) getInteriorAmbientEnergy;
		@GodotName("set_interior_ambient_probe_contribution") GodotMethod!(void, double) setInteriorAmbientProbeContribution;
		@GodotName("get_interior_ambient_probe_contribution") GodotMethod!(double) getInteriorAmbientProbeContribution;
		@GodotName("set_max_distance") GodotMethod!(void, double) setMaxDistance;
		@GodotName("get_max_distance") GodotMethod!(double) getMaxDistance;
		@GodotName("set_extents") GodotMethod!(void, Vector3) setExtents;
		@GodotName("get_extents") GodotMethod!(Vector3) getExtents;
		@GodotName("set_origin_offset") GodotMethod!(void, Vector3) setOriginOffset;
		@GodotName("get_origin_offset") GodotMethod!(Vector3) getOriginOffset;
		@GodotName("set_as_interior") GodotMethod!(void, bool) setAsInterior;
		@GodotName("is_set_as_interior") GodotMethod!(bool) isSetAsInterior;
		@GodotName("set_enable_box_projection") GodotMethod!(void, bool) setEnableBoxProjection;
		@GodotName("is_box_projection_enabled") GodotMethod!(bool) isBoxProjectionEnabled;
		@GodotName("set_enable_shadows") GodotMethod!(void, bool) setEnableShadows;
		@GodotName("are_shadows_enabled") GodotMethod!(bool) areShadowsEnabled;
		@GodotName("set_cull_mask") GodotMethod!(void, long) setCullMask;
		@GodotName("get_cull_mask") GodotMethod!(long) getCullMask;
		@GodotName("set_update_mode") GodotMethod!(void, long) setUpdateMode;
		@GodotName("get_update_mode") GodotMethod!(ReflectionProbe.UpdateMode) getUpdateMode;
	}
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
	/**
	
	*/
	void setIntensity(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIntensity, _godot_object, intensity);
	}
	/**
	
	*/
	double getIntensity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getIntensity, _godot_object);
	}
	/**
	
	*/
	void setInteriorAmbient(in Color ambient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInteriorAmbient, _godot_object, ambient);
	}
	/**
	
	*/
	Color getInteriorAmbient() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getInteriorAmbient, _godot_object);
	}
	/**
	
	*/
	void setInteriorAmbientEnergy(in double ambient_energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInteriorAmbientEnergy, _godot_object, ambient_energy);
	}
	/**
	
	*/
	double getInteriorAmbientEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getInteriorAmbientEnergy, _godot_object);
	}
	/**
	
	*/
	void setInteriorAmbientProbeContribution(in double ambient_probe_contribution)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInteriorAmbientProbeContribution, _godot_object, ambient_probe_contribution);
	}
	/**
	
	*/
	double getInteriorAmbientProbeContribution() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getInteriorAmbientProbeContribution, _godot_object);
	}
	/**
	
	*/
	void setMaxDistance(in double max_distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxDistance, _godot_object, max_distance);
	}
	/**
	
	*/
	double getMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMaxDistance, _godot_object);
	}
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExtents, _godot_object, extents);
	}
	/**
	
	*/
	Vector3 getExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getExtents, _godot_object);
	}
	/**
	
	*/
	void setOriginOffset(in Vector3 origin_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOriginOffset, _godot_object, origin_offset);
	}
	/**
	
	*/
	Vector3 getOriginOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getOriginOffset, _godot_object);
	}
	/**
	
	*/
	void setAsInterior(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAsInterior, _godot_object, enable);
	}
	/**
	
	*/
	bool isSetAsInterior() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSetAsInterior, _godot_object);
	}
	/**
	
	*/
	void setEnableBoxProjection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnableBoxProjection, _godot_object, enable);
	}
	/**
	
	*/
	bool isBoxProjectionEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBoxProjectionEnabled, _godot_object);
	}
	/**
	
	*/
	void setEnableShadows(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnableShadows, _godot_object, enable);
	}
	/**
	
	*/
	bool areShadowsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.areShadowsEnabled, _godot_object);
	}
	/**
	
	*/
	void setCullMask(in long layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCullMask, _godot_object, layers);
	}
	/**
	
	*/
	long getCullMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCullMask, _godot_object);
	}
	/**
	
	*/
	void setUpdateMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUpdateMode, _godot_object, mode);
	}
	/**
	
	*/
	ReflectionProbe.UpdateMode getUpdateMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ReflectionProbe.UpdateMode)(_classBinding.getUpdateMode, _godot_object);
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
