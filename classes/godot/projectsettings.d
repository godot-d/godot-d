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

Use $(D getSetting), $(D setSetting) or $(D hasSetting) to access them. Variables stored in `project.godot` are also loaded into ProjectSettings, making this object very useful for reading custom game configuration options.
When naming a Project Settings property, use the full path to the setting including the category. For example, `"application/config/name"` for the project name. Category and property names can be viewed in the Project Settings dialog.
$(B Overriding:) Any project setting can be overridden by creating a file named `override.cfg` in the project's root directory. This can also be used in exported projects by placing this file in the same directory as the project binary.
*/
@GodotBaseClass struct ProjectSettingsSingleton
{
	enum string _GODOT_internal_name = "ProjectSettings";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "ProjectSettings";
		@GodotName("add_property_info") GodotMethod!(void, Dictionary) addPropertyInfo;
		@GodotName("clear") GodotMethod!(void, String) clear;
		@GodotName("get_order") GodotMethod!(long, String) getOrder;
		@GodotName("get_setting") GodotMethod!(Variant, String) getSetting;
		@GodotName("globalize_path") GodotMethod!(String, String) globalizePath;
		@GodotName("has_setting") GodotMethod!(bool, String) hasSetting;
		@GodotName("load_resource_pack") GodotMethod!(bool, String, bool) loadResourcePack;
		@GodotName("localize_path") GodotMethod!(String, String) localizePath;
		@GodotName("property_can_revert") GodotMethod!(bool, String) propertyCanRevert;
		@GodotName("property_get_revert") GodotMethod!(Variant, String) propertyGetRevert;
		@GodotName("save") GodotMethod!(GodotError) save;
		@GodotName("save_custom") GodotMethod!(GodotError, String) saveCustom;
		@GodotName("set_initial_value") GodotMethod!(void, String, Variant) setInitialValue;
		@GodotName("set_order") GodotMethod!(void, String, long) setOrder;
		@GodotName("set_setting") GodotMethod!(void, String, Variant) setSetting;
	}
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
	@disable new(size_t s);
	/**
	Adds a custom property info to a property. The dictionary must contain:
	- `name`: $(D String) (the property's name)
	- `type`: $(D long) (see $(D Variant.type))
	- optionally `hint`: $(D long) (see $(D propertyhint)) and `hint_string`: $(D String)
	$(B Example:)
	
	
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
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPropertyInfo, _godot_object, hint);
	}
	/**
	Clears the whole configuration (not recommended, may break things).
	*/
	void clear(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object, name);
	}
	/**
	Returns the order of a configuration value (influences when saved to the config file).
	*/
	long getOrder(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOrder, _godot_object, name);
	}
	/**
	Returns the value of a setting.
	$(B Example:)
	
	
	print(ProjectSettings.get_setting("application/config/name"))
	
	
	*/
	Variant getSetting(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getSetting, _godot_object, name);
	}
	/**
	Converts a localized path (`res://`) to a full native OS path.
	*/
	String globalizePath(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.globalizePath, _godot_object, path);
	}
	/**
	Returns `true` if a configuration value is present.
	*/
	bool hasSetting(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasSetting, _godot_object, name);
	}
	/**
	Loads the contents of the .pck or .zip file specified by `pack` into the resource filesystem (`res://`). Returns `true` on success.
	$(B Note:) If a file from `pack` shares the same path as a file already in the resource filesystem, any attempts to load that file will use the file from `pack` unless `replace_files` is set to `false`.
	*/
	bool loadResourcePack(in String pack, in bool replace_files = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.loadResourcePack, _godot_object, pack, replace_files);
	}
	/**
	Convert a path to a localized path (`res://` path).
	*/
	String localizePath(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.localizePath, _godot_object, path);
	}
	/**
	Returns `true` if the specified property exists and its initial value differs from the current value.
	*/
	bool propertyCanRevert(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.propertyCanRevert, _godot_object, name);
	}
	/**
	Returns the specified property's initial value. Returns `null` if the property does not exist.
	*/
	Variant propertyGetRevert(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.propertyGetRevert, _godot_object, name);
	}
	/**
	Saves the configuration to the `project.godot` file.
	*/
	GodotError save()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.save, _godot_object);
	}
	/**
	Saves the configuration to a custom file.
	*/
	GodotError saveCustom(in String file)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.saveCustom, _godot_object, file);
	}
	/**
	Sets the specified property's initial value. This is the value the property reverts to.
	*/
	void setInitialValue(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInitialValue, _godot_object, name, value);
	}
	/**
	Sets the order of a configuration value (influences when saved to the config file).
	*/
	void setOrder(in String name, in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOrder, _godot_object, name, position);
	}
	/**
	Sets the value of a setting.
	$(B Example:)
	
	
	ProjectSettings.set_setting("application/config/name", "Example")
	
	
	*/
	void setSetting(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSetting, _godot_object, name, value);
	}
}
/// Returns: the ProjectSettingsSingleton
@property @nogc nothrow pragma(inline, true)
ProjectSettingsSingleton ProjectSettings()
{
	checkClassBinding!ProjectSettingsSingleton();
	return ProjectSettingsSingleton(ProjectSettingsSingleton._classBinding._singleton);
}
