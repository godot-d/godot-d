/**
Godot editor's interface.

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
Godot editor's interface.

EditorInterface gives you control over Godot editor's window. It allows customizing the window, saving and (re-)loading scenes, rendering mesh previews, inspecting and editing resources and objects, and provides access to $(D EditorSettings), $(D EditorFileSystem), $(D EditorResourcePreview), $(D ScriptEditor), the editor viewport, and information about scenes.
*/
@GodotBaseClass struct EditorInterface
{
	enum string _GODOT_internal_name = "EditorInterface";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("inspect_object") GodotMethod!(void, GodotObject, String) inspectObject;
		@GodotName("get_selection") GodotMethod!(EditorSelection) getSelection;
		@GodotName("get_editor_settings") GodotMethod!(EditorSettings) getEditorSettings;
		@GodotName("get_script_editor") GodotMethod!(ScriptEditor) getScriptEditor;
		@GodotName("get_base_control") GodotMethod!(Control) getBaseControl;
		@GodotName("edit_resource") GodotMethod!(void, Resource) editResource;
		@GodotName("open_scene_from_path") GodotMethod!(void, String) openSceneFromPath;
		@GodotName("reload_scene_from_path") GodotMethod!(void, String) reloadSceneFromPath;
		@GodotName("get_open_scenes") GodotMethod!(Array) getOpenScenes;
		@GodotName("get_edited_scene_root") GodotMethod!(Node) getEditedSceneRoot;
		@GodotName("get_resource_previewer") GodotMethod!(EditorResourcePreview) getResourcePreviewer;
		@GodotName("get_resource_filesystem") GodotMethod!(EditorFileSystem) getResourceFilesystem;
		@GodotName("get_editor_viewport") GodotMethod!(Control) getEditorViewport;
		@GodotName("make_mesh_previews") GodotMethod!(Array, Array, long) makeMeshPreviews;
		@GodotName("select_file") GodotMethod!(void, String) selectFile;
		@GodotName("get_selected_path") GodotMethod!(String) getSelectedPath;
		@GodotName("set_plugin_enabled") GodotMethod!(void, String, bool) setPluginEnabled;
		@GodotName("is_plugin_enabled") GodotMethod!(bool, String) isPluginEnabled;
		@GodotName("save_scene") GodotMethod!(GodotError) saveScene;
		@GodotName("save_scene_as") GodotMethod!(void, String, bool) saveSceneAs;
	}
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
	/**
	Shows the given property on the given `object` in the Editor's Inspector dock.
	*/
	void inspectObject(StringArg1)(GodotObject object, in StringArg1 for_property = "")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.inspectObject, _godot_object, object, for_property);
	}
	/**
	Returns the $(D EditorSelection).
	*/
	EditorSelection getSelection()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorSelection)(_classBinding.getSelection, _godot_object);
	}
	/**
	Returns the $(D EditorSettings).
	*/
	Ref!EditorSettings getEditorSettings()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorSettings)(_classBinding.getEditorSettings, _godot_object);
	}
	/**
	Returns the $(D ScriptEditor).
	*/
	ScriptEditor getScriptEditor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ScriptEditor)(_classBinding.getScriptEditor, _godot_object);
	}
	/**
	Returns the main container of Godot editor's window. You can use it, for example, to retrieve the size of the container and place your controls accordingly.
	*/
	Control getBaseControl()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(_classBinding.getBaseControl, _godot_object);
	}
	/**
	Edits the given $(D Resource).
	*/
	void editResource(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.editResource, _godot_object, resource);
	}
	/**
	Opens the scene at the given path.
	*/
	void openSceneFromPath(StringArg0)(in StringArg0 scene_filepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.openSceneFromPath, _godot_object, scene_filepath);
	}
	/**
	Reloads the scene at the given path.
	*/
	void reloadSceneFromPath(StringArg0)(in StringArg0 scene_filepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reloadSceneFromPath, _godot_object, scene_filepath);
	}
	/**
	Returns an $(D Array) with the file paths of the currently opened scenes.
	*/
	Array getOpenScenes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getOpenScenes, _godot_object);
	}
	/**
	Returns the edited (current) scene's root $(D Node).
	*/
	Node getEditedSceneRoot()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getEditedSceneRoot, _godot_object);
	}
	/**
	Returns the $(D EditorResourcePreview).
	*/
	EditorResourcePreview getResourcePreviewer()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorResourcePreview)(_classBinding.getResourcePreviewer, _godot_object);
	}
	/**
	Returns the $(D EditorFileSystem).
	*/
	EditorFileSystem getResourceFilesystem()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileSystem)(_classBinding.getResourceFilesystem, _godot_object);
	}
	/**
	Returns the editor $(D Viewport).
	*/
	Control getEditorViewport()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(_classBinding.getEditorViewport, _godot_object);
	}
	/**
	Returns mesh previews rendered at the given size as an $(D Array) of $(D Texture)s.
	*/
	Array makeMeshPreviews(in Array meshes, in long preview_size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.makeMeshPreviews, _godot_object, meshes, preview_size);
	}
	/**
	
	*/
	void selectFile(StringArg0)(in StringArg0 p_file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.selectFile, _godot_object, p_file);
	}
	/**
	
	*/
	String getSelectedPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSelectedPath, _godot_object);
	}
	/**
	Sets the enabled status of a plugin. The plugin name is the same as its directory name.
	*/
	void setPluginEnabled(StringArg0)(in StringArg0 plugin, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPluginEnabled, _godot_object, plugin, enabled);
	}
	/**
	Returns the enabled status of a plugin. The plugin name is the same as its directory name.
	*/
	bool isPluginEnabled(StringArg0)(in StringArg0 plugin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPluginEnabled, _godot_object, plugin);
	}
	/**
	Saves the scene. Returns either OK or ERR_CANT_CREATE. See $(D @GlobalScope) constants.
	*/
	GodotError saveScene()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.saveScene, _godot_object);
	}
	/**
	Saves the scene as a file at `path`.
	*/
	void saveSceneAs(StringArg0)(in StringArg0 path, in bool with_preview = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.saveSceneAs, _godot_object, path, with_preview);
	}
}
