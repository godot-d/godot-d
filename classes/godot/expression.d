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
@GodotBaseClass struct Expression
{
	enum string _GODOT_internal_name = "Expression";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("parse") GodotMethod!(GodotError, String, PoolStringArray) parse;
		@GodotName("execute") GodotMethod!(Variant, Array, GodotObject, bool) execute;
		@GodotName("has_execute_failed") GodotMethod!(bool) hasExecuteFailed;
		@GodotName("get_error_text") GodotMethod!(String) getErrorText;
	}
	bool opEquals(in Expression other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Expression opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Expression _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Expression");
		if(constructor is null) return typeof(this).init;
		return cast(Expression)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	GodotError parse(StringArg0)(in StringArg0 expression, in PoolStringArray input_names = PoolStringArray.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.parse, _godot_object, expression, input_names);
	}
	/**
	
	*/
	Variant execute(in Array inputs = Array.empty_array, GodotObject base_instance = GodotObject.init, in bool show_error = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.execute, _godot_object, inputs, base_instance, show_error);
	}
	/**
	
	*/
	bool hasExecuteFailed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasExecuteFailed, _godot_object);
	}
	/**
	
	*/
	String getErrorText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getErrorText, _godot_object);
	}
}
