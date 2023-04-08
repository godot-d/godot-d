/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.node;
import godot.toolbutton;
import godot.control;
import godot.script;
import godot.texture;
import godot.editorexportplugin;
import godot.editorimportplugin;
import godot.editorinspectorplugin;
import godot.editorsceneimporter;
import godot.editorspatialgizmoplugin;
import godot.inputevent;
import godot.camera;
import godot.editorinterface;
import godot.scriptcreatedialog;
import godot.undoredo;
import godot.configfile;
/**

*/
@GodotBaseClass struct EditorPlugin
{
	package(godot) enum string _GODOT_internal_name = "EditorPlugin";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_autoload_singleton") GodotMethod!(void, String, String) addAutoloadSingleton;
		@GodotName("add_control_to_bottom_panel") GodotMethod!(ToolButton, Control, String) addControlToBottomPanel;
		@GodotName("add_control_to_container") GodotMethod!(void, long, Control) addControlToContainer;
		@GodotName("add_control_to_dock") GodotMethod!(void, long, Control) addControlToDock;
		@GodotName("add_custom_type") GodotMethod!(void, String, String, Script, Texture) addCustomType;
		@GodotName("add_export_plugin") GodotMethod!(void, EditorExportPlugin) addExportPlugin;
		@GodotName("add_import_plugin") GodotMethod!(void, EditorImportPlugin) addImportPlugin;
		@GodotName("add_inspector_plugin") GodotMethod!(void, EditorInspectorPlugin) addInspectorPlugin;
		@GodotName("add_scene_import_plugin") GodotMethod!(void, EditorSceneImporter) addSceneImportPlugin;
		@GodotName("add_spatial_gizmo_plugin") GodotMethod!(void, EditorSpatialGizmoPlugin) addSpatialGizmoPlugin;
		@GodotName("add_tool_menu_item") GodotMethod!(void, String, GodotObject, String, Variant) addToolMenuItem;
		@GodotName("add_tool_submenu_item") GodotMethod!(void, String, GodotObject) addToolSubmenuItem;
		@GodotName("apply_changes") GodotMethod!(void) applyChanges;
		@GodotName("build") GodotMethod!(bool) build;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("disable_plugin") GodotMethod!(void) disablePlugin;
		@GodotName("edit") GodotMethod!(void, GodotObject) edit;
		@GodotName("enable_plugin") GodotMethod!(void) enablePlugin;
		@GodotName("forward_canvas_draw_over_viewport") GodotMethod!(void, Control) forwardCanvasDrawOverViewport;
		@GodotName("forward_canvas_force_draw_over_viewport") GodotMethod!(void, Control) forwardCanvasForceDrawOverViewport;
		@GodotName("forward_canvas_gui_input") GodotMethod!(bool, InputEvent) forwardCanvasGuiInput;
		@GodotName("forward_spatial_draw_over_viewport") GodotMethod!(void, Control) forwardSpatialDrawOverViewport;
		@GodotName("forward_spatial_force_draw_over_viewport") GodotMethod!(void, Control) forwardSpatialForceDrawOverViewport;
		@GodotName("forward_spatial_gui_input") GodotMethod!(bool, Camera, InputEvent) forwardSpatialGuiInput;
		@GodotName("get_breakpoints") GodotMethod!(PoolStringArray) getBreakpoints;
		@GodotName("get_editor_interface") GodotMethod!(EditorInterface) getEditorInterface;
		@GodotName("get_plugin_icon") GodotMethod!(Texture) getPluginIcon;
		@GodotName("get_plugin_name") GodotMethod!(String) getPluginName;
		@GodotName("get_script_create_dialog") GodotMethod!(ScriptCreateDialog) getScriptCreateDialog;
		@GodotName("get_state") GodotMethod!(Dictionary) getState;
		@GodotName("get_undo_redo") GodotMethod!(UndoRedo) getUndoRedo;
		@GodotName("get_window_layout") GodotMethod!(void, ConfigFile) getWindowLayout;
		@GodotName("handles") GodotMethod!(bool, GodotObject) handles;
		@GodotName("has_main_screen") GodotMethod!(bool) hasMainScreen;
		@GodotName("hide_bottom_panel") GodotMethod!(void) hideBottomPanel;
		@GodotName("make_bottom_panel_item_visible") GodotMethod!(void, Control) makeBottomPanelItemVisible;
		@GodotName("make_visible") GodotMethod!(void, bool) makeVisible;
		@GodotName("queue_save_layout") GodotMethod!(void) queueSaveLayout;
		@GodotName("remove_autoload_singleton") GodotMethod!(void, String) removeAutoloadSingleton;
		@GodotName("remove_control_from_bottom_panel") GodotMethod!(void, Control) removeControlFromBottomPanel;
		@GodotName("remove_control_from_container") GodotMethod!(void, long, Control) removeControlFromContainer;
		@GodotName("remove_control_from_docks") GodotMethod!(void, Control) removeControlFromDocks;
		@GodotName("remove_custom_type") GodotMethod!(void, String) removeCustomType;
		@GodotName("remove_export_plugin") GodotMethod!(void, EditorExportPlugin) removeExportPlugin;
		@GodotName("remove_import_plugin") GodotMethod!(void, EditorImportPlugin) removeImportPlugin;
		@GodotName("remove_inspector_plugin") GodotMethod!(void, EditorInspectorPlugin) removeInspectorPlugin;
		@GodotName("remove_scene_import_plugin") GodotMethod!(void, EditorSceneImporter) removeSceneImportPlugin;
		@GodotName("remove_spatial_gizmo_plugin") GodotMethod!(void, EditorSpatialGizmoPlugin) removeSpatialGizmoPlugin;
		@GodotName("remove_tool_menu_item") GodotMethod!(void, String) removeToolMenuItem;
		@GodotName("save_external_data") GodotMethod!(void) saveExternalData;
		@GodotName("set_force_draw_over_forwarding_enabled") GodotMethod!(void) setForceDrawOverForwardingEnabled;
		@GodotName("set_input_event_forwarding_always_enabled") GodotMethod!(void) setInputEventForwardingAlwaysEnabled;
		@GodotName("set_state") GodotMethod!(void, Dictionary) setState;
		@GodotName("set_window_layout") GodotMethod!(void, ConfigFile) setWindowLayout;
		@GodotName("update_overlays") GodotMethod!(long) updateOverlays;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorPlugin other) const
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
	/// Construct a new instance of EditorPlugin.
	/// Note: use `memnew!EditorPlugin` instead.
	static EditorPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorPlugin)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum DockSlot : int
	{
		/** */
		dockSlotLeftUl = 0,
		/** */
		dockSlotLeftBl = 1,
		/** */
		dockSlotLeftUr = 2,
		/** */
		dockSlotLeftBr = 3,
		/** */
		dockSlotRightUl = 4,
		/** */
		dockSlotRightBl = 5,
		/** */
		dockSlotRightUr = 6,
		/** */
		dockSlotRightBr = 7,
		/** */
		dockSlotMax = 8,
	}
	/// 
	enum CustomControlContainer : int
	{
		/** */
		containerToolbar = 0,
		/** */
		containerSpatialEditorMenu = 1,
		/** */
		containerSpatialEditorSideLeft = 2,
		/** */
		containerSpatialEditorSideRight = 3,
		/** */
		containerSpatialEditorBottom = 4,
		/** */
		containerCanvasEditorMenu = 5,
		/** */
		containerCanvasEditorSideLeft = 6,
		/** */
		containerCanvasEditorSideRight = 7,
		/** */
		containerCanvasEditorBottom = 8,
		/** */
		containerPropertyEditorBottom = 9,
		/** */
		containerProjectSettingTabLeft = 10,
		/** */
		containerProjectSettingTabRight = 11,
	}
	/// 
	enum Constants : int
	{
		containerToolbar = 0,
		dockSlotLeftUl = 0,
		containerSpatialEditorMenu = 1,
		dockSlotLeftBl = 1,
		containerSpatialEditorSideLeft = 2,
		dockSlotLeftUr = 2,
		containerSpatialEditorSideRight = 3,
		dockSlotLeftBr = 3,
		containerSpatialEditorBottom = 4,
		dockSlotRightUl = 4,
		containerCanvasEditorMenu = 5,
		dockSlotRightBl = 5,
		containerCanvasEditorSideLeft = 6,
		dockSlotRightUr = 6,
		containerCanvasEditorSideRight = 7,
		dockSlotRightBr = 7,
		containerCanvasEditorBottom = 8,
		dockSlotMax = 8,
		containerPropertyEditorBottom = 9,
		containerProjectSettingTabLeft = 10,
		containerProjectSettingTabRight = 11,
	}
	/**
	
	*/
	void addAutoloadSingleton(in String name, in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addAutoloadSingleton, _godot_object, name, path);
	}
	/**
	
	*/
	ToolButton addControlToBottomPanel(Control control, in String title)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ToolButton)(GDNativeClassBinding.addControlToBottomPanel, _godot_object, control, title);
	}
	/**
	
	*/
	void addControlToContainer(in long container, Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addControlToContainer, _godot_object, container, control);
	}
	/**
	
	*/
	void addControlToDock(in long slot, Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addControlToDock, _godot_object, slot, control);
	}
	/**
	
	*/
	void addCustomType(in String type, in String base, Script script, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCustomType, _godot_object, type, base, script, icon);
	}
	/**
	
	*/
	void addExportPlugin(EditorExportPlugin plugin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addExportPlugin, _godot_object, plugin);
	}
	/**
	
	*/
	void addImportPlugin(EditorImportPlugin importer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addImportPlugin, _godot_object, importer);
	}
	/**
	
	*/
	void addInspectorPlugin(EditorInspectorPlugin plugin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addInspectorPlugin, _godot_object, plugin);
	}
	/**
	
	*/
	void addSceneImportPlugin(EditorSceneImporter scene_importer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSceneImportPlugin, _godot_object, scene_importer);
	}
	/**
	
	*/
	void addSpatialGizmoPlugin(EditorSpatialGizmoPlugin plugin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSpatialGizmoPlugin, _godot_object, plugin);
	}
	/**
	
	*/
	void addToolMenuItem(VariantArg3)(in String name, GodotObject handler, in String callback, in VariantArg3 ud = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addToolMenuItem, _godot_object, name, handler, callback, ud);
	}
	/**
	
	*/
	void addToolSubmenuItem(in String name, GodotObject submenu)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addToolSubmenuItem, _godot_object, name, submenu);
	}
	/**
	
	*/
	void applyChanges()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("apply_changes");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool build()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("build");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void clear()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("clear");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void disablePlugin()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("disable_plugin");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void edit(GodotObject object)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(object);
		String _GODOT_method_name = String("edit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void enablePlugin()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("enable_plugin");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void forwardCanvasDrawOverViewport(Control overlay)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(overlay);
		String _GODOT_method_name = String("forward_canvas_draw_over_viewport");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void forwardCanvasForceDrawOverViewport(Control overlay)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(overlay);
		String _GODOT_method_name = String("forward_canvas_force_draw_over_viewport");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool forwardCanvasGuiInput(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("forward_canvas_gui_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void forwardSpatialDrawOverViewport(Control overlay)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(overlay);
		String _GODOT_method_name = String("forward_spatial_draw_over_viewport");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void forwardSpatialForceDrawOverViewport(Control overlay)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(overlay);
		String _GODOT_method_name = String("forward_spatial_force_draw_over_viewport");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool forwardSpatialGuiInput(Camera camera, InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(camera);
		_GODOT_args.append(event);
		String _GODOT_method_name = String("forward_spatial_gui_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	PoolStringArray getBreakpoints()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_breakpoints");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolStringArray);
	}
	/**
	
	*/
	EditorInterface getEditorInterface()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorInterface)(GDNativeClassBinding.getEditorInterface, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getPluginIcon()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_plugin_icon");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Texture);
	}
	/**
	
	*/
	String getPluginName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_plugin_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	ScriptCreateDialog getScriptCreateDialog()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ScriptCreateDialog)(GDNativeClassBinding.getScriptCreateDialog, _godot_object);
	}
	/**
	
	*/
	Dictionary getState()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_state");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	UndoRedo getUndoRedo()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(UndoRedo)(GDNativeClassBinding.getUndoRedo, _godot_object);
	}
	/**
	
	*/
	void getWindowLayout(ConfigFile layout)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("get_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool handles(GodotObject object)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(object);
		String _GODOT_method_name = String("handles");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool hasMainScreen()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("has_main_screen");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void hideBottomPanel()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.hideBottomPanel, _godot_object);
	}
	/**
	
	*/
	void makeBottomPanelItemVisible(Control item)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeBottomPanelItemVisible, _godot_object, item);
	}
	/**
	
	*/
	void makeVisible(in bool visible)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(visible);
		String _GODOT_method_name = String("make_visible");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void queueSaveLayout() const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queueSaveLayout, _godot_object);
	}
	/**
	
	*/
	void removeAutoloadSingleton(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeAutoloadSingleton, _godot_object, name);
	}
	/**
	
	*/
	void removeControlFromBottomPanel(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeControlFromBottomPanel, _godot_object, control);
	}
	/**
	
	*/
	void removeControlFromContainer(in long container, Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeControlFromContainer, _godot_object, container, control);
	}
	/**
	
	*/
	void removeControlFromDocks(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeControlFromDocks, _godot_object, control);
	}
	/**
	
	*/
	void removeCustomType(in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeCustomType, _godot_object, type);
	}
	/**
	
	*/
	void removeExportPlugin(EditorExportPlugin plugin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeExportPlugin, _godot_object, plugin);
	}
	/**
	
	*/
	void removeImportPlugin(EditorImportPlugin importer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeImportPlugin, _godot_object, importer);
	}
	/**
	
	*/
	void removeInspectorPlugin(EditorInspectorPlugin plugin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeInspectorPlugin, _godot_object, plugin);
	}
	/**
	
	*/
	void removeSceneImportPlugin(EditorSceneImporter scene_importer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeSceneImportPlugin, _godot_object, scene_importer);
	}
	/**
	
	*/
	void removeSpatialGizmoPlugin(EditorSpatialGizmoPlugin plugin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeSpatialGizmoPlugin, _godot_object, plugin);
	}
	/**
	
	*/
	void removeToolMenuItem(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeToolMenuItem, _godot_object, name);
	}
	/**
	
	*/
	void saveExternalData()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("save_external_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setForceDrawOverForwardingEnabled()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setForceDrawOverForwardingEnabled, _godot_object);
	}
	/**
	
	*/
	void setInputEventForwardingAlwaysEnabled()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputEventForwardingAlwaysEnabled, _godot_object);
	}
	/**
	
	*/
	void setState(in Dictionary state)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(state);
		String _GODOT_method_name = String("set_state");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setWindowLayout(ConfigFile layout)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("set_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long updateOverlays() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.updateOverlays, _godot_object);
	}
}
