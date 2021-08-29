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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
/**
Object that holds the project-independent editor settings.

These settings are generally visible in the $(B Editor &gt; Editor Settings) menu.
Property names use slash delimiters to distinguish sections. Setting values can be of any $(D Variant) type. It's recommended to use `snake_case` for editor settings to be consistent with the Godot editor itself.
Accessing the settings can be done using the following methods, such as:


# `settings.set("some/property", value)` also works as this class overrides `_set()` internally.
settings.set_setting("some/property",value)

# `settings.get("some/property", value)` also works as this class overrides `_get()` internally.
settings.get_setting("some/property")

var list_of_settings = settings.get_property_list()


$(B Note:) This class shouldn't be instantiated directly. Instead, access the singleton using $(D EditorInterface.getEditorSettings).
*/
@GodotBaseClass struct EditorSettings
{
	package(godot) enum string _GODOT_internal_name = "EditorSettings";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_property_info") GodotMethod!(void, Dictionary) addPropertyInfo;
		@GodotName("erase") GodotMethod!(void, String) erase;
		@GodotName("get_favorites") GodotMethod!(PoolStringArray) getFavorites;
		@GodotName("get_project_metadata") GodotMethod!(Variant, String, String, Variant) getProjectMetadata;
		@GodotName("get_project_settings_dir") GodotMethod!(String) getProjectSettingsDir;
		@GodotName("get_recent_dirs") GodotMethod!(PoolStringArray) getRecentDirs;
		@GodotName("get_setting") GodotMethod!(Variant, String) getSetting;
		@GodotName("get_settings_dir") GodotMethod!(String) getSettingsDir;
		@GodotName("has_setting") GodotMethod!(bool, String) hasSetting;
		@GodotName("property_can_revert") GodotMethod!(bool, String) propertyCanRevert;
		@GodotName("property_get_revert") GodotMethod!(Variant, String) propertyGetRevert;
		@GodotName("set_favorites") GodotMethod!(void, PoolStringArray) setFavorites;
		@GodotName("set_initial_value") GodotMethod!(void, String, Variant, bool) setInitialValue;
		@GodotName("set_project_metadata") GodotMethod!(void, String, String, Variant) setProjectMetadata;
		@GodotName("set_recent_dirs") GodotMethod!(void, PoolStringArray) setRecentDirs;
		@GodotName("set_setting") GodotMethod!(void, String, Variant) setSetting;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorSettings other) const
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
	/// Construct a new instance of EditorSettings.
	/// Note: use `memnew!EditorSettings` instead.
	static EditorSettings _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSettings");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSettings)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		Emitted after any editor setting has changed. It's used by various editor plugins to update their visuals on theme changes or logic on configuration changes.
		*/
		notificationEditorSettingsChanged = 10000,
	}
	/**
	Adds a custom property info to a property. The dictionary must contain:
	- `name`: $(D String) (the name of the property)
	- `type`: $(D long) (see $(D Variant.type))
	- optionally `hint`: $(D long) (see $(D propertyhint)) and `hint_string`: $(D String)
	$(B Example:)
	
	
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
		ptrcall!(void)(GDNativeClassBinding.addPropertyInfo, _godot_object, info);
	}
	/**
	Erases the setting whose name is specified by `property`.
	*/
	void erase(in String property)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.erase, _godot_object, property);
	}
	/**
	Returns the list of favorite files and directories for this project.
	*/
	PoolStringArray getFavorites() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getFavorites, _godot_object);
	}
	/**
	Returns project-specific metadata for the `section` and `key` specified. If the metadata doesn't exist, `default` will be returned instead. See also $(D setProjectMetadata).
	*/
	Variant getProjectMetadata(VariantArg2)(in String section, in String key, in VariantArg2 _default = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getProjectMetadata, _godot_object, section, key, _default);
	}
	/**
	Returns the project-specific settings path. Projects all have a unique subdirectory inside the settings path where project-specific settings are saved.
	*/
	String getProjectSettingsDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getProjectSettingsDir, _godot_object);
	}
	/**
	Returns the list of recently visited folders in the file dialog for this project.
	*/
	PoolStringArray getRecentDirs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getRecentDirs, _godot_object);
	}
	/**
	Returns the value of the setting specified by `name`. This is equivalent to using $(D GodotObject.get) on the EditorSettings instance.
	*/
	Variant getSetting(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getSetting, _godot_object, name);
	}
	/**
	Gets the global settings path for the engine. Inside this path, you can find some standard paths such as:
	`settings/tmp` - Used for temporary storage of files
	`settings/templates` - Where export templates are located
	*/
	String getSettingsDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSettingsDir, _godot_object);
	}
	/**
	Returns `true` if the setting specified by `name` exists, `false` otherwise.
	*/
	bool hasSetting(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSetting, _godot_object, name);
	}
	/**
	Returns `true` if the setting specified by `name` can have its value reverted to the default value, `false` otherwise. When this method returns `true`, a Revert button will display next to the setting in the Editor Settings.
	*/
	bool propertyCanRevert(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.propertyCanRevert, _godot_object, name);
	}
	/**
	Returns the default value of the setting specified by `name`. This is the value that would be applied when clicking the Revert button in the Editor Settings.
	*/
	Variant propertyGetRevert(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.propertyGetRevert, _godot_object, name);
	}
	/**
	Sets the list of favorite files and directories for this project.
	*/
	void setFavorites(in PoolStringArray dirs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFavorites, _godot_object, dirs);
	}
	/**
	Sets the initial value of the setting specified by `name` to `value`. This is used to provide a value for the Revert button in the Editor Settings. If `update_current` is true, the current value of the setting will be set to `value` as well.
	*/
	void setInitialValue(VariantArg1)(in String name, in VariantArg1 value, in bool update_current)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInitialValue, _godot_object, name, value, update_current);
	}
	/**
	Sets project-specific metadata with the `section`, `key` and `data` specified. This metadata is stored outside the project folder and therefore won't be checked into version control. See also $(D getProjectMetadata).
	*/
	void setProjectMetadata(VariantArg2)(in String section, in String key, in VariantArg2 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProjectMetadata, _godot_object, section, key, data);
	}
	/**
	Sets the list of recently visited folders in the file dialog for this project.
	*/
	void setRecentDirs(in PoolStringArray dirs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRecentDirs, _godot_object, dirs);
	}
	/**
	Sets the `value` of the setting specified by `name`. This is equivalent to using $(D GodotObject.set) on the EditorSettings instance.
	*/
	void setSetting(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSetting, _godot_object, name, value);
	}
}
