/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
/**

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
	
	*/
	GodotError changeDir(in String todir)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.changeDir, _godot_object, todir);
	}
	/**
	
	*/
	GodotError copy(in String from, in String to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.copy, _godot_object, from, to);
	}
	/**
	
	*/
	bool currentIsDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.currentIsDir, _godot_object);
	}
	/**
	
	*/
	bool dirExists(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.dirExists, _godot_object, path);
	}
	/**
	
	*/
	bool fileExists(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.fileExists, _godot_object, path);
	}
	/**
	
	*/
	String getCurrentDir()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentDir, _godot_object);
	}
	/**
	
	*/
	long getCurrentDrive()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCurrentDrive, _godot_object);
	}
	/**
	
	*/
	String getDrive(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDrive, _godot_object, idx);
	}
	/**
	
	*/
	long getDriveCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDriveCount, _godot_object);
	}
	/**
	
	*/
	String getNext()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNext, _godot_object);
	}
	/**
	
	*/
	long getSpaceLeft()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSpaceLeft, _godot_object);
	}
	/**
	
	*/
	GodotError listDirBegin(in bool skip_navigational = false, in bool skip_hidden = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.listDirBegin, _godot_object, skip_navigational, skip_hidden);
	}
	/**
	
	*/
	void listDirEnd()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.listDirEnd, _godot_object);
	}
	/**
	
	*/
	GodotError makeDir(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.makeDir, _godot_object, path);
	}
	/**
	
	*/
	GodotError makeDirRecursive(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.makeDirRecursive, _godot_object, path);
	}
	/**
	
	*/
	GodotError open(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.open, _godot_object, path);
	}
	/**
	
	*/
	GodotError remove(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.remove, _godot_object, path);
	}
	/**
	
	*/
	GodotError rename(in String from, in String to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.rename, _godot_object, from, to);
	}
}
