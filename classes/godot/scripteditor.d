/**
Godot editor's script editor.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scripteditor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.panelcontainer;
import godot.container;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.reference;
import godot.resource;
import godot.script;
import godot.inputevent;
/**
Godot editor's script editor.

$(B Note:) This class shouldn't be instantiated directly. Instead, access the singleton using $(D EditorInterface.getScriptEditor).
*/
@GodotBaseClass struct ScriptEditor
{
	package(godot) enum string _GODOT_internal_name = "ScriptEditor";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PanelContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_add_callback") GodotMethod!(void, GodotObject, String, PoolStringArray) _addCallback;
		@GodotName("_autosave_scripts") GodotMethod!(void) _autosaveScripts;
		@GodotName("_breaked") GodotMethod!(void, bool, bool) _breaked;
		@GodotName("_clear_execution") GodotMethod!(void, Reference) _clearExecution;
		@GodotName("_close_all_tabs") GodotMethod!(void) _closeAllTabs;
		@GodotName("_close_current_tab") GodotMethod!(void) _closeCurrentTab;
		@GodotName("_close_discard_current_tab") GodotMethod!(void, String) _closeDiscardCurrentTab;
		@GodotName("_close_docs_tab") GodotMethod!(void) _closeDocsTab;
		@GodotName("_close_other_tabs") GodotMethod!(void) _closeOtherTabs;
		@GodotName("_copy_script_path") GodotMethod!(void) _copyScriptPath;
		@GodotName("_editor_pause") GodotMethod!(void) _editorPause;
		@GodotName("_editor_play") GodotMethod!(void) _editorPlay;
		@GodotName("_editor_settings_changed") GodotMethod!(void) _editorSettingsChanged;
		@GodotName("_editor_stop") GodotMethod!(void) _editorStop;
		@GodotName("_file_dialog_action") GodotMethod!(void, String) _fileDialogAction;
		@GodotName("_filter_methods_text_changed") GodotMethod!(void, String) _filterMethodsTextChanged;
		@GodotName("_filter_scripts_text_changed") GodotMethod!(void, String) _filterScriptsTextChanged;
		@GodotName("_get_debug_tooltip") GodotMethod!(String, String, Node) _getDebugTooltip;
		@GodotName("_goto_script_line") GodotMethod!(void, Reference, long) _gotoScriptLine;
		@GodotName("_goto_script_line2") GodotMethod!(void, long) _gotoScriptLine2;
		@GodotName("_help_class_goto") GodotMethod!(void, String) _helpClassGoto;
		@GodotName("_help_class_open") GodotMethod!(void, String) _helpClassOpen;
		@GodotName("_help_overview_selected") GodotMethod!(void, long) _helpOverviewSelected;
		@GodotName("_help_search") GodotMethod!(void, String) _helpSearch;
		@GodotName("_history_back") GodotMethod!(void) _historyBack;
		@GodotName("_history_forward") GodotMethod!(void) _historyForward;
		@GodotName("_live_auto_reload_running_scripts") GodotMethod!(void) _liveAutoReloadRunningScripts;
		@GodotName("_members_overview_selected") GodotMethod!(void, long) _membersOverviewSelected;
		@GodotName("_menu_option") GodotMethod!(void, long) _menuOption;
		@GodotName("_on_find_in_files_modified_files") GodotMethod!(void, PoolStringArray) _onFindInFilesModifiedFiles;
		@GodotName("_on_find_in_files_requested") GodotMethod!(void, String) _onFindInFilesRequested;
		@GodotName("_on_find_in_files_result_selected") GodotMethod!(void, String, long, long, long) _onFindInFilesResultSelected;
		@GodotName("_open_recent_script") GodotMethod!(void, long) _openRecentScript;
		@GodotName("_reload_scripts") GodotMethod!(void) _reloadScripts;
		@GodotName("_request_help") GodotMethod!(void, String) _requestHelp;
		@GodotName("_res_saved_callback") GodotMethod!(void, Resource) _resSavedCallback;
		@GodotName("_resave_scripts") GodotMethod!(void, String) _resaveScripts;
		@GodotName("_save_history") GodotMethod!(void) _saveHistory;
		@GodotName("_script_changed") GodotMethod!(void) _scriptChanged;
		@GodotName("_script_created") GodotMethod!(void, Script) _scriptCreated;
		@GodotName("_script_list_gui_input") GodotMethod!(void, InputEvent) _scriptListGuiInput;
		@GodotName("_script_selected") GodotMethod!(void, long) _scriptSelected;
		@GodotName("_script_split_dragged") GodotMethod!(void, double) _scriptSplitDragged;
		@GodotName("_set_execution") GodotMethod!(void, Reference, long) _setExecution;
		@GodotName("_show_debugger") GodotMethod!(void, bool) _showDebugger;
		@GodotName("_start_find_in_files") GodotMethod!(void, bool) _startFindInFiles;
		@GodotName("_tab_changed") GodotMethod!(void, long) _tabChanged;
		@GodotName("_theme_option") GodotMethod!(void, long) _themeOption;
		@GodotName("_toggle_members_overview_alpha_sort") GodotMethod!(void, bool) _toggleMembersOverviewAlphaSort;
		@GodotName("_tree_changed") GodotMethod!(void) _treeChanged;
		@GodotName("_unhandled_input") GodotMethod!(void, InputEvent) _unhandledInput;
		@GodotName("_update_autosave_timer") GodotMethod!(void) _updateAutosaveTimer;
		@GodotName("_update_members_overview") GodotMethod!(void) _updateMembersOverview;
		@GodotName("_update_recent_scripts") GodotMethod!(void) _updateRecentScripts;
		@GodotName("_update_script_connections") GodotMethod!(void) _updateScriptConnections;
		@GodotName("_update_script_names") GodotMethod!(void) _updateScriptNames;
		@GodotName("can_drop_data_fw") GodotMethod!(bool, Vector2, Variant, Control) canDropDataFw;
		@GodotName("drop_data_fw") GodotMethod!(void, Vector2, Variant, Control) dropDataFw;
		@GodotName("get_current_script") GodotMethod!(Script) getCurrentScript;
		@GodotName("get_drag_data_fw") GodotMethod!(Variant, Vector2, Control) getDragDataFw;
		@GodotName("get_open_scripts") GodotMethod!(Array) getOpenScripts;
		@GodotName("goto_line") GodotMethod!(void, long) gotoLine;
		@GodotName("open_script_create_dialog") GodotMethod!(void, String, String) openScriptCreateDialog;
	}
	/// 
	pragma(inline, true) bool opEquals(in ScriptEditor other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) ScriptEditor opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ScriptEditor.
	/// Note: use `memnew!ScriptEditor` instead.
	static ScriptEditor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ScriptEditor");
		if(constructor is null) return typeof(this).init;
		return cast(ScriptEditor)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _addCallback(GodotObject arg0, in String arg1, in PoolStringArray arg2)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		String _GODOT_method_name = String("_add_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _autosaveScripts()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_autosave_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _breaked(in bool arg0, in bool arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_breaked");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _clearExecution(Reference arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_clear_execution");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _closeAllTabs()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_close_all_tabs");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _closeCurrentTab()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_close_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _closeDiscardCurrentTab(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_close_discard_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _closeDocsTab()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_close_docs_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _closeOtherTabs()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_close_other_tabs");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _copyScriptPath()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_copy_script_path");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editorPause()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_editor_pause");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editorPlay()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_editor_play");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editorSettingsChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_editor_settings_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editorStop()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_editor_stop");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileDialogAction(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_dialog_action");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _filterMethodsTextChanged(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_filter_methods_text_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _filterScriptsTextChanged(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_filter_scripts_text_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	String _getDebugTooltip(in String arg0, Node arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_get_debug_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	void _gotoScriptLine(Reference arg0, in long arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_goto_script_line");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _gotoScriptLine2(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_goto_script_line2");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _helpClassGoto(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_class_goto");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _helpClassOpen(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_class_open");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _helpOverviewSelected(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_overview_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _helpSearch(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_search");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _historyBack()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_history_back");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _historyForward()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_history_forward");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _liveAutoReloadRunningScripts()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_live_auto_reload_running_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _membersOverviewSelected(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_members_overview_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _menuOption(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_menu_option");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _onFindInFilesModifiedFiles(in PoolStringArray arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_on_find_in_files_modified_files");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _onFindInFilesRequested(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_on_find_in_files_requested");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _onFindInFilesResultSelected(in String arg0, in long arg1, in long arg2, in long arg3)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_on_find_in_files_result_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _openRecentScript(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_open_recent_script");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _reloadScripts()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_reload_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _requestHelp(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_request_help");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _resSavedCallback(Resource arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_res_saved_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _resaveScripts(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_resave_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _saveHistory()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_save_history");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scriptChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_script_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scriptCreated(Script arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_created");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scriptListGuiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_list_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scriptSelected(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scriptSplitDragged(in double arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_split_dragged");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setExecution(Reference arg0, in long arg1)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_set_execution");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _showDebugger(in bool arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_show_debugger");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _startFindInFiles(in bool arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_start_find_in_files");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _tabChanged(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_tab_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _themeOption(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_theme_option");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _toggleMembersOverviewAlphaSort(in bool arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_toggle_members_overview_alpha_sort");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_tree_changed");
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
	void _updateAutosaveTimer()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_autosave_timer");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateMembersOverview()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_members_overview");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateRecentScripts()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_recent_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateScriptConnections()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_script_connections");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateScriptNames()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_script_names");
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
	Returns a $(D Script) that is currently active in editor.
	*/
	Ref!Script getCurrentScript()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Script)(GDNativeClassBinding.getCurrentScript, _godot_object);
	}
	/**
	
	*/
	Variant getDragDataFw(in Vector2 point, Control from)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getDragDataFw, _godot_object, point, from);
	}
	/**
	Returns an array with all $(D Script) objects which are currently open in editor.
	*/
	Array getOpenScripts() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getOpenScripts, _godot_object);
	}
	/**
	Goes to the specified line in the current script.
	*/
	void gotoLine(in long line_number)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.gotoLine, _godot_object, line_number);
	}
	/**
	
	*/
	void openScriptCreateDialog(in String base_name, in String base_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.openScriptCreateDialog, _godot_object, base_name, base_path);
	}
}
