/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.expression;
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
@GodotBaseClass struct Expression
{
	package(godot) enum string _GODOT_internal_name = "Expression";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("execute") GodotMethod!(Variant, Array, GodotObject, bool) execute;
		@GodotName("get_error_text") GodotMethod!(String) getErrorText;
		@GodotName("has_execute_failed") GodotMethod!(bool) hasExecuteFailed;
		@GodotName("parse") GodotMethod!(GodotError, String, PoolStringArray) parse;
	}
	/// 
	pragma(inline, true) bool opEquals(in Expression other) const
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
	/// Construct a new instance of Expression.
	/// Note: use `memnew!Expression` instead.
	static Expression _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Expression");
		if(constructor is null) return typeof(this).init;
		return cast(Expression)(constructor());
	}
	/**
	
	*/
	Variant execute(in Array inputs = Array.make(), GodotObject base_instance = GodotObject.init, in bool show_error = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.execute, _godot_object, inputs, base_instance, show_error);
	}
	/**
	
	*/
	String getErrorText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getErrorText, _godot_object);
	}
	/**
	
	*/
	bool hasExecuteFailed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasExecuteFailed, _godot_object);
	}
	/**
	
	*/
	GodotError parse(in String expression, in PoolStringArray input_names = PoolStringArray.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.parse, _godot_object, expression, input_names);
	}
}
