/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorfilesystemdirectory;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
/**

*/
@GodotBaseClass struct EditorFileSystemDirectory
{
	package(godot) enum string _GODOT_internal_name = "EditorFileSystemDirectory";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("find_dir_index") GodotMethod!(long, String) findDirIndex;
		@GodotName("find_file_index") GodotMethod!(long, String) findFileIndex;
		@GodotName("get_file") GodotMethod!(String, long) getFile;
		@GodotName("get_file_count") GodotMethod!(long) getFileCount;
		@GodotName("get_file_import_is_valid") GodotMethod!(bool, long) getFileImportIsValid;
		@GodotName("get_file_path") GodotMethod!(String, long) getFilePath;
		@GodotName("get_file_script_class_extends") GodotMethod!(String, long) getFileScriptClassExtends;
		@GodotName("get_file_script_class_name") GodotMethod!(String, long) getFileScriptClassName;
		@GodotName("get_file_type") GodotMethod!(String, long) getFileType;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_parent") GodotMethod!(EditorFileSystemDirectory) getParent;
		@GodotName("get_path") GodotMethod!(String) getPath;
		@GodotName("get_subdir") GodotMethod!(EditorFileSystemDirectory, long) getSubdir;
		@GodotName("get_subdir_count") GodotMethod!(long) getSubdirCount;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorFileSystemDirectory other) const
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
	/// Construct a new instance of EditorFileSystemDirectory.
	/// Note: use `memnew!EditorFileSystemDirectory` instead.
	static EditorFileSystemDirectory _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorFileSystemDirectory");
		if(constructor is null) return typeof(this).init;
		return cast(EditorFileSystemDirectory)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long findDirIndex(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.findDirIndex, _godot_object, name);
	}
	/**
	
	*/
	long findFileIndex(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.findFileIndex, _godot_object, name);
	}
	/**
	
	*/
	String getFile(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFile, _godot_object, idx);
	}
	/**
	
	*/
	long getFileCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFileCount, _godot_object);
	}
	/**
	
	*/
	bool getFileImportIsValid(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getFileImportIsValid, _godot_object, idx);
	}
	/**
	
	*/
	String getFilePath(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFilePath, _godot_object, idx);
	}
	/**
	
	*/
	String getFileScriptClassExtends(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFileScriptClassExtends, _godot_object, idx);
	}
	/**
	
	*/
	String getFileScriptClassName(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFileScriptClassName, _godot_object, idx);
	}
	/**
	
	*/
	String getFileType(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFileType, _godot_object, idx);
	}
	/**
	
	*/
	String getName()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getName, _godot_object);
	}
	/**
	
	*/
	EditorFileSystemDirectory getParent()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileSystemDirectory)(GDNativeClassBinding.getParent, _godot_object);
	}
	/**
	
	*/
	String getPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPath, _godot_object);
	}
	/**
	
	*/
	EditorFileSystemDirectory getSubdir(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileSystemDirectory)(GDNativeClassBinding.getSubdir, _godot_object, idx);
	}
	/**
	
	*/
	long getSubdirCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSubdirCount, _godot_object);
	}
}
