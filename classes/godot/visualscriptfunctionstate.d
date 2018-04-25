/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptfunctionstate;
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
/**

*/
@GodotBaseClass struct VisualScriptFunctionState
{
	static immutable string _GODOT_internal_name = "VisualScriptFunctionState";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptFunctionState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptFunctionState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptFunctionState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptFunctionState");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptFunctionState)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, GodotObject, String, Array) _GODOT_connect_to_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_to_signal") = _GODOT_connect_to_signal;
	/**
	
	*/
	void connectToSignal(StringArg1)(GodotObject obj, in StringArg1 signals, in Array args)
	{
		_GODOT_connect_to_signal.bind("VisualScriptFunctionState", "connect_to_signal");
		ptrcall!(void)(_GODOT_connect_to_signal, _godot_object, obj, signals, args);
	}
	package(godot) static GodotMethod!(Variant, Array) _GODOT_resume;
	package(godot) alias _GODOT_methodBindInfo(string name : "resume") = _GODOT_resume;
	/**
	
	*/
	Variant resume(in Array args = Array.empty_array)
	{
		_GODOT_resume.bind("VisualScriptFunctionState", "resume");
		return ptrcall!(Variant)(_GODOT_resume, _godot_object, args);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_valid;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_valid") = _GODOT_is_valid;
	/**
	
	*/
	bool isValid() const
	{
		_GODOT_is_valid.bind("VisualScriptFunctionState", "is_valid");
		return ptrcall!(bool)(_GODOT_is_valid, _godot_object);
	}
	package(godot) static GodotMethod!(Variant, GodotVarArgs) _GODOT__signal_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_signal_callback") = _GODOT__signal_callback;
	/**
	
	*/
	Variant _signalCallback(VarArgs...)(VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("_signal_callback");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
}
