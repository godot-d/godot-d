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
	enum string _GODOT_internal_name = "EditorScript";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_run") GodotMethod!(void) _run;
		@GodotName("add_root_node") GodotMethod!(void, GodotObject) addRootNode;
		@GodotName("get_scene") GodotMethod!(Node) getScene;
		@GodotName("get_editor_interface") GodotMethod!(EditorInterface) getEditorInterface;
	}
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
	/**
	This method is executed by the Editor when `File -&gt; Run` is used.
	*/
	void _run()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_run");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds `node` as a child of the root node in the editor context.
	WARNING: The implementation of this method is currently disabled.
	*/
	void addRootNode(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addRootNode, _godot_object, node);
	}
	/**
	Returns the Editor's currently active scene.
	*/
	Node getScene()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getScene, _godot_object);
	}
	/**
	Returns the $(D EditorInterface) singleton instance.
	*/
	EditorInterface getEditorInterface()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorInterface)(_classBinding.getEditorInterface, _godot_object);
	}
}
