/**


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
import godot.globalenums;
import godot.object;
import godot.node;
import godot.resource;
import godot.script;
import godot.control;
import godot.editorsettings;
import godot.filesystemdock;
import godot.editorinspector;
import godot.editorfilesystem;
import godot.editorresourcepreview;
import godot.scripteditor;
import godot.editorselection;
/**

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
		@GodotName("edit_script") GodotMethod!(void, Script, long, long, bool) editScript;
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
	/**
	
	*/
	void editNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.editNode, _godot_object, node);
	}
	/**
	
	*/
	void editResource(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.editResource, _godot_object, resource);
	}
	/**
	
	*/
	void editScript(Script script, in long line = -1, in long column = 0, in bool grab_focus = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.editScript, _godot_object, script, line, column, grab_focus);
	}
	/**
	
	*/
	Control getBaseControl()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getBaseControl, _godot_object);
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
	Node getEditedSceneRoot()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getEditedSceneRoot, _godot_object);
	}
	/**
	
	*/
	double getEditorScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEditorScale, _godot_object);
	}
	/**
	
	*/
	Ref!EditorSettings getEditorSettings()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorSettings)(GDNativeClassBinding.getEditorSettings, _godot_object);
	}
	/**
	
	*/
	Control getEditorViewport()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getEditorViewport, _godot_object);
	}
	/**
	
	*/
	FileSystemDock getFileSystemDock()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(FileSystemDock)(GDNativeClassBinding.getFileSystemDock, _godot_object);
	}
	/**
	
	*/
	EditorInspector getInspector() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorInspector)(GDNativeClassBinding.getInspector, _godot_object);
	}
	/**
	
	*/
	Array getOpenScenes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getOpenScenes, _godot_object);
	}
	/**
	
	*/
	String getPlayingScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPlayingScene, _godot_object);
	}
	/**
	
	*/
	EditorFileSystem getResourceFilesystem()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorFileSystem)(GDNativeClassBinding.getResourceFilesystem, _godot_object);
	}
	/**
	
	*/
	EditorResourcePreview getResourcePreviewer()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorResourcePreview)(GDNativeClassBinding.getResourcePreviewer, _godot_object);
	}
	/**
	
	*/
	ScriptEditor getScriptEditor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ScriptEditor)(GDNativeClassBinding.getScriptEditor, _godot_object);
	}
	/**
	
	*/
	String getSelectedPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSelectedPath, _godot_object);
	}
	/**
	
	*/
	EditorSelection getSelection()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorSelection)(GDNativeClassBinding.getSelection, _godot_object);
	}
	/**
	
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
	
	*/
	bool isPlayingScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPlayingScene, _godot_object);
	}
	/**
	
	*/
	bool isPluginEnabled(in String plugin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPluginEnabled, _godot_object, plugin);
	}
	/**
	
	*/
	Array makeMeshPreviews(in Array meshes, in long preview_size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.makeMeshPreviews, _godot_object, meshes, preview_size);
	}
	/**
	
	*/
	void openSceneFromPath(in String scene_filepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.openSceneFromPath, _godot_object, scene_filepath);
	}
	/**
	
	*/
	void playCurrentScene()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.playCurrentScene, _godot_object);
	}
	/**
	
	*/
	void playCustomScene(in String scene_filepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.playCustomScene, _godot_object, scene_filepath);
	}
	/**
	
	*/
	void playMainScene()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.playMainScene, _godot_object);
	}
	/**
	
	*/
	void reloadSceneFromPath(in String scene_filepath)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reloadSceneFromPath, _godot_object, scene_filepath);
	}
	/**
	
	*/
	GodotError saveScene()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveScene, _godot_object);
	}
	/**
	
	*/
	void saveSceneAs(in String path, in bool with_preview = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.saveSceneAs, _godot_object, path, with_preview);
	}
	/**
	
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
	
	*/
	void setMainScreenEditor(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMainScreenEditor, _godot_object, name);
	}
	/**
	
	*/
	void setPluginEnabled(in String plugin, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPluginEnabled, _godot_object, plugin, enabled);
	}
	/**
	
	*/
	void stopPlayingScene()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stopPlayingScene, _godot_object);
	}
	/**
	
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
