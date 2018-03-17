/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptyieldsignal;
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
@GodotBaseClass struct VisualScriptYieldSignal
{
	static immutable string _GODOT_internal_name = "VisualScriptYieldSignal";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptYieldSignal other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptYieldSignal opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptYieldSignal _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptYieldSignal");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptYieldSignal)(constructor());
	}
	/// 
	enum CallMode : int
	{
		/**
		
		*/
		callModeSelf = 0,
		/**
		
		*/
		callModeNodePath = 1,
		/**
		
		*/
		callModeInstance = 2,
	}
	/// 
	enum Constants : int
	{
		callModeSelf = 0,
		callModeNodePath = 1,
		callModeInstance = 2,
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_type") = _GODOT_set_base_type;
	/**
	
	*/
	void setBaseType(StringArg0)(in StringArg0 base_type)
	{
		_GODOT_set_base_type.bind("VisualScriptYieldSignal", "set_base_type");
		ptrcall!(void)(_GODOT_set_base_type, _godot_object, base_type);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_type") = _GODOT_get_base_type;
	/**
	
	*/
	String getBaseType() const
	{
		_GODOT_get_base_type.bind("VisualScriptYieldSignal", "get_base_type");
		return ptrcall!(String)(_GODOT_get_base_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_signal") = _GODOT_set_signal;
	/**
	
	*/
	void setSignal(StringArg0)(in StringArg0 signal)
	{
		_GODOT_set_signal.bind("VisualScriptYieldSignal", "set_signal");
		ptrcall!(void)(_GODOT_set_signal, _godot_object, signal);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_signal") = _GODOT_get_signal;
	/**
	
	*/
	String getSignal() const
	{
		_GODOT_get_signal.bind("VisualScriptYieldSignal", "get_signal");
		return ptrcall!(String)(_GODOT_get_signal, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_call_mode") = _GODOT_set_call_mode;
	/**
	
	*/
	void setCallMode(in long mode)
	{
		_GODOT_set_call_mode.bind("VisualScriptYieldSignal", "set_call_mode");
		ptrcall!(void)(_GODOT_set_call_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptYieldSignal.CallMode) _GODOT_get_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_call_mode") = _GODOT_get_call_mode;
	/**
	
	*/
	VisualScriptYieldSignal.CallMode getCallMode() const
	{
		_GODOT_get_call_mode.bind("VisualScriptYieldSignal", "get_call_mode");
		return ptrcall!(VisualScriptYieldSignal.CallMode)(_GODOT_get_call_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_path") = _GODOT_set_base_path;
	/**
	
	*/
	void setBasePath(NodePathArg0)(in NodePathArg0 base_path)
	{
		_GODOT_set_base_path.bind("VisualScriptYieldSignal", "set_base_path");
		ptrcall!(void)(_GODOT_set_base_path, _godot_object, base_path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_path") = _GODOT_get_base_path;
	/**
	
	*/
	NodePath getBasePath() const
	{
		_GODOT_get_base_path.bind("VisualScriptYieldSignal", "get_base_path");
		return ptrcall!(NodePath)(_GODOT_get_base_path, _godot_object);
	}
	/**
	
	*/
	@property VisualScriptYieldSignal.CallMode callMode()
	{
		return getCallMode();
	}
	/// ditto
	@property void callMode(long v)
	{
		setCallMode(v);
	}
	/**
	
	*/
	@property String baseType()
	{
		return getBaseType();
	}
	/// ditto
	@property void baseType(String v)
	{
		setBaseType(v);
	}
	/**
	
	*/
	@property NodePath nodePath()
	{
		return getBasePath();
	}
	/// ditto
	@property void nodePath(NodePath v)
	{
		setBasePath(v);
	}
	/**
	
	*/
	@property String signal()
	{
		return getSignal();
	}
	/// ditto
	@property void signal(String v)
	{
		setSignal(v);
	}
}
