/**
State of a function call after yielding.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gdscriptfunctionstate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**
State of a function call after yielding.

Calling $(D @GDScript.yield) within a function will cause that function to yield and return its current state as an object of this type. The yielded function call can then be resumed later by calling $(D resume) on this state object.
*/
@GodotBaseClass struct GDScriptFunctionState
{
	enum string _GODOT_internal_name = "GDScriptFunctionState";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("resume") GodotMethod!(Variant, Variant) resume;
		@GodotName("is_valid") GodotMethod!(bool, bool) isValid;
		@GodotName("_signal_callback") GodotMethod!(Variant, GodotVarArgs) _signalCallback;
	}
	bool opEquals(in GDScriptFunctionState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDScriptFunctionState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GDScriptFunctionState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GDScriptFunctionState");
		if(constructor is null) return typeof(this).init;
		return cast(GDScriptFunctionState)(constructor());
	}
	@disable new(size_t s);
	/**
	Resume execution of the yielded function call.
	If handed an argument, return the argument from the $(D @GDScript.yield) call in the yielded function call. You can pass e.g. an $(D Array) to hand multiple arguments.
	This function returns what the resumed function call returns, possibly another function state if yielded again.
	*/
	Variant resume(VariantArg0)(in VariantArg0 arg = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.resume, _godot_object, arg);
	}
	/**
	Check whether the function call may be resumed. This is not the case if the function state was already resumed.
	If `extended_check` is enabled, it also checks if the associated script and object still exist. The extended check is done in debug mode as part of $(D GDScriptFunctionState.resume), but you can use this if you know you may be trying to resume without knowing for sure the object and/or script have survived up to that point.
	*/
	bool isValid(in bool extended_check = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isValid, _godot_object, extended_check);
	}
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
