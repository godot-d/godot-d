/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.filesystemdock;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.vboxcontainer;
import godot.inputevent;
import godot.texture;
import godot.control;
/**

*/
@GodotBaseClass struct FileSystemDock
{
	package(godot) enum string _GODOT_internal_name = "FileSystemDock";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VBoxContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_bw_history") GodotMethod!(void) _bwHistory;
		@GodotName("_duplicate_operation_confirm") GodotMethod!(void) _duplicateOperationConfirm;
		@GodotName("_feature_profile_changed") GodotMethod!(void) _featureProfileChanged;
		@GodotName("_file_list_activate_file") GodotMethod!(void, long) _fileListActivateFile;
		@GodotName("_file_list_gui_input") GodotMethod!(void, InputEvent) _fileListGuiInput;
		@GodotName("_file_list_rmb_option") GodotMethod!(void, long) _fileListRmbOption;
		@GodotName("_file_list_rmb_pressed") GodotMethod!(void, Vector2) _fileListRmbPressed;
		@GodotName("_file_list_rmb_select") GodotMethod!(void, long, Vector2) _fileListRmbSelect;
		@GodotName("_file_list_thumbnail_done") GodotMethod!(void, String, Texture, Texture, Variant) _fileListThumbnailDone;
		@GodotName("_file_multi_selected") GodotMethod!(void, long, bool) _fileMultiSelected;
		@GodotName("_file_removed") GodotMethod!(void, String) _fileRemoved;
		@GodotName("_file_sort_popup") GodotMethod!(void, long) _fileSortPopup;
		@GodotName("_folder_removed") GodotMethod!(void, String) _folderRemoved;
		@GodotName("_fs_changed") GodotMethod!(void) _fsChanged;
		@GodotName("_fw_history") GodotMethod!(void) _fwHistory;
		@GodotName("_make_dir_confirm") GodotMethod!(void) _makeDirConfirm;
		@GodotName("_make_scene_confirm") GodotMethod!(void) _makeSceneConfirm;
		@GodotName("_move_operation_confirm") GodotMethod!(void, String, bool) _moveOperationConfirm;
		@GodotName("_move_with_overwrite") GodotMethod!(void) _moveWithOverwrite;
		@GodotName("_navigate_to_path") GodotMethod!(void, String, bool) _navigateToPath;
		@GodotName("_preview_invalidated") GodotMethod!(void, String) _previewInvalidated;
		@GodotName("_rename_operation_confirm") GodotMethod!(void) _renameOperationConfirm;
		@GodotName("_rescan") GodotMethod!(void) _rescan;
		@GodotName("_resource_created") GodotMethod!(void) _resourceCreated;
		@GodotName("_search_changed") GodotMethod!(void, String, Control) _searchChanged;
		@GodotName("_select_file") GodotMethod!(void, String, bool) _selectFile;
		@GodotName("_toggle_file_display") GodotMethod!(void) _toggleFileDisplay;
		@GodotName("_toggle_split_mode") GodotMethod!(void, bool) _toggleSplitMode;
		@GodotName("_tree_activate_file") GodotMethod!(void) _treeActivateFile;
		@GodotName("_tree_empty_selected") GodotMethod!(void) _treeEmptySelected;
		@GodotName("_tree_gui_input") GodotMethod!(void, InputEvent) _treeGuiInput;
		@GodotName("_tree_multi_selected") GodotMethod!(void, GodotObject, long, bool) _treeMultiSelected;
		@GodotName("_tree_rmb_empty") GodotMethod!(void, Vector2) _treeRmbEmpty;
		@GodotName("_tree_rmb_option") GodotMethod!(void, long) _treeRmbOption;
		@GodotName("_tree_rmb_select") GodotMethod!(void, Vector2) _treeRmbSelect;
		@GodotName("_tree_thumbnail_done") GodotMethod!(void, String, Texture, Texture, Variant) _treeThumbnailDone;
		@GodotName("_update_import_dock") GodotMethod!(void) _updateImportDock;
		@GodotName("_update_tree") GodotMethod!(void, PoolStringArray, bool, bool, bool) _updateTree;
		@GodotName("can_drop_data_fw") GodotMethod!(bool, Vector2, Variant, Control) canDropDataFw;
		@GodotName("drop_data_fw") GodotMethod!(void, Vector2, Variant, Control) dropDataFw;
		@GodotName("get_drag_data_fw") GodotMethod!(Variant, Vector2, Control) getDragDataFw;
		@GodotName("navigate_to_path") GodotMethod!(void, String) navigateToPath;
	}
	/// 
	pragma(inline, true) bool opEquals(in FileSystemDock other) const
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
	/// Construct a new instance of FileSystemDock.
	/// Note: use `memnew!FileSystemDock` instead.
	static FileSystemDock _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("FileSystemDock");
		if(constructor is null) return typeof(this).init;
		return cast(FileSystemDock)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _bwHistory()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_bw_history");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _duplicateOperationConfirm()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_duplicate_operation_confirm");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _featureProfileChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_feature_profile_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileListActivateFile(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_list_activate_file");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileListGuiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_list_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileListRmbOption(in long option)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(option);
		String _GODOT_method_name = String("_file_list_rmb_option");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileListRmbPressed(in Vector2 arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_list_rmb_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileListRmbSelect(in long arg0, in Vector2 arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_file_list_rmb_select");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileListThumbnailDone(VariantArg3)(in String arg0, Texture arg1, Texture arg2, in VariantArg3 arg3)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_file_list_thumbnail_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileMultiSelected(in long arg0, in bool arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_file_multi_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileRemoved(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileSortPopup(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_sort_popup");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _folderRemoved(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_folder_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fsChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_fs_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fwHistory()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_fw_history");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _makeDirConfirm()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_make_dir_confirm");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _makeSceneConfirm()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_make_scene_confirm");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _moveOperationConfirm(in String to_path, in bool overwrite = false)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(to_path);
		_GODOT_args.append(overwrite);
		String _GODOT_method_name = String("_move_operation_confirm");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _moveWithOverwrite()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_move_with_overwrite");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _navigateToPath(in String arg0, in bool arg1 = false)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_navigate_to_path");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _previewInvalidated(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_preview_invalidated");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _renameOperationConfirm()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_rename_operation_confirm");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _rescan()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_rescan");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _resourceCreated() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_resource_created");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _searchChanged(in String arg0, Control arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_search_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _selectFile(in String arg0, in bool arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_select_file");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _toggleFileDisplay()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_toggle_file_display");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _toggleSplitMode(in bool arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_toggle_split_mode");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeActivateFile()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_tree_activate_file");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeEmptySelected()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_tree_empty_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeGuiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_tree_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeMultiSelected(GodotObject arg0, in long arg1, in bool arg2)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		String _GODOT_method_name = String("_tree_multi_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeRmbEmpty(in Vector2 arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_tree_rmb_empty");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeRmbOption(in long option)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(option);
		String _GODOT_method_name = String("_tree_rmb_option");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeRmbSelect(in Vector2 arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_tree_rmb_select");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeThumbnailDone(VariantArg3)(in String arg0, Texture arg1, Texture arg2, in VariantArg3 arg3)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_tree_thumbnail_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateImportDock()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_import_dock");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateTree(in PoolStringArray arg0, in bool arg1, in bool arg2, in bool arg3)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_update_tree");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool canDropDataFw(VariantArg1)(in Vector2 point, in VariantArg1 data, Control from) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canDropDataFw, _godot_object, point, data, from);
	}
	/**
	
	*/
	void dropDataFw(VariantArg1)(in Vector2 point, in VariantArg1 data, Control from)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dropDataFw, _godot_object, point, data, from);
	}
	/**
	
	*/
	Variant getDragDataFw(in Vector2 point, Control from)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getDragDataFw, _godot_object, point, from);
	}
	/**
	
	*/
	void navigateToPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.navigateToPath, _godot_object, path);
	}
}
