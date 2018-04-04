/**
Type used to handle the filesystem.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.directory;
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
Type used to handle the filesystem.

Directory type. It is used to manage directories and their content (not restricted to the project folder).
Here is an example on how to iterate through the files of a directory:


func dir_contents(path):
    var dir = Directory.new()
    if dir.open(path) == OK:
        dir.list_dir_begin()
        var file_name = dir.get_next()
        while (file_name != ""):
            if dir.current_is_dir():
                print("Found directory: " + file_name)
            else:
                print("Found file: " + file_name)
            file_name = dir.get_next()
    else:
        print("An error occurred when trying to access the path.")


*/
@GodotBaseClass struct Directory
{
	static immutable string _GODOT_internal_name = "_Directory";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Directory other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Directory opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Directory _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Directory");
		if(constructor is null) return typeof(this).init;
		return cast(Directory)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "open") = _GODOT_open;
	/**
	Open an existing directory of the filesystem. The $(I path) argument can be within the project tree (`res://folder`), the user directory (`user://folder`) or an absolute path of the user filesystem (e.g. `/tmp/folder` or `C:\tmp\folder`).
	The method returns one of the error code constants defined in $(D @GlobalScope) (OK or ERR_*).
	*/
	GodotError open(StringArg0)(in StringArg0 path)
	{
		_GODOT_open.bind("_Directory", "open");
		return ptrcall!(GodotError)(_GODOT_open, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, bool, bool) _GODOT_list_dir_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "list_dir_begin") = _GODOT_list_dir_begin;
	/**
	Initialise the stream used to list all files and directories using the $(D getNext) function, closing the current opened stream if needed. Once the stream has been processed, it should typically be closed with $(D listDirEnd).
	If you pass `skip_navigational`, then `.` and `..` would be filtered out.
	If you pass `skip_hidden`, then hidden files would be filtered out.
	*/
	GodotError listDirBegin(in bool skip_navigational = false, in bool skip_hidden = false)
	{
		_GODOT_list_dir_begin.bind("_Directory", "list_dir_begin");
		return ptrcall!(GodotError)(_GODOT_list_dir_begin, _godot_object, skip_navigational, skip_hidden);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next") = _GODOT_get_next;
	/**
	Return the next element (file or directory) in the current directory (including `.` and `..`, unless `skip_navigational` was given to $(D listDirBegin)).
	The name of the file or directory is returned (and not its full path). Once the stream has been fully processed, the method returns an empty String and closes the stream automatically (i.e. $(D listDirEnd) would not be mandatory in such a case).
	*/
	String getNext()
	{
		_GODOT_get_next.bind("_Directory", "get_next");
		return ptrcall!(String)(_GODOT_get_next, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_current_is_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "current_is_dir") = _GODOT_current_is_dir;
	/**
	Return whether the current item processed with the last $(D getNext) call is a directory (`.` and `..` are considered directories).
	*/
	bool currentIsDir() const
	{
		_GODOT_current_is_dir.bind("_Directory", "current_is_dir");
		return ptrcall!(bool)(_GODOT_current_is_dir, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_list_dir_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "list_dir_end") = _GODOT_list_dir_end;
	/**
	Close the current stream opened with $(D listDirBegin) (whether it has been fully processed with $(D getNext) or not does not matter).
	*/
	void listDirEnd()
	{
		_GODOT_list_dir_end.bind("_Directory", "list_dir_end");
		ptrcall!(void)(_GODOT_list_dir_end, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_drive_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drive_count") = _GODOT_get_drive_count;
	/**
	On Windows, return the number of drives (partitions) mounted on the current filesystem. On other platforms, the method returns 0.
	*/
	long getDriveCount()
	{
		_GODOT_get_drive_count.bind("_Directory", "get_drive_count");
		return ptrcall!(long)(_GODOT_get_drive_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drive") = _GODOT_get_drive;
	/**
	On Windows, return the name of the drive (partition) passed as an argument (e.g. `C:`). On other platforms, or if the requested drive does not existed, the method returns an empty String.
	*/
	String getDrive(in long idx)
	{
		_GODOT_get_drive.bind("_Directory", "get_drive");
		return ptrcall!(String)(_GODOT_get_drive, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_current_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_drive") = _GODOT_get_current_drive;
	/**
	Returns the currently opened directory's drive index. See $(D getDrive) to convert returned index to the name of the drive.
	*/
	long getCurrentDrive()
	{
		_GODOT_get_current_drive.bind("_Directory", "get_current_drive");
		return ptrcall!(long)(_GODOT_get_current_drive, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_change_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "change_dir") = _GODOT_change_dir;
	/**
	Change the currently opened directory to the one passed as an argument. The argument can be relative to the current directory (e.g. `newdir` or `../newdir`), or an absolute path (e.g. `/tmp/newdir` or `res://somedir/newdir`).
	The method returns one of the error code constants defined in $(D @GlobalScope) (OK or ERR_*).
	*/
	GodotError changeDir(StringArg0)(in StringArg0 todir)
	{
		_GODOT_change_dir.bind("_Directory", "change_dir");
		return ptrcall!(GodotError)(_GODOT_change_dir, _godot_object, todir);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_dir") = _GODOT_get_current_dir;
	/**
	Return the absolute path to the currently opened directory (e.g. `res://folder` or `C:\tmp\folder`).
	*/
	String getCurrentDir()
	{
		_GODOT_get_current_dir.bind("_Directory", "get_current_dir");
		return ptrcall!(String)(_GODOT_get_current_dir, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_make_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_dir") = _GODOT_make_dir;
	/**
	Create a directory. The argument can be relative to the current directory, or an absolute path. The target directory should be placed in an already existing directory (to create the full path recursively, see $(D makeDirRecursive)).
	The method returns one of the error code constants defined in $(D @GlobalScope) (OK, FAILED or ERR_*).
	*/
	GodotError makeDir(StringArg0)(in StringArg0 path)
	{
		_GODOT_make_dir.bind("_Directory", "make_dir");
		return ptrcall!(GodotError)(_GODOT_make_dir, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_make_dir_recursive;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_dir_recursive") = _GODOT_make_dir_recursive;
	/**
	Create a target directory and all necessary intermediate directories in its path, by calling $(D makeDir) recursively. The argument can be relative to the current directory, or an absolute path.
	Return one of the error code constants defined in $(D @GlobalScope) (OK, FAILED or ERR_*).
	*/
	GodotError makeDirRecursive(StringArg0)(in StringArg0 path)
	{
		_GODOT_make_dir_recursive.bind("_Directory", "make_dir_recursive");
		return ptrcall!(GodotError)(_GODOT_make_dir_recursive, _godot_object, path);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_file_exists;
	package(godot) alias _GODOT_methodBindInfo(string name : "file_exists") = _GODOT_file_exists;
	/**
	Return whether the target file exists. The argument can be relative to the current directory, or an absolute path.
	*/
	bool fileExists(StringArg0)(in StringArg0 path)
	{
		_GODOT_file_exists.bind("_Directory", "file_exists");
		return ptrcall!(bool)(_GODOT_file_exists, _godot_object, path);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_dir_exists;
	package(godot) alias _GODOT_methodBindInfo(string name : "dir_exists") = _GODOT_dir_exists;
	/**
	Return whether the target directory exists. The argument can be relative to the current directory, or an absolute path.
	*/
	bool dirExists(StringArg0)(in StringArg0 path)
	{
		_GODOT_dir_exists.bind("_Directory", "dir_exists");
		return ptrcall!(bool)(_GODOT_dir_exists, _godot_object, path);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_space_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space_left") = _GODOT_get_space_left;
	/**
	On Unix desktop systems, return the available space on the current directory's disk. On other platforms, this information is not available and the method returns 0 or -1.
	*/
	long getSpaceLeft()
	{
		_GODOT_get_space_left.bind("_Directory", "get_space_left");
		return ptrcall!(long)(_GODOT_get_space_left, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String, String) _GODOT_copy;
	package(godot) alias _GODOT_methodBindInfo(string name : "copy") = _GODOT_copy;
	/**
	Copy the $(I from) file to the $(I to) destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
	Returns one of the error code constants defined in $(D @GlobalScope) (OK, FAILED or ERR_*).
	*/
	GodotError copy(StringArg0, StringArg1)(in StringArg0 from, in StringArg1 to)
	{
		_GODOT_copy.bind("_Directory", "copy");
		return ptrcall!(GodotError)(_GODOT_copy, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(GodotError, String, String) _GODOT_rename;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename") = _GODOT_rename;
	/**
	Rename (move) the $(I from) file to the $(I to) destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
	Return one of the error code constants defined in $(D @GlobalScope) (OK or FAILED).
	*/
	GodotError rename(StringArg0, StringArg1)(in StringArg0 from, in StringArg1 to)
	{
		_GODOT_rename.bind("_Directory", "rename");
		return ptrcall!(GodotError)(_GODOT_rename, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_remove;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove") = _GODOT_remove;
	/**
	Delete the target file or an empty directory. The argument can be relative to the current directory, or an absolute path. If the target directory is not empty, the operation will fail.
	Return one of the error code constants defined in $(D @GlobalScope) (OK or FAILED).
	*/
	GodotError remove(StringArg0)(in StringArg0 path)
	{
		_GODOT_remove.bind("_Directory", "remove");
		return ptrcall!(GodotError)(_GODOT_remove, _godot_object, path);
	}
}
