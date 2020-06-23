/**
A class that stores an expression you can execute.

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
A class that stores an expression you can execute.

An expression can be made of any arithmetic operation, built-in math function call, method call of a passed instance, or built-in type construction call.
An example expression text using the built-in math functions could be `sqrt(pow(3,2) + pow(4,2))`.
In the following example we use a $(D LineEdit) node to write our expression and show the result.


onready var expression = Expression.new()

func _ready():
    $LineEdit.connect("text_entered", self, "_on_text_entered")

func _on_text_entered(command):
    var error = expression.parse(command, [])
    if error != OK:
        print(expression.get_error_text())
        return
    var result = expression.execute([], null, true)
    if not expression.has_execute_failed():
        $LineEdit.text = str(result)


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
	pragma(inline, true) Expression opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
	@disable new(size_t s);
	/**
	Executes the expression that was previously parsed by $(D parse) and returns the result. Before you use the returned object, you should check if the method failed by calling $(D hasExecuteFailed).
	If you defined input variables in $(D parse), you can specify their values in the inputs array, in the same order.
	*/
	Variant execute(in Array inputs = Array.make(), GodotObject base_instance = GodotObject.init, in bool show_error = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.execute, _godot_object, inputs, base_instance, show_error);
	}
	/**
	Returns the error text if $(D parse) has failed.
	*/
	String getErrorText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getErrorText, _godot_object);
	}
	/**
	Returns `true` if $(D execute) has failed.
	*/
	bool hasExecuteFailed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasExecuteFailed, _godot_object);
	}
	/**
	Parses the expression and returns an $(D error) code.
	You can optionally specify names of variables that may appear in the expression with `input_names`, so that you can bind them when it gets executed.
	*/
	GodotError parse(in String expression, in PoolStringArray input_names = PoolStringArray.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.parse, _godot_object, expression, input_names);
	}
}
