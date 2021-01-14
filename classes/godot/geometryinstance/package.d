/**
Base node for geometry-based visual instances.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.geometryinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.visualinstance;
import godot.material;
/**
Base node for geometry-based visual instances.

Shares some common functionality like visibility and custom materials.
*/
@GodotBaseClass struct GeometryInstance
{
	package(godot) enum string _GODOT_internal_name = "GeometryInstance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_cast_shadows_setting") GodotMethod!(GeometryInstance.ShadowCastingSetting) getCastShadowsSetting;
		@GodotName("get_extra_cull_margin") GodotMethod!(double) getExtraCullMargin;
		@GodotName("get_flag") GodotMethod!(bool, long) getFlag;
		@GodotName("get_lod_max_distance") GodotMethod!(double) getLodMaxDistance;
		@GodotName("get_lod_max_hysteresis") GodotMethod!(double) getLodMaxHysteresis;
		@GodotName("get_lod_min_distance") GodotMethod!(double) getLodMinDistance;
		@GodotName("get_lod_min_hysteresis") GodotMethod!(double) getLodMinHysteresis;
		@GodotName("get_material_override") GodotMethod!(Material) getMaterialOverride;
		@GodotName("set_cast_shadows_setting") GodotMethod!(void, long) setCastShadowsSetting;
		@GodotName("set_custom_aabb") GodotMethod!(void, AABB) setCustomAabb;
		@GodotName("set_extra_cull_margin") GodotMethod!(void, double) setExtraCullMargin;
		@GodotName("set_flag") GodotMethod!(void, long, bool) setFlag;
		@GodotName("set_lod_max_distance") GodotMethod!(void, double) setLodMaxDistance;
		@GodotName("set_lod_max_hysteresis") GodotMethod!(void, double) setLodMaxHysteresis;
		@GodotName("set_lod_min_distance") GodotMethod!(void, double) setLodMinDistance;
		@GodotName("set_lod_min_hysteresis") GodotMethod!(void, double) setLodMinHysteresis;
		@GodotName("set_material_override") GodotMethod!(void, Material) setMaterialOverride;
	}
	/// 
	pragma(inline, true) bool opEquals(in GeometryInstance other) const
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
	/// Construct a new instance of GeometryInstance.
	/// Note: use `memnew!GeometryInstance` instead.
	static GeometryInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GeometryInstance");
		if(constructor is null) return typeof(this).init;
		return cast(GeometryInstance)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Flags : int
	{
		/**
		Will allow the GeometryInstance to be used when baking lights using a $(D GIProbe) or $(D BakedLightmap).
		*/
		flagUseBakedLight = 0,
		/**
		Unused in this class, exposed for consistency with $(D VisualServer.instanceflags).
		*/
		flagDrawNextFrameIfVisible = 1,
		/**
		Represents the size of the $(D flags) enum.
		*/
		flagMax = 2,
	}
	/// 
	enum ShadowCastingSetting : int
	{
		/**
		Will not cast any shadows.
		*/
		shadowCastingSettingOff = 0,
		/**
		Will cast shadows from all visible faces in the GeometryInstance.
		Will take culling into account, so faces not being rendered will not be taken into account when shadow casting.
		*/
		shadowCastingSettingOn = 1,
		/**
		Will cast shadows from all visible faces in the GeometryInstance.
		Will not take culling into account, so all faces will be taken into account when shadow casting.
		*/
		shadowCastingSettingDoubleSided = 2,
		/**
		Will only show the shadows casted from this object.
		In other words, the actual mesh will not be visible, only the shadows casted from the mesh will be.
		*/
		shadowCastingSettingShadowsOnly = 3,
	}
	/// 
	enum Constants : int
	{
		flagUseBakedLight = 0,
		shadowCastingSettingOff = 0,
		flagDrawNextFrameIfVisible = 1,
		shadowCastingSettingOn = 1,
		flagMax = 2,
		shadowCastingSettingDoubleSided = 2,
		shadowCastingSettingShadowsOnly = 3,
	}
	/**
	
	*/
	GeometryInstance.ShadowCastingSetting getCastShadowsSetting() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GeometryInstance.ShadowCastingSetting)(GDNativeClassBinding.getCastShadowsSetting, _godot_object);
	}
	/**
	
	*/
	double getExtraCullMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getExtraCullMargin, _godot_object);
	}
	/**
	Returns the $(D GeometryInstance.flags) that have been set for this object.
	*/
	bool getFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFlag, _godot_object, flag);
	}
	/**
	
	*/
	double getLodMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLodMaxDistance, _godot_object);
	}
	/**
	
	*/
	double getLodMaxHysteresis() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLodMaxHysteresis, _godot_object);
	}
	/**
	
	*/
	double getLodMinDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLodMinDistance, _godot_object);
	}
	/**
	
	*/
	double getLodMinHysteresis() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLodMinHysteresis, _godot_object);
	}
	/**
	
	*/
	Ref!Material getMaterialOverride() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getMaterialOverride, _godot_object);
	}
	/**
	
	*/
	void setCastShadowsSetting(in long shadow_casting_setting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCastShadowsSetting, _godot_object, shadow_casting_setting);
	}
	/**
	Overrides the bounding box of this node with a custom one. To remove it, set an $(D AABB) with all fields set to zero.
	*/
	void setCustomAabb(in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomAabb, _godot_object, aabb);
	}
	/**
	
	*/
	void setExtraCullMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExtraCullMargin, _godot_object, margin);
	}
	/**
	Sets the $(D GeometryInstance.flags) specified. See $(D GeometryInstance.flags) for options.
	*/
	void setFlag(in long flag, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlag, _godot_object, flag, value);
	}
	/**
	
	*/
	void setLodMaxDistance(in double mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLodMaxDistance, _godot_object, mode);
	}
	/**
	
	*/
	void setLodMaxHysteresis(in double mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLodMaxHysteresis, _godot_object, mode);
	}
	/**
	
	*/
	void setLodMinDistance(in double mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLodMinDistance, _godot_object, mode);
	}
	/**
	
	*/
	void setLodMinHysteresis(in double mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLodMinHysteresis, _godot_object, mode);
	}
	/**
	
	*/
	void setMaterialOverride(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterialOverride, _godot_object, material);
	}
	/**
	The selected shadow casting flag. See $(D shadowcastingsetting) for possible values.
	*/
	@property GeometryInstance.ShadowCastingSetting castShadow()
	{
		return getCastShadowsSetting();
	}
	/// ditto
	@property void castShadow(long v)
	{
		setCastShadowsSetting(v);
	}
	/**
	The extra distance added to the GeometryInstance's bounding box ($(D AABB)) to increase its cull box.
	*/
	@property double extraCullMargin()
	{
		return getExtraCullMargin();
	}
	/// ditto
	@property void extraCullMargin(double v)
	{
		setExtraCullMargin(v);
	}
	/**
	The GeometryInstance's max LOD distance.
	$(B Note:) This property currently has no effect.
	*/
	@property double lodMaxDistance()
	{
		return getLodMaxDistance();
	}
	/// ditto
	@property void lodMaxDistance(double v)
	{
		setLodMaxDistance(v);
	}
	/**
	The GeometryInstance's max LOD margin.
	$(B Note:) This property currently has no effect.
	*/
	@property double lodMaxHysteresis()
	{
		return getLodMaxHysteresis();
	}
	/// ditto
	@property void lodMaxHysteresis(double v)
	{
		setLodMaxHysteresis(v);
	}
	/**
	The GeometryInstance's min LOD distance.
	$(B Note:) This property currently has no effect.
	*/
	@property double lodMinDistance()
	{
		return getLodMinDistance();
	}
	/// ditto
	@property void lodMinDistance(double v)
	{
		setLodMinDistance(v);
	}
	/**
	The GeometryInstance's min LOD margin.
	$(B Note:) This property currently has no effect.
	*/
	@property double lodMinHysteresis()
	{
		return getLodMinHysteresis();
	}
	/// ditto
	@property void lodMinHysteresis(double v)
	{
		setLodMinHysteresis(v);
	}
	/**
	If `true`, this GeometryInstance will be used when baking lights using a $(D GIProbe) or $(D BakedLightmap).
	*/
	@property bool useInBakedLight()
	{
		return getFlag(0);
	}
	/// ditto
	@property void useInBakedLight(bool v)
	{
		setFlag(0, v);
	}
}
