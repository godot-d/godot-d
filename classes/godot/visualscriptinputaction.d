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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**

*/
@GodotBaseClass struct VisualScriptInputAction
{
	static immutable string _GODOT_internal_name = "VisualScriptInputAction";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptInputAction other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptInputAction opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptInputAction _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptInputAction");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptInputAction)(constructor());
	}
	/// 
	enum Mode : int
	{
		/**
		
		*/
		modePressed = 0,
		/**
		
		*/
		modeReleased = 1,
		/**
		
		*/
		modeJustPressed = 2,
		/**
		
		*/
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
	package(godot) static GodotMethod!(void, String) _GODOT_set_action_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action_name") = _GODOT_set_action_name;
	/**
	
	*/
	void setActionName(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_action_name.bind("VisualScriptInputAction", "set_action_name");
		ptrcall!(void)(_GODOT_set_action_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_action_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action_name") = _GODOT_get_action_name;
	/**
	
	*/
	String getActionName() const
	{
		_GODOT_get_action_name.bind("VisualScriptInputAction", "get_action_name");
		return ptrcall!(String)(_GODOT_get_action_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_action_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action_mode") = _GODOT_set_action_mode;
	/**
	
	*/
	void setActionMode(in long mode)
	{
		_GODOT_set_action_mode.bind("VisualScriptInputAction", "set_action_mode");
		ptrcall!(void)(_GODOT_set_action_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptInputAction.Mode) _GODOT_get_action_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action_mode") = _GODOT_get_action_mode;
	/**
	
	*/
	VisualScriptInputAction.Mode getActionMode() const
	{
		_GODOT_get_action_mode.bind("VisualScriptInputAction", "get_action_mode");
		return ptrcall!(VisualScriptInputAction.Mode)(_GODOT_get_action_mode, _godot_object);
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
