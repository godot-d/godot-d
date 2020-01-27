/**
Helper class to handle INI-style files.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.configfile;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
Helper class to handle INI-style files.

This helper class can be used to store $(D Variant) values on the filesystem using INI-style formatting. The stored values are identified by a section and a key:


$(D section)
some_key=42
string_example="Hello World!"
a_vector=Vector3( 1, 0, 2 )


The stored data can be saved to or parsed from a file, though ConfigFile objects can also be used directly without accessing the filesystem.
The following example shows how to parse an INI-style file from the system, read its contents and store new values in it:


var config = ConfigFile.new()
var err = config.load("user://settings.cfg")
if err == OK: # If not, something went wrong with the file loading
    # Look for the display/width pair, and default to 1024 if missing
    var screen_width = config.get_value("display", "width", 1024)
    # Store a variable if and only if it hasn't been defined yet
    if not config.has_section_key("audio", "mute"):
        config.set_value("audio", "mute", false)
    # Save the changes by overwriting the previous file
    config.save("user://settings.cfg")


Keep in mind that section and property names can't contain spaces. Anything after a space will be ignored on save and on load.
ConfigFiles can also contain manually written comment lines starting with a semicolon (`;`). Those lines will be ignored when parsing the file. Note that comments will be lost when saving the ConfigFile. This can still be useful for dedicated server configuration files, which are typically never overwritten without explicit user action.
*/
@GodotBaseClass struct ConfigFile
{
	enum string _GODOT_internal_name = "ConfigFile";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
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
		@GodotName("save") GodotMethod!(GodotError, String) save;
		@GodotName("save_encrypted") GodotMethod!(GodotError, String, PoolByteArray) saveEncrypted;
		@GodotName("save_encrypted_pass") GodotMethod!(GodotError, String, String) saveEncryptedPass;
		@GodotName("set_value") GodotMethod!(void, String, String, Variant) setValue;
	}
	bool opEquals(in ConfigFile other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConfigFile opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConfigFile _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConfigFile");
		if(constructor is null) return typeof(this).init;
		return cast(ConfigFile)(constructor());
	}
	@disable new(size_t s);
	/**
	Deletes the specified section along with all the key-value pairs inside.
	*/
	void eraseSection(in String section)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.eraseSection, _godot_object, section);
	}
	/**
	
	*/
	void eraseSectionKey(in String section, in String key)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.eraseSectionKey, _godot_object, section, key);
	}
	/**
	Returns an array of all defined key identifiers in the specified section.
	*/
	PoolStringArray getSectionKeys(in String section) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getSectionKeys, _godot_object, section);
	}
	/**
	Returns an array of all defined section identifiers.
	*/
	PoolStringArray getSections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getSections, _godot_object);
	}
	/**
	Returns the current value for the specified section and key. If the section and/or the key do not exist, the method returns the value of the optional `default` argument, or `null` if it is omitted.
	*/
	Variant getValue(VariantArg2)(in String section, in String key, in VariantArg2 _default = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getValue, _godot_object, section, key, _default);
	}
	/**
	Returns `true` if the specified section exists.
	*/
	bool hasSection(in String section) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasSection, _godot_object, section);
	}
	/**
	Returns `true` if the specified section-key pair exists.
	*/
	bool hasSectionKey(in String section, in String key) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasSectionKey, _godot_object, section, key);
	}
	/**
	Loads the config file specified as a parameter. The file's contents are parsed and loaded in the ConfigFile object which the method was called on.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.load, _godot_object, path);
	}
	/**
	
	*/
	GodotError loadEncrypted(in String path, in PoolByteArray key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.loadEncrypted, _godot_object, path, key);
	}
	/**
	
	*/
	GodotError loadEncryptedPass(in String path, in String pass)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.loadEncryptedPass, _godot_object, path, pass);
	}
	/**
	Saves the contents of the ConfigFile object to the file specified as a parameter. The output file uses an INI-style structure.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError save(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.save, _godot_object, path);
	}
	/**
	
	*/
	GodotError saveEncrypted(in String path, in PoolByteArray key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.saveEncrypted, _godot_object, path, key);
	}
	/**
	
	*/
	GodotError saveEncryptedPass(in String path, in String pass)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.saveEncryptedPass, _godot_object, path, pass);
	}
	/**
	Assigns a value to the specified key of the specified section. If the section and/or the key do not exist, they are created. Passing a `null` value deletes the specified key if it exists, and deletes the section if it ends up empty once the key has been removed.
	*/
	void setValue(VariantArg2)(in String section, in String key, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setValue, _godot_object, section, key, value);
	}
}
