/**
Loads a specific resource type from a file.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourceformatloader;
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
Loads a specific resource type from a file.

Godot loads resources in the editor or in exported games using ResourceFormatLoaders. They get queried when you call `load`, or when a resource with internal dependencies is loaded. Each file type may load as a different resource type, so multiple ResourceFormatLoader are registered in the engine.
Extending this class allows you to define your own. You should give it a global class name with `class_name` for it to be registered. You may as well implement a $(D ResourceFormatSaver).
Note: You can also extend $(D EditorImportPlugin) if the resource type you need exists but Godot is unable to load its format. Choosing one way over another depends if the format is suitable or not for the final exported game. Example: it's better to import .PNG textures as .STEX first, so they can be loaded with better efficiency on the graphics card.
*/
@GodotBaseClass struct ResourceFormatLoader
{
	enum string _GODOT_internal_name = "ResourceFormatLoader";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("load") GodotMethod!(Variant, String, String) load;
		@GodotName("get_recognized_extensions") GodotMethod!(PoolStringArray) getRecognizedExtensions;
		@GodotName("handles_type") GodotMethod!(bool, String) handlesType;
		@GodotName("get_resource_type") GodotMethod!(String, String) getResourceType;
		@GodotName("get_dependencies") GodotMethod!(void, String, String) getDependencies;
		@GodotName("rename_dependencies") GodotMethod!(long, String, String) renameDependencies;
	}
	bool opEquals(in ResourceFormatLoader other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceFormatLoader opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ResourceFormatLoader _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ResourceFormatLoader");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceFormatLoader)(constructor());
	}
	@disable new(size_t s);
	/**
	Loads a resource when the engine finds this loader to be compatible. If the loaded resource is the result of an import, `original_path` will target the source file. Returns a resource object if succeeded, or an `ERR_*` constant listed in $(D @GlobalScope) if it failed.
	*/
	Variant load(in String path, in String original_path)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		_GODOT_args.append(original_path);
		String _GODOT_method_name = String("load");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Gets the list of extensions for files this loader is able to read.
	*/
	PoolStringArray getRecognizedExtensions()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_recognized_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolStringArray);
	}
	/**
	Tells which resource class this loader can load. Note that custom resource types defined by scripts aren't known by the $(D ClassDB), so you might just handle `"Resource"` for them.
	*/
	bool handlesType(in String typename)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(typename);
		String _GODOT_method_name = String("handles_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Gets the class name of the resource associated with the given path. If the loader cannot handle it, it should return `""`. Note that custom resource types defined by scripts aren't known by the $(D ClassDB), so you might just return `"Resource"` for them.
	*/
	String getResourceType(in String path)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		String _GODOT_method_name = String("get_resource_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	If implemented, gets the dependencies of a given resource. If `add_types` is `true`, paths should be appended `::TypeName`, where `TypeName` is the class name of the dependency. Note that custom resource types defined by scripts aren't known by the $(D ClassDB), so you might just return `Resource` for them.
	*/
	void getDependencies(in String path, in String add_types)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		_GODOT_args.append(add_types);
		String _GODOT_method_name = String("get_dependencies");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	If implemented, renames dependencies within the given resource and saves it. `renames` is a dictionary `{ String =&gt; String }` mapping old dependency paths to new paths. Returns `OK` on success, or an `ERR_*` constant listed in $(D @GlobalScope) in case of failure.
	*/
	long renameDependencies(in String path, in String renames)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		_GODOT_args.append(renames);
		String _GODOT_method_name = String("rename_dependencies");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
}
