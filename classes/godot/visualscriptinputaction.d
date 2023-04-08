/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptinputaction;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**

*/
@GodotBaseClass struct VisualScriptInputAction
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptInputAction";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_action_mode") GodotMethod!(VisualScriptInputAction.Mode) getActionMode;
		@GodotName("get_action_name") GodotMethod!(String) getActionName;
		@GodotName("set_action_mode") GodotMethod!(void, long) setActionMode;
		@GodotName("set_action_name") GodotMethod!(void, String) setActionName;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptInputAction other) const
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
	/// Construct a new instance of VisualScriptInputAction.
	/// Note: use `memnew!VisualScriptInputAction` instead.
	static VisualScriptInputAction _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptInputAction");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptInputAction)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Mode : int
	{
		/** */
		modePressed = 0,
		/** */
		modeReleased = 1,
		/** */
		modeJustPressed = 2,
		/** */
		modeJustReleased = 3,
	}
	/// 
	enum Constants : int
	{
		modePressed = 0,
		modeReleased = 1,
		modeJustPressed = 2,
		modeJustReleased = 3,
	}
	/**
	
	*/
	VisualScriptInputAction.Mode getActionMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptInputAction.Mode)(GDNativeClassBinding.getActionMode, _godot_object);
	}
	/**
	
	*/
	String getActionName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getActionName, _godot_object);
	}
	/**
	
	*/
	void setActionMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActionMode, _godot_object, mode);
	}
	/**
	
	*/
	void setActionName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActionName, _godot_object, name);
	}
	/**
	
	*/
	@property String action()
	{
		return getActionName();
	}
	/// ditto
	@property void action(String v)
	{
		setActionName(v);
	}
	/**
	
	*/
	@property VisualScriptInputAction.Mode mode()
	{
		return getActionMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setActionMode(v);
	}
}
