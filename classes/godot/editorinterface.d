/**
Editor interface and main components.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.node;
import godot.editorselection;
import godot.editorsettings;
import godot.scripteditor;
import godot.control;
import godot.resource;
import godot.editorresourcepreview;
import godot.editorfilesystem;
/**
Editor interface and main components.

Editor interface. Allows saving and (re-)loading scenes, rendering mesh previews, inspecting and editing resources and objects and provides access to $(D EditorSettings), $(D EditorFileSystem), $(D EditorResourcePreview)\ er, $(D ScriptEditor), the editor viewport, as well as information about scenes. Also see $(D EditorPlugin) and $(D EditorScript).
*/
@GodotBaseClass struct EditorInterface
{
	static immutable string _GODOT_internal_name = "EditorInterface";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorInterface other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorInterface opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorInterface");
		if(constructor is null) return typeof(this).init;
		return cast(EditorInterface)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, GodotObject, String) _GODOT_inspect_object;
	package(godot) alias _GODOT_methodBindInfo(string name : "inspect_object") = _GODOT_inspect_object;
	/**
	Shows the given property on the given `object` in the Editor's Inspector dock.
	*/
	void inspectObject(StringArg1)(GodotObject object, in StringArg1 for_property = "")
	{
		_GODOT_inspect_object.bind("EditorInterface", "inspect_object");
		ptrcall!(void)(_GODOT_inspect_object, _godot_object, object, for_property);
	}
	package(godot) static GodotMethod!(EditorSelection) _GODOT_get_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection") = _GODOT_get_selection;
	/**
	Returns the $(D EditorSelection).
	*/
	EditorSelection getSelection()
	{
		_GODOT_get_selection.bind("EditorInterface", "get_selection");
		return ptrcall!(EditorSelection)(_GODOT_get_selection, _godot_object);
	}
	package(godot) static GodotMethod!(EditorSettings) _GODOT_get_editor_settings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_editor_settings") = _GODOT_get_editor_settings;
	/**
	Returns the $(D EditorSettings).
	*/
	Ref!EditorSettings getEditorSettings()
	{
		_GODOT_get_editor_settings.bind("EditorInterface", "get_editor_settings");
		return ptrcall!(EditorSettings)(_GODOT_get_editor_settings, _godot_object);
	}
	package(godot) static GodotMethod!(ScriptEditor) _GODOT_get_script_editor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_script_editor") = _GODOT_get_script_editor;
	/**
	Returns the $(D ScriptEditor).
	*/
	ScriptEditor getScriptEditor()
	{
		_GODOT_get_script_editor.bind("EditorInterface", "get_script_editor");
		return ptrcall!(ScriptEditor)(_GODOT_get_script_editor, _godot_object);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_base_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_control") = _GODOT_get_base_control;
	/**
	Returns the base $(D Control).
	*/
	Control getBaseControl()
	{
		_GODOT_get_base_control.bind("EditorInterface", "get_base_control");
		return ptrcall!(Control)(_GODOT_get_base_control, _godot_object);
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_edit_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "edit_resource") = _GODOT_edit_resource;
	/**
	Edits the given $(D Resource).
	*/
	void editResource(Resource resource)
	{
		_GODOT_edit_resource.bind("EditorInterface", "edit_resource");
		ptrcall!(void)(_GODOT_edit_resource, _godot_object, resource);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_open_scene_from_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_scene_from_path") = _GODOT_open_scene_from_path;
	/**
	Opens the scene at the given path.
	*/
	void openSceneFromPath(StringArg0)(in StringArg0 scene_filepath)
	{
		_GODOT_open_scene_from_path.bind("EditorInterface", "open_scene_from_path");
		ptrcall!(void)(_GODOT_open_scene_from_path, _godot_object, scene_filepath);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_reload_scene_from_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "reload_scene_from_path") = _GODOT_reload_scene_from_path;
	/**
	Reloads the scene at the given path.
	*/
	void reloadSceneFromPath(StringArg0)(in StringArg0 scene_filepath)
	{
		_GODOT_reload_scene_from_path.bind("EditorInterface", "reload_scene_from_path");
		ptrcall!(void)(_GODOT_reload_scene_from_path, _godot_object, scene_filepath);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_open_scenes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_open_scenes") = _GODOT_get_open_scenes;
	/**
	Returns an $(D Array) of the currently opened scenes.
	*/
	Array getOpenScenes() const
	{
		_GODOT_get_open_scenes.bind("EditorInterface", "get_open_scenes");
		return ptrcall!(Array)(_GODOT_get_open_scenes, _godot_object);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_edited_scene_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edited_scene_root") = _GODOT_get_edited_scene_root;
	/**
	Returns the edited scene's root $(D Node).
	*/
	Node getEditedSceneRoot()
	{
		_GODOT_get_edited_scene_root.bind("EditorInterface", "get_edited_scene_root");
		return ptrcall!(Node)(_GODOT_get_edited_scene_root, _godot_object);
	}
	package(godot) static GodotMethod!(EditorResourcePreview) _GODOT_get_resource_previewer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource_previewer") = _GODOT_get_resource_previewer;
	/**
	Returns the $(D EditorResourcePreview)\ er.
	*/
	EditorResourcePreview getResourcePreviewer()
	{
		_GODOT_get_resource_previewer.bind("EditorInterface", "get_resource_previewer");
		return ptrcall!(EditorResourcePreview)(_GODOT_get_resource_previewer, _godot_object);
	}
	package(godot) static GodotMethod!(EditorFileSystem) _GODOT_get_resource_filesystem;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource_filesystem") = _GODOT_get_resource_filesystem;
	/**
	Returns the $(D EditorFileSystem).
	*/
	EditorFileSystem getResourceFilesystem()
	{
		_GODOT_get_resource_filesystem.bind("EditorInterface", "get_resource_filesystem");
		return ptrcall!(EditorFileSystem)(_GODOT_get_resource_filesystem, _godot_object);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_editor_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_editor_viewport") = _GODOT_get_editor_viewport;
	/**
	Returns the editor $(D Viewport).
	*/
	Control getEditorViewport()
	{
		_GODOT_get_editor_viewport.bind("EditorInterface", "get_editor_viewport");
		return ptrcall!(Control)(_GODOT_get_editor_viewport, _godot_object);
	}
	package(godot) static GodotMethod!(Array, Array, long) _GODOT_make_mesh_previews;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_mesh_previews") = _GODOT_make_mesh_previews;
	/**
	Returns mesh previews rendered at the given size as an $(D Array) of $(D Texture)s.
	*/
	Array makeMeshPreviews(in Array meshes, in long preview_size)
	{
		_GODOT_make_mesh_previews.bind("EditorInterface", "make_mesh_previews");
		return ptrcall!(Array)(_GODOT_make_mesh_previews, _godot_object, meshes, preview_size);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_select_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "select_file") = _GODOT_select_file;
	/**
	
	*/
	void selectFile(StringArg0)(in StringArg0 p_file)
	{
		_GODOT_select_file.bind("EditorInterface", "select_file");
		ptrcall!(void)(_GODOT_select_file, _godot_object, p_file);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_selected_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_path") = _GODOT_get_selected_path;
	/**
	
	*/
	String getSelectedPath() const
	{
		_GODOT_get_selected_path.bind("EditorInterface", "get_selected_path");
		return ptrcall!(String)(_GODOT_get_selected_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_set_plugin_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_plugin_enabled") = _GODOT_set_plugin_enabled;
	/**
	Sets the enabled status of a plugin. The plugin name is the same as its directory name.
	*/
	void setPluginEnabled(StringArg0)(in StringArg0 plugin, in bool enabled)
	{
		_GODOT_set_plugin_enabled.bind("EditorInterface", "set_plugin_enabled");
		ptrcall!(void)(_GODOT_set_plugin_enabled, _godot_object, plugin, enabled);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_plugin_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_plugin_enabled") = _GODOT_is_plugin_enabled;
	/**
	Returns the enabled status of a plugin. The plugin name is the same as its directory name.
	*/
	bool isPluginEnabled(StringArg0)(in StringArg0 plugin) const
	{
		_GODOT_is_plugin_enabled.bind("EditorInterface", "is_plugin_enabled");
		return ptrcall!(bool)(_GODOT_is_plugin_enabled, _godot_object, plugin);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_save_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_scene") = _GODOT_save_scene;
	/**
	Saves the scene. Returns either OK or ERR_CANT_CREATE. See $(D @GlobalScope) constants.
	*/
	GodotError saveScene()
	{
		_GODOT_save_scene.bind("EditorInterface", "save_scene");
		return ptrcall!(GodotError)(_GODOT_save_scene, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_save_scene_as;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_scene_as") = _GODOT_save_scene_as;
	/**
	Saves the scene as a file at `path`.
	*/
	void saveSceneAs(StringArg0)(in StringArg0 path, in bool with_preview = true)
	{
		_GODOT_save_scene_as.bind("EditorInterface", "save_scene_as");
		ptrcall!(void)(_GODOT_save_scene_as, _godot_object, path, with_preview);
	}
}
