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
import godot.classdb;
import godot.node;
import godot.inputevent;
import godot.control;
import godot.camera;
import godot.editorspatialgizmo;
import godot.spatial;
import godot.configfile;
import godot.toolbutton;
import godot.script;
import godot.texture;
import godot.undoredo;
import godot.editorimportplugin;
import godot.editorsceneimporter;
import godot.editorexportplugin;
import godot.editorinterface;
/**
Used by the editor to extend its functionality.

Plugins are used by the editor to extend functionality. The most common types of plugins are those which edit a given node or resource type, import plugins and export plugins.
*/
@GodotBaseClass struct EditorPlugin
{
	static immutable string _GODOT_internal_name = "EditorPlugin";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorPlugin)(constructor());
	}
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
		containerSpatialEditorSide = 2,
		/**
		
		*/
		containerSpatialEditorBottom = 3,
		/**
		
		*/
		containerCanvasEditorMenu = 4,
		/**
		
		*/
		containerCanvasEditorSide = 5,
		/**
		
		*/
		containerCanvasEditorBottom = 6,
		/**
		
		*/
		containerPropertyEditorBottom = 7,
	}
	/// 
	enum Constants : int
	{
		dockSlotLeftUl = 0,
		containerToolbar = 0,
		containerSpatialEditorMenu = 1,
		dockSlotLeftBl = 1,
		dockSlotLeftUr = 2,
		containerSpatialEditorSide = 2,
		containerSpatialEditorBottom = 3,
		dockSlotLeftBr = 3,
		dockSlotRightUl = 4,
		containerCanvasEditorMenu = 4,
		dockSlotRightBl = 5,
		containerCanvasEditorSide = 5,
		containerCanvasEditorBottom = 6,
		dockSlotRightUr = 6,
		dockSlotRightBr = 7,
		containerPropertyEditorBottom = 7,
		dockSlotMax = 8,
	}
	package(godot) static GodotMethod!(bool, InputEvent) _GODOT_forward_canvas_gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "forward_canvas_gui_input") = _GODOT_forward_canvas_gui_input;
	/**
	
	*/
	bool forwardCanvasGuiInput(InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("forward_canvas_gui_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, Control) _GODOT_forward_draw_over_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "forward_draw_over_viewport") = _GODOT_forward_draw_over_viewport;
	/**
	
	*/
	void forwardDrawOverViewport(Control overlay)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(overlay);
		String _GODOT_method_name = String("forward_draw_over_viewport");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Control) _GODOT_forward_force_draw_over_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "forward_force_draw_over_viewport") = _GODOT_forward_force_draw_over_viewport;
	/**
	
	*/
	void forwardForceDrawOverViewport(Control overlay)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(overlay);
		String _GODOT_method_name = String("forward_force_draw_over_viewport");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool, Camera, InputEvent) _GODOT_forward_spatial_gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "forward_spatial_gui_input") = _GODOT_forward_spatial_gui_input;
	/**
	Implement this function if you are interested in 3D view screen input events. It will be called only if currently selected node is handled by your plugin.
	If you would like to always gets those input events then additionally use $(D setInputForwardingAlwaysEnabled).
	*/
	bool forwardSpatialGuiInput(Camera camera, InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(camera);
		_GODOT_args.append(event);
		String _GODOT_method_name = String("forward_spatial_gui_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(EditorSpatialGizmo, Spatial) _GODOT_create_spatial_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_spatial_gizmo") = _GODOT_create_spatial_gizmo;
	/**
	This is used for plugins that create gizmos used by the spatial editor. Just check that the node passed in the "for_spatial" argument matches your plugin.
	*/
	Ref!EditorSpatialGizmo createSpatialGizmo(Spatial for_spatial)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(for_spatial);
		String _GODOT_method_name = String("create_spatial_gizmo");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!EditorSpatialGizmo);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_plugin_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_plugin_name") = _GODOT_get_plugin_name;
	/**
	
	*/
	String getPluginName()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_plugin_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(GodotObject) _GODOT_get_plugin_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_plugin_icon") = _GODOT_get_plugin_icon;
	/**
	
	*/
	GodotObject getPluginIcon()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_plugin_icon");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!GodotObject);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_main_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_main_screen") = _GODOT_has_main_screen;
	/**
	Return true if this is a main screen editor plugin (it goes in the main screen selector together with 2D, 3D, Script).
	*/
	bool hasMainScreen()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("has_main_screen");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_make_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_visible") = _GODOT_make_visible;
	/**
	This function will be called when the editor is requested to become visible. It is used for plugins that edit a specific object type.
	Remember that you have to manage the visibility of all your editor controls manually.
	*/
	void makeVisible(in bool visible)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(visible);
		String _GODOT_method_name = String("make_visible");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_edit;
	package(godot) alias _GODOT_methodBindInfo(string name : "edit") = _GODOT_edit;
	/**
	This function is used for plugins that edit specific object types (nodes or resources). It requests the editor to edit the given object.
	*/
	void edit(GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("edit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool, GodotObject) _GODOT_handles;
	package(godot) alias _GODOT_methodBindInfo(string name : "handles") = _GODOT_handles;
	/**
	Implement this function if your plugin edits a specific type of object (Resource or Node). If you return true, then you will get the functions $(D EditorPlugin.edit) and $(D EditorPlugin.makeVisible) called when the editor requests them.
	*/
	bool handles(GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("handles");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_state") = _GODOT_get_state;
	/**
	Get the state of your plugin editor. This is used when saving the scene (so state is kept when opening it again) and for switching tabs (so state can be restored when the tab returns).
	*/
	Dictionary getState()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_state");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT_set_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_state") = _GODOT_set_state;
	/**
	Restore the state saved by $(D EditorPlugin.getState).
	*/
	void setState(in Dictionary state)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(state);
		String _GODOT_method_name = String("set_state");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear all the state and reset the object being edited to zero. This ensures your plugin does not keep editing a currently existing node, or a node from the wrong scene.
	*/
	void clear()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("clear");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_save_external_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_external_data") = _GODOT_save_external_data;
	/**
	This method is called after the editor saves the project or when it's closed. It asks the plugin to save edited external scenes/resources.
	*/
	void saveExternalData()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("save_external_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_apply_changes;
	package(godot) alias _GODOT_methodBindInfo(string name : "apply_changes") = _GODOT_apply_changes;
	/**
	This method is called when the editor is about to save the project, switch to another tab, etc. It asks the plugin to apply any pending state changes to ensure consistency.
	This is used, for example, in shader editors to let the plugin know that it must apply the shader code being written by the user to the object.
	*/
	void applyChanges()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("apply_changes");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_breakpoints;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_breakpoints") = _GODOT_get_breakpoints;
	/**
	This is for editors that edit script based objects. You can return a list of breakpoints in the format (script:line), for example: res://path_to_script.gd:25
	*/
	PoolStringArray getBreakpoints()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_breakpoints");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolStringArray);
	}
	package(godot) static GodotMethod!(void, ConfigFile) _GODOT_set_window_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_window_layout") = _GODOT_set_window_layout;
	/**
	Restore the plugin GUI layout saved by $(D EditorPlugin.getWindowLayout).
	*/
	void setWindowLayout(ConfigFile layout)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("set_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, ConfigFile) _GODOT_get_window_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_window_layout") = _GODOT_get_window_layout;
	/**
	Get the GUI layout of the plugin. This is used to save the project's editor layout when the $(D EditorPlugin.queueSaveLayout) is called or the editor layout was changed(For example changing the position of a dock).
	*/
	void getWindowLayout(ConfigFile layout)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(layout);
		String _GODOT_method_name = String("get_window_layout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long, GodotObject) _GODOT_add_control_to_container;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_control_to_container") = _GODOT_add_control_to_container;
	/**
	Add a custom control to a container (see CONTAINER_* enum). There are many locations where custom controls can be added in the editor UI.
	Please remember that you have to manage the visibility of your custom controls yourself (and likely hide it after adding it).
	If your plugin is being removed, also make sure to remove your custom controls too.
	*/
	void addControlToContainer(in long container, GodotObject control)
	{
		_GODOT_add_control_to_container.bind("EditorPlugin", "add_control_to_container");
		ptrcall!(void)(_GODOT_add_control_to_container, _godot_object, container, control);
	}
	package(godot) static GodotMethod!(ToolButton, GodotObject, String) _GODOT_add_control_to_bottom_panel;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_control_to_bottom_panel") = _GODOT_add_control_to_bottom_panel;
	/**
	Add a control to the bottom panel (together with Output, Debug, Animation, etc). Returns a reference to the button added. It's up to you to hide/show the button when needed. If your plugin is being removed, also make sure to remove your control by calling $(D removeControlFromBottomPanel).
	*/
	ToolButton addControlToBottomPanel(StringArg1)(GodotObject control, in StringArg1 title)
	{
		_GODOT_add_control_to_bottom_panel.bind("EditorPlugin", "add_control_to_bottom_panel");
		return ptrcall!(ToolButton)(_GODOT_add_control_to_bottom_panel, _godot_object, control, title);
	}
	package(godot) static GodotMethod!(void, long, GodotObject) _GODOT_add_control_to_dock;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_control_to_dock") = _GODOT_add_control_to_dock;
	/**
	Add the control to a specific dock slot (see DOCK_* enum for options).
	If the dock is repositioned and as long as the plugin is active, the editor will save the dock position on further sessions.
	If your plugin is being removed, also make sure to remove your control by calling $(D removeControlFromDocks).
	*/
	void addControlToDock(in long slot, GodotObject control)
	{
		_GODOT_add_control_to_dock.bind("EditorPlugin", "add_control_to_dock");
		ptrcall!(void)(_GODOT_add_control_to_dock, _godot_object, slot, control);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_control_from_docks;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_control_from_docks") = _GODOT_remove_control_from_docks;
	/**
	Remove the control from the dock. Don't forget to call this if you added one, so the editor can save the layout and remove it cleanly.
	*/
	void removeControlFromDocks(GodotObject control)
	{
		_GODOT_remove_control_from_docks.bind("EditorPlugin", "remove_control_from_docks");
		ptrcall!(void)(_GODOT_remove_control_from_docks, _godot_object, control);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_control_from_bottom_panel;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_control_from_bottom_panel") = _GODOT_remove_control_from_bottom_panel;
	/**
	Remove the control from the bottom panel. Don't forget to call this if you added one, so the editor can remove it cleanly.
	*/
	void removeControlFromBottomPanel(GodotObject control)
	{
		_GODOT_remove_control_from_bottom_panel.bind("EditorPlugin", "remove_control_from_bottom_panel");
		ptrcall!(void)(_GODOT_remove_control_from_bottom_panel, _godot_object, control);
	}
	package(godot) static GodotMethod!(void, long, GodotObject) _GODOT_remove_control_from_container;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_control_from_container") = _GODOT_remove_control_from_container;
	/**
	Remove the control from the specified container. Use it when cleaning up after adding a control with $(D addControlToContainer). Note that you can simply free the control if you won't use it anymore.
	*/
	void removeControlFromContainer(in long container, GodotObject control)
	{
		_GODOT_remove_control_from_container.bind("EditorPlugin", "remove_control_from_container");
		ptrcall!(void)(_GODOT_remove_control_from_container, _godot_object, container, control);
	}
	package(godot) static GodotMethod!(void, String, GodotObject, String, Variant) _GODOT_add_tool_menu_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_tool_menu_item") = _GODOT_add_tool_menu_item;
	/**
	
	*/
	void addToolMenuItem(StringArg0, StringArg2, VariantArg3)(in StringArg0 name, GodotObject handler, in StringArg2 callback, in VariantArg3 ud = Variant.nil)
	{
		_GODOT_add_tool_menu_item.bind("EditorPlugin", "add_tool_menu_item");
		ptrcall!(void)(_GODOT_add_tool_menu_item, _godot_object, name, handler, callback, ud);
	}
	package(godot) static GodotMethod!(void, String, GodotObject) _GODOT_add_tool_submenu_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_tool_submenu_item") = _GODOT_add_tool_submenu_item;
	/**
	
	*/
	void addToolSubmenuItem(StringArg0)(in StringArg0 name, GodotObject submenu)
	{
		_GODOT_add_tool_submenu_item.bind("EditorPlugin", "add_tool_submenu_item");
		ptrcall!(void)(_GODOT_add_tool_submenu_item, _godot_object, name, submenu);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_tool_menu_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_tool_menu_item") = _GODOT_remove_tool_menu_item;
	/**
	
	*/
	void removeToolMenuItem(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_tool_menu_item.bind("EditorPlugin", "remove_tool_menu_item");
		ptrcall!(void)(_GODOT_remove_tool_menu_item, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String, Script, Texture) _GODOT_add_custom_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_custom_type") = _GODOT_add_custom_type;
	/**
	Add a custom type, which will appear in the list of nodes or resources. An icon can be optionally passed.
	When given node or resource is selected, the base type will be instanced (ie, "Spatial", "Control", "Resource"), then the script will be loaded and set to this object.
	You can use the $(D EditorPlugin.handles) to check if your custom object is being edited by checking the script or using 'is' keyword.
	During run-time, this will be a simple object with a script so this function does not need to be called then.
	*/
	void addCustomType(StringArg0, StringArg1)(in StringArg0 type, in StringArg1 base, Script script, Texture icon)
	{
		_GODOT_add_custom_type.bind("EditorPlugin", "add_custom_type");
		ptrcall!(void)(_GODOT_add_custom_type, _godot_object, type, base, script, icon);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_custom_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_custom_type") = _GODOT_remove_custom_type;
	/**
	Remove a custom type added by $(D EditorPlugin.addCustomType)
	*/
	void removeCustomType(StringArg0)(in StringArg0 type)
	{
		_GODOT_remove_custom_type.bind("EditorPlugin", "remove_custom_type");
		ptrcall!(void)(_GODOT_remove_custom_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_add_autoload_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_autoload_singleton") = _GODOT_add_autoload_singleton;
	/**
	Add a script at `path` to the Autoload list as `name`.
	*/
	void addAutoloadSingleton(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 path)
	{
		_GODOT_add_autoload_singleton.bind("EditorPlugin", "add_autoload_singleton");
		ptrcall!(void)(_GODOT_add_autoload_singleton, _godot_object, name, path);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_autoload_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_autoload_singleton") = _GODOT_remove_autoload_singleton;
	/**
	Remove an Autoload `name` from the list.
	*/
	void removeAutoloadSingleton(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_autoload_singleton.bind("EditorPlugin", "remove_autoload_singleton");
		ptrcall!(void)(_GODOT_remove_autoload_singleton, _godot_object, name);
	}
	package(godot) static GodotMethod!(long) _GODOT_update_overlays;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_overlays") = _GODOT_update_overlays;
	/**
	
	*/
	long updateOverlays() const
	{
		_GODOT_update_overlays.bind("EditorPlugin", "update_overlays");
		return ptrcall!(long)(_GODOT_update_overlays, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_make_bottom_panel_item_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_bottom_panel_item_visible") = _GODOT_make_bottom_panel_item_visible;
	/**
	
	*/
	void makeBottomPanelItemVisible(GodotObject item)
	{
		_GODOT_make_bottom_panel_item_visible.bind("EditorPlugin", "make_bottom_panel_item_visible");
		ptrcall!(void)(_GODOT_make_bottom_panel_item_visible, _godot_object, item);
	}
	package(godot) static GodotMethod!(void) _GODOT_hide_bottom_panel;
	package(godot) alias _GODOT_methodBindInfo(string name : "hide_bottom_panel") = _GODOT_hide_bottom_panel;
	/**
	
	*/
	void hideBottomPanel()
	{
		_GODOT_hide_bottom_panel.bind("EditorPlugin", "hide_bottom_panel");
		ptrcall!(void)(_GODOT_hide_bottom_panel, _godot_object);
	}
	package(godot) static GodotMethod!(UndoRedo) _GODOT_get_undo_redo;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_undo_redo") = _GODOT_get_undo_redo;
	/**
	Get the undo/redo object. Most actions in the editor can be undoable, so use this object to make sure this happens when it's worth it.
	*/
	UndoRedo getUndoRedo()
	{
		_GODOT_get_undo_redo.bind("EditorPlugin", "get_undo_redo");
		return ptrcall!(UndoRedo)(_GODOT_get_undo_redo, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_queue_save_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "queue_save_layout") = _GODOT_queue_save_layout;
	/**
	Queue save the project's editor layout.
	*/
	void queueSaveLayout() const
	{
		_GODOT_queue_save_layout.bind("EditorPlugin", "queue_save_layout");
		ptrcall!(void)(_GODOT_queue_save_layout, _godot_object);
	}
	package(godot) static GodotMethod!(void, EditorImportPlugin) _GODOT_add_import_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_import_plugin") = _GODOT_add_import_plugin;
	/**
	
	*/
	void addImportPlugin(EditorImportPlugin importer)
	{
		_GODOT_add_import_plugin.bind("EditorPlugin", "add_import_plugin");
		ptrcall!(void)(_GODOT_add_import_plugin, _godot_object, importer);
	}
	package(godot) static GodotMethod!(void, EditorImportPlugin) _GODOT_remove_import_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_import_plugin") = _GODOT_remove_import_plugin;
	/**
	
	*/
	void removeImportPlugin(EditorImportPlugin importer)
	{
		_GODOT_remove_import_plugin.bind("EditorPlugin", "remove_import_plugin");
		ptrcall!(void)(_GODOT_remove_import_plugin, _godot_object, importer);
	}
	package(godot) static GodotMethod!(void, EditorSceneImporter) _GODOT_add_scene_import_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_scene_import_plugin") = _GODOT_add_scene_import_plugin;
	/**
	
	*/
	void addSceneImportPlugin(EditorSceneImporter scene_importer)
	{
		_GODOT_add_scene_import_plugin.bind("EditorPlugin", "add_scene_import_plugin");
		ptrcall!(void)(_GODOT_add_scene_import_plugin, _godot_object, scene_importer);
	}
	package(godot) static GodotMethod!(void, EditorSceneImporter) _GODOT_remove_scene_import_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_scene_import_plugin") = _GODOT_remove_scene_import_plugin;
	/**
	
	*/
	void removeSceneImportPlugin(EditorSceneImporter scene_importer)
	{
		_GODOT_remove_scene_import_plugin.bind("EditorPlugin", "remove_scene_import_plugin");
		ptrcall!(void)(_GODOT_remove_scene_import_plugin, _godot_object, scene_importer);
	}
	package(godot) static GodotMethod!(void, EditorExportPlugin) _GODOT_add_export_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_export_plugin") = _GODOT_add_export_plugin;
	/**
	
	*/
	void addExportPlugin(EditorExportPlugin exporter)
	{
		_GODOT_add_export_plugin.bind("EditorPlugin", "add_export_plugin");
		ptrcall!(void)(_GODOT_add_export_plugin, _godot_object, exporter);
	}
	package(godot) static GodotMethod!(void, EditorExportPlugin) _GODOT_remove_export_plugin;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_export_plugin") = _GODOT_remove_export_plugin;
	/**
	
	*/
	void removeExportPlugin(EditorExportPlugin exporter)
	{
		_GODOT_remove_export_plugin.bind("EditorPlugin", "remove_export_plugin");
		ptrcall!(void)(_GODOT_remove_export_plugin, _godot_object, exporter);
	}
	package(godot) static GodotMethod!(void) _GODOT_set_input_event_forwarding_always_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_input_event_forwarding_always_enabled") = _GODOT_set_input_event_forwarding_always_enabled;
	/**
	Use this method if you always want to receive inputs from 3D view screen inside $(D forwardSpatialGuiInput). It might be especially usable if your plugin will want to use raycast in the scene.
	*/
	void setInputEventForwardingAlwaysEnabled()
	{
		_GODOT_set_input_event_forwarding_always_enabled.bind("EditorPlugin", "set_input_event_forwarding_always_enabled");
		ptrcall!(void)(_GODOT_set_input_event_forwarding_always_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_set_force_draw_over_forwarding_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_force_draw_over_forwarding_enabled") = _GODOT_set_force_draw_over_forwarding_enabled;
	/**
	
	*/
	void setForceDrawOverForwardingEnabled()
	{
		_GODOT_set_force_draw_over_forwarding_enabled.bind("EditorPlugin", "set_force_draw_over_forwarding_enabled");
		ptrcall!(void)(_GODOT_set_force_draw_over_forwarding_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(EditorInterface) _GODOT_get_editor_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_editor_interface") = _GODOT_get_editor_interface;
	/**
	
	*/
	EditorInterface getEditorInterface()
	{
		_GODOT_get_editor_interface.bind("EditorPlugin", "get_editor_interface");
		return ptrcall!(EditorInterface)(_GODOT_get_editor_interface, _godot_object);
	}
}
