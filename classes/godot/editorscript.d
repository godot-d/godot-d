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
import godot.reference;
import godot.node;
import godot.editorinterface;
/**
Base script that can be used to add extension functions to the editor.

Scripts extending this class and implementing its $(D _run) method can be executed from the Script Editor's $(B File &gt; Run) menu option (or by pressing `Ctrl+Shift+X`) while the editor is running. This is useful for adding custom in-editor functionality to Godot. For more complex additions, consider using $(D EditorPlugin)s instead.
$(B Note:) Extending scripts need to have `tool` mode enabled.
$(B Example script:)


tool
extends EditorScript

func _run():
    print("Hello from the Godot Editor!")


$(B Note:) The script is run in the Editor context, which means the output is visible in the console window started with the Editor (stdout) instead of the usual Godot $(B Output) dock.
*/
@GodotBaseClass struct EditorScript
{
	package(godot) enum string _GODOT_internal_name = "EditorScript";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_run") GodotMethod!(void) _run;
		@GodotName("add_root_node") GodotMethod!(void, Node) addRootNode;
		@GodotName("get_editor_interface") GodotMethod!(EditorInterface) getEditorInterface;
		@GodotName("get_scene") GodotMethod!(Node) getScene;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorScript other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) EditorScript opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of EditorScript.
	/// Note: use `memnew!EditorScript` instead.
	static EditorScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorScript");
		if(constructor is null) return typeof(this).init;
		return cast(EditorScript)(constructor());
	}
	@disable new(size_t s);
	/**
	This method is executed by the Editor when $(B File &gt; Run) is used.
	*/
	void _run()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_run");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds `node` as a child of the root node in the editor context.
	$(B Warning:) The implementation of this method is currently disabled.
	*/
	void addRootNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addRootNode, _godot_object, node);
	}
	/**
	Returns the $(D EditorInterface) singleton instance.
	*/
	EditorInterface getEditorInterface()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorInterface)(GDNativeClassBinding.getEditorInterface, _godot_object);
	}
	/**
	Returns the Editor's currently active scene.
	*/
	Node getScene()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getScene, _godot_object);
	}
}
