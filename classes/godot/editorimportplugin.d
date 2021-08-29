/**
Registers a custom resource importer in the editor. Use the class to parse any file and import it as a new resource type.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorimportplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resourceimporter;
/**
Registers a custom resource importer in the editor. Use the class to parse any file and import it as a new resource type.

EditorImportPlugins provide a way to extend the editor's resource import functionality. Use them to import resources from custom files or to provide alternatives to the editor's existing importers. Register your $(D EditorPlugin) with $(D EditorPlugin.addImportPlugin).
EditorImportPlugins work by associating with specific file extensions and a resource type. See $(D getRecognizedExtensions) and $(D getResourceType). They may optionally specify some import presets that affect the import process. EditorImportPlugins are responsible for creating the resources and saving them in the `.import` directory.
Below is an example EditorImportPlugin that imports a $(D Mesh) from a file with the extension ".special" or ".spec":


tool
extends EditorImportPlugin

func get_importer_name():
    return "my.special.plugin"

func get_visible_name():
    return "Special Mesh"

func get_recognized_extensions():
    return $(D "special", "spec")

func get_save_extension():
    return "mesh"

func get_resource_type():
    return "Mesh"

func get_preset_count():
    return 1

func get_preset_name(i):
    return "Default"

func get_import_options(i):
    return $(D {"name": "my_option", "default_value": false})

func import(source_file, save_path, options, platform_variants, gen_files):
    var file = File.new()
    if file.open(source_file, File.READ) != OK:
        return FAILED

    var mesh = Mesh.new()
    # Fill the Mesh with data read in "file", left as an exercise to the reader

    var filename = save_path + "." + get_save_extension()
    return ResourceSaver.save(filename, mesh)


*/
@GodotBaseClass struct EditorImportPlugin
{
	package(godot) enum string _GODOT_internal_name = "EditorImportPlugin";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ ResourceImporter _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_import_options") GodotMethod!(Array, long) getImportOptions;
		@GodotName("get_import_order") GodotMethod!(long) getImportOrder;
		@GodotName("get_importer_name") GodotMethod!(String) getImporterName;
		@GodotName("get_option_visibility") GodotMethod!(bool, String, Dictionary) getOptionVisibility;
		@GodotName("get_preset_count") GodotMethod!(long) getPresetCount;
		@GodotName("get_preset_name") GodotMethod!(String, long) getPresetName;
		@GodotName("get_priority") GodotMethod!(double) getPriority;
		@GodotName("get_recognized_extensions") GodotMethod!(Array) getRecognizedExtensions;
		@GodotName("get_resource_type") GodotMethod!(String) getResourceType;
		@GodotName("get_save_extension") GodotMethod!(String) getSaveExtension;
		@GodotName("get_visible_name") GodotMethod!(String) getVisibleName;
		@GodotName("import") GodotMethod!(long, String, String, Dictionary, Array, Array) _import;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorImportPlugin other) const
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
	/// Construct a new instance of EditorImportPlugin.
	/// Note: use `memnew!EditorImportPlugin` instead.
	static EditorImportPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorImportPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorImportPlugin)(constructor());
	}
	@disable new(size_t s);
	/**
	Gets the options and default values for the preset at this index. Returns an Array of Dictionaries with the following keys: `name`, `default_value`, `property_hint` (optional), `hint_string` (optional), `usage` (optional).
	*/
	Array getImportOptions(in long preset)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(preset);
		String _GODOT_method_name = String("get_import_options");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	Gets the order of this importer to be run when importing resources. Higher values will be called later. Use this to ensure the importer runs after the dependencies are already imported.
	*/
	long getImportOrder()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_import_order");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Gets the unique name of the importer.
	*/
	String getImporterName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_importer_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	This method can be overridden to hide specific import options if conditions are met. This is mainly useful for hiding options that depend on others if one of them is disabled. For example:
	
	
	func get_option_visibility(option, options):
	    # Only show the lossy quality setting if the compression mode is set to "Lossy".
	    if option == "compress/lossy_quality" and options.has("compress/mode"):
	        return int(options$(D "compress/mode")) == COMPRESS_LOSSY
	
	    return true
	
	
	Return `true` to make all options always visible.
	*/
	bool getOptionVisibility(in String option, in Dictionary options)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(option);
		_GODOT_args.append(options);
		String _GODOT_method_name = String("get_option_visibility");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Gets the number of initial presets defined by the plugin. Use $(D getImportOptions) to get the default options for the preset and $(D getPresetName) to get the name of the preset.
	*/
	long getPresetCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_preset_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Gets the name of the options preset at this index.
	*/
	String getPresetName(in long preset)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(preset);
		String _GODOT_method_name = String("get_preset_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Gets the priority of this plugin for the recognized extension. Higher priority plugins will be preferred. The default priority is `1.0`.
	*/
	double getPriority()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_priority");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	Gets the list of file extensions to associate with this loader (case-insensitive). e.g. `$(D "obj")`.
	*/
	Array getRecognizedExtensions()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_recognized_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	Gets the Godot resource type associated with this loader. e.g. `"Mesh"` or `"Animation"`.
	*/
	String getResourceType()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_resource_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Gets the extension used to save this resource in the `.import` directory.
	*/
	String getSaveExtension()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_save_extension");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Gets the name to display in the import window. You should choose this name as a continuation to "Import as", e.g. "Import as Special Mesh".
	*/
	String getVisibleName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_visible_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Imports `source_file` into `save_path` with the import `options` specified. The `platform_variants` and `gen_files` arrays will be modified by this function.
	This method must be overridden to do the actual importing work. See this class' description for an example of overriding this method.
	*/
	long _import(in String source_file, in String save_path, in Dictionary options, in Array platform_variants, in Array gen_files)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(source_file);
		_GODOT_args.append(save_path);
		_GODOT_args.append(options);
		_GODOT_args.append(platform_variants);
		_GODOT_args.append(gen_files);
		String _GODOT_method_name = String("import");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
}
