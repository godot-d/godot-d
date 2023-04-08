/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorfilesystem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.node;
import godot.editorfilesystemdirectory;
/**

*/
@GodotBaseClass struct EditorFileSystem
{
	package(godot) enum string _GODOT_internal_name = "EditorFileSystem";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_file_type") GodotMethod!(String, String) getFileType;
		@GodotName("get_filesystem") GodotMethod!(EditorFileSystemDirectory) getFilesystem;
		@GodotName("get_filesystem_path") GodotMethod!(EditorFileSystemDirectory, String) getFilesystemPath;
		@GodotName("get_scanning_progress") GodotMethod!(double) getScanningProgress;
		@GodotName("is_scanning") GodotMethod!(bool) isScanning;
		@GodotName("scan") GodotMethod!(void) scan;
		@GodotName("scan_sources") GodotMethod!(void) scanSources;
		@GodotName("update_file") GodotMethod!(void, String) updateFile;
		@GodotName("update_script_classes") GodotMethod!(void) updateScriptClasses;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorFileSystem other) const
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
	/// Construct a new instance of EditorFileSystem.
	/// Note: use `memnew!EditorFileSystem` instead.
	static EditorFileSystem _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorFileSystem");
		if(constructor is null) return typeof(this).init;
		return cast(EditorFileSystem)(constructor());
	}
	/**
	
	*/
	String getFileType(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFileType, _godot_object, path);
	}
	/**
	
	*/
	EditorFileSystemDirectory getFilesystem()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileSystemDirectory)(GDNativeClassBinding.getFilesystem, _godot_object);
	}
	/**
	
	*/
	EditorFileSystemDirectory getFilesystemPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileSystemDirectory)(GDNativeClassBinding.getFilesystemPath, _godot_object, path);
	}
	/**
	
	*/
	double getScanningProgress() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getScanningProgress, _godot_object);
	}
	/**
	
	*/
	bool isScanning() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isScanning, _godot_object);
	}
	/**
	
	*/
	void scan()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scan, _godot_object);
	}
	/**
	
	*/
	void scanSources()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scanSources, _godot_object);
	}
	/**
	
	*/
	void updateFile(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateFile, _godot_object, path);
	}
	/**
	
	*/
	void updateScriptClasses()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateScriptClasses, _godot_object);
	}
}
