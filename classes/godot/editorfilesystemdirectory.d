/**
A diretory for the resource filesystem.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorfilesystemdirectory;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
/**
A diretory for the resource filesystem.

A more generalized, low-level variation of the directory concept.
*/
@GodotBaseClass struct EditorFileSystemDirectory
{
	static immutable string _GODOT_internal_name = "EditorFileSystemDirectory";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorFileSystemDirectory other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorFileSystemDirectory opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorFileSystemDirectory _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorFileSystemDirectory");
		if(constructor is null) return typeof(this).init;
		return cast(EditorFileSystemDirectory)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(long) _GODOT_get_subdir_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdir_count") = _GODOT_get_subdir_count;
	/**
	Returns the number of subdirectories in this directory.
	*/
	long getSubdirCount() const
	{
		_GODOT_get_subdir_count.bind("EditorFileSystemDirectory", "get_subdir_count");
		return ptrcall!(long)(_GODOT_get_subdir_count, _godot_object);
	}
	package(godot) static GodotMethod!(EditorFileSystemDirectory, long) _GODOT_get_subdir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdir") = _GODOT_get_subdir;
	/**
	Returns the subdirectory at index `idx`.
	*/
	EditorFileSystemDirectory getSubdir(in long idx)
	{
		_GODOT_get_subdir.bind("EditorFileSystemDirectory", "get_subdir");
		return ptrcall!(EditorFileSystemDirectory)(_GODOT_get_subdir, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_file_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_count") = _GODOT_get_file_count;
	/**
	Returns the number of files in this directory.
	*/
	long getFileCount() const
	{
		_GODOT_get_file_count.bind("EditorFileSystemDirectory", "get_file_count");
		return ptrcall!(long)(_GODOT_get_file_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file") = _GODOT_get_file;
	/**
	Returns the name of the file at index `idx`.
	*/
	String getFile(in long idx) const
	{
		_GODOT_get_file.bind("EditorFileSystemDirectory", "get_file");
		return ptrcall!(String)(_GODOT_get_file, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_file_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_path") = _GODOT_get_file_path;
	/**
	Returns the path to the file at index `idx`.
	*/
	String getFilePath(in long idx) const
	{
		_GODOT_get_file_path.bind("EditorFileSystemDirectory", "get_file_path");
		return ptrcall!(String)(_GODOT_get_file_path, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_file_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_type") = _GODOT_get_file_type;
	/**
	Returns the file extension of the file at index `idx`.
	*/
	String getFileType(in long idx) const
	{
		_GODOT_get_file_type.bind("EditorFileSystemDirectory", "get_file_type");
		return ptrcall!(String)(_GODOT_get_file_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_file_import_is_valid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file_import_is_valid") = _GODOT_get_file_import_is_valid;
	/**
	Returns `true` if the file at index `idx` imported properly.
	*/
	bool getFileImportIsValid(in long idx) const
	{
		_GODOT_get_file_import_is_valid.bind("EditorFileSystemDirectory", "get_file_import_is_valid");
		return ptrcall!(bool)(_GODOT_get_file_import_is_valid, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	/**
	Returns the name of this directory.
	*/
	String getName()
	{
		_GODOT_get_name.bind("EditorFileSystemDirectory", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path") = _GODOT_get_path;
	/**
	Returns the path to this directory.
	*/
	String getPath() const
	{
		_GODOT_get_path.bind("EditorFileSystemDirectory", "get_path");
		return ptrcall!(String)(_GODOT_get_path, _godot_object);
	}
	package(godot) static GodotMethod!(EditorFileSystemDirectory) _GODOT_get_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent") = _GODOT_get_parent;
	/**
	Returns the parent directory for this directory or null if called on a directory at `res://` or `user://`.
	*/
	EditorFileSystemDirectory getParent()
	{
		_GODOT_get_parent.bind("EditorFileSystemDirectory", "get_parent");
		return ptrcall!(EditorFileSystemDirectory)(_GODOT_get_parent, _godot_object);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_find_file_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_file_index") = _GODOT_find_file_index;
	/**
	Returns the index of the file with name `name` or `-1` if not found.
	*/
	long findFileIndex(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_file_index.bind("EditorFileSystemDirectory", "find_file_index");
		return ptrcall!(long)(_GODOT_find_file_index, _godot_object, name);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_find_dir_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_dir_index") = _GODOT_find_dir_index;
	/**
	Returns the index of the directory with name `name` or `-1` if not found.
	*/
	long findDirIndex(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_dir_index.bind("EditorFileSystemDirectory", "find_dir_index");
		return ptrcall!(long)(_GODOT_find_dir_index, _godot_object, name);
	}
}
