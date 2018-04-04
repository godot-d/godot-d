/**
Contains global variables accessible from everywhere.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.projectsettings;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Contains global variables accessible from everywhere.

Use "ProjectSettings.get_setting(variable)", "ProjectSettings.set_setting(variable,value)" or "ProjectSettings.has_setting(variable)" to access them. Variables stored in project.godot are also loaded into ProjectSettings, making this object very useful for reading custom game configuration options.
*/
@GodotBaseClass struct ProjectSettingsSingleton
{
	static immutable string _GODOT_internal_name = "ProjectSettings";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "ProjectSettings";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ProjectSettingsSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ProjectSettingsSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ProjectSettingsSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ProjectSettings");
		if(constructor is null) return typeof(this).init;
		return cast(ProjectSettingsSingleton)(constructor());
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_setting") = _GODOT_has_setting;
	/**
	Return true if a configuration value is present.
	*/
	bool hasSetting(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_setting.bind("ProjectSettings", "has_setting");
		return ptrcall!(bool)(_GODOT_has_setting, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_setting") = _GODOT_set_setting;
	/**
	
	*/
	void setSetting(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		_GODOT_set_setting.bind("ProjectSettings", "set_setting");
		ptrcall!(void)(_GODOT_set_setting, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_get_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_setting") = _GODOT_get_setting;
	/**
	
	*/
	Variant getSetting(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_setting.bind("ProjectSettings", "get_setting");
		return ptrcall!(Variant)(_GODOT_get_setting, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_set_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_order") = _GODOT_set_order;
	/**
	Set the order of a configuration value (influences when saved to the config file).
	*/
	void setOrder(StringArg0)(in StringArg0 name, in long position)
	{
		_GODOT_set_order.bind("ProjectSettings", "set_order");
		ptrcall!(void)(_GODOT_set_order, _godot_object, name, position);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_get_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_order") = _GODOT_get_order;
	/**
	Return the order of a configuration value (influences when saved to the config file).
	*/
	long getOrder(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_order.bind("ProjectSettings", "get_order");
		return ptrcall!(long)(_GODOT_get_order, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_initial_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_initial_value") = _GODOT_set_initial_value;
	/**
	
	*/
	void setInitialValue(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		_GODOT_set_initial_value.bind("ProjectSettings", "set_initial_value");
		ptrcall!(void)(_GODOT_set_initial_value, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT_add_property_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_property_info") = _GODOT_add_property_info;
	/**
	Add a custom property info to a property. The dictionary must contain: name:$(D String)(the name of the property) and type:$(D long)(see TYPE_* in $(D @GlobalScope)), and optionally hint:$(D long)(see PROPERTY_HINT_* in $(D @GlobalScope)), hint_string:$(D String).
	Example:
	
	
	ProjectSettings.set("category/property_name", 0)
	
	var property_info = {
	    "name": "category/property_name",
	    "type": TYPE_INT,
	    "hint": PROPERTY_HINT_ENUM,
	    "hint_string": "one,two,three"
	}
	
	ProjectSettings.add_property_info(property_info)
	
	
	*/
	void addPropertyInfo(in Dictionary hint)
	{
		_GODOT_add_property_info.bind("ProjectSettings", "add_property_info");
		ptrcall!(void)(_GODOT_add_property_info, _godot_object, hint);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear the whole configuration (not recommended, may break things).
	*/
	void clear(StringArg0)(in StringArg0 name)
	{
		_GODOT_clear.bind("ProjectSettings", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object, name);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_localize_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "localize_path") = _GODOT_localize_path;
	/**
	Convert a path to a localized path (res:// path).
	*/
	String localizePath(StringArg0)(in StringArg0 path) const
	{
		_GODOT_localize_path.bind("ProjectSettings", "localize_path");
		return ptrcall!(String)(_GODOT_localize_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_globalize_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "globalize_path") = _GODOT_globalize_path;
	/**
	Convert a localized path (res://) to a full native OS path.
	*/
	String globalizePath(StringArg0)(in StringArg0 path) const
	{
		_GODOT_globalize_path.bind("ProjectSettings", "globalize_path");
		return ptrcall!(String)(_GODOT_globalize_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_save;
	package(godot) alias _GODOT_methodBindInfo(string name : "save") = _GODOT_save;
	/**
	
	*/
	GodotError save()
	{
		_GODOT_save.bind("ProjectSettings", "save");
		return ptrcall!(GodotError)(_GODOT_save, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_load_resource_pack;
	package(godot) alias _GODOT_methodBindInfo(string name : "load_resource_pack") = _GODOT_load_resource_pack;
	/**
	
	*/
	bool loadResourcePack(StringArg0)(in StringArg0 pack)
	{
		_GODOT_load_resource_pack.bind("ProjectSettings", "load_resource_pack");
		return ptrcall!(bool)(_GODOT_load_resource_pack, _godot_object, pack);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_property_can_revert;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_can_revert") = _GODOT_property_can_revert;
	/**
	
	*/
	bool propertyCanRevert(StringArg0)(in StringArg0 name)
	{
		_GODOT_property_can_revert.bind("ProjectSettings", "property_can_revert");
		return ptrcall!(bool)(_GODOT_property_can_revert, _godot_object, name);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_property_get_revert;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_get_revert") = _GODOT_property_get_revert;
	/**
	
	*/
	Variant propertyGetRevert(StringArg0)(in StringArg0 name)
	{
		_GODOT_property_get_revert.bind("ProjectSettings", "property_get_revert");
		return ptrcall!(Variant)(_GODOT_property_get_revert, _godot_object, name);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_save_custom;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_custom") = _GODOT_save_custom;
	/**
	
	*/
	GodotError saveCustom(StringArg0)(in StringArg0 file)
	{
		_GODOT_save_custom.bind("ProjectSettings", "save_custom");
		return ptrcall!(GodotError)(_GODOT_save_custom, _godot_object, file);
	}
}
/// Returns: the ProjectSettingsSingleton
@property @nogc nothrow pragma(inline, true)
ProjectSettingsSingleton ProjectSettings()
{
	return ProjectSettingsSingleton._GODOT_singleton();
}
