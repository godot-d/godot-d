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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualScriptFunctionState
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptFunctionState";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_signal_callback") GodotMethod!(Variant, GodotVarArgs) _signalCallback;
		@GodotName("connect_to_signal") GodotMethod!(void, GodotObject, String, Array) connectToSignal;
		@GodotName("is_valid") GodotMethod!(bool) isValid;
		@GodotName("resume") GodotMethod!(Variant, Array) resume;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptFunctionState other) const
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
	/// Construct a new instance of VisualScriptFunctionState.
	/// Note: use `memnew!VisualScriptFunctionState` instead.
	static VisualScriptFunctionState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptFunctionState");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptFunctionState)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Variant _signalCallback(VarArgs...)(VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("_signal_callback");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void connectToSignal(GodotObject obj, in String signals, in Array args)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.connectToSignal, _godot_object, obj, signals, args);
	}
	/**
	
	*/
	bool isValid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isValid, _godot_object);
	}
	/**
	
	*/
	Variant resume(in Array args = Array.make())
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.resume, _godot_object, args);
	}
}
