/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.configfile;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
/**

*/
@GodotBaseClass struct ConfigFile
{
	package(godot) enum string _GODOT_internal_name = "ConfigFile";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("erase_section") GodotMethod!(void, String) eraseSection;
		@GodotName("erase_section_key") GodotMethod!(void, String, String) eraseSectionKey;
		@GodotName("get_section_keys") GodotMethod!(PoolStringArray, String) getSectionKeys;
		@GodotName("get_sections") GodotMethod!(PoolStringArray) getSections;
		@GodotName("get_value") GodotMethod!(Variant, String, String, Variant) getValue;
		@GodotName("has_section") GodotMethod!(bool, String) hasSection;
		@GodotName("has_section_key") GodotMethod!(bool, String, String) hasSectionKey;
		@GodotName("load") GodotMethod!(GodotError, String) load;
		@GodotName("load_encrypted") GodotMethod!(GodotError, String, PoolByteArray) loadEncrypted;
		@GodotName("load_encrypted_pass") GodotMethod!(GodotError, String, String) loadEncryptedPass;
		@GodotName("parse") GodotMethod!(GodotError, String) parse;
		@GodotName("save") GodotMethod!(GodotError, String) save;
		@GodotName("save_encrypted") GodotMethod!(GodotError, String, PoolByteArray) saveEncrypted;
		@GodotName("save_encrypted_pass") GodotMethod!(GodotError, String, String) saveEncryptedPass;
		@GodotName("set_value") GodotMethod!(void, String, String, Variant) setValue;
	}
	/// 
	pragma(inline, true) bool opEquals(in ConfigFile other) const
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
	/// Construct a new instance of ConfigFile.
	/// Note: use `memnew!ConfigFile` instead.
	static ConfigFile _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConfigFile");
		if(constructor is null) return typeof(this).init;
		return cast(ConfigFile)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	void eraseSection(in String section)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseSection, _godot_object, section);
	}
	/**
	
	*/
	void eraseSectionKey(in String section, in String key)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseSectionKey, _godot_object, section, key);
	}
	/**
	
	*/
	PoolStringArray getSectionKeys(in String section) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getSectionKeys, _godot_object, section);
	}
	/**
	
	*/
	PoolStringArray getSections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getSections, _godot_object);
	}
	/**
	
	*/
	Variant getValue(VariantArg2)(in String section, in String key, in VariantArg2 _default = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getValue, _godot_object, section, key, _default);
	}
	/**
	
	*/
	bool hasSection(in String section) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSection, _godot_object, section);
	}
	/**
	
	*/
	bool hasSectionKey(in String section, in String key) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSectionKey, _godot_object, section, key);
	}
	/**
	
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.load, _godot_object, path);
	}
	/**
	
	*/
	GodotError loadEncrypted(in String path, in PoolByteArray key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadEncrypted, _godot_object, path, key);
	}
	/**
	
	*/
	GodotError loadEncryptedPass(in String path, in String password)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadEncryptedPass, _godot_object, path, password);
	}
	/**
	
	*/
	GodotError parse(in String data)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.parse, _godot_object, data);
	}
	/**
	
	*/
	GodotError save(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.save, _godot_object, path);
	}
	/**
	
	*/
	GodotError saveEncrypted(in String path, in PoolByteArray key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveEncrypted, _godot_object, path, key);
	}
	/**
	
	*/
	GodotError saveEncryptedPass(in String path, in String password)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveEncryptedPass, _godot_object, path, password);
	}
	/**
	
	*/
	void setValue(VariantArg2)(in String section, in String key, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setValue, _godot_object, section, key, value);
	}
}
