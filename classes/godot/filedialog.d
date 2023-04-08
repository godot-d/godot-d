/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.filedialog;
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
import godot.confirmationdialog;
import godot.acceptdialog;
import godot.windowdialog;
import godot.inputevent;
import godot.lineedit;
import godot.vboxcontainer;
/**

*/
@GodotBaseClass struct FileDialog
{
	package(godot) enum string _GODOT_internal_name = "FileDialog";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ ConfirmationDialog _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_action_pressed") GodotMethod!(void) _actionPressed;
		@GodotName("_cancel_pressed") GodotMethod!(void) _cancelPressed;
		@GodotName("_dir_entered") GodotMethod!(void, String) _dirEntered;
		@GodotName("_file_entered") GodotMethod!(void, String) _fileEntered;
		@GodotName("_filter_selected") GodotMethod!(void, long) _filterSelected;
		@GodotName("_go_up") GodotMethod!(void) _goUp;
		@GodotName("_make_dir") GodotMethod!(void) _makeDir;
		@GodotName("_make_dir_confirm") GodotMethod!(void) _makeDirConfirm;
		@GodotName("_save_confirm_pressed") GodotMethod!(void) _saveConfirmPressed;
		@GodotName("_select_drive") GodotMethod!(void, long) _selectDrive;
		@GodotName("_tree_item_activated") GodotMethod!(void) _treeItemActivated;
		@GodotName("_tree_multi_selected") GodotMethod!(void, GodotObject, long, bool) _treeMultiSelected;
		@GodotName("_tree_selected") GodotMethod!(void) _treeSelected;
		@GodotName("_unhandled_input") GodotMethod!(void, InputEvent) _unhandledInput;
		@GodotName("_update_dir") GodotMethod!(void) _updateDir;
		@GodotName("_update_file_list") GodotMethod!(void) _updateFileList;
		@GodotName("_update_file_name") GodotMethod!(void) _updateFileName;
		@GodotName("add_filter") GodotMethod!(void, String) addFilter;
		@GodotName("clear_filters") GodotMethod!(void) clearFilters;
		@GodotName("deselect_items") GodotMethod!(void) deselectItems;
		@GodotName("get_access") GodotMethod!(FileDialog.Access) getAccess;
		@GodotName("get_current_dir") GodotMethod!(String) getCurrentDir;
		@GodotName("get_current_file") GodotMethod!(String) getCurrentFile;
		@GodotName("get_current_path") GodotMethod!(String) getCurrentPath;
		@GodotName("get_filters") GodotMethod!(PoolStringArray) getFilters;
		@GodotName("get_line_edit") GodotMethod!(LineEdit) getLineEdit;
		@GodotName("get_mode") GodotMethod!(FileDialog.Mode) getMode;
		@GodotName("get_vbox") GodotMethod!(VBoxContainer) getVbox;
		@GodotName("invalidate") GodotMethod!(void) invalidate;
		@GodotName("is_mode_overriding_title") GodotMethod!(bool) isModeOverridingTitle;
		@GodotName("is_showing_hidden_files") GodotMethod!(bool) isShowingHiddenFiles;
		@GodotName("set_access") GodotMethod!(void, long) setAccess;
		@GodotName("set_current_dir") GodotMethod!(void, String) setCurrentDir;
		@GodotName("set_current_file") GodotMethod!(void, String) setCurrentFile;
		@GodotName("set_current_path") GodotMethod!(void, String) setCurrentPath;
		@GodotName("set_filters") GodotMethod!(void, PoolStringArray) setFilters;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("set_mode_overrides_title") GodotMethod!(void, bool) setModeOverridesTitle;
		@GodotName("set_show_hidden_files") GodotMethod!(void, bool) setShowHiddenFiles;
	}
	/// 
	pragma(inline, true) bool opEquals(in FileDialog other) const
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
	/// Construct a new instance of FileDialog.
	/// Note: use `memnew!FileDialog` instead.
	static FileDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("FileDialog");
		if(constructor is null) return typeof(this).init;
		return cast(FileDialog)(constructor());
	}
	/// 
	enum Mode : int
	{
		/** */
		modeOpenFile = 0,
		/** */
		modeOpenFiles = 1,
		/** */
		modeOpenDir = 2,
		/** */
		modeOpenAny = 3,
		/** */
		modeSaveFile = 4,
	}
	/// 
	enum Access : int
	{
		/** */
		accessResources = 0,
		/** */
		accessUserdata = 1,
		/** */
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
	void _actionPressed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_action_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _cancelPressed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_cancel_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _dirEntered(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_dir_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileEntered(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _filterSelected(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_filter_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _goUp()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_go_up");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _makeDir()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_make_dir");
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
	void _saveConfirmPressed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_save_confirm_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _selectDrive(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_select_drive");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeItemActivated()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_tree_item_activated");
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
	void _treeSelected()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_tree_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _unhandledInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateDir()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_dir");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateFileList()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_file_list");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateFileName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_file_name");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addFilter(in String filter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addFilter, _godot_object, filter);
	}
	/**
	
	*/
	void clearFilters()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearFilters, _godot_object);
	}
	/**
	
	*/
	void deselectItems()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.deselectItems, _godot_object);
	}
	/**
	
	*/
	FileDialog.Access getAccess() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(FileDialog.Access)(GDNativeClassBinding.getAccess, _godot_object);
	}
	/**
	
	*/
	String getCurrentDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentDir, _godot_object);
	}
	/**
	
	*/
	String getCurrentFile() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentFile, _godot_object);
	}
	/**
	
	*/
	String getCurrentPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentPath, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getFilters() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getFilters, _godot_object);
	}
	/**
	
	*/
	LineEdit getLineEdit()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(LineEdit)(GDNativeClassBinding.getLineEdit, _godot_object);
	}
	/**
	
	*/
	FileDialog.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(FileDialog.Mode)(GDNativeClassBinding.getMode, _godot_object);
	}
	/**
	
	*/
	VBoxContainer getVbox()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VBoxContainer)(GDNativeClassBinding.getVbox, _godot_object);
	}
	/**
	
	*/
	void invalidate()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.invalidate, _godot_object);
	}
	/**
	
	*/
	bool isModeOverridingTitle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isModeOverridingTitle, _godot_object);
	}
	/**
	
	*/
	bool isShowingHiddenFiles() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isShowingHiddenFiles, _godot_object);
	}
	/**
	
	*/
	void setAccess(in long access)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAccess, _godot_object, access);
	}
	/**
	
	*/
	void setCurrentDir(in String dir)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentDir, _godot_object, dir);
	}
	/**
	
	*/
	void setCurrentFile(in String file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentFile, _godot_object, file);
	}
	/**
	
	*/
	void setCurrentPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentPath, _godot_object, path);
	}
	/**
	
	*/
	void setFilters(in PoolStringArray filters)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFilters, _godot_object, filters);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	void setModeOverridesTitle(in bool _override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setModeOverridesTitle, _godot_object, _override);
	}
	/**
	
	*/
	void setShowHiddenFiles(in bool show)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShowHiddenFiles, _godot_object, show);
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
	@property bool showHiddenFiles()
	{
		return isShowingHiddenFiles();
	}
	/// ditto
	@property void showHiddenFiles(bool v)
	{
		setShowHiddenFiles(v);
	}
}
