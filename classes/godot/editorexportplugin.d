/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorexportplugin;
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

*/
@GodotBaseClass struct EditorExportPlugin
{
	enum string _GODOT_internal_name = "EditorExportPlugin";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_export_file") GodotMethod!(void, String, String, PoolStringArray) _exportFile;
		@GodotName("_export_begin") GodotMethod!(void, PoolStringArray, bool, String, long) _exportBegin;
		@GodotName("add_shared_object") GodotMethod!(void, String, PoolStringArray) addSharedObject;
		@GodotName("add_file") GodotMethod!(void, String, PoolByteArray, bool) addFile;
		@GodotName("add_ios_framework") GodotMethod!(void, String) addIosFramework;
		@GodotName("add_ios_plist_content") GodotMethod!(void, String) addIosPlistContent;
		@GodotName("add_ios_linker_flags") GodotMethod!(void, String) addIosLinkerFlags;
		@GodotName("add_ios_bundle_file") GodotMethod!(void, String) addIosBundleFile;
		@GodotName("add_ios_cpp_code") GodotMethod!(void, String) addIosCppCode;
		@GodotName("skip") GodotMethod!(void) skip;
	}
	bool opEquals(in EditorExportPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorExportPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorExportPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorExportPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorExportPlugin)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _exportFile(in String path, in String type, in PoolStringArray features)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		_GODOT_args.append(type);
		_GODOT_args.append(features);
		String _GODOT_method_name = String("_export_file");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _exportBegin(in PoolStringArray features, in bool is_debug, in String path, in long flags)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(features);
		_GODOT_args.append(is_debug);
		_GODOT_args.append(path);
		_GODOT_args.append(flags);
		String _GODOT_method_name = String("_export_begin");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addSharedObject(in String path, in PoolStringArray tags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addSharedObject, _godot_object, path, tags);
	}
	/**
	
	*/
	void addFile(in String path, in PoolByteArray file, in bool remap)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addFile, _godot_object, path, file, remap);
	}
	/**
	
	*/
	void addIosFramework(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIosFramework, _godot_object, path);
	}
	/**
	
	*/
	void addIosPlistContent(in String plist_content)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIosPlistContent, _godot_object, plist_content);
	}
	/**
	
	*/
	void addIosLinkerFlags(in String flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIosLinkerFlags, _godot_object, flags);
	}
	/**
	
	*/
	void addIosBundleFile(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIosBundleFile, _godot_object, path);
	}
	/**
	
	*/
	void addIosCppCode(in String code)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIosCppCode, _godot_object, code);
	}
	/**
	
	*/
	void skip()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.skip, _godot_object);
	}
}
