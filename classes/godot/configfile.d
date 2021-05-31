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
import godot.d.traits;
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
	Deletes the specified section along with all the key-value pairs inside. Raises an error if the section does not exist.
	*/
	void eraseSection(in String section)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseSection, _godot_object, section);
	}
	/**
	Deletes the specified key in a section. Raises an error if either the section or the key do not exist.
	*/
	void eraseSectionKey(in String section, in String key)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseSectionKey, _godot_object, section, key);
	}
	/**
	Returns an array of all defined key identifiers in the specified section. Raises an error and returns an empty array if the section does not exist.
	*/
	PoolStringArray getSectionKeys(in String section) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getSectionKeys, _godot_object, section);
	}
	/**
	Returns an array of all defined section identifiers.
	*/
	PoolStringArray getSections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getSections, _godot_object);
	}
	/**
	Returns the current value for the specified section and key. If either the section or the key do not exist, the method returns the fallback `default` value. If `default` is not specified or set to `null`, an error is also raised.
	*/
	Variant getValue(VariantArg2)(in String section, in String key, in VariantArg2 _default = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getValue, _godot_object, section, key, _default);
	}
	/**
	Returns `true` if the specified section exists.
	*/
	bool hasSection(in String section) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSection, _godot_object, section);
	}
	/**
	Returns `true` if the specified section-key pair exists.
	*/
	bool hasSectionKey(in String section, in String key) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSectionKey, _godot_object, section, key);
	}
	/**
	Loads the config file specified as a parameter. The file's contents are parsed and loaded in the $(D ConfigFile) object which the method was called on.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.load, _godot_object, path);
	}
	/**
	Loads the encrypted config file specified as a parameter, using the provided `key` to decrypt it. The file's contents are parsed and loaded in the $(D ConfigFile) object which the method was called on.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError loadEncrypted(in String path, in PoolByteArray key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadEncrypted, _godot_object, path, key);
	}
	/**
	Loads the encrypted config file specified as a parameter, using the provided `password` to decrypt it. The file's contents are parsed and loaded in the $(D ConfigFile) object which the method was called on.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError loadEncryptedPass(in String path, in String password)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadEncryptedPass, _godot_object, path, password);
	}
	/**
	Parses the passed string as the contents of a config file. The string is parsed and loaded in the ConfigFile object which the method was called on.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError parse(in String data)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.parse, _godot_object, data);
	}
	/**
	Saves the contents of the $(D ConfigFile) object to the file specified as a parameter. The output file uses an INI-style structure.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError save(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.save, _godot_object, path);
	}
	/**
	Saves the contents of the $(D ConfigFile) object to the AES-256 encrypted file specified as a parameter, using the provided `key` to encrypt it. The output file uses an INI-style structure.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError saveEncrypted(in String path, in PoolByteArray key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveEncrypted, _godot_object, path, key);
	}
	/**
	Saves the contents of the $(D ConfigFile) object to the AES-256 encrypted file specified as a parameter, using the provided `password` to encrypt it. The output file uses an INI-style structure.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError saveEncryptedPass(in String path, in String password)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveEncryptedPass, _godot_object, path, password);
	}
	/**
	Assigns a value to the specified key of the specified section. If either the section or the key do not exist, they are created. Passing a `null` value deletes the specified key if it exists, and deletes the section if it ends up empty once the key has been removed.
	*/
	void setValue(VariantArg2)(in String section, in String key, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setValue, _godot_object, section, key, value);
	}
}
