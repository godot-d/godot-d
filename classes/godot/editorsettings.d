/**


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
	/// 
	enum Constants : int
	{
		/** */
		notificationEditorSettingsChanged = 10000,
	}
	/**
	
	*/
	void addPropertyInfo(in Dictionary info)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPropertyInfo, _godot_object, info);
	}
	/**
	
	*/
	void erase(in String property)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.erase, _godot_object, property);
	}
	/**
	
	*/
	PoolStringArray getFavorites() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getFavorites, _godot_object);
	}
	/**
	
	*/
	Variant getProjectMetadata(VariantArg2)(in String section, in String key, in VariantArg2 _default = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getProjectMetadata, _godot_object, section, key, _default);
	}
	/**
	
	*/
	String getProjectSettingsDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getProjectSettingsDir, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getRecentDirs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getRecentDirs, _godot_object);
	}
	/**
	
	*/
	Variant getSetting(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getSetting, _godot_object, name);
	}
	/**
	
	*/
	String getSettingsDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSettingsDir, _godot_object);
	}
	/**
	
	*/
	bool hasSetting(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSetting, _godot_object, name);
	}
	/**
	
	*/
	bool propertyCanRevert(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.propertyCanRevert, _godot_object, name);
	}
	/**
	
	*/
	Variant propertyGetRevert(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.propertyGetRevert, _godot_object, name);
	}
	/**
	
	*/
	void setFavorites(in PoolStringArray dirs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFavorites, _godot_object, dirs);
	}
	/**
	
	*/
	void setInitialValue(VariantArg1)(in String name, in VariantArg1 value, in bool update_current)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInitialValue, _godot_object, name, value, update_current);
	}
	/**
	
	*/
	void setProjectMetadata(VariantArg2)(in String section, in String key, in VariantArg2 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProjectMetadata, _godot_object, section, key, data);
	}
	/**
	
	*/
	void setRecentDirs(in PoolStringArray dirs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRecentDirs, _godot_object, dirs);
	}
	/**
	
	*/
	void setSetting(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSetting, _godot_object, name, value);
	}
}
