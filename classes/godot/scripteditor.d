/**


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
import godot.resource;
import godot.reference;
import godot.script;
import godot.inputevent;
/**

*/
@GodotBaseClass struct ScriptEditor
{
	static immutable string _GODOT_internal_name = "ScriptEditor";
public:
@nogc nothrow:
	union { godot_object _godot_object; PanelContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ScriptEditor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ScriptEditor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ScriptEditor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ScriptEditor");
		if(constructor is null) return typeof(this).init;
		return cast(ScriptEditor)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, String) _GODOT__file_dialog_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "_file_dialog_action") = _GODOT__file_dialog_action;
	/**
	
	*/
	void _fileDialogAction(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_dialog_action");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__tab_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_tab_changed") = _GODOT__tab_changed;
	/**
	
	*/
	void _tabChanged(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_tab_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__menu_option;
	package(godot) alias _GODOT_methodBindInfo(string name : "_menu_option") = _GODOT__menu_option;
	/**
	
	*/
	void _menuOption(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_menu_option");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__close_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "_close_current_tab") = _GODOT__close_current_tab;
	/**
	
	*/
	void _closeCurrentTab()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__close_discard_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "_close_discard_current_tab") = _GODOT__close_discard_current_tab;
	/**
	
	*/
	void _closeDiscardCurrentTab(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_close_discard_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__close_docs_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "_close_docs_tab") = _GODOT__close_docs_tab;
	/**
	
	*/
	void _closeDocsTab()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_docs_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__close_all_tabs;
	package(godot) alias _GODOT_methodBindInfo(string name : "_close_all_tabs") = _GODOT__close_all_tabs;
	/**
	
	*/
	void _closeAllTabs()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_all_tabs");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__close_other_tabs;
	package(godot) alias _GODOT_methodBindInfo(string name : "_close_other_tabs") = _GODOT__close_other_tabs;
	/**
	
	*/
	void _closeOtherTabs()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_close_other_tabs");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__open_recent_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "_open_recent_script") = _GODOT__open_recent_script;
	/**
	
	*/
	void _openRecentScript(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_open_recent_script");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__editor_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "_editor_play") = _GODOT__editor_play;
	/**
	
	*/
	void _editorPlay()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_play");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__editor_pause;
	package(godot) alias _GODOT_methodBindInfo(string name : "_editor_pause") = _GODOT__editor_pause;
	/**
	
	*/
	void _editorPause()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_pause");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__editor_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "_editor_stop") = _GODOT__editor_stop;
	/**
	
	*/
	void _editorStop()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_stop");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject, String, PoolStringArray) _GODOT__add_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_add_callback") = _GODOT__add_callback;
	/**
	
	*/
	void _addCallback(StringArg1)(GodotObject arg0, in StringArg1 arg1, in PoolStringArray arg2)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		String _GODOT_method_name = String("_add_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__reload_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "_reload_scripts") = _GODOT__reload_scripts;
	/**
	
	*/
	void _reloadScripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_reload_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__resave_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "_resave_scripts") = _GODOT__resave_scripts;
	/**
	
	*/
	void _resaveScripts(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_resave_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT__res_saved_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_res_saved_callback") = _GODOT__res_saved_callback;
	/**
	
	*/
	void _resSavedCallback(Resource arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_res_saved_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Reference, long) _GODOT__goto_script_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "_goto_script_line") = _GODOT__goto_script_line;
	/**
	
	*/
	void _gotoScriptLine(Reference arg0, in long arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_goto_script_line");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__goto_script_line2;
	package(godot) alias _GODOT_methodBindInfo(string name : "_goto_script_line2") = _GODOT__goto_script_line2;
	/**
	
	*/
	void _gotoScriptLine2(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_goto_script_line2");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__help_search;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_search") = _GODOT__help_search;
	/**
	
	*/
	void _helpSearch(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_search");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__help_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_index") = _GODOT__help_index;
	/**
	
	*/
	void _helpIndex(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_index");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__save_history;
	package(godot) alias _GODOT_methodBindInfo(string name : "_save_history") = _GODOT__save_history;
	/**
	
	*/
	void _saveHistory()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_save_history");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__copy_script_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "_copy_script_path") = _GODOT__copy_script_path;
	/**
	
	*/
	void _copyScriptPath()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_copy_script_path");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool, bool) _GODOT__breaked;
	package(godot) alias _GODOT_methodBindInfo(string name : "_breaked") = _GODOT__breaked;
	/**
	
	*/
	void _breaked(in bool arg0, in bool arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_breaked");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__show_debugger;
	package(godot) alias _GODOT_methodBindInfo(string name : "_show_debugger") = _GODOT__show_debugger;
	/**
	
	*/
	void _showDebugger(in bool arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_show_debugger");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(String, String, GodotObject) _GODOT__get_debug_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_debug_tooltip") = _GODOT__get_debug_tooltip;
	/**
	
	*/
	String _getDebugTooltip(StringArg0)(in StringArg0 arg0, GodotObject arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_get_debug_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(void) _GODOT__autosave_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "_autosave_scripts") = _GODOT__autosave_scripts;
	/**
	
	*/
	void _autosaveScripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_autosave_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__editor_settings_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_editor_settings_changed") = _GODOT__editor_settings_changed;
	/**
	
	*/
	void _editorSettingsChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_settings_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_script_names;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_script_names") = _GODOT__update_script_names;
	/**
	
	*/
	void _updateScriptNames()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_script_names");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__tree_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_tree_changed") = _GODOT__tree_changed;
	/**
	
	*/
	void _treeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__members_overview_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_members_overview_selected") = _GODOT__members_overview_selected;
	/**
	
	*/
	void _membersOverviewSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_members_overview_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__help_overview_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_overview_selected") = _GODOT__help_overview_selected;
	/**
	
	*/
	void _helpOverviewSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_overview_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__script_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_selected") = _GODOT__script_selected;
	/**
	
	*/
	void _scriptSelected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Script) _GODOT__script_created;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_created") = _GODOT__script_created;
	/**
	
	*/
	void _scriptCreated(Script arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_created");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__script_split_dragged;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_split_dragged") = _GODOT__script_split_dragged;
	/**
	
	*/
	void _scriptSplitDragged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_split_dragged");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__help_class_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_class_open") = _GODOT__help_class_open;
	/**
	
	*/
	void _helpClassOpen(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_class_open");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__help_class_goto;
	package(godot) alias _GODOT_methodBindInfo(string name : "_help_class_goto") = _GODOT__help_class_goto;
	/**
	
	*/
	void _helpClassGoto(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_help_class_goto");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__request_help;
	package(godot) alias _GODOT_methodBindInfo(string name : "_request_help") = _GODOT__request_help;
	/**
	
	*/
	void _requestHelp(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_request_help");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__history_forward;
	package(godot) alias _GODOT_methodBindInfo(string name : "_history_forward") = _GODOT__history_forward;
	/**
	
	*/
	void _historyForward()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_history_forward");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__history_back;
	package(godot) alias _GODOT_methodBindInfo(string name : "_history_back") = _GODOT__history_back;
	/**
	
	*/
	void _historyBack()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_history_back");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__live_auto_reload_running_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "_live_auto_reload_running_scripts") = _GODOT__live_auto_reload_running_scripts;
	/**
	
	*/
	void _liveAutoReloadRunningScripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_live_auto_reload_running_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__script_list_gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_list_gui_input") = _GODOT__script_list_gui_input;
	/**
	
	*/
	void _scriptListGuiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_script_list_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__script_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_changed") = _GODOT__script_changed;
	/**
	
	*/
	void _scriptChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_script_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_recent_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_recent_scripts") = _GODOT__update_recent_scripts;
	/**
	
	*/
	void _updateRecentScripts()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_recent_scripts");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, Vector2, GodotObject) _GODOT_get_drag_data_fw;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drag_data_fw") = _GODOT_get_drag_data_fw;
	/**
	
	*/
	Variant getDragDataFw(in Vector2 point, GodotObject from)
	{
		_GODOT_get_drag_data_fw.bind("ScriptEditor", "get_drag_data_fw");
		return ptrcall!(Variant)(_GODOT_get_drag_data_fw, _godot_object, point, from);
	}
	package(godot) static GodotMethod!(bool, Vector2, Variant, GodotObject) _GODOT_can_drop_data_fw;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_drop_data_fw") = _GODOT_can_drop_data_fw;
	/**
	
	*/
	bool canDropDataFw(VariantArg1)(in Vector2 point, in VariantArg1 data, GodotObject from) const
	{
		_GODOT_can_drop_data_fw.bind("ScriptEditor", "can_drop_data_fw");
		return ptrcall!(bool)(_GODOT_can_drop_data_fw, _godot_object, point, data, from);
	}
	package(godot) static GodotMethod!(void, Vector2, Variant, GodotObject) _GODOT_drop_data_fw;
	package(godot) alias _GODOT_methodBindInfo(string name : "drop_data_fw") = _GODOT_drop_data_fw;
	/**
	
	*/
	void dropDataFw(VariantArg1)(in Vector2 point, in VariantArg1 data, GodotObject from)
	{
		_GODOT_drop_data_fw.bind("ScriptEditor", "drop_data_fw");
		ptrcall!(void)(_GODOT_drop_data_fw, _godot_object, point, data, from);
	}
	package(godot) static GodotMethod!(Script) _GODOT_get_current_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_script") = _GODOT_get_current_script;
	/**
	Returns a $(D Script) that is currently active in editor.
	*/
	Ref!Script getCurrentScript()
	{
		_GODOT_get_current_script.bind("ScriptEditor", "get_current_script");
		return ptrcall!(Script)(_GODOT_get_current_script, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_open_scripts;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_open_scripts") = _GODOT_get_open_scripts;
	/**
	Returns an array with all $(D Script) objects which are currently open in editor.
	*/
	Array getOpenScripts() const
	{
		_GODOT_get_open_scripts.bind("ScriptEditor", "get_open_scripts");
		return ptrcall!(Array)(_GODOT_get_open_scripts, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_open_script_create_dialog;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_script_create_dialog") = _GODOT_open_script_create_dialog;
	/**
	
	*/
	void openScriptCreateDialog(StringArg0, StringArg1)(in StringArg0 base_name, in StringArg1 base_path)
	{
		_GODOT_open_script_create_dialog.bind("ScriptEditor", "open_script_create_dialog");
		ptrcall!(void)(_GODOT_open_script_create_dialog, _godot_object, base_name, base_path);
	}
}
