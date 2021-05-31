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
import godot.d.traits;
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
When creating a new $(D Directory), its default opened directory will be `res://`. This may change in the future, so it is advised to always use $(D open) to initialize your $(D Directory) where you want to operate, with explicit error checking.
$(B Note:) Many resources types are imported (e.g. textures or sound files), and their source asset will not be included in the exported game, as only the imported version is used. Use $(D ResourceLoader) to access imported resources.
Here is an example on how to iterate through the files of a directory:


func dir_contents(path):
    var dir = Directory.new()
    if dir.open(path) == OK:
        dir.list_dir_begin()
        var file_name = dir.get_next()
        while file_name != "":
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
	package(godot) enum string _GODOT_internal_name = "_Directory";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("change_dir") GodotMethod!(GodotError, String) changeDir;
		@GodotName("copy") GodotMethod!(GodotError, String, String) copy;
		@GodotName("current_is_dir") GodotMethod!(bool) currentIsDir;
		@GodotName("dir_exists") GodotMethod!(bool, String) dirExists;
		@GodotName("file_exists") GodotMethod!(bool, String) fileExists;
		@GodotName("get_current_dir") GodotMethod!(String) getCurrentDir;
		@GodotName("get_current_drive") GodotMethod!(long) getCurrentDrive;
		@GodotName("get_drive") GodotMethod!(String, long) getDrive;
		@GodotName("get_drive_count") GodotMethod!(long) getDriveCount;
		@GodotName("get_next") GodotMethod!(String) getNext;
		@GodotName("get_space_left") GodotMethod!(long) getSpaceLeft;
		@GodotName("list_dir_begin") GodotMethod!(GodotError, bool, bool) listDirBegin;
		@GodotName("list_dir_end") GodotMethod!(void) listDirEnd;
		@GodotName("make_dir") GodotMethod!(GodotError, String) makeDir;
		@GodotName("make_dir_recursive") GodotMethod!(GodotError, String) makeDirRecursive;
		@GodotName("open") GodotMethod!(GodotError, String) open;
		@GodotName("remove") GodotMethod!(GodotError, String) remove;
		@GodotName("rename") GodotMethod!(GodotError, String, String) rename;
	}
	/// 
	pragma(inline, true) bool opEquals(in Directory other) const
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
	/// Construct a new instance of Directory.
	/// Note: use `memnew!Directory` instead.
	static Directory _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Directory");
		if(constructor is null) return typeof(this).init;
		return cast(Directory)(constructor());
	}
	@disable new(size_t s);
	/**
	Changes the currently opened directory to the one passed as an argument. The argument can be relative to the current directory (e.g. `newdir` or `../newdir`), or an absolute path (e.g. `/tmp/newdir` or `res://somedir/newdir`).
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError changeDir(in String todir)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.changeDir, _godot_object, todir);
	}
	/**
	Copies the `from` file to the `to` destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError copy(in String from, in String to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.copy, _godot_object, from, to);
	}
	/**
	Returns whether the current item processed with the last $(D getNext) call is a directory (`.` and `..` are considered directories).
	*/
	bool currentIsDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.currentIsDir, _godot_object);
	}
	/**
	Returns whether the target directory exists. The argument can be relative to the current directory, or an absolute path.
	*/
	bool dirExists(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.dirExists, _godot_object, path);
	}
	/**
	Returns whether the target file exists. The argument can be relative to the current directory, or an absolute path.
	*/
	bool fileExists(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.fileExists, _godot_object, path);
	}
	/**
	Returns the absolute path to the currently opened directory (e.g. `res://folder` or `C:\tmp\folder`).
	*/
	String getCurrentDir()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentDir, _godot_object);
	}
	/**
	Returns the currently opened directory's drive index. See $(D getDrive) to convert returned index to the name of the drive.
	*/
	long getCurrentDrive()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCurrentDrive, _godot_object);
	}
	/**
	On Windows, returns the name of the drive (partition) passed as an argument (e.g. `C:`). On other platforms, or if the requested drive does not exist, the method returns an empty String.
	*/
	String getDrive(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDrive, _godot_object, idx);
	}
	/**
	On Windows, returns the number of drives (partitions) mounted on the current filesystem. On other platforms, the method returns 0.
	*/
	long getDriveCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDriveCount, _godot_object);
	}
	/**
	Returns the next element (file or directory) in the current directory (including `.` and `..`, unless `skip_navigational` was given to $(D listDirBegin)).
	The name of the file or directory is returned (and not its full path). Once the stream has been fully processed, the method returns an empty String and closes the stream automatically (i.e. $(D listDirEnd) would not be mandatory in such a case).
	*/
	String getNext()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNext, _godot_object);
	}
	/**
	On UNIX desktop systems, returns the available space on the current directory's disk. On other platforms, this information is not available and the method returns 0 or -1.
	*/
	long getSpaceLeft()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSpaceLeft, _godot_object);
	}
	/**
	Initializes the stream used to list all files and directories using the $(D getNext) function, closing the current opened stream if needed. Once the stream has been processed, it should typically be closed with $(D listDirEnd).
	If `skip_navigational` is `true`, `.` and `..` are filtered out.
	If `skip_hidden` is `true`, hidden files are filtered out.
	*/
	GodotError listDirBegin(in bool skip_navigational = false, in bool skip_hidden = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.listDirBegin, _godot_object, skip_navigational, skip_hidden);
	}
	/**
	Closes the current stream opened with $(D listDirBegin) (whether it has been fully processed with $(D getNext) does not matter).
	*/
	void listDirEnd()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.listDirEnd, _godot_object);
	}
	/**
	Creates a directory. The argument can be relative to the current directory, or an absolute path. The target directory should be placed in an already existing directory (to create the full path recursively, see $(D makeDirRecursive)).
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError makeDir(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.makeDir, _godot_object, path);
	}
	/**
	Creates a target directory and all necessary intermediate directories in its path, by calling $(D makeDir) recursively. The argument can be relative to the current directory, or an absolute path.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError makeDirRecursive(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.makeDirRecursive, _godot_object, path);
	}
	/**
	Opens an existing directory of the filesystem. The `path` argument can be within the project tree (`res://folder`), the user directory (`user://folder`) or an absolute path of the user filesystem (e.g. `/tmp/folder` or `C:\tmp\folder`).
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError open(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.open, _godot_object, path);
	}
	/**
	Deletes the target file or an empty directory. The argument can be relative to the current directory, or an absolute path. If the target directory is not empty, the operation will fail.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError remove(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.remove, _godot_object, path);
	}
	/**
	Renames (move) the `from` file to the `to` destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
	Returns one of the $(D error) code constants (`OK` on success).
	*/
	GodotError rename(in String from, in String to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.rename, _godot_object, from, to);
	}
}
