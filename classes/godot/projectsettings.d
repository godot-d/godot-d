/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.projectsettings;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
/**

*/
@GodotBaseClass struct ProjectSettingsSingleton
{
	package(godot) enum string _GODOT_internal_name = "ProjectSettings";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
		@GodotName("load_resource_pack") GodotMethod!(bool, String, bool, long) loadResourcePack;
		@GodotName("localize_path") GodotMethod!(String, String) localizePath;
		@GodotName("property_can_revert") GodotMethod!(bool, String) propertyCanRevert;
		@GodotName("property_get_revert") GodotMethod!(Variant, String) propertyGetRevert;
		@GodotName("save") GodotMethod!(GodotError) save;
		@GodotName("save_custom") GodotMethod!(GodotError, String) saveCustom;
		@GodotName("set_initial_value") GodotMethod!(void, String, Variant) setInitialValue;
		@GodotName("set_order") GodotMethod!(void, String, long) setOrder;
		@GodotName("set_setting") GodotMethod!(void, String, Variant) setSetting;
	}
	/// 
	pragma(inline, true) bool opEquals(in ProjectSettingsSingleton other) const
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
	/// Construct a new instance of ProjectSettingsSingleton.
	/// Note: use `memnew!ProjectSettingsSingleton` instead.
	static ProjectSettingsSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ProjectSettings");
		if(constructor is null) return typeof(this).init;
		return cast(ProjectSettingsSingleton)(constructor());
	}
	/**
	
	*/
	void addPropertyInfo(in Dictionary hint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPropertyInfo, _godot_object, hint);
	}
	/**
	
	*/
	void clear(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object, name);
	}
	/**
	
	*/
	long getOrder(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOrder, _godot_object, name);
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
	String globalizePath(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.globalizePath, _godot_object, path);
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
	bool loadResourcePack(in String pack, in bool replace_files = true, in long offset = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.loadResourcePack, _godot_object, pack, replace_files, offset);
	}
	/**
	
	*/
	String localizePath(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.localizePath, _godot_object, path);
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
	GodotError save()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.save, _godot_object);
	}
	/**
	
	*/
	GodotError saveCustom(in String file)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveCustom, _godot_object, file);
	}
	/**
	
	*/
	void setInitialValue(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInitialValue, _godot_object, name, value);
	}
	/**
	
	*/
	void setOrder(in String name, in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOrder, _godot_object, name, position);
	}
	/**
	
	*/
	void setSetting(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSetting, _godot_object, name, value);
	}
}
/// Returns: the ProjectSettingsSingleton
@property @nogc nothrow pragma(inline, true)
ProjectSettingsSingleton ProjectSettings()
{
	checkClassBinding!ProjectSettingsSingleton();
	return ProjectSettingsSingleton(ProjectSettingsSingleton.GDNativeClassBinding._singleton);
}
