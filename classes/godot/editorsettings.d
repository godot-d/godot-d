/**
Object that holds the project-independent editor settings.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorsettings;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
Object that holds the project-independent editor settings.

These settings are generally visible in the Editor Settings menu.
Accessing the settings is done by using the regular $(D GodotObject) API, such as:


settings.set(prop,value)
settings.get(prop)
list_of_settings = settings.get_property_list()


*/
@GodotBaseClass struct EditorSettings
{
	static immutable string _GODOT_internal_name = "EditorSettings";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorSettings other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSettings opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorSettings _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSettings");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSettings)(constructor());
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_setting") = _GODOT_has_setting;
	/**
	
	*/
	bool hasSetting(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_setting.bind("EditorSettings", "has_setting");
		return ptrcall!(bool)(_GODOT_has_setting, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_setting") = _GODOT_set_setting;
	/**
	
	*/
	void setSetting(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		_GODOT_set_setting.bind("EditorSettings", "set_setting");
		ptrcall!(void)(_GODOT_set_setting, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_get_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_setting") = _GODOT_get_setting;
	/**
	
	*/
	Variant getSetting(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_setting.bind("EditorSettings", "get_setting");
		return ptrcall!(Variant)(_GODOT_get_setting, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_erase;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase") = _GODOT_erase;
	/**
	Erase a given setting (pass full property path).
	*/
	void erase(StringArg0)(in StringArg0 property)
	{
		_GODOT_erase.bind("EditorSettings", "erase");
		ptrcall!(void)(_GODOT_erase, _godot_object, property);
	}
	package(godot) static GodotMethod!(void, String, Variant, bool) _GODOT_set_initial_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_initial_value") = _GODOT_set_initial_value;
	/**
	
	*/
	void setInitialValue(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value, in bool update_current)
	{
		_GODOT_set_initial_value.bind("EditorSettings", "set_initial_value");
		ptrcall!(void)(_GODOT_set_initial_value, _godot_object, name, value, update_current);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_property_can_revert;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_can_revert") = _GODOT_property_can_revert;
	/**
	
	*/
	bool propertyCanRevert(StringArg0)(in StringArg0 name)
	{
		_GODOT_property_can_revert.bind("EditorSettings", "property_can_revert");
		return ptrcall!(bool)(_GODOT_property_can_revert, _godot_object, name);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_property_get_revert;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_get_revert") = _GODOT_property_get_revert;
	/**
	
	*/
	Variant propertyGetRevert(StringArg0)(in StringArg0 name)
	{
		_GODOT_property_get_revert.bind("EditorSettings", "property_get_revert");
		return ptrcall!(Variant)(_GODOT_property_get_revert, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT_add_property_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_property_info") = _GODOT_add_property_info;
	/**
	Add a custom property info to a property. The dictionary must contain: name:$(D String)(the name of the property) and type:$(D long)(see TYPE_* in $(D @GlobalScope)), and optionally hint:$(D long)(see PROPERTY_HINT_* in $(D @GlobalScope)), hint_string:$(D String).
	Example:
	
	
	editor_settings.set("category/property_name", 0)
	
	var property_info = {
	    "name": "category/property_name",
	    "type": TYPE_INT,
	    "hint": PROPERTY_HINT_ENUM,
	    "hint_string": "one,two,three"
	}
	
	editor_settings.add_property_info(property_info)
	
	
	*/
	void addPropertyInfo(in Dictionary info)
	{
		_GODOT_add_property_info.bind("EditorSettings", "add_property_info");
		ptrcall!(void)(_GODOT_add_property_info, _godot_object, info);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_settings_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_settings_dir") = _GODOT_get_settings_dir;
	/**
	Get the global settings path for the engine. Inside this path you can find some standard paths such as:
	settings/tmp - used for temporary storage of files
	settings/templates - where export templates are located
	*/
	String getSettingsDir() const
	{
		_GODOT_get_settings_dir.bind("EditorSettings", "get_settings_dir");
		return ptrcall!(String)(_GODOT_get_settings_dir, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_project_settings_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_project_settings_dir") = _GODOT_get_project_settings_dir;
	/**
	Get the specific project settings path. Projects all have a unique sub-directory inside the settings path where project specific settings are saved.
	*/
	String getProjectSettingsDir() const
	{
		_GODOT_get_project_settings_dir.bind("EditorSettings", "get_project_settings_dir");
		return ptrcall!(String)(_GODOT_get_project_settings_dir, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT_set_favorite_dirs;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_favorite_dirs") = _GODOT_set_favorite_dirs;
	/**
	Set the list of favorite directories for this project.
	*/
	void setFavoriteDirs(in PoolStringArray dirs)
	{
		_GODOT_set_favorite_dirs.bind("EditorSettings", "set_favorite_dirs");
		ptrcall!(void)(_GODOT_set_favorite_dirs, _godot_object, dirs);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_favorite_dirs;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_favorite_dirs") = _GODOT_get_favorite_dirs;
	/**
	Get the list of favorite directories for this project.
	*/
	PoolStringArray getFavoriteDirs() const
	{
		_GODOT_get_favorite_dirs.bind("EditorSettings", "get_favorite_dirs");
		return ptrcall!(PoolStringArray)(_GODOT_get_favorite_dirs, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT_set_recent_dirs;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_recent_dirs") = _GODOT_set_recent_dirs;
	/**
	Set the list of recently visited folders in the file dialog for this project.
	*/
	void setRecentDirs(in PoolStringArray dirs)
	{
		_GODOT_set_recent_dirs.bind("EditorSettings", "set_recent_dirs");
		ptrcall!(void)(_GODOT_set_recent_dirs, _godot_object, dirs);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_recent_dirs;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_recent_dirs") = _GODOT_get_recent_dirs;
	/**
	Get the list of recently visited folders in the file dialog for this project.
	*/
	PoolStringArray getRecentDirs() const
	{
		_GODOT_get_recent_dirs.bind("EditorSettings", "get_recent_dirs");
		return ptrcall!(PoolStringArray)(_GODOT_get_recent_dirs, _godot_object);
	}
}
