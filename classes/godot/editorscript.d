/**
Base script that can be used to add extension functions to the editor.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorscript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.node;
import godot.editorinterface;
/**
Base script that can be used to add extension functions to the editor.

Scripts extending this class and implementing its `_run()` method can be executed from the Script Editor's `File -&gt; Run` menu option (or by pressing `CTRL+Shift+X`) while the editor is running. This is useful for adding custom in-editor functionality to Godot. For more complex additions, consider using $(D EditorPlugin)s instead. Note that extending scripts need to have `tool mode` enabled.
Example script:


tool
extends EditorScript

func _run():
    print("Hello from the Godot Editor!")


Note that the script is run in the Editor context, which means the output is visible in the console window started with the Editor (STDOUT) instead of the usual Godot $(I Output) dock.
*/
@GodotBaseClass struct EditorScript
{
	static immutable string _GODOT_internal_name = "EditorScript";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorScript");
		if(constructor is null) return typeof(this).init;
		return cast(EditorScript)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void) _GODOT__run;
	package(godot) alias _GODOT_methodBindInfo(string name : "_run") = _GODOT__run;
	/**
	This method is executed by the Editor when `File -&gt; Run` is used.
	*/
	void _run()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_run");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_root_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_root_node") = _GODOT_add_root_node;
	/**
	Adds `node` as a child of the root node in the editor context.
	WARNING: The implementation of this method is currently disabled.
	*/
	void addRootNode(GodotObject node)
	{
		_GODOT_add_root_node.bind("EditorScript", "add_root_node");
		ptrcall!(void)(_GODOT_add_root_node, _godot_object, node);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scene") = _GODOT_get_scene;
	/**
	Returns the Editor's currently active scene.
	*/
	Node getScene()
	{
		_GODOT_get_scene.bind("EditorScript", "get_scene");
		return ptrcall!(Node)(_GODOT_get_scene, _godot_object);
	}
	package(godot) static GodotMethod!(EditorInterface) _GODOT_get_editor_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_editor_interface") = _GODOT_get_editor_interface;
	/**
	Returns the $(D EditorInterface) singleton instance.
	*/
	EditorInterface getEditorInterface()
	{
		_GODOT_get_editor_interface.bind("EditorScript", "get_editor_interface");
		return ptrcall!(EditorInterface)(_GODOT_get_editor_interface, _godot_object);
	}
}
