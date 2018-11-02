/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscripteditor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.script;
/**

*/
@GodotBaseClass struct VisualScriptEditorSingleton
{
	enum string _GODOT_internal_name = "_VisualScriptEditor";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "VisualScriptEditor";
		@GodotName("add_custom_node") GodotMethod!(void, String, String, Script) addCustomNode;
		@GodotName("remove_custom_node") GodotMethod!(void, String, String) removeCustomNode;
	}
	bool opEquals(in VisualScriptEditorSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptEditorSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptEditorSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_VisualScriptEditor");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptEditorSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	Add a custom Visual Script node to the editor. It'll be placed under "Custom Nodes" with the `category` as the parameter.
	*/
	void addCustomNode(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 category, Script script)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCustomNode, _godot_object, name, category, script);
	}
	/**
	Remove a custom Visual Script node from the editor. Custom nodes already placed on scripts won't be removed.
	*/
	void removeCustomNode(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 category)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeCustomNode, _godot_object, name, category);
	}
}
/// Returns: the VisualScriptEditorSingleton
@property @nogc nothrow pragma(inline, true)
VisualScriptEditorSingleton VisualScriptEditor()
{
	checkClassBinding!VisualScriptEditorSingleton();
	return VisualScriptEditorSingleton(VisualScriptEditorSingleton._classBinding._singleton);
}
