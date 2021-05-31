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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.node;
import godot.resource;
import godot.control;
import godot.editorsettings;
import godot.filesystemdock;
import godot.editorinspector;
import godot.editorfilesystem;
import godot.editorresourcepreview;
import godot.scripteditor;
import godot.editorselection;
/**
Godot editor's interface.

EditorInterface gives you control over Godot editor's window. It allows customizing the window, saving and (re-)loading scenes, rendering mesh previews, inspecting and editing resources and objects, and provides access to $(D EditorSettings), $(D EditorFileSystem), $(D EditorResourcePreview), $(D ScriptEditor), the editor viewport, and information about scenes.
$(B Note:) This class shouldn't be instantiated directly. Instead, access the singleton using $(D EditorPlugin.getEditorInterface).
*/
@GodotBaseClass struct EditorInterface
{
	package(godot) enum string _GODOT_internal_name = "EditorInterface";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("edit_node") GodotMethod!(void, Node) editNode;
		@GodotName("edit_resource") GodotMethod!(void, Resource) editResource;
		@GodotName("get_base_control") GodotMethod!(Control) getBaseControl;
		@GodotName("get_current_path") GodotMethod!(String) getCurrentPath;
		@GodotName("get_edited_scene_root") GodotMethod!(Node) getEditedSceneRoot;
		@GodotName("get_editor_scale") GodotMethod!(double) getEditorScale;
		@GodotName("get_editor_settings") GodotMethod!(EditorSettings) getEditorSettings;
		@GodotName("get_editor_viewport") GodotMethod!(Control) getEditorViewport;
		@GodotName("get_file_system_dock") GodotMethod!(FileSystemDock) getFileSystemDock;
		@GodotName("get_inspector") GodotMethod!(EditorInspector) getInspector;
		@GodotName("get_open_scenes") GodotMethod!(Array) getOpenScenes;
		@GodotName("get_playing_scene") GodotMethod!(String) getPlayingScene;
		@GodotName("get_resource_filesystem") GodotMethod!(EditorFileSystem) getResourceFilesystem;
		@GodotName("get_resource_previewer") GodotMethod!(EditorResourcePreview) getResourcePreviewer;
		@GodotName("get_script_editor") GodotMethod!(ScriptEditor) getScriptEditor;
		@GodotName("get_selected_path") GodotMethod!(String) getSelectedPath;
		@GodotName("get_selection") GodotMethod!(EditorSelection) getSelection;
		@GodotName("inspect_object") GodotMethod!(void, GodotObject, String, bool) inspectObject;
		@GodotName("is_distraction_free_mode_enabled") GodotMethod!(bool) isDistractionFreeModeEnabled;
		@GodotName("is_playing_scene") GodotMethod!(bool) isPlayingScene;
		@GodotName("is_plugin_enabled") GodotMethod!(bool, String) isPluginEnabled;
		@GodotName("make_mesh_previews") GodotMethod!(Array, Array, long) makeMeshPreviews;
		@GodotName("open_scene_from_path") GodotMethod!(void, String) openSceneFromPath;
		@GodotName("play_current_scene") GodotMethod!(void) playCurrentScene;
		@GodotName("play_custom_scene") GodotMethod!(void, String) playCustomScene;
		@GodotName("play_main_scene") GodotMethod!(void) playMainScene;
		@GodotName("reload_scene_from_path") GodotMethod!(void, String) reloadSceneFromPath;
		@GodotName("save_scene") GodotMethod!(GodotError) saveScene;
		@GodotName("save_scene_as") GodotMethod!(void, String, bool) saveSceneAs;
		@GodotName("select_file") GodotMethod!(void, String) selectFile;
		@GodotName("set_distraction_free_mode") GodotMethod!(void, bool) setDistractionFreeMode;
		@GodotName("set_main_screen_editor") GodotMethod!(void, String) setMainScreenEditor;
		@GodotName("set_plugin_enabled") GodotMethod!(void, String, bool) setPluginEnabled;
		@GodotName("stop_playing_scene") GodotMethod!(void) stopPlayingScene;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorInterface other) const
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
	/// Construct a new instance of EditorInterface.
	/// Note: use `memnew!EditorInterface` instead.
	static EditorInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorInterface");
		if(constructor is null) return typeof(this).init;
		return cast(EditorInterface)(constructor());
	}
	@disable new(size_t s);
	/**
	Edits the given $(D Node). The node will be also selected if it's inside the scene tree.
	*/
	void editNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.editNode, _godot_object, node);
	}
	/**
	Edits the given $(D Resource).
	*/
	void editResource(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.editResource, _godot_object, resource);
	}
	/**
	Returns the main container of Godot editor's window. For example, you can use it to retrieve the size of the container and place your controls accordingly.
	*/
	Control getBaseControl()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getBaseControl, _godot_object);
	}
	/**
	Returns the current path being viewed in the $(D FileSystemDock).
	*/
	String getCurrentPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentPath, _godot_object);
	}
	/**
	Returns the edited (current) scene's root $(D Node).
	*/
	Node getEditedSceneRoot()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getEditedSceneRoot, _godot_object);
	}
	/**
	Returns the actual scale of the editor UI (`1.0` being 100% scale). This can be used to adjust position and dimensions of the UI added by plugins.
	$(B Note:) This value is set via the `interface/editor/display_scale` and `interface/editor/custom_display_scale` editor settings. Editor must be restarted for changes to be properly applied.
	*/
	double getEditorScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEditorScale, _godot_object);
	}
	/**
	Returns the editor's $(D EditorSettings) instance.
	*/
	Ref!EditorSettings getEditorSettings()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorSettings)(GDNativeClassBinding.getEditorSettings, _godot_object);
	}
	/**
	Returns the main editor control. Use this as a parent for main screens.
	$(B Note:) This returns the main editor control containing the whole editor, not the 2D or 3D viewports specifically.
	*/
	Control getEditorViewport()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getEditorViewport, _godot_object);
	}
	/**
	Returns the editor's $(D FileSystemDock) instance.
	*/
	FileSystemDock getFileSystemDock()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(FileSystemDock)(GDNativeClassBinding.getFileSystemDock, _godot_object);
	}
	/**
	Returns the editor's $(D EditorInspector) instance.
	*/
	EditorInspector getInspector() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorInspector)(GDNativeClassBinding.getInspector, _godot_object);
	}
	/**
	Returns an $(D Array) with the file paths of the currently opened scenes.
	*/
	Array getOpenScenes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getOpenScenes, _godot_object);
	}
	/**
	Returns the name of the scene that is being played. If no scene is currently being played, returns an empty string.
	*/
	String getPlayingScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPlayingScene, _godot_object);
	}
	/**
	Returns the editor's $(D EditorFileSystem) instance.
	*/
	EditorFileSystem getResourceFilesystem()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileSystem)(GDNativeClassBinding.getResourceFilesystem, _godot_object);
	}
	/**
	Returns the editor's $(D EditorResourcePreview) instance.
	*/
	EditorResourcePreview getResourcePreviewer()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorResourcePreview)(GDNativeClassBinding.getResourcePreviewer, _godot_object);
	}
	/**
	Returns the editor's $(D ScriptEditor) instance.
	*/
	ScriptEditor getScriptEditor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ScriptEditor)(GDNativeClassBinding.getScriptEditor, _godot_object);
	}
	/**
	Returns the path of the directory currently selected in the $(D FileSystemDock). If a file is selected, its base directory will be returned using $(D String.getBaseDir) instead.
	*/
	String getSelectedPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSelectedPath, _godot_object);
	}
	/**
	Returns the editor's $(D EditorSelection) instance.
	*/
	EditorSelection getSelection()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorSelection)(GDNativeClassBinding.getSelection, _godot_object);
	}
	/**
	Shows the given property on the given `object` in the editor's Inspector dock. If `inspector_only` is `true`, plugins will not attempt to edit `object`.
	*/
	void inspectObject(GodotObject object, in String for_property = gs!"", in bool inspector_only = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.inspectObject, _godot_object, object, for_property, inspector_only);
	}
	/**
	
	*/
	bool isDistractionFreeModeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDistractionFreeModeEnabled, _godot_object);
	}
	/**
	Returns `true` if a scene is currently being played, `false` otherwise. Paused scenes are considered as being played.
	*/
	bool isPlayingScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPlayingScene, _godot_object);
	}
	/**
	Returns `true` if the specified `plugin` is enabled. The plugin name is the same as its directory name.
	*/
	bool isPluginEnabled(in String plugin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPluginEnabled, _godot_object, plugin);
	}
	/**
	Returns mesh previews rendered at the given size as an $(D Array) of $(D Texture)s.
	*/
	Array makeMeshPreviews(in Array meshes, in long preview_size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.makeMeshPreviews, _godot_object, meshes, preview_size);
	}
	/**
	Opens the scene at the given path.
	*/
	void openSceneFromPath(in String scene_filepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.openSceneFromPath, _godot_object, scene_filepath);
	}
	/**
	Plays the currently active scene.
	*/
	void playCurrentScene()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.playCurrentScene, _godot_object);
	}
	/**
	Plays the scene specified by its filepath.
	*/
	void playCustomScene(in String scene_filepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.playCustomScene, _godot_object, scene_filepath);
	}
	/**
	Plays the main scene.
	*/
	void playMainScene()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.playMainScene, _godot_object);
	}
	/**
	Reloads the scene at the given path.
	*/
	void reloadSceneFromPath(in String scene_filepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reloadSceneFromPath, _godot_object, scene_filepath);
	}
	/**
	Saves the scene. Returns either `OK` or `ERR_CANT_CREATE` (see $(D @GlobalScope) constants).
	*/
	GodotError saveScene()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveScene, _godot_object);
	}
	/**
	Saves the scene as a file at `path`.
	*/
	void saveSceneAs(in String path, in bool with_preview = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.saveSceneAs, _godot_object, path, with_preview);
	}
	/**
	Selects the file, with the path provided by `file`, in the FileSystem dock.
	*/
	void selectFile(in String file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.selectFile, _godot_object, file);
	}
	/**
	
	*/
	void setDistractionFreeMode(in bool enter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDistractionFreeMode, _godot_object, enter);
	}
	/**
	Sets the editor's current main screen to the one specified in `name`. `name` must match the text of the tab in question exactly (`2D`, `3D`, `Script`, `AssetLib`).
	*/
	void setMainScreenEditor(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMainScreenEditor, _godot_object, name);
	}
	/**
	Sets the enabled status of a plugin. The plugin name is the same as its directory name.
	*/
	void setPluginEnabled(in String plugin, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPluginEnabled, _godot_object, plugin, enabled);
	}
	/**
	Stops the scene that is currently playing.
	*/
	void stopPlayingScene()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stopPlayingScene, _godot_object);
	}
	/**
	If `true`, enables distraction-free mode which hides side docks to increase the space available for the main view.
	*/
	@property bool distractionFreeMode()
	{
		return isDistractionFreeModeEnabled();
	}
	/// ditto
	@property void distractionFreeMode(bool v)
	{
		setDistractionFreeMode(v);
	}
}
