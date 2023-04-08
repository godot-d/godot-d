/**


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
	
	*/
	Array getImportOptions(in long preset)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(preset);
		String _GODOT_method_name = String("get_import_options");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	long getImportOrder()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_import_order");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	String getImporterName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_importer_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
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
	
	*/
	long getPresetCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_preset_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	String getPresetName(in long preset)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(preset);
		String _GODOT_method_name = String("get_preset_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	double getPriority()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_priority");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	Array getRecognizedExtensions()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_recognized_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	String getResourceType()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_resource_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	String getSaveExtension()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_save_extension");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	String getVisibleName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_visible_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
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
