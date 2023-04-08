/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorscriptpicker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.editorresourcepicker;
import godot.hboxcontainer;
import godot.node;
/**

*/
@GodotBaseClass struct EditorScriptPicker
{
	package(godot) enum string _GODOT_internal_name = "EditorScriptPicker";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ EditorResourcePicker _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_script_owner") GodotMethod!(Node) getScriptOwner;
		@GodotName("set_script_owner") GodotMethod!(void, Node) setScriptOwner;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorScriptPicker other) const
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
	/// Construct a new instance of EditorScriptPicker.
	/// Note: use `memnew!EditorScriptPicker` instead.
	static EditorScriptPicker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorScriptPicker");
		if(constructor is null) return typeof(this).init;
		return cast(EditorScriptPicker)(constructor());
	}
	/**
	
	*/
	Node getScriptOwner() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getScriptOwner, _godot_object);
	}
	/**
	
	*/
	void setScriptOwner(Node owner_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScriptOwner, _godot_object, owner_node);
	}
	/**
	
	*/
	@property Node scriptOwner()
	{
		return getScriptOwner();
	}
	/// ditto
	@property void scriptOwner(Node v)
	{
		setScriptOwner(v);
	}
}
