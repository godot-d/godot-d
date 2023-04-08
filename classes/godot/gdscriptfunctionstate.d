/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gdscriptfunctionstate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.reference;
/**

*/
@GodotBaseClass struct GDScriptFunctionState
{
	package(godot) enum string _GODOT_internal_name = "GDScriptFunctionState";
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
		@GodotName("is_valid") GodotMethod!(bool, bool) isValid;
		@GodotName("resume") GodotMethod!(Variant, Variant) resume;
	}
	/// 
	pragma(inline, true) bool opEquals(in GDScriptFunctionState other) const
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
	/// Construct a new instance of GDScriptFunctionState.
	/// Note: use `memnew!GDScriptFunctionState` instead.
	static GDScriptFunctionState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GDScriptFunctionState");
		if(constructor is null) return typeof(this).init;
		return cast(GDScriptFunctionState)(constructor());
	}
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
	bool isValid(in bool extended_check = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isValid, _godot_object, extended_check);
	}
	/**
	
	*/
	Variant resume(VariantArg0)(in VariantArg0 arg = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.resume, _godot_object, arg);
	}
}
