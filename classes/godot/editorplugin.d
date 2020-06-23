/**
Used by the editor to extend its functionality.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
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
Used by the editor to extend its functionality.

Plugins are used by the editor to extend functionality. The most common types of plugins are those which edit a given node or resource type, import plugins and export plugins. See also $(D EditorScript) to add functions to the editor.
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
		@GodotName("forward_spatial_gui_input") GodotMethod!(bool, Camera, InputEvent) forwardSpatialGuiInput;
		@GodotName("get_breakpoints") GodotMethod!(PoolStringArray) getBreakpoints;
		@GodotName("get_editor_interface") GodotMethod!(EditorInterface) getEditorInterface;
		@GodotName("get_plugin_icon") GodotMethod!(GodotObject) getPluginIcon;
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
	pragma(inline, true) EditorPlugin opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
		/**
		
		*/
		dockSlotLeftUl = 0,
		/**
		
		*/
		dockSlotLeftBl = 1,
		/**
		
		*/
		dockSlotLeftUr = 2,
		/**
		
		*/
		dockSlotLeftBr = 3,
		/**
		
		*/
		dockSlotRightUl = 4,
		/**
		
		*/
		dockSlotRightBl = 5,
		/**
		
		*/
		dockSlotRightUr = 6,
		/**
		
		*/
		dockSlotRightBr = 7,
		/**
		Represents the size of the $(D dockslot) enum.
		*/
		dockSlotMax = 8,
	}
	/// 
	enum CustomControlContainer : int
	{
		/**
		
		*/
		containerToolbar = 0,
		/**
		
		*/
		containerSpatialEditorMenu = 1,
		/**
		
		*/
		containerSpatialEditorSideLeft = 2,
		/**
		
		*/
		containerSpatialEditorSideRight = 3,
		/**
		
		*/
		containerSpatialEditorBottom = 4,
		/**
		
		*/
		containerCanvasEditorMenu = 5,
		/**
		
		*/
		containerCanvasEditorSideLeft = 6,
		/**
		
		*/
		containerCanvasEditorSideRight = 7,
		/**
		
		*/
		containerCanvasEditorBottom = 8,
		/**
		
		*/
		containerPropertyEditorBottom = 9,
		/**
		
		*/
		containerProjectSettingTabLeft = 10,
		/**
		
		*/
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
	Adds a script at `path` to the Autoload list as `name`.
	*/
	void addAutoloadSingleton(in String name, in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addAutoloadSingleton, _godot_object, name, path);
	}
	/**
	Adds a control to the bottom panel (together with Output, Debug, Animation, etc). Returns a reference to the button added. It's up to you to hide/show the button when needed. When your plugin is deactivated, make sure to remove your custom control with $(D removeControlFromBottomPanel) and free it with $(D Node.queueFree).
	*/
	ToolButton addControlToBottomPanel(Control control, in String title)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ToolButton)(GDNativeClassBinding.addControlToBottomPanel, _godot_object, control, title);
	}
	/**
	Adds a custom control to a container (see $(D customcontrolcontainer)). There are many locations where custom controls can be added in the editor UI.
	Please remember that you have to manage the visibility of your custom controls yourself (and likely hide it after adding it).
	When your plugin is deactivated, make sure to remove your custom control with $(D removeControlFromContainer) and free it with $(D Node.queueFree).
	*/
	void addControlToContainer(in long container, Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addControlToContainer, _godot_object, container, control);
	}
	/**
	Adds the control to a specific dock slot (see $(D dockslot) for options).
	If the dock is repositioned and as long as the plugin is active, the editor will save the dock position on further sessions.
	When your plugin is deactivated, make sure to remove your custom control with $(D removeControlFromDocks) and free it with $(D Node.queueFree).
	*/
	void addControlToDock(in long slot, Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addControlToDock, _godot_object, slot, control);
	}
	/**
	Adds a custom type, which will appear in the list of nodes or resources. An icon can be optionally passed.
	When given node or resource is selected, the base type will be instanced (ie, "Spatial", "Control", "Resource"), then the script will be loaded and set to this object.
	You can use the virtual method $(D handles) to check if your custom object is being edited by checking the script or using the `is` keyword.
	During run-time, this will be a simple object with a script so this function does not need to be called then.
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
	Adds a custom menu item to $(B Project &gt; Tools) as `name` that calls `callback` on an instance of `handler` with a parameter `ud` when user activates it.
	*/
	void addToolMenuItem(VariantArg3)(in String name, GodotObject handler, in String callback, in VariantArg3 ud = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addToolMenuItem, _godot_object, name, handler, callback, ud);
	}
	/**
	Adds a custom submenu under $(B Project &gt; Tools &gt;) `name`. `submenu` should be an object of class $(D PopupMenu). This submenu should be cleaned up using `remove_tool_menu_item(name)`.
	*/
	void addToolSubmenuItem(in String name, GodotObject submenu)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addToolSubmenuItem, _godot_object, name, submenu);
	}
	/**
	This method is called when the editor is about to save the project, switch to another tab, etc. It asks the plugin to apply any pending state changes to ensure consistency.
	This is used, for example, in shader editors to let the plugin know that it must apply the shader code being written by the user to the object.
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
	Clear all the state and reset the object being edited to zero. This ensures your plugin does not keep editing a currently existing node, or a node from the wrong scene.
	*/
	void clear()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("clear");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called by the engine when the user disables the $(D EditorPlugin) in the Plugin tab of the project settings window.
	*/
	void disablePlugin()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("disable_plugin");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	This function is used for plugins that edit specific object types (nodes or resources). It requests the editor to edit the given object.
	*/
	void edit(GodotObject object)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(object);
		String _GODOT_method_name = String("edit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called by the engine when the user enables the $(D EditorPlugin) in the Plugin tab of the project settings window.
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
	Called when there is a root node in the current edited scene, $(D handles) is implemented and an $(D InputEvent) happens in the 2D viewport. Intercepts the $(D InputEvent), if `return true` $(D EditorPlugin) consumes the `event`, otherwise forwards `event` to other Editor classes. Example:
	
	
	# Prevents the InputEvent to reach other Editor classes
	func forward_canvas_gui_input(event):
	    var forward = true
	    return forward
	
	
	Must `return false` in order to forward the $(D InputEvent) to other Editor classes. Example:
	
	
	# Consumes InputEventMouseMotion and forwards other InputEvent types
	func forward_canvas_gui_input(event):
	    var forward = false
	    if event is InputEventMouseMotion:
	        forward = true
	    return forward
	
	
	*/
	bool forwardCanvasGuiInput(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("forward_canvas_gui_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Called when there is a root node in the current edited scene, $(D handles) is implemented and an $(D InputEvent) happens in the 3D viewport. Intercepts the $(D InputEvent), if `return true` $(D EditorPlugin) consumes the `event`, otherwise forwards `event` to other Editor classes. Example:
	
	
	# Prevents the InputEvent to reach other Editor classes
	func forward_spatial_gui_input(camera, event):
	    var forward = true
	    return forward
	
	
	Must `return false` in order to forward the $(D InputEvent) to other Editor classes. Example:
	
	
	# Consumes InputEventMouseMotion and forwards other InputEvent types
	func forward_spatial_gui_input(camera, event):
	    var forward = false
	    if event is InputEventMouseMotion:
	        forward = true
	    return forward
	
	
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
	This is for editors that edit script-based objects. You can return a list of breakpoints in the format (`script:line`), for example: `res://path_to_script.gd:25`.
	*/
	PoolStringArray getBreakpoints()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_breakpoints");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolStringArray);
	}
	/**
	Returns the $(D EditorInterface) object that gives you control over Godot editor's window and its functionalities.
	*/
	EditorInterface getEditorInterface()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorInterface)(GDNativeClassBinding.getEditorInterface, _godot_object);
	}
	/**
	Override this method in your plugin to return a $(D Texture) in order to give it an icon.
	For main screen plugins, this appears at the top of the screen, to the right of the "2D", "3D", "Script", and "AssetLib" buttons.
	Ideally, the plugin icon should be white with a transparent background and 16x16 pixels in size.
	
	
	func get_plugin_icon():
	    # You can use a custom icon:
	    return preload("res://addons/my_plugin/my_plugin_icon.svg")
	    # Or use a built-in icon:
	    return get_editor_interface().get_base_control().get_icon("Node", "EditorIcons")
	
	
	*/
	GodotObject getPluginIcon()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_plugin_icon");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!GodotObject);
	}
	/**
	Override this method in your plugin to provide the name of the plugin when displayed in the Godot editor.
	For main screen plugins, this appears at the top of the screen, to the right of the "2D", "3D", "Script", and "AssetLib" buttons.
	*/
	String getPluginName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_plugin_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Gets the Editor's dialogue used for making scripts.
	$(B Note:) Users can configure it before use.
	*/
	ScriptCreateDialog getScriptCreateDialog()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ScriptCreateDialog)(GDNativeClassBinding.getScriptCreateDialog, _godot_object);
	}
	/**
	Gets the state of your plugin editor. This is used when saving the scene (so state is kept when opening it again) and for switching tabs (so state can be restored when the tab returns).
	*/
	Dictionary getState()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_state");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	Gets the undo/redo object. Most actions in the editor can be undoable, so use this object to make sure this happens when it's worth it.
	*/
	UndoRedo getUndoRedo()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(UndoRedo)(GDNativeClassBinding.getUndoRedo, _godot_object);
	}
	/**
	Gets the GUI layout of the plugin. This is used to save the project's editor layout when $(D queueSaveLayout) is called or the editor layout was changed(For example changing the position of a dock).
	*/
	void getWindowLayout(ConfigFile layout)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("get_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Implement this function if your plugin edits a specific type of object (Resource or Node). If you return `true`, then you will get the functions $(D edit) and $(D makeVisible) called when the editor requests them. If you have declared the methods $(D forwardCanvasGuiInput) and $(D forwardSpatialGuiInput) these will be called too.
	*/
	bool handles(GodotObject object)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(object);
		String _GODOT_method_name = String("handles");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Returns `true` if this is a main screen editor plugin (it goes in the workspace selector together with $(B 2D), $(B 3D), $(B Script) and $(B AssetLib)).
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
	This function will be called when the editor is requested to become visible. It is used for plugins that edit a specific object type.
	Remember that you have to manage the visibility of all your editor controls manually.
	*/
	void makeVisible(in bool visible)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(visible);
		String _GODOT_method_name = String("make_visible");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Queue save the project's editor layout.
	*/
	void queueSaveLayout() const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queueSaveLayout, _godot_object);
	}
	/**
	Removes an Autoload `name` from the list.
	*/
	void removeAutoloadSingleton(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeAutoloadSingleton, _godot_object, name);
	}
	/**
	Removes the control from the bottom panel. You have to manually $(D Node.queueFree) the control.
	*/
	void removeControlFromBottomPanel(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeControlFromBottomPanel, _godot_object, control);
	}
	/**
	Removes the control from the specified container. You have to manually $(D Node.queueFree) the control.
	*/
	void removeControlFromContainer(in long container, Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeControlFromContainer, _godot_object, container, control);
	}
	/**
	Removes the control from the dock. You have to manually $(D Node.queueFree) the control.
	*/
	void removeControlFromDocks(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeControlFromDocks, _godot_object, control);
	}
	/**
	Removes a custom type added by $(D addCustomType).
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
	Removes a menu `name` from $(B Project &gt; Tools).
	*/
	void removeToolMenuItem(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeToolMenuItem, _godot_object, name);
	}
	/**
	This method is called after the editor saves the project or when it's closed. It asks the plugin to save edited external scenes/resources.
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
	Use this method if you always want to receive inputs from 3D view screen inside $(D forwardSpatialGuiInput). It might be especially usable if your plugin will want to use raycast in the scene.
	*/
	void setInputEventForwardingAlwaysEnabled()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputEventForwardingAlwaysEnabled, _godot_object);
	}
	/**
	Restore the state saved by $(D getState).
	*/
	void setState(in Dictionary state)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(state);
		String _GODOT_method_name = String("set_state");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Restore the plugin GUI layout saved by $(D getWindowLayout).
	*/
	void setWindowLayout(ConfigFile layout)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("set_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Updates the overlays of the editor (2D/3D) viewport.
	*/
	long updateOverlays() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.updateOverlays, _godot_object);
	}
}
