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
import godot.reference;
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
	enum string _GODOT_internal_name = "EditorSettings";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("has_setting") GodotMethod!(bool, String) hasSetting;
		@GodotName("set_setting") GodotMethod!(void, String, Variant) setSetting;
		@GodotName("get_setting") GodotMethod!(Variant, String) getSetting;
		@GodotName("erase") GodotMethod!(void, String) erase;
		@GodotName("set_initial_value") GodotMethod!(void, String, Variant, bool) setInitialValue;
		@GodotName("property_can_revert") GodotMethod!(bool, String) propertyCanRevert;
		@GodotName("property_get_revert") GodotMethod!(Variant, String) propertyGetRevert;
		@GodotName("add_property_info") GodotMethod!(void, Dictionary) addPropertyInfo;
		@GodotName("get_settings_dir") GodotMethod!(String) getSettingsDir;
		@GodotName("get_project_settings_dir") GodotMethod!(String) getProjectSettingsDir;
		@GodotName("set_project_metadata") GodotMethod!(void, String, String, Variant) setProjectMetadata;
		@GodotName("get_project_metadata") GodotMethod!(Variant, String, String, Variant) getProjectMetadata;
		@GodotName("set_favorites") GodotMethod!(void, PoolStringArray) setFavorites;
		@GodotName("get_favorites") GodotMethod!(PoolStringArray) getFavorites;
		@GodotName("set_recent_dirs") GodotMethod!(void, PoolStringArray) setRecentDirs;
		@GodotName("get_recent_dirs") GodotMethod!(PoolStringArray) getRecentDirs;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	bool hasSetting(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasSetting, _godot_object, name);
	}
	/**
	
	*/
	void setSetting(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSetting, _godot_object, name, value);
	}
	/**
	
	*/
	Variant getSetting(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getSetting, _godot_object, name);
	}
	/**
	Erase a given setting (pass full property path).
	*/
	void erase(StringArg0)(in StringArg0 property)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.erase, _godot_object, property);
	}
	/**
	
	*/
	void setInitialValue(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value, in bool update_current)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInitialValue, _godot_object, name, value, update_current);
	}
	/**
	
	*/
	bool propertyCanRevert(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.propertyCanRevert, _godot_object, name);
	}
	/**
	
	*/
	Variant propertyGetRevert(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.propertyGetRevert, _godot_object, name);
	}
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
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPropertyInfo, _godot_object, info);
	}
	/**
	Get the global settings path for the engine. Inside this path you can find some standard paths such as:
	settings/tmp - used for temporary storage of files
	settings/templates - where export templates are located
	*/
	String getSettingsDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSettingsDir, _godot_object);
	}
	/**
	Get the specific project settings path. Projects all have a unique sub-directory inside the settings path where project specific settings are saved.
	*/
	String getProjectSettingsDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getProjectSettingsDir, _godot_object);
	}
	/**
	
	*/
	void setProjectMetadata(StringArg0, StringArg1, VariantArg2)(in StringArg0 section, in StringArg1 key, in VariantArg2 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProjectMetadata, _godot_object, section, key, data);
	}
	/**
	
	*/
	Variant getProjectMetadata(StringArg0, StringArg1, VariantArg2)(in StringArg0 section, in StringArg1 key, in VariantArg2 _default = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getProjectMetadata, _godot_object, section, key, _default);
	}
	/**
	Set the list of favorite files and directories for this project.
	*/
	void setFavorites(in PoolStringArray dirs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFavorites, _godot_object, dirs);
	}
	/**
	Get the list of favorite files and directories for this project.
	*/
	PoolStringArray getFavorites() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getFavorites, _godot_object);
	}
	/**
	Set the list of recently visited folders in the file dialog for this project.
	*/
	void setRecentDirs(in PoolStringArray dirs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRecentDirs, _godot_object, dirs);
	}
	/**
	Get the list of recently visited folders in the file dialog for this project.
	*/
	PoolStringArray getRecentDirs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getRecentDirs, _godot_object);
	}
}
