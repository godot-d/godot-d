/**
Saves a specific resource type to a file.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourceformatsaver;
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
import godot.resource;
/**
Saves a specific resource type to a file.

The engine can save resources when you do it from the editor, or when you use the $(D ResourceSaver) singleton. This is accomplished thanks to multiple $(D ResourceFormatSaver)s, each handling its own format and called automatically by the engine.
By default, Godot saves resources as `.tres` (text-based), `.res` (binary) or another built-in format, but you can choose to create your own format by extending this class. Be sure to respect the documented return types and values. You should give it a global class name with `class_name` for it to be registered. Like built-in ResourceFormatSavers, it will be called automatically when saving resources of its recognized type(s). You may also implement a $(D ResourceFormatLoader).
*/
@GodotBaseClass struct ResourceFormatSaver
{
	enum string _GODOT_internal_name = "ResourceFormatSaver";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_recognized_extensions") GodotMethod!(PoolStringArray, Resource) getRecognizedExtensions;
		@GodotName("recognize") GodotMethod!(bool, Resource) recognize;
		@GodotName("save") GodotMethod!(long, String, Resource, long) save;
	}
	bool opEquals(in ResourceFormatSaver other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceFormatSaver opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ResourceFormatSaver _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ResourceFormatSaver");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceFormatSaver)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the list of extensions available for saving the resource object, provided it is recognized (see $(D recognize)).
	*/
	PoolStringArray getRecognizedExtensions(Resource resource)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(resource);
		String _GODOT_method_name = String("get_recognized_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolStringArray);
	}
	/**
	Returns whether the given resource object can be saved by this saver.
	*/
	bool recognize(Resource resource)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(resource);
		String _GODOT_method_name = String("recognize");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Saves the given resource object to a file at the target `path`. `flags` is a bitmask composed with $(D ResourceSaver.saverflags) constants.
	Returns $(D constant OK) on success, or an $(D error) constant in case of failure.
	*/
	long save(in String path, Resource resource, in long flags)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(path);
		_GODOT_args.append(resource);
		_GODOT_args.append(flags);
		String _GODOT_method_name = String("save");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
}
