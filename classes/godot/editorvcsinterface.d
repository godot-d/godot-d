/**


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
import godot.globalenums;
import godot.object;
/**

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
		@GodotName("_checkout_branch") GodotMethod!(bool, String) _checkoutBranch;
		@GodotName("_commit") GodotMethod!(void, String) _commit;
		@GodotName("_create_branch") GodotMethod!(void, String) _createBranch;
		@GodotName("_create_remote") GodotMethod!(void, String, String) _createRemote;
		@GodotName("_discard_file") GodotMethod!(void, String) _discardFile;
		@GodotName("_fetch") GodotMethod!(void, String) _fetch;
		@GodotName("_get_branch_list") GodotMethod!(Array) _getBranchList;
		@GodotName("_get_current_branch_name") GodotMethod!(String) _getCurrentBranchName;
		@GodotName("_get_diff") GodotMethod!(Array, String, long) _getDiff;
		@GodotName("_get_line_diff") GodotMethod!(Array, String, String) _getLineDiff;
		@GodotName("_get_modified_files_data") GodotMethod!(Array) _getModifiedFilesData;
		@GodotName("_get_previous_commits") GodotMethod!(Array, long) _getPreviousCommits;
		@GodotName("_get_remotes") GodotMethod!(Array) _getRemotes;
		@GodotName("_get_vcs_name") GodotMethod!(String) _getVcsName;
		@GodotName("_initialize") GodotMethod!(bool, String) _initialize;
		@GodotName("_pull") GodotMethod!(void, String) _pull;
		@GodotName("_push") GodotMethod!(void, String, bool) _push;
		@GodotName("_remove_branch") GodotMethod!(void, String) _removeBranch;
		@GodotName("_remove_remote") GodotMethod!(void, String) _removeRemote;
		@GodotName("_set_credentials") GodotMethod!(void, String, String, String, String, String) _setCredentials;
		@GodotName("_shut_down") GodotMethod!(bool) _shutDown;
		@GodotName("_stage_file") GodotMethod!(void, String) _stageFile;
		@GodotName("_unstage_file") GodotMethod!(void, String) _unstageFile;
		@GodotName("add_diff_hunks_into_diff_file") GodotMethod!(Dictionary, Dictionary, Array) addDiffHunksIntoDiffFile;
		@GodotName("add_line_diffs_into_diff_hunk") GodotMethod!(Dictionary, Dictionary, Array) addLineDiffsIntoDiffHunk;
		@GodotName("create_commit") GodotMethod!(Dictionary, String, String, String, long, long) createCommit;
		@GodotName("create_diff_file") GodotMethod!(Dictionary, String, String) createDiffFile;
		@GodotName("create_diff_hunk") GodotMethod!(Dictionary, long, long, long, long) createDiffHunk;
		@GodotName("create_diff_line") GodotMethod!(Dictionary, long, long, String, String) createDiffLine;
		@GodotName("create_status_file") GodotMethod!(Dictionary, String, long, long) createStatusFile;
		@GodotName("popup_error") GodotMethod!(void, String) popupError;
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
	/// 
	enum ChangeType : int
	{
		/** */
		changeTypeNew = 0,
		/** */
		changeTypeModified = 1,
		/** */
		changeTypeRenamed = 2,
		/** */
		changeTypeDeleted = 3,
		/** */
		changeTypeTypechange = 4,
		/** */
		changeTypeUnmerged = 5,
	}
	/// 
	enum TreeArea : int
	{
		/** */
		treeAreaCommit = 0,
		/** */
		treeAreaStaged = 1,
		/** */
		treeAreaUnstaged = 2,
	}
	/// 
	enum Constants : int
	{
		treeAreaCommit = 0,
		changeTypeNew = 0,
		treeAreaStaged = 1,
		changeTypeModified = 1,
		changeTypeRenamed = 2,
		treeAreaUnstaged = 2,
		changeTypeDeleted = 3,
		changeTypeTypechange = 4,
		changeTypeUnmerged = 5,
	}
	/**
	
	*/
	bool _checkoutBranch(in String branch_name)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(branch_name);
		String _GODOT_method_name = String("_checkout_branch");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
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
	void _createBranch(in String branch_name)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(branch_name);
		String _GODOT_method_name = String("_create_branch");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _createRemote(in String remote_name, in String remote_url)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(remote_name);
		_GODOT_args.append(remote_url);
		String _GODOT_method_name = String("_create_remote");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _discardFile(in String file_path)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(file_path);
		String _GODOT_method_name = String("_discard_file");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fetch(in String remote)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(remote);
		String _GODOT_method_name = String("_fetch");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getBranchList()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_branch_list");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	String _getCurrentBranchName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_current_branch_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	Array _getDiff(in String identifier, in long area)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(identifier);
		_GODOT_args.append(area);
		String _GODOT_method_name = String("_get_diff");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	Array _getLineDiff(in String file_path, in String text)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(file_path);
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_get_line_diff");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	Array _getModifiedFilesData()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_modified_files_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	Array _getPreviousCommits(in long max_commits)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(max_commits);
		String _GODOT_method_name = String("_get_previous_commits");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	Array _getRemotes()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_remotes");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
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
	bool _initialize(in String project_path)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(project_path);
		String _GODOT_method_name = String("_initialize");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _pull(in String remote)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(remote);
		String _GODOT_method_name = String("_pull");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _push(in String remote, in bool force)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(remote);
		_GODOT_args.append(force);
		String _GODOT_method_name = String("_push");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _removeBranch(in String branch_name)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(branch_name);
		String _GODOT_method_name = String("_remove_branch");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _removeRemote(in String remote_name)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(remote_name);
		String _GODOT_method_name = String("_remove_remote");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setCredentials(in String username, in String password, in String ssh_public_key_path, in String ssh_private_key_path, in String ssh_passphrase)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(username);
		_GODOT_args.append(password);
		_GODOT_args.append(ssh_public_key_path);
		_GODOT_args.append(ssh_private_key_path);
		_GODOT_args.append(ssh_passphrase);
		String _GODOT_method_name = String("_set_credentials");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	
	*/
	Dictionary addDiffHunksIntoDiffFile(in Dictionary diff_file, in Array diff_hunks)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.addDiffHunksIntoDiffFile, _godot_object, diff_file, diff_hunks);
	}
	/**
	
	*/
	Dictionary addLineDiffsIntoDiffHunk(in Dictionary diff_hunk, in Array line_diffs)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.addLineDiffsIntoDiffHunk, _godot_object, diff_hunk, line_diffs);
	}
	/**
	
	*/
	Dictionary createCommit(in String msg, in String author, in String id, in long unix_timestamp, in long offset_minutes)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.createCommit, _godot_object, msg, author, id, unix_timestamp, offset_minutes);
	}
	/**
	
	*/
	Dictionary createDiffFile(in String new_file, in String old_file)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.createDiffFile, _godot_object, new_file, old_file);
	}
	/**
	
	*/
	Dictionary createDiffHunk(in long old_start, in long new_start, in long old_lines, in long new_lines)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.createDiffHunk, _godot_object, old_start, new_start, old_lines, new_lines);
	}
	/**
	
	*/
	Dictionary createDiffLine(in long new_line_no, in long old_line_no, in String content, in String status)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.createDiffLine, _godot_object, new_line_no, old_line_no, content, status);
	}
	/**
	
	*/
	Dictionary createStatusFile(in String file_path, in long change_type, in long area)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.createStatusFile, _godot_object, file_path, change_type, area);
	}
	/**
	
	*/
	void popupError(in String msg)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.popupError, _godot_object, msg);
	}
}
