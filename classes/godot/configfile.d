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
if err == OK: # if not, something went wrong with the file loading
    # Look for the display/width pair, and default to 1024 if missing
    var screen_width = get_value("display", "width", 1024)
    # Store a variable if and only if it hasn't been defined yet
    if not config.has_section_key("audio", "mute"):
        config.set_value("audio", "mute", false)
    # Save the changes by overwriting the previous file
    config.save("user://settings.cfg")


*/
@GodotBaseClass struct ConfigFile
{
	static immutable string _GODOT_internal_name = "ConfigFile";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, String, String, Variant) _GODOT_set_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_value") = _GODOT_set_value;
	/**
	Assigns a value to the specified key of the the specified section. If the section and/or the key do not exist, they are created. Passing a `null` value deletes the specified key if it exists, and deletes the section if it ends up empty once the key has been removed.
	*/
	void setValue(StringArg0, StringArg1, VariantArg2)(in StringArg0 section, in StringArg1 key, in VariantArg2 value)
	{
		_GODOT_set_value.bind("ConfigFile", "set_value");
		ptrcall!(void)(_GODOT_set_value, _godot_object, section, key, value);
	}
	package(godot) static GodotMethod!(Variant, String, String, Variant) _GODOT_get_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_value") = _GODOT_get_value;
	/**
	Returns the current value for the specified section and key. If the section and/or the key do not exist, the method returns the value of the optional `default` argument, or `null` if it is omitted.
	*/
	Variant getValue(StringArg0, StringArg1, VariantArg2)(in StringArg0 section, in StringArg1 key, in VariantArg2 _default = Variant.nil) const
	{
		_GODOT_get_value.bind("ConfigFile", "get_value");
		return ptrcall!(Variant)(_GODOT_get_value, _godot_object, section, key, _default);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_section;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_section") = _GODOT_has_section;
	/**
	Returns `true` if the specified section exists.
	*/
	bool hasSection(StringArg0)(in StringArg0 section) const
	{
		_GODOT_has_section.bind("ConfigFile", "has_section");
		return ptrcall!(bool)(_GODOT_has_section, _godot_object, section);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_section_key;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_section_key") = _GODOT_has_section_key;
	/**
	Returns `true` if the specified section-key pair exists.
	*/
	bool hasSectionKey(StringArg0, StringArg1)(in StringArg0 section, in StringArg1 key) const
	{
		_GODOT_has_section_key.bind("ConfigFile", "has_section_key");
		return ptrcall!(bool)(_GODOT_has_section_key, _godot_object, section, key);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_sections;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sections") = _GODOT_get_sections;
	/**
	Returns an array of all defined section identifiers.
	*/
	PoolStringArray getSections() const
	{
		_GODOT_get_sections.bind("ConfigFile", "get_sections");
		return ptrcall!(PoolStringArray)(_GODOT_get_sections, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_section_keys;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_section_keys") = _GODOT_get_section_keys;
	/**
	Returns an array of all defined key identifiers in the specified section.
	*/
	PoolStringArray getSectionKeys(StringArg0)(in StringArg0 section) const
	{
		_GODOT_get_section_keys.bind("ConfigFile", "get_section_keys");
		return ptrcall!(PoolStringArray)(_GODOT_get_section_keys, _godot_object, section);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_erase_section;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase_section") = _GODOT_erase_section;
	/**
	Deletes the specified section along with all the key-value pairs inside.
	*/
	void eraseSection(StringArg0)(in StringArg0 section)
	{
		_GODOT_erase_section.bind("ConfigFile", "erase_section");
		ptrcall!(void)(_GODOT_erase_section, _godot_object, section);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_load;
	package(godot) alias _GODOT_methodBindInfo(string name : "load") = _GODOT_load;
	/**
	Loads the config file specified as a parameter. The file's contents are parsed and loaded in the ConfigFile object which the method was called on. Returns one of the `OK`, `FAILED` or `ERR_*` constants listed in $(D @GlobalScope). If the load was successful, the return value is `OK`.
	*/
	GodotError load(StringArg0)(in StringArg0 path)
	{
		_GODOT_load.bind("ConfigFile", "load");
		return ptrcall!(GodotError)(_GODOT_load, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_save;
	package(godot) alias _GODOT_methodBindInfo(string name : "save") = _GODOT_save;
	/**
	Saves the contents of the ConfigFile object to the file specified as a parameter. The output file uses an INI-style structure. Returns one of the `OK`, `FAILED` or `ERR_*` constants listed in $(D @GlobalScope). If the load was successful, the return value is `OK`.
	*/
	GodotError save(StringArg0)(in StringArg0 path)
	{
		_GODOT_save.bind("ConfigFile", "save");
		return ptrcall!(GodotError)(_GODOT_save, _godot_object, path);
	}
}
