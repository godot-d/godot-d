/**
Captures its surroundings to create reflections.

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
import godot.object;
import godot.classdb;
import godot.visualinstance;
/**
Captures its surroundings to create reflections.

Capture its surroundings as a dual paraboloid image, and stores versions of it with increasing levels of blur to simulate different material roughnesses.
The $(D ReflectionProbe) is used to create high-quality reflections at the cost of performance. It can be combined with $(D GIProbe)s and Screen Space Reflections to achieve high quality reflections. $(D ReflectionProbe)s render all objects within their $(D cullMask), so updating them can be quite expensive. It is best to update them once with the important static objects and then leave them.
Note: By default Godot will only render 16 reflection probes. If you need more, increase the number of atlas subdivisions. This setting can be found in $(D ProjectSettings.rendering/quality/reflections/atlasSubdiv).
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
	@disable new(size_t s);
	/// 
	enum UpdateMode : int
	{
		/**
		Update the probe once on the next frame.
		*/
		updateOnce = 0,
		/**
		Update the probe every frame. This is needed when you want to capture dynamic objects. However, it results in an increased render time. Use $(D constant UPDATE_ONCE) whenever possible.
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
	If `true`, enables box projection. This makes reflections look more correct in rectangle-shaped rooms by offsetting the reflection center depending on the camera's location.
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
	Sets the cull mask which determines what objects are drawn by this probe. Every $(D VisualInstance) with a layer included in this cull mask will be rendered by the probe. It is best to only include large objects which are likely to take up a lot of space in the reflection in order to save on rendering cost.
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
	If `true`, computes shadows in the reflection probe. This makes the reflection probe slower to render; you may want to disable this if using the $(D constant UPDATE_ALWAYS) $(D updateMode).
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
	The size of the reflection probe. The larger the extents the more space covered by the probe which will lower the perceived resolution. It is best to keep the extents only as large as you need them.
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
	Defines the reflection intensity. Intensity modulates the strength of the reflection.
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
	Sets the ambient light color to be used when this probe is set to $(D interiorEnable).
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
	Sets the contribution value for how much the reflection affects the ambient light for this reflection probe when set to $(D interiorEnable). Useful so that ambient light matches the color of the room.
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
	Sets the energy multiplier for this reflection probe's ambient light contribution when set to $(D interiorEnable).
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
	If `true`, reflections will ignore sky contribution. Ambient lighting is then controlled by the `interior_ambient_*` properties.
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
	Sets the max distance away from the probe an object can be before it is culled.
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
	Sets the origin offset to be used when this reflection probe is in box project mode.
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
	Sets how frequently the probe is updated. Can be $(D constant UPDATE_ONCE) or $(D constant UPDATE_ALWAYS).
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
