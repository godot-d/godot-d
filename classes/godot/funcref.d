/**
Reference to a function in an object.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.funcref;
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
Reference to a function in an object.

In GDScript, functions are not $(I first-class objects). This means it is impossible to store them directly as variables, return them from another function, or pass them as arguments.
However, by creating a `FuncRef` using the $(D @GDScript.funcref) function, a reference to a function in a given object can be created, passed around and called.
*/
@GodotBaseClass struct FuncRef
{
	enum string _GODOT_internal_name = "FuncRef";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("call_func") GodotMethod!(Variant, GodotVarArgs) callFunc;
		@GodotName("set_instance") GodotMethod!(void, GodotObject) setInstance;
		@GodotName("set_function") GodotMethod!(void, String) setFunction;
	}
	bool opEquals(in FuncRef other) const { return _godot_object.ptr is other._godot_object.ptr; }
	FuncRef opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static FuncRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("FuncRef");
		if(constructor is null) return typeof(this).init;
		return cast(FuncRef)(constructor());
	}
	@disable new(size_t s);
	/**
	Calls the referenced function previously set by $(D setFunction) or $(D @GDScript.funcref).
	*/
	Variant callFunc(VarArgs...)(VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_func");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The object containing the referenced function. This object must be of a type actually inheriting from $(D GodotObject), not a built-in type such as $(D long), $(D Vector2) or $(D Dictionary).
	*/
	void setInstance(GodotObject instance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInstance, _godot_object, instance);
	}
	/**
	The name of the referenced function to call on the object, without parentheses or any parameters.
	*/
	void setFunction(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFunction, _godot_object, name);
	}
}
