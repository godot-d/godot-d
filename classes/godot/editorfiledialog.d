/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorfiledialog;
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
import godot.texture;
import godot.acceptdialog;
import godot.windowdialog;
import godot.popup;
import godot.control;
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct EditorFileDialog
{
	enum string _GODOT_internal_name = "EditorFileDialog";
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
		@GodotName("_item_selected") GodotMethod!(void, long) _itemSelected;
		@GodotName("_multi_selected") GodotMethod!(void, long, bool) _multiSelected;
		@GodotName("_items_clear_selection") GodotMethod!(void) _itemsClearSelection;
		@GodotName("_item_list_item_rmb_selected") GodotMethod!(void, long, Vector2) _itemListItemRmbSelected;
		@GodotName("_item_list_rmb_clicked") GodotMethod!(void, Vector2) _itemListRmbClicked;
		@GodotName("_item_menu_id_pressed") GodotMethod!(void, long) _itemMenuIdPressed;
		@GodotName("_item_db_selected") GodotMethod!(void, long) _itemDbSelected;
		@GodotName("_dir_entered") GodotMethod!(void, String) _dirEntered;
		@GodotName("_file_entered") GodotMethod!(void, String) _fileEntered;
		@GodotName("_action_pressed") GodotMethod!(void) _actionPressed;
		@GodotName("_cancel_pressed") GodotMethod!(void) _cancelPressed;
		@GodotName("_filter_selected") GodotMethod!(void, long) _filterSelected;
		@GodotName("_save_confirm_pressed") GodotMethod!(void) _saveConfirmPressed;
		@GodotName("clear_filters") GodotMethod!(void) clearFilters;
		@GodotName("add_filter") GodotMethod!(void, String) addFilter;
		@GodotName("get_current_dir") GodotMethod!(String) getCurrentDir;
		@GodotName("get_current_file") GodotMethod!(String) getCurrentFile;
		@GodotName("get_current_path") GodotMethod!(String) getCurrentPath;
		@GodotName("set_current_dir") GodotMethod!(void, String) setCurrentDir;
		@GodotName("set_current_file") GodotMethod!(void, String) setCurrentFile;
		@GodotName("set_current_path") GodotMethod!(void, String) setCurrentPath;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("get_mode") GodotMethod!(EditorFileDialog.Mode) getMode;
		@GodotName("get_vbox") GodotMethod!(VBoxContainer) getVbox;
		@GodotName("set_access") GodotMethod!(void, long) setAccess;
		@GodotName("get_access") GodotMethod!(EditorFileDialog.Access) getAccess;
		@GodotName("set_show_hidden_files") GodotMethod!(void, bool) setShowHiddenFiles;
		@GodotName("is_showing_hidden_files") GodotMethod!(bool) isShowingHiddenFiles;
		@GodotName("_select_drive") GodotMethod!(void, long) _selectDrive;
		@GodotName("_make_dir") GodotMethod!(void) _makeDir;
		@GodotName("_make_dir_confirm") GodotMethod!(void) _makeDirConfirm;
		@GodotName("_update_file_list") GodotMethod!(void) _updateFileList;
		@GodotName("_update_dir") GodotMethod!(void) _updateDir;
		@GodotName("_thumbnail_done") GodotMethod!(void, String, Texture, Texture, Variant) _thumbnailDone;
		@GodotName("set_display_mode") GodotMethod!(void, long) setDisplayMode;
		@GodotName("get_display_mode") GodotMethod!(EditorFileDialog.DisplayMode) getDisplayMode;
		@GodotName("_thumbnail_result") GodotMethod!(void, String, Texture, Texture, Variant) _thumbnailResult;
		@GodotName("set_disable_overwrite_warning") GodotMethod!(void, bool) setDisableOverwriteWarning;
		@GodotName("is_overwrite_warning_disabled") GodotMethod!(bool) isOverwriteWarningDisabled;
		@GodotName("_recent_selected") GodotMethod!(void, long) _recentSelected;
		@GodotName("_go_back") GodotMethod!(void) _goBack;
		@GodotName("_go_forward") GodotMethod!(void) _goForward;
		@GodotName("_go_up") GodotMethod!(void) _goUp;
		@GodotName("_favorite_toggled") GodotMethod!(void, bool) _favoriteToggled;
		@GodotName("_favorite_selected") GodotMethod!(void, long) _favoriteSelected;
		@GodotName("_favorite_move_up") GodotMethod!(void) _favoriteMoveUp;
		@GodotName("_favorite_move_down") GodotMethod!(void) _favoriteMoveDown;
		@GodotName("invalidate") GodotMethod!(void) invalidate;
	}
	bool opEquals(in EditorFileDialog other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorFileDialog opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorFileDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorFileDialog");
		if(constructor is null) return typeof(this).init;
		return cast(EditorFileDialog)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum DisplayMode : int
	{
		/**
		The $(D EditorFileDialog) displays resources as thumbnails.
		*/
		displayThumbnails = 0,
		/**
		The $(D EditorFileDialog) displays resources as a list of filenames.
		*/
		displayList = 1,
	}
	/// 
	enum Mode : int
	{
		/**
		The $(D EditorFileDialog) can select only one file. Accepting the window will open the file.
		*/
		modeOpenFile = 0,
		/**
		The $(D EditorFileDialog) can select multiple files. Accepting the window will open all files.
		*/
		modeOpenFiles = 1,
		/**
		The $(D EditorFileDialog) can select only one directory. Accepting the window will open the directory.
		*/
		modeOpenDir = 2,
		/**
		The $(D EditorFileDialog) can select a file or directory. Accepting the window will open it.
		*/
		modeOpenAny = 3,
		/**
		The $(D EditorFileDialog) can select only one file. Accepting the window will save the file.
		*/
		modeSaveFile = 4,
	}
	/// 
	enum Access : int
	{
		/**
		The $(D EditorFileDialog) can only view `res://` directory contents.
		*/
		accessResources = 0,
		/**
		The $(D EditorFileDialog) can only view `user://` directory contents.
		*/
		accessUserdata = 1,
		/**
		The $(D EditorFileDialog) can view the entire local file system.
		*/
		accessFilesystem = 2,
	}
	/// 
	enum Constants : int
	{
		displayThumbnails = 0,
		accessResources = 0,
		modeOpenFile = 0,
		accessUserdata = 1,
		modeOpenFiles = 1,
		displayList = 1,
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
	void _itemSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_item_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _multiSelected(in long arg0, in bool arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_multi_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _itemsClearSelection()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_items_clear_selection");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _itemListItemRmbSelected(in long arg0, in Vector2 arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_item_list_item_rmb_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _itemListRmbClicked(in Vector2 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_item_list_rmb_clicked");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _itemMenuIdPressed(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_item_menu_id_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _itemDbSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_item_db_selected");
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
	Removes all filters except for "All Files (*)".
	*/
	void clearFilters()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearFilters, _godot_object);
	}
	/**
	Adds a comma-delimited file extension filter option to the $(D EditorFileDialog) with an optional semi-colon-delimited label.
	Example: "*.tscn, *.scn; Scenes", results in filter text "Scenes (*.tscn, *.scn)".
	*/
	void addFilter(in String filter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addFilter, _godot_object, filter);
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
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	EditorFileDialog.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileDialog.Mode)(_classBinding.getMode, _godot_object);
	}
	/**
	Returns the `VBoxContainer` used to display the file system.
	*/
	VBoxContainer getVbox()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VBoxContainer)(_classBinding.getVbox, _godot_object);
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
	EditorFileDialog.Access getAccess() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileDialog.Access)(_classBinding.getAccess, _godot_object);
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
	void _thumbnailDone(VariantArg3)(in String arg0, Texture arg1, Texture arg2, in VariantArg3 arg3)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_thumbnail_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setDisplayMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisplayMode, _godot_object, mode);
	}
	/**
	
	*/
	EditorFileDialog.DisplayMode getDisplayMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileDialog.DisplayMode)(_classBinding.getDisplayMode, _godot_object);
	}
	/**
	
	*/
	void _thumbnailResult(VariantArg3)(in String arg0, Texture arg1, Texture arg2, in VariantArg3 arg3)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_thumbnail_result");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setDisableOverwriteWarning(in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisableOverwriteWarning, _godot_object, disable);
	}
	/**
	
	*/
	bool isOverwriteWarningDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOverwriteWarningDisabled, _godot_object);
	}
	/**
	
	*/
	void _recentSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_recent_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _goBack()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_go_back");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _goForward()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_go_forward");
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
	
	*/
	void _favoriteToggled(in bool arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_favorite_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _favoriteSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_favorite_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _favoriteMoveUp()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_favorite_move_up");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _favoriteMoveDown()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_favorite_move_down");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Notify the $(D EditorFileDialog) that its view of the data is no longer accurate. Updates the view contents on next view update.
	*/
	void invalidate()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.invalidate, _godot_object);
	}
	/**
	The location from which the user may select a file, including `res://`, `user://`, and the local file system.
	*/
	@property EditorFileDialog.Access access()
	{
		return getAccess();
	}
	/// ditto
	@property void access(long v)
	{
		setAccess(v);
	}
	/**
	The view format in which the $(D EditorFileDialog) displays resources to the user.
	*/
	@property EditorFileDialog.DisplayMode displayMode()
	{
		return getDisplayMode();
	}
	/// ditto
	@property void displayMode(long v)
	{
		setDisplayMode(v);
	}
	/**
	The purpose of the $(D EditorFileDialog). Changes allowed behaviors.
	*/
	@property EditorFileDialog.Mode mode()
	{
		return getMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setMode(v);
	}
	/**
	The currently occupied directory.
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
	The currently selected file.
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
	The file system path in the address bar.
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
	/**
	If `true`, hidden files and directories will be visible in the $(D EditorFileDialog).
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
	If `true`, the $(D EditorFileDialog) will not warn the user before overwriting files.
	*/
	@property bool disableOverwriteWarning()
	{
		return isOverwriteWarningDisabled();
	}
	/// ditto
	@property void disableOverwriteWarning(bool v)
	{
		setDisableOverwriteWarning(v);
	}
}
