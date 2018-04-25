/**
Resource filesystem, as the editor sees it.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorfilesystem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.node;
import godot.editorfilesystemdirectory;
/**
Resource filesystem, as the editor sees it.

This object holds information of all resources in the filesystem, their types, etc.
*/
@GodotBaseClass struct EditorFileSystem
{
	static immutable string _GODOT_internal_name = "EditorFileSystem";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorFileSystem other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorFileSystem opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorFileSystem _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorFileSystem");
		if(constructor is null) return typeof(this).init;
		return cast(EditorFileSystem)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(EditorFileSystemDirectory) _GODOT_get_filesystem;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filesystem") = _GODOT_get_filesystem;
	/**
	Get the root directory object.
	*/
	EditorFileSystemDirectory getFilesystem()
	{
		_GODOT_get_filesystem.bind("EditorFileSystem", "get_filesystem");
		return ptrcall!(EditorFileSystemDirectory)(_GODOT_get_filesystem, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_scanning;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_scanning") = _GODOT_is_scanning;
	/**
	Return true of the filesystem is being scanned.
	*/
	bool isScanning() const
	{
		_GODOT_is_scanning.bind("EditorFileSystem", "is_scanning");
		return ptrcall!(bool)(_GODOT_is_scanning, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_scanning_progress;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scanning_progress") = _GODOT_get_scanning_progress;
	/**
	Return the scan progress for 0 to 1 if the FS is being scanned.
	*/
	double getScanningProgress() const
	{
		_GODOT_get_scanning_progress.bind("EditorFileSystem", "get_scanning_progress");
		return ptrcall!(double)(_GODOT_get_scanning_progress, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_scan;
	package(godot) alias _GODOT_methodBindInfo(string name : "scan") = _GODOT_scan;
	/**
	Scan the filesystem for changes.
	*/
	void scan()
	{
		_GODOT_scan.bind("EditorFileSystem", "scan");
		ptrcall!(void)(_GODOT_scan, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_scan_sources;
	package(godot) alias _GODOT_methodBindInfo(string name : "scan_sources") = _GODOT_scan_sources;
	/**
	Check if the source of any imported resource changed.
	*/
	void scanSources()
	{
		_GODOT_scan_sources.bind("EditorFileSystem", "scan_sources");
		ptrcall!(void)(_GODOT_scan_sources, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_update_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_file") = _GODOT_update_file;
	/**
	Update a file information. Call this if an external program (not Godot) modified the file.
	*/
	void updateFile(StringArg0)(in StringArg0 path)
	{
		_GODOT_update_file.bind("EditorFileSystem", "update_file");
		ptrcall!(void)(_GODOT_update_file, _godot_object, path);
	}
	package(godot) static GodotMethod!(EditorFileSystemDirectory, String) _GODOT_get_filesystem_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filesystem_path") = _GODOT_get_filesystem_path;
	/**
	Returns a view into the filesystem at `path`.
	*/
	EditorFileSystemDirectory getFilesystemPath(StringArg0)(in StringArg0 path)
	{
		_GODOT_get_filesystem_path.bind("EditorFileSystem", "get_filesystem_path");
		return ptrcall!(EditorFileSystemDirectory)(_GODOT_get_filesystem_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_file_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_type") = _GODOT_get_file_type;
	/**
	Get the type of the file, given the full path.
	*/
	String getFileType(StringArg0)(in StringArg0 path) const
	{
		_GODOT_get_file_type.bind("EditorFileSystem", "get_file_type");
		return ptrcall!(String)(_GODOT_get_file_type, _godot_object, path);
	}
}
