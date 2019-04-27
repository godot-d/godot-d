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
import godot.lineedit;
import godot.acceptdialog;
import godot.windowdialog;
import godot.popup;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Dialog for selecting files or directories in the filesystem.

FileDialog is a preset dialog used to choose files and directories in the filesystem. It supports filter masks.
*/
@GodotBaseClass struct FileDialog
{
	enum string _GODOT_internal_name = "FileDialog";
public:
@nogc nothrow:
	union { godot_object _godot_object; ConfirmationDialog _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_unhandled_input") GodotMethod!(void, InputEvent) _unhandledInput;
		@GodotName("_tree_multi_selected") GodotMethod!(void, GodotObject, long, bool) _treeMultiSelected;
		@GodotName("_tree_selected") GodotMethod!(void) _treeSelected;
		@GodotName("_tree_item_activated") GodotMethod!(void) _treeItemActivated;
		@GodotName("_dir_entered") GodotMethod!(void, String) _dirEntered;
		@GodotName("_file_entered") GodotMethod!(void, String) _fileEntered;
		@GodotName("_action_pressed") GodotMethod!(void) _actionPressed;
		@GodotName("_cancel_pressed") GodotMethod!(void) _cancelPressed;
		@GodotName("_filter_selected") GodotMethod!(void, long) _filterSelected;
		@GodotName("_save_confirm_pressed") GodotMethod!(void) _saveConfirmPressed;
		@GodotName("clear_filters") GodotMethod!(void) clearFilters;
		@GodotName("add_filter") GodotMethod!(void, String) addFilter;
		@GodotName("set_filters") GodotMethod!(void, PoolStringArray) setFilters;
		@GodotName("get_filters") GodotMethod!(PoolStringArray) getFilters;
		@GodotName("get_current_dir") GodotMethod!(String) getCurrentDir;
		@GodotName("get_current_file") GodotMethod!(String) getCurrentFile;
		@GodotName("get_current_path") GodotMethod!(String) getCurrentPath;
		@GodotName("set_current_dir") GodotMethod!(void, String) setCurrentDir;
		@GodotName("set_current_file") GodotMethod!(void, String) setCurrentFile;
		@GodotName("set_current_path") GodotMethod!(void, String) setCurrentPath;
		@GodotName("set_mode_overrides_title") GodotMethod!(void, bool) setModeOverridesTitle;
		@GodotName("is_mode_overriding_title") GodotMethod!(bool) isModeOverridingTitle;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("get_mode") GodotMethod!(FileDialog.Mode) getMode;
		@GodotName("get_vbox") GodotMethod!(VBoxContainer) getVbox;
		@GodotName("get_line_edit") GodotMethod!(LineEdit) getLineEdit;
		@GodotName("set_access") GodotMethod!(void, long) setAccess;
		@GodotName("get_access") GodotMethod!(FileDialog.Access) getAccess;
		@GodotName("set_show_hidden_files") GodotMethod!(void, bool) setShowHiddenFiles;
		@GodotName("is_showing_hidden_files") GodotMethod!(bool) isShowingHiddenFiles;
		@GodotName("_select_drive") GodotMethod!(void, long) _selectDrive;
		@GodotName("_make_dir") GodotMethod!(void) _makeDir;
		@GodotName("_make_dir_confirm") GodotMethod!(void) _makeDirConfirm;
		@GodotName("_update_file_list") GodotMethod!(void) _updateFileList;
		@GodotName("_update_dir") GodotMethod!(void) _updateDir;
		@GodotName("_go_up") GodotMethod!(void) _goUp;
		@GodotName("deselect_items") GodotMethod!(void) deselectItems;
		@GodotName("invalidate") GodotMethod!(void) invalidate;
	}
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
		modeOpenFile = 0,
		accessResources = 0,
		accessUserdata = 1,
		modeOpenFiles = 1,
		accessFilesystem = 2,
		modeOpenDir = 2,
		modeOpenAny = 3,
		modeSaveFile = 4,
	}
	/**
	
	*/
	void _unhandledInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeMultiSelected(GodotObject arg0, in long arg1, in bool arg2)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		String _GODOT_method_name = String("_tree_multi_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeSelected()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeItemActivated()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_item_activated");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _dirEntered(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_dir_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileEntered(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _actionPressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_action_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _cancelPressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_cancel_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _filterSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_filter_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _saveConfirmPressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_save_confirm_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Clear all the added filters in the dialog.
	*/
	void clearFilters()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearFilters, _godot_object);
	}
	/**
	Add a custom filter. Example: `add_filter("*.png ; PNG Images")`
	*/
	void addFilter(in String filter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addFilter, _godot_object, filter);
	}
	/**
	
	*/
	void setFilters(in PoolStringArray filters)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFilters, _godot_object, filters);
	}
	/**
	
	*/
	PoolStringArray getFilters() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getFilters, _godot_object);
	}
	/**
	
	*/
	String getCurrentDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCurrentDir, _godot_object);
	}
	/**
	
	*/
	String getCurrentFile() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCurrentFile, _godot_object);
	}
	/**
	
	*/
	String getCurrentPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCurrentPath, _godot_object);
	}
	/**
	
	*/
	void setCurrentDir(in String dir)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCurrentDir, _godot_object, dir);
	}
	/**
	
	*/
	void setCurrentFile(in String file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCurrentFile, _godot_object, file);
	}
	/**
	
	*/
	void setCurrentPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCurrentPath, _godot_object, path);
	}
	/**
	
	*/
	void setModeOverridesTitle(in bool _override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setModeOverridesTitle, _godot_object, _override);
	}
	/**
	
	*/
	bool isModeOverridingTitle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isModeOverridingTitle, _godot_object);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	FileDialog.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(FileDialog.Mode)(_classBinding.getMode, _godot_object);
	}
	/**
	Return the vertical box container of the dialog, custom controls can be added to it.
	*/
	VBoxContainer getVbox()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VBoxContainer)(_classBinding.getVbox, _godot_object);
	}
	/**
	Returns the LineEdit for the selected file.
	*/
	LineEdit getLineEdit()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(LineEdit)(_classBinding.getLineEdit, _godot_object);
	}
	/**
	
	*/
	void setAccess(in long access)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAccess, _godot_object, access);
	}
	/**
	
	*/
	FileDialog.Access getAccess() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(FileDialog.Access)(_classBinding.getAccess, _godot_object);
	}
	/**
	
	*/
	void setShowHiddenFiles(in bool show)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShowHiddenFiles, _godot_object, show);
	}
	/**
	
	*/
	bool isShowingHiddenFiles() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isShowingHiddenFiles, _godot_object);
	}
	/**
	
	*/
	void _selectDrive(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_select_drive");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _makeDir()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_make_dir");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _makeDirConfirm()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_make_dir_confirm");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateFileList()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_file_list");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateDir()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_dir");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _goUp()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_go_up");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Clear currently selected items in the dialog.
	*/
	void deselectItems()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.deselectItems, _godot_object);
	}
	/**
	Invalidate and update the current dialog content list.
	*/
	void invalidate()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.invalidate, _godot_object);
	}
	/**
	If `true`, changing the `Mode` property will set the window title accordingly (e.g. setting mode to `MODE_OPEN_FILE` will change the window title to "Open a File").
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
	Set dialog to open or save mode, changes selection behavior. See enum `Mode` constants.
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
	The file system access scope. See enum `Access` constants.
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
	Set file type filters. This example shows only .png and .gd files `set_filters(PoolStringArray($(D "*.png ; PNG Images","*.gd ; GD Script")))`.
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
	If `true`, the dialog will show hidden files.
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
