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
		@GodotName("has_setting") GodotMethod!(bool, String) hasSetting;
		@GodotName("set_setting") GodotMethod!(void, String, Variant) setSetting;
		@GodotName("get_setting") GodotMethod!(Variant, String) getSetting;
		@GodotName("set_order") GodotMethod!(void, String, long) setOrder;
		@GodotName("get_order") GodotMethod!(long, String) getOrder;
		@GodotName("set_initial_value") GodotMethod!(void, String, Variant) setInitialValue;
		@GodotName("add_property_info") GodotMethod!(void, Dictionary) addPropertyInfo;
		@GodotName("clear") GodotMethod!(void, String) clear;
		@GodotName("localize_path") GodotMethod!(String, String) localizePath;
		@GodotName("globalize_path") GodotMethod!(String, String) globalizePath;
		@GodotName("save") GodotMethod!(GodotError) save;
		@GodotName("load_resource_pack") GodotMethod!(bool, String) loadResourcePack;
		@GodotName("property_can_revert") GodotMethod!(bool, String) propertyCanRevert;
		@GodotName("property_get_revert") GodotMethod!(Variant, String) propertyGetRevert;
		@GodotName("save_custom") GodotMethod!(GodotError, String) saveCustom;
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
	Return true if a configuration value is present.
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
	Set the order of a configuration value (influences when saved to the config file).
	*/
	void setOrder(StringArg0)(in StringArg0 name, in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOrder, _godot_object, name, position);
	}
	/**
	Return the order of a configuration value (influences when saved to the config file).
	*/
	long getOrder(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOrder, _godot_object, name);
	}
	/**
	
	*/
	void setInitialValue(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInitialValue, _godot_object, name, value);
	}
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
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPropertyInfo, _godot_object, hint);
	}
	/**
	Clear the whole configuration (not recommended, may break things).
	*/
	void clear(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object, name);
	}
	/**
	Convert a path to a localized path (res:// path).
	*/
	String localizePath(StringArg0)(in StringArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.localizePath, _godot_object, path);
	}
	/**
	Convert a localized path (res://) to a full native OS path.
	*/
	String globalizePath(StringArg0)(in StringArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.globalizePath, _godot_object, path);
	}
	/**
	Saves the configuration to the project.godot file.
	*/
	GodotError save()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.save, _godot_object);
	}
	/**
	Loads the contents of the .pck or .zip file specified by `pack` into the resource filesystem (res://). Returns true on success.
	Note: If a file from `pack` shares the same path as a file already in the resource filesystem, any attempts to load that file will use the file from `pack`.
	*/
	bool loadResourcePack(StringArg0)(in StringArg0 pack)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.loadResourcePack, _godot_object, pack);
	}
	/**
	Returns true if the specified property exists and its initial value differs from the current value.
	*/
	bool propertyCanRevert(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.propertyCanRevert, _godot_object, name);
	}
	/**
	Returns the initial value of the specified property. Returns null if the property does not exist.
	*/
	Variant propertyGetRevert(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.propertyGetRevert, _godot_object, name);
	}
	/**
	Saves the configuration to a custom file.
	*/
	GodotError saveCustom(StringArg0)(in StringArg0 file)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.saveCustom, _godot_object, file);
	}
}
/// Returns: the ProjectSettingsSingleton
@property @nogc nothrow pragma(inline, true)
ProjectSettingsSingleton ProjectSettings()
{
	checkClassBinding!ProjectSettingsSingleton();
	return ProjectSettingsSingleton(ProjectSettingsSingleton._classBinding._singleton);
}
