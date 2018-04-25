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
	static immutable string _GODOT_internal_name = "_VisualScriptEditor";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "VisualScriptEditor";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, String, String, Script) _GODOT_add_custom_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_custom_node") = _GODOT_add_custom_node;
	/**
	Add a custom Visual Script node to the editor. It'll be placed under "Custom Nodes" with the `category` as the parameter.
	*/
	void addCustomNode(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 category, Script script)
	{
		_GODOT_add_custom_node.bind("_VisualScriptEditor", "add_custom_node");
		ptrcall!(void)(_GODOT_add_custom_node, _godot_object, name, category, script);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_remove_custom_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_custom_node") = _GODOT_remove_custom_node;
	/**
	Remove a custom Visual Script node from the editor. Custom nodes already placed on scripts won't be removed.
	*/
	void removeCustomNode(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 category)
	{
		_GODOT_remove_custom_node.bind("_VisualScriptEditor", "remove_custom_node");
		ptrcall!(void)(_GODOT_remove_custom_node, _godot_object, name, category);
	}
}
/// Returns: the VisualScriptEditorSingleton
@property @nogc nothrow pragma(inline, true)
VisualScriptEditorSingleton VisualScriptEditor()
{
	return VisualScriptEditorSingleton._GODOT_singleton();
}
