/**
Dialog for selecting files or directories in the filesystem.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.filedialog;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.confirmationdialog;
import godot.inputevent;
import godot.vboxcontainer;
/**
Dialog for selecting files or directories in the filesystem.

FileDialog is a preset dialog used to choose files and directories in the filesystem. It supports filter masks.
*/
@GodotBaseClass struct FileDialog
{
	static immutable string _GODOT_internal_name = "FileDialog";
public:
@nogc nothrow:
	union { godot_object _godot_object; ConfirmationDialog _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in FileDialog other) const { return _godot_object.ptr is other._godot_object.ptr; }
	FileDialog opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static FileDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("FileDialog");
		if(constructor is null) return typeof(this).init;
		return cast(FileDialog)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Mode : int
	{
		/**
		The dialog allows the selection of one, and only one file.
		*/
		modeOpenFile = 0,
		/**
		The dialog allows the selection of multiple files.
		*/
		modeOpenFiles = 1,
		/**
		The dialog functions as a folder selector, disallowing the selection of any file.
		*/
		modeOpenDir = 2,
		/**
		The dialog allows the selection of a file or a directory.
		*/
		modeOpenAny = 3,
		/**
		The dialog will warn when a file exists.
		*/
		modeSaveFile = 4,
	}
	/// 
	enum Access : int
	{
		/**
		The dialog allows the selection of file and directory.
		*/
		accessResources = 0,
		/**
		The dialog allows access files under $(D Resource) path(res://) .
		*/
		accessUserdata = 1,
		/**
		The dialog allows access files in whole file system.
		*/
		accessFilesystem = 2,
	}
	/// 
	enum Constants : int
	{
		accessResources = 0,
		modeOpenFile = 0,
		modeOpenFiles = 1,
		accessUserdata = 1,
		modeOpenDir = 2,
		accessFilesystem = 2,
		modeOpenAny = 3,
		modeSaveFile = 4,
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_input") = _GODOT__unhandled_input;
	/**
	
	*/
	void _unhandledInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__tree_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_tree_selected") = _GODOT__tree_selected;
	/**
	
	*/
	void _treeSelected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__tree_item_activated;
	package(godot) alias _GODOT_methodBindInfo(string name : "_tree_item_activated") = _GODOT__tree_item_activated;
	/**
	
	*/
	void _treeItemActivated()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_item_activated");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__dir_entered;
	package(godot) alias _GODOT_methodBindInfo(string name : "_dir_entered") = _GODOT__dir_entered;
	/**
	
	*/
	void _dirEntered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_dir_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__file_entered;
	package(godot) alias _GODOT_methodBindInfo(string name : "_file_entered") = _GODOT__file_entered;
	/**
	
	*/
	void _fileEntered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__action_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_action_pressed") = _GODOT__action_pressed;
	/**
	
	*/
	void _actionPressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_action_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__cancel_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_cancel_pressed") = _GODOT__cancel_pressed;
	/**
	
	*/
	void _cancelPressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_cancel_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__filter_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_filter_selected") = _GODOT__filter_selected;
	/**
	
	*/
	void _filterSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_filter_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__save_confirm_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_save_confirm_pressed") = _GODOT__save_confirm_pressed;
	/**
	
	*/
	void _saveConfirmPressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_save_confirm_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_filters;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_filters") = _GODOT_clear_filters;
	/**
	Clear all the added filters in the dialog.
	*/
	void clearFilters()
	{
		_GODOT_clear_filters.bind("FileDialog", "clear_filters");
		ptrcall!(void)(_GODOT_clear_filters, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_filter") = _GODOT_add_filter;
	/**
	Add a custom filter. Filter format is: "mask ; description", example (C++): dialog-&gt;add_filter("*.png ; PNG Images");
	*/
	void addFilter(StringArg0)(in StringArg0 filter)
	{
		_GODOT_add_filter.bind("FileDialog", "add_filter");
		ptrcall!(void)(_GODOT_add_filter, _godot_object, filter);
	}
	package(godot) static GodotMethod!(void, PoolStringArray) _GODOT_set_filters;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filters") = _GODOT_set_filters;
	/**
	
	*/
	void setFilters(in PoolStringArray filters)
	{
		_GODOT_set_filters.bind("FileDialog", "set_filters");
		ptrcall!(void)(_GODOT_set_filters, _godot_object, filters);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_filters;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_filters") = _GODOT_get_filters;
	/**
	
	*/
	PoolStringArray getFilters() const
	{
		_GODOT_get_filters.bind("FileDialog", "get_filters");
		return ptrcall!(PoolStringArray)(_GODOT_get_filters, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_dir") = _GODOT_get_current_dir;
	/**
	
	*/
	String getCurrentDir() const
	{
		_GODOT_get_current_dir.bind("FileDialog", "get_current_dir");
		return ptrcall!(String)(_GODOT_get_current_dir, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_file") = _GODOT_get_current_file;
	/**
	
	*/
	String getCurrentFile() const
	{
		_GODOT_get_current_file.bind("FileDialog", "get_current_file");
		return ptrcall!(String)(_GODOT_get_current_file, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_path") = _GODOT_get_current_path;
	/**
	
	*/
	String getCurrentPath() const
	{
		_GODOT_get_current_path.bind("FileDialog", "get_current_path");
		return ptrcall!(String)(_GODOT_get_current_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_dir") = _GODOT_set_current_dir;
	/**
	
	*/
	void setCurrentDir(StringArg0)(in StringArg0 dir)
	{
		_GODOT_set_current_dir.bind("FileDialog", "set_current_dir");
		ptrcall!(void)(_GODOT_set_current_dir, _godot_object, dir);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_file") = _GODOT_set_current_file;
	/**
	
	*/
	void setCurrentFile(StringArg0)(in StringArg0 file)
	{
		_GODOT_set_current_file.bind("FileDialog", "set_current_file");
		ptrcall!(void)(_GODOT_set_current_file, _godot_object, file);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_path") = _GODOT_set_current_path;
	/**
	
	*/
	void setCurrentPath(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_current_path.bind("FileDialog", "set_current_path");
		ptrcall!(void)(_GODOT_set_current_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_mode_overrides_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode_overrides_title") = _GODOT_set_mode_overrides_title;
	/**
	
	*/
	void setModeOverridesTitle(in bool _override)
	{
		_GODOT_set_mode_overrides_title.bind("FileDialog", "set_mode_overrides_title");
		ptrcall!(void)(_GODOT_set_mode_overrides_title, _godot_object, _override);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_mode_overriding_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_mode_overriding_title") = _GODOT_is_mode_overriding_title;
	/**
	
	*/
	bool isModeOverridingTitle() const
	{
		_GODOT_is_mode_overriding_title.bind("FileDialog", "is_mode_overriding_title");
		return ptrcall!(bool)(_GODOT_is_mode_overriding_title, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	/**
	
	*/
	void setMode(in long mode)
	{
		_GODOT_set_mode.bind("FileDialog", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(FileDialog.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	/**
	
	*/
	FileDialog.Mode getMode() const
	{
		_GODOT_get_mode.bind("FileDialog", "get_mode");
		return ptrcall!(FileDialog.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(VBoxContainer) _GODOT_get_vbox;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vbox") = _GODOT_get_vbox;
	/**
	Return the vertical box container of the dialog, custom controls can be added to it.
	*/
	VBoxContainer getVbox()
	{
		_GODOT_get_vbox.bind("FileDialog", "get_vbox");
		return ptrcall!(VBoxContainer)(_GODOT_get_vbox, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_access;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_access") = _GODOT_set_access;
	/**
	
	*/
	void setAccess(in long access)
	{
		_GODOT_set_access.bind("FileDialog", "set_access");
		ptrcall!(void)(_GODOT_set_access, _godot_object, access);
	}
	package(godot) static GodotMethod!(FileDialog.Access) _GODOT_get_access;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_access") = _GODOT_get_access;
	/**
	
	*/
	FileDialog.Access getAccess() const
	{
		_GODOT_get_access.bind("FileDialog", "get_access");
		return ptrcall!(FileDialog.Access)(_GODOT_get_access, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_show_hidden_files;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_show_hidden_files") = _GODOT_set_show_hidden_files;
	/**
	
	*/
	void setShowHiddenFiles(in bool show)
	{
		_GODOT_set_show_hidden_files.bind("FileDialog", "set_show_hidden_files");
		ptrcall!(void)(_GODOT_set_show_hidden_files, _godot_object, show);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_showing_hidden_files;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_showing_hidden_files") = _GODOT_is_showing_hidden_files;
	/**
	
	*/
	bool isShowingHiddenFiles() const
	{
		_GODOT_is_showing_hidden_files.bind("FileDialog", "is_showing_hidden_files");
		return ptrcall!(bool)(_GODOT_is_showing_hidden_files, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__select_drive;
	package(godot) alias _GODOT_methodBindInfo(string name : "_select_drive") = _GODOT__select_drive;
	/**
	
	*/
	void _selectDrive(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_select_drive");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__make_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "_make_dir") = _GODOT__make_dir;
	/**
	
	*/
	void _makeDir()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_make_dir");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__make_dir_confirm;
	package(godot) alias _GODOT_methodBindInfo(string name : "_make_dir_confirm") = _GODOT__make_dir_confirm;
	/**
	
	*/
	void _makeDirConfirm()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_make_dir_confirm");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_file_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_file_list") = _GODOT__update_file_list;
	/**
	
	*/
	void _updateFileList()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_file_list");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_dir") = _GODOT__update_dir;
	/**
	
	*/
	void _updateDir()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_dir");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__go_up;
	package(godot) alias _GODOT_methodBindInfo(string name : "_go_up") = _GODOT__go_up;
	/**
	
	*/
	void _goUp()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_go_up");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_deselect_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "deselect_items") = _GODOT_deselect_items;
	/**
	
	*/
	void deselectItems()
	{
		_GODOT_deselect_items.bind("FileDialog", "deselect_items");
		ptrcall!(void)(_GODOT_deselect_items, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_invalidate;
	package(godot) alias _GODOT_methodBindInfo(string name : "invalidate") = _GODOT_invalidate;
	/**
	Invalidate and update the current dialog content list.
	*/
	void invalidate()
	{
		_GODOT_invalidate.bind("FileDialog", "invalidate");
		ptrcall!(void)(_GODOT_invalidate, _godot_object);
	}
	/**
	If `true`, changing the `mode` property will set the window title accordingly (e. g. setting mode to `MODE_OPEN_FILE` will change the window title to "Open a File").
	*/
	@property bool modeOverridesTitle()
	{
		return isModeOverridingTitle();
	}
	/// ditto
	@property void modeOverridesTitle(bool v)
	{
		setModeOverridesTitle(v);
	}
	/**
	
	*/
	@property FileDialog.Mode mode()
	{
		return getMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setMode(v);
	}
	/**
	
	*/
	@property FileDialog.Access access()
	{
		return getAccess();
	}
	/// ditto
	@property void access(long v)
	{
		setAccess(v);
	}
	/**
	
	*/
	@property PoolStringArray filters()
	{
		return getFilters();
	}
	/// ditto
	@property void filters(PoolStringArray v)
	{
		setFilters(v);
	}
	/**
	
	*/
	@property bool showHiddenFiles()
	{
		return isShowingHiddenFiles();
	}
	/// ditto
	@property void showHiddenFiles(bool v)
	{
		setShowHiddenFiles(v);
	}
	/**
	The current working directory of the file dialog.
	*/
	@property String currentDir()
	{
		return getCurrentDir();
	}
	/// ditto
	@property void currentDir(String v)
	{
		setCurrentDir(v);
	}
	/**
	The currently selected file of the file dialog.
	*/
	@property String currentFile()
	{
		return getCurrentFile();
	}
	/// ditto
	@property void currentFile(String v)
	{
		setCurrentFile(v);
	}
	/**
	The currently selected file path of the file dialog.
	*/
	@property String currentPath()
	{
		return getCurrentPath();
	}
	/// ditto
	@property void currentPath(String v)
	{
		setCurrentPath(v);
	}
}
