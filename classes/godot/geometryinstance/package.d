/**
Base node for geometry based visual instances.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.geometryinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.visualinstance;
import godot.material;
/**
Base node for geometry based visual instances.

Shares some common functionality like visibility and custom materials.
*/
@GodotBaseClass struct GeometryInstance
{
	static immutable string _GODOT_internal_name = "GeometryInstance";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in GeometryInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GeometryInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Will allow the GeometryInstance to be used when baking lights using a $(D GIProbe) and/or any other form of baked lighting.
		Added documentation for GeometryInstance and VisualInstance
		*/
		flagUseBakedLight = 0,
		/**
		
		*/
		flagMax = 1,
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
		In other words: The actual mesh will not be visible, only the shadows casted from the mesh.
		*/
		shadowCastingSettingShadowsOnly = 3,
	}
	/// 
	enum Constants : int
	{
		flagUseBakedLight = 0,
		shadowCastingSettingOff = 0,
		flagMax = 1,
		shadowCastingSettingOn = 1,
		shadowCastingSettingDoubleSided = 2,
		shadowCastingSettingShadowsOnly = 3,
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_material_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_material_override") = _GODOT_set_material_override;
	/**
	
	*/
	void setMaterialOverride(Material material)
	{
		_GODOT_set_material_override.bind("GeometryInstance", "set_material_override");
		ptrcall!(void)(_GODOT_set_material_override, _godot_object, material);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_material_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_material_override") = _GODOT_get_material_override;
	/**
	
	*/
	Ref!Material getMaterialOverride() const
	{
		_GODOT_get_material_override.bind("GeometryInstance", "get_material_override");
		return ptrcall!(Material)(_GODOT_get_material_override, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flag") = _GODOT_set_flag;
	/**
	
	*/
	void setFlag(in long flag, in bool value)
	{
		_GODOT_set_flag.bind("GeometryInstance", "set_flag");
		ptrcall!(void)(_GODOT_set_flag, _godot_object, flag, value);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flag") = _GODOT_get_flag;
	/**
	
	*/
	bool getFlag(in long flag) const
	{
		_GODOT_get_flag.bind("GeometryInstance", "get_flag");
		return ptrcall!(bool)(_GODOT_get_flag, _godot_object, flag);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_cast_shadows_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cast_shadows_setting") = _GODOT_set_cast_shadows_setting;
	/**
	
	*/
	void setCastShadowsSetting(in long shadow_casting_setting)
	{
		_GODOT_set_cast_shadows_setting.bind("GeometryInstance", "set_cast_shadows_setting");
		ptrcall!(void)(_GODOT_set_cast_shadows_setting, _godot_object, shadow_casting_setting);
	}
	package(godot) static GodotMethod!(GeometryInstance.ShadowCastingSetting) _GODOT_get_cast_shadows_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cast_shadows_setting") = _GODOT_get_cast_shadows_setting;
	/**
	
	*/
	GeometryInstance.ShadowCastingSetting getCastShadowsSetting() const
	{
		_GODOT_get_cast_shadows_setting.bind("GeometryInstance", "get_cast_shadows_setting");
		return ptrcall!(GeometryInstance.ShadowCastingSetting)(_GODOT_get_cast_shadows_setting, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_lod_max_hysteresis;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lod_max_hysteresis") = _GODOT_set_lod_max_hysteresis;
	/**
	
	*/
	void setLodMaxHysteresis(in double mode)
	{
		_GODOT_set_lod_max_hysteresis.bind("GeometryInstance", "set_lod_max_hysteresis");
		ptrcall!(void)(_GODOT_set_lod_max_hysteresis, _godot_object, mode);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_lod_max_hysteresis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lod_max_hysteresis") = _GODOT_get_lod_max_hysteresis;
	/**
	
	*/
	double getLodMaxHysteresis() const
	{
		_GODOT_get_lod_max_hysteresis.bind("GeometryInstance", "get_lod_max_hysteresis");
		return ptrcall!(double)(_GODOT_get_lod_max_hysteresis, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_lod_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lod_max_distance") = _GODOT_set_lod_max_distance;
	/**
	
	*/
	void setLodMaxDistance(in double mode)
	{
		_GODOT_set_lod_max_distance.bind("GeometryInstance", "set_lod_max_distance");
		ptrcall!(void)(_GODOT_set_lod_max_distance, _godot_object, mode);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_lod_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lod_max_distance") = _GODOT_get_lod_max_distance;
	/**
	
	*/
	double getLodMaxDistance() const
	{
		_GODOT_get_lod_max_distance.bind("GeometryInstance", "get_lod_max_distance");
		return ptrcall!(double)(_GODOT_get_lod_max_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_lod_min_hysteresis;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lod_min_hysteresis") = _GODOT_set_lod_min_hysteresis;
	/**
	
	*/
	void setLodMinHysteresis(in double mode)
	{
		_GODOT_set_lod_min_hysteresis.bind("GeometryInstance", "set_lod_min_hysteresis");
		ptrcall!(void)(_GODOT_set_lod_min_hysteresis, _godot_object, mode);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_lod_min_hysteresis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lod_min_hysteresis") = _GODOT_get_lod_min_hysteresis;
	/**
	
	*/
	double getLodMinHysteresis() const
	{
		_GODOT_get_lod_min_hysteresis.bind("GeometryInstance", "get_lod_min_hysteresis");
		return ptrcall!(double)(_GODOT_get_lod_min_hysteresis, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_lod_min_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lod_min_distance") = _GODOT_set_lod_min_distance;
	/**
	
	*/
	void setLodMinDistance(in double mode)
	{
		_GODOT_set_lod_min_distance.bind("GeometryInstance", "set_lod_min_distance");
		ptrcall!(void)(_GODOT_set_lod_min_distance, _godot_object, mode);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_lod_min_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lod_min_distance") = _GODOT_get_lod_min_distance;
	/**
	
	*/
	double getLodMinDistance() const
	{
		_GODOT_get_lod_min_distance.bind("GeometryInstance", "get_lod_min_distance");
		return ptrcall!(double)(_GODOT_get_lod_min_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_extra_cull_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_extra_cull_margin") = _GODOT_set_extra_cull_margin;
	/**
	
	*/
	void setExtraCullMargin(in double margin)
	{
		_GODOT_set_extra_cull_margin.bind("GeometryInstance", "set_extra_cull_margin");
		ptrcall!(void)(_GODOT_set_extra_cull_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_extra_cull_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_extra_cull_margin") = _GODOT_get_extra_cull_margin;
	/**
	
	*/
	double getExtraCullMargin() const
	{
		_GODOT_get_extra_cull_margin.bind("GeometryInstance", "get_extra_cull_margin");
		return ptrcall!(double)(_GODOT_get_extra_cull_margin, _godot_object);
	}
	/**
	The selected shadow casting flag. See SHADOW_CASTING_SETTING_* constants for values.
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
	If `true` this GeometryInstance will be used when baking lights using a $(D GIProbe) and/or any other form of baked lighting.
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
	/**
	The GeometryInstance's min LOD distance.
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
	The GeometryInstance's max LOD distance.
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
}
