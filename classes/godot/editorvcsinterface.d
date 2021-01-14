/**
Version Control System (VCS) interface which reads and writes to the local VCS in use.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorvcsinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Version Control System (VCS) interface which reads and writes to the local VCS in use.

Used by the editor to display VCS extracted information in the editor. The implementation of this API is included in VCS addons, which are essentially GDNative plugins that need to be put into the project folder. These VCS addons are scripts which are attached (on demand) to the object instance of `EditorVCSInterface`. All the functions listed below, instead of performing the task themselves, they call the internally defined functions in the VCS addons to provide a plug-n-play experience.
*/
@GodotBaseClass struct EditorVCSInterface
{
	package(godot) enum string _GODOT_internal_name = "EditorVCSInterface";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_commit") GodotMethod!(void, String) _commit;
		@GodotName("_get_file_diff") GodotMethod!(Array, String) _getFileDiff;
		@GodotName("_get_modified_files_data") GodotMethod!(Dictionary) _getModifiedFilesData;
		@GodotName("_get_project_name") GodotMethod!(String) _getProjectName;
		@GodotName("_get_vcs_name") GodotMethod!(String) _getVcsName;
		@GodotName("_initialize") GodotMethod!(bool, String) _initialize;
		@GodotName("_is_vcs_initialized") GodotMethod!(bool) _isVcsInitialized;
		@GodotName("_shut_down") GodotMethod!(bool) _shutDown;
		@GodotName("_stage_file") GodotMethod!(void, String) _stageFile;
		@GodotName("_unstage_file") GodotMethod!(void, String) _unstageFile;
		@GodotName("commit") GodotMethod!(void, String) commit;
		@GodotName("get_file_diff") GodotMethod!(Array, String) getFileDiff;
		@GodotName("get_modified_files_data") GodotMethod!(Dictionary) getModifiedFilesData;
		@GodotName("get_project_name") GodotMethod!(String) getProjectName;
		@GodotName("get_vcs_name") GodotMethod!(String) getVcsName;
		@GodotName("initialize") GodotMethod!(bool, String) initialize;
		@GodotName("is_addon_ready") GodotMethod!(bool) isAddonReady;
		@GodotName("is_vcs_initialized") GodotMethod!(bool) isVcsInitialized;
		@GodotName("shut_down") GodotMethod!(bool) shutDown;
		@GodotName("stage_file") GodotMethod!(void, String) stageFile;
		@GodotName("unstage_file") GodotMethod!(void, String) unstageFile;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorVCSInterface other) const
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
	/// Construct a new instance of EditorVCSInterface.
	/// Note: use `memnew!EditorVCSInterface` instead.
	static EditorVCSInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorVCSInterface");
		if(constructor is null) return typeof(this).init;
		return cast(EditorVCSInterface)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _commit(in String msg)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(msg);
		String _GODOT_method_name = String("_commit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getFileDiff(in String file_path)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(file_path);
		String _GODOT_method_name = String("_get_file_diff");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	Dictionary _getModifiedFilesData()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_modified_files_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	String _getProjectName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_project_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	String _getVcsName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_vcs_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	bool _initialize(in String project_root_path)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(project_root_path);
		String _GODOT_method_name = String("_initialize");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool _isVcsInitialized()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_is_vcs_initialized");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool _shutDown()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_shut_down");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _stageFile(in String file_path)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(file_path);
		String _GODOT_method_name = String("_stage_file");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _unstageFile(in String file_path)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(file_path);
		String _GODOT_method_name = String("_unstage_file");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Creates a version commit if the addon is initialized, else returns without doing anything. Uses the files which have been staged previously, with the commit message set to a value as provided as in the argument.
	*/
	void commit(in String msg)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.commit, _godot_object, msg);
	}
	/**
	Returns an $(D Array) of $(D Dictionary) objects containing the diff output from the VCS in use, if a VCS addon is initialized, else returns an empty $(D Array) object. The diff contents also consist of some contextual lines which provide context to the observed line change in the file.
	Each $(D Dictionary) object has the line diff contents under the keys:
	- `"content"` to store a $(D String) containing the line contents
	- `"status"` to store a $(D String) which contains `"+"` in case the content is a line addition but it stores a `"-"` in case of deletion and an empty string in the case the line content is neither an addition nor a deletion.
	- `"new_line_number"` to store an integer containing the new line number of the line content.
	- `"line_count"` to store an integer containing the number of lines in the line content.
	- `"old_line_number"` to store an integer containing the old line number of the line content.
	- `"offset"` to store the offset of the line change since the first contextual line content.
	*/
	Array getFileDiff(in String file_path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getFileDiff, _godot_object, file_path);
	}
	/**
	Returns a $(D Dictionary) containing the path of the detected file change mapped to an integer signifying what kind of a change the corresponding file has experienced.
	The following integer values are being used to signify that the detected file is:
	- `0`: New to the VCS working directory
	- `1`: Modified
	- `2`: Renamed
	- `3`: Deleted
	- `4`: Typechanged
	*/
	Dictionary getModifiedFilesData()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getModifiedFilesData, _godot_object);
	}
	/**
	Returns the project name of the VCS working directory.
	*/
	String getProjectName()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getProjectName, _godot_object);
	}
	/**
	Returns the name of the VCS if the VCS has been initialized, else return an empty string.
	*/
	String getVcsName()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVcsName, _godot_object);
	}
	/**
	Initializes the VCS addon if not already. Uses the argument value as the path to the working directory of the project. Creates the initial commit if required. Returns `true` if no failure occurs, else returns `false`.
	*/
	bool initialize(in String project_root_path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.initialize, _godot_object, project_root_path);
	}
	/**
	Returns `true` if the addon is ready to respond to function calls, else returns `false`.
	*/
	bool isAddonReady()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAddonReady, _godot_object);
	}
	/**
	Returns `true` if the VCS addon has been initialized, else returns `false`.
	*/
	bool isVcsInitialized()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVcsInitialized, _godot_object);
	}
	/**
	Shuts down the VCS addon to allow cleanup code to run on call. Returns `true` is no failure occurs, else returns `false`.
	*/
	bool shutDown()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.shutDown, _godot_object);
	}
	/**
	Stages the file which should be committed when $(D EditorVCSInterface.commit) is called. Argument should contain the absolute path.
	*/
	void stageFile(in String file_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stageFile, _godot_object, file_path);
	}
	/**
	Unstages the file which was staged previously to be committed, so that it is no longer committed when $(D EditorVCSInterface.commit) is called. Argument should contain the absolute path.
	*/
	void unstageFile(in String file_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unstageFile, _godot_object, file_path);
	}
}
