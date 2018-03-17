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
/**

*/
@GodotBaseClass struct EditorFileDialog
{
	static immutable string _GODOT_internal_name = "EditorFileDialog";
public:
@nogc nothrow:
	union { godot_object _godot_object; ConfirmationDialog _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	/// 
	enum DisplayMode : int
	{
		/**
		The `EditorFileDialog` displays resources as thumbnails.
		*/
		displayThumbnails = 0,
		/**
		The `EditorFileDialog` displays resources as a list of filenames.
		*/
		displayList = 1,
	}
	/// 
	enum Mode : int
	{
		/**
		The `EditorFileDialog` can select only one file. Accepting the window will open the file.
		*/
		modeOpenFile = 0,
		/**
		The `EditorFileDialog` can select multiple files. Accepting the window will open all files.
		*/
		modeOpenFiles = 1,
		/**
		The `EditorFileDialog` can select only one directory. Accepting the window will open the directory.
		*/
		modeOpenDir = 2,
		/**
		The `EditorFileDialog` can select a file or directory. Accepting the window will open it.
		*/
		modeOpenAny = 3,
		/**
		The `EditorFileDialog` can select only one file. Accepting the window will save the file.
		*/
		modeSaveFile = 4,
	}
	/// 
	enum Access : int
	{
		/**
		The `EditorFileDialog` can only view `res://` directory contents.
		*/
		accessResources = 0,
		/**
		The `EditorFileDialog` can only view `user://` directory contents.
		*/
		accessUserdata = 1,
		/**
		The `EditorFileDialog` can view the entire local file system.
		*/
		accessFilesystem = 2,
	}
	/// 
	enum Constants : int
	{
		accessResources = 0,
		displayThumbnails = 0,
		modeOpenFile = 0,
		displayList = 1,
		accessUserdata = 1,
		modeOpenFiles = 1,
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
	package(godot) static GodotMethod!(void, long) _GODOT__item_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_item_selected") = _GODOT__item_selected;
	/**
	
	*/
	void _itemSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_item_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT__multi_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_multi_selected") = _GODOT__multi_selected;
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
	package(godot) static GodotMethod!(void) _GODOT__items_clear_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "_items_clear_selection") = _GODOT__items_clear_selection;
	/**
	
	*/
	void _itemsClearSelection()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_items_clear_selection");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long, Vector2) _GODOT__item_list_item_rmb_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_item_list_item_rmb_selected") = _GODOT__item_list_item_rmb_selected;
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
	package(godot) static GodotMethod!(void, Vector2) _GODOT__item_list_rmb_clicked;
	package(godot) alias _GODOT_methodBindInfo(string name : "_item_list_rmb_clicked") = _GODOT__item_list_rmb_clicked;
	/**
	
	*/
	void _itemListRmbClicked(in Vector2 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_item_list_rmb_clicked");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__item_menu_id_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_item_menu_id_pressed") = _GODOT__item_menu_id_pressed;
	/**
	
	*/
	void _itemMenuIdPressed(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_item_menu_id_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__item_db_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_item_db_selected") = _GODOT__item_db_selected;
	/**
	
	*/
	void _itemDbSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_item_db_selected");
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
	Removes all filters except for "All Files (*)".
	*/
	void clearFilters()
	{
		_GODOT_clear_filters.bind("EditorFileDialog", "clear_filters");
		ptrcall!(void)(_GODOT_clear_filters, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_filter") = _GODOT_add_filter;
	/**
	Adds a comma-delimited file extension filter option to the `EditorFileDialog` with an optional semi-colon-delimited label.
	Example: "*.tscn, *.scn; Scenes", results in filter text "Scenes (*.tscn, *.scn)".
	*/
	void addFilter(StringArg0)(in StringArg0 filter)
	{
		_GODOT_add_filter.bind("EditorFileDialog", "add_filter");
		ptrcall!(void)(_GODOT_add_filter, _godot_object, filter);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_dir") = _GODOT_get_current_dir;
	/**
	
	*/
	String getCurrentDir() const
	{
		_GODOT_get_current_dir.bind("EditorFileDialog", "get_current_dir");
		return ptrcall!(String)(_GODOT_get_current_dir, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_file") = _GODOT_get_current_file;
	/**
	
	*/
	String getCurrentFile() const
	{
		_GODOT_get_current_file.bind("EditorFileDialog", "get_current_file");
		return ptrcall!(String)(_GODOT_get_current_file, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_path") = _GODOT_get_current_path;
	/**
	
	*/
	String getCurrentPath() const
	{
		_GODOT_get_current_path.bind("EditorFileDialog", "get_current_path");
		return ptrcall!(String)(_GODOT_get_current_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_dir;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_dir") = _GODOT_set_current_dir;
	/**
	
	*/
	void setCurrentDir(StringArg0)(in StringArg0 dir)
	{
		_GODOT_set_current_dir.bind("EditorFileDialog", "set_current_dir");
		ptrcall!(void)(_GODOT_set_current_dir, _godot_object, dir);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_file") = _GODOT_set_current_file;
	/**
	
	*/
	void setCurrentFile(StringArg0)(in StringArg0 file)
	{
		_GODOT_set_current_file.bind("EditorFileDialog", "set_current_file");
		ptrcall!(void)(_GODOT_set_current_file, _godot_object, file);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_current_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_path") = _GODOT_set_current_path;
	/**
	
	*/
	void setCurrentPath(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_current_path.bind("EditorFileDialog", "set_current_path");
		ptrcall!(void)(_GODOT_set_current_path, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mode") = _GODOT_set_mode;
	/**
	
	*/
	void setMode(in long mode)
	{
		_GODOT_set_mode.bind("EditorFileDialog", "set_mode");
		ptrcall!(void)(_GODOT_set_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(EditorFileDialog.Mode) _GODOT_get_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mode") = _GODOT_get_mode;
	/**
	
	*/
	EditorFileDialog.Mode getMode() const
	{
		_GODOT_get_mode.bind("EditorFileDialog", "get_mode");
		return ptrcall!(EditorFileDialog.Mode)(_GODOT_get_mode, _godot_object);
	}
	package(godot) static GodotMethod!(VBoxContainer) _GODOT_get_vbox;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vbox") = _GODOT_get_vbox;
	/**
	Returns the `VBoxContainer` used to display the file system.
	*/
	VBoxContainer getVbox()
	{
		_GODOT_get_vbox.bind("EditorFileDialog", "get_vbox");
		return ptrcall!(VBoxContainer)(_GODOT_get_vbox, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_access;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_access") = _GODOT_set_access;
	/**
	
	*/
	void setAccess(in long access)
	{
		_GODOT_set_access.bind("EditorFileDialog", "set_access");
		ptrcall!(void)(_GODOT_set_access, _godot_object, access);
	}
	package(godot) static GodotMethod!(EditorFileDialog.Access) _GODOT_get_access;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_access") = _GODOT_get_access;
	/**
	
	*/
	EditorFileDialog.Access getAccess() const
	{
		_GODOT_get_access.bind("EditorFileDialog", "get_access");
		return ptrcall!(EditorFileDialog.Access)(_GODOT_get_access, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_show_hidden_files;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_show_hidden_files") = _GODOT_set_show_hidden_files;
	/**
	
	*/
	void setShowHiddenFiles(in bool show)
	{
		_GODOT_set_show_hidden_files.bind("EditorFileDialog", "set_show_hidden_files");
		ptrcall!(void)(_GODOT_set_show_hidden_files, _godot_object, show);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_showing_hidden_files;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_showing_hidden_files") = _GODOT_is_showing_hidden_files;
	/**
	
	*/
	bool isShowingHiddenFiles() const
	{
		_GODOT_is_showing_hidden_files.bind("EditorFileDialog", "is_showing_hidden_files");
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
	package(godot) static GodotMethod!(void, String, Texture, Variant) _GODOT__thumbnail_done;
	package(godot) alias _GODOT_methodBindInfo(string name : "_thumbnail_done") = _GODOT__thumbnail_done;
	/**
	
	*/
	void _thumbnailDone(StringArg0, VariantArg2)(in StringArg0 arg0, Texture arg1, in VariantArg2 arg2)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		String _GODOT_method_name = String("_thumbnail_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_display_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_display_mode") = _GODOT_set_display_mode;
	/**
	
	*/
	void setDisplayMode(in long mode)
	{
		_GODOT_set_display_mode.bind("EditorFileDialog", "set_display_mode");
		ptrcall!(void)(_GODOT_set_display_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(EditorFileDialog.DisplayMode) _GODOT_get_display_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_display_mode") = _GODOT_get_display_mode;
	/**
	
	*/
	EditorFileDialog.DisplayMode getDisplayMode() const
	{
		_GODOT_get_display_mode.bind("EditorFileDialog", "get_display_mode");
		return ptrcall!(EditorFileDialog.DisplayMode)(_GODOT_get_display_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Texture, Variant) _GODOT__thumbnail_result;
	package(godot) alias _GODOT_methodBindInfo(string name : "_thumbnail_result") = _GODOT__thumbnail_result;
	/**
	
	*/
	void _thumbnailResult(StringArg0, VariantArg2)(in StringArg0 arg0, Texture arg1, in VariantArg2 arg2)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		String _GODOT_method_name = String("_thumbnail_result");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disable_overwrite_warning;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disable_overwrite_warning") = _GODOT_set_disable_overwrite_warning;
	/**
	
	*/
	void setDisableOverwriteWarning(in bool disable)
	{
		_GODOT_set_disable_overwrite_warning.bind("EditorFileDialog", "set_disable_overwrite_warning");
		ptrcall!(void)(_GODOT_set_disable_overwrite_warning, _godot_object, disable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_overwrite_warning_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_overwrite_warning_disabled") = _GODOT_is_overwrite_warning_disabled;
	/**
	
	*/
	bool isOverwriteWarningDisabled() const
	{
		_GODOT_is_overwrite_warning_disabled.bind("EditorFileDialog", "is_overwrite_warning_disabled");
		return ptrcall!(bool)(_GODOT_is_overwrite_warning_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__recent_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_recent_selected") = _GODOT__recent_selected;
	/**
	
	*/
	void _recentSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_recent_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__go_back;
	package(godot) alias _GODOT_methodBindInfo(string name : "_go_back") = _GODOT__go_back;
	/**
	
	*/
	void _goBack()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_go_back");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__go_forward;
	package(godot) alias _GODOT_methodBindInfo(string name : "_go_forward") = _GODOT__go_forward;
	/**
	
	*/
	void _goForward()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_go_forward");
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
	package(godot) static GodotMethod!(void, bool) _GODOT__favorite_toggled;
	package(godot) alias _GODOT_methodBindInfo(string name : "_favorite_toggled") = _GODOT__favorite_toggled;
	/**
	
	*/
	void _favoriteToggled(in bool arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_favorite_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__favorite_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_favorite_selected") = _GODOT__favorite_selected;
	/**
	
	*/
	void _favoriteSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_favorite_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__favorite_move_up;
	package(godot) alias _GODOT_methodBindInfo(string name : "_favorite_move_up") = _GODOT__favorite_move_up;
	/**
	
	*/
	void _favoriteMoveUp()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_favorite_move_up");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__favorite_move_down;
	package(godot) alias _GODOT_methodBindInfo(string name : "_favorite_move_down") = _GODOT__favorite_move_down;
	/**
	
	*/
	void _favoriteMoveDown()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_favorite_move_down");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_invalidate;
	package(godot) alias _GODOT_methodBindInfo(string name : "invalidate") = _GODOT_invalidate;
	/**
	Notify the `EditorFileDialog` that its view of the data is no longer accurate. Updates the view contents on next view update.
	*/
	void invalidate()
	{
		_GODOT_invalidate.bind("EditorFileDialog", "invalidate");
		ptrcall!(void)(_GODOT_invalidate, _godot_object);
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
	The view format in which the `EditorFileDialog` displays resources to the user.
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
	The purpose of the `EditorFileDialog`. Changes allowed behaviors.
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
	If `true` hidden files and directories will be visible in the `EditorFileDialog`.
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
	If `true` the `EditorFileDialog` will not warn the user before overwriting files.
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
