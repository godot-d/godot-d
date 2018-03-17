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
	static immutable string _GODOT_internal_name = "EditorExportPlugin";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, String, String, PoolStringArray) _GODOT__export_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "_export_file") = _GODOT__export_file;
	/**
	
	*/
	void _exportFile(StringArg0, StringArg1)(in StringArg0 path, in StringArg1 type, in PoolStringArray features)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		_GODOT_args.append(type);
		_GODOT_args.append(features);
		String _GODOT_method_name = String("_export_file");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, PoolStringArray, bool, String, long) _GODOT__export_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "_export_begin") = _GODOT__export_begin;
	/**
	
	*/
	void _exportBegin(StringArg2)(in PoolStringArray features, in bool is_debug, in StringArg2 path, in long flags)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(features);
		_GODOT_args.append(is_debug);
		_GODOT_args.append(path);
		_GODOT_args.append(flags);
		String _GODOT_method_name = String("_export_begin");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String, PoolStringArray) _GODOT_add_shared_object;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_shared_object") = _GODOT_add_shared_object;
	/**
	
	*/
	void addSharedObject(StringArg0)(in StringArg0 path, in PoolStringArray tags)
	{
		_GODOT_add_shared_object.bind("EditorExportPlugin", "add_shared_object");
		ptrcall!(void)(_GODOT_add_shared_object, _godot_object, path, tags);
	}
	package(godot) static GodotMethod!(void, String, PoolByteArray, bool) _GODOT_add_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_file") = _GODOT_add_file;
	/**
	
	*/
	void addFile(StringArg0)(in StringArg0 path, in PoolByteArray file, in bool remap)
	{
		_GODOT_add_file.bind("EditorExportPlugin", "add_file");
		ptrcall!(void)(_GODOT_add_file, _godot_object, path, file, remap);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_ios_framework;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_ios_framework") = _GODOT_add_ios_framework;
	/**
	
	*/
	void addIosFramework(StringArg0)(in StringArg0 path)
	{
		_GODOT_add_ios_framework.bind("EditorExportPlugin", "add_ios_framework");
		ptrcall!(void)(_GODOT_add_ios_framework, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_ios_plist_content;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_ios_plist_content") = _GODOT_add_ios_plist_content;
	/**
	
	*/
	void addIosPlistContent(StringArg0)(in StringArg0 plist_content)
	{
		_GODOT_add_ios_plist_content.bind("EditorExportPlugin", "add_ios_plist_content");
		ptrcall!(void)(_GODOT_add_ios_plist_content, _godot_object, plist_content);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_ios_linker_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_ios_linker_flags") = _GODOT_add_ios_linker_flags;
	/**
	
	*/
	void addIosLinkerFlags(StringArg0)(in StringArg0 flags)
	{
		_GODOT_add_ios_linker_flags.bind("EditorExportPlugin", "add_ios_linker_flags");
		ptrcall!(void)(_GODOT_add_ios_linker_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_ios_bundle_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_ios_bundle_file") = _GODOT_add_ios_bundle_file;
	/**
	
	*/
	void addIosBundleFile(StringArg0)(in StringArg0 path)
	{
		_GODOT_add_ios_bundle_file.bind("EditorExportPlugin", "add_ios_bundle_file");
		ptrcall!(void)(_GODOT_add_ios_bundle_file, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_ios_cpp_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_ios_cpp_code") = _GODOT_add_ios_cpp_code;
	/**
	
	*/
	void addIosCppCode(StringArg0)(in StringArg0 code)
	{
		_GODOT_add_ios_cpp_code.bind("EditorExportPlugin", "add_ios_cpp_code");
		ptrcall!(void)(_GODOT_add_ios_cpp_code, _godot_object, code);
	}
	package(godot) static GodotMethod!(void) _GODOT_skip;
	package(godot) alias _GODOT_methodBindInfo(string name : "skip") = _GODOT_skip;
	/**
	
	*/
	void skip()
	{
		_GODOT_skip.bind("EditorExportPlugin", "skip");
		ptrcall!(void)(_GODOT_skip, _godot_object);
	}
}
