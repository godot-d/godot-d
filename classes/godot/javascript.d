/**
Singleton that connects the engine with the browser's JavaScript context in HTML5 export.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.javascript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Singleton that connects the engine with the browser's JavaScript context in HTML5 export.

The JavaScript singleton is implemented only in the HTML5 export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.
*/
@GodotBaseClass struct JavaScriptSingleton
{
	package(godot) enum string _GODOT_internal_name = "JavaScript";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "JavaScript";
		@GodotName("eval") GodotMethod!(Variant, String, bool) eval;
	}
	/// 
	pragma(inline, true) bool opEquals(in JavaScriptSingleton other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) JavaScriptSingleton opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of JavaScriptSingleton.
	/// Note: use `memnew!JavaScriptSingleton` instead.
	static JavaScriptSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("JavaScript");
		if(constructor is null) return typeof(this).init;
		return cast(JavaScriptSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	Execute the string `code` as JavaScript code within the browser window. This is a call to the actual global JavaScript function `eval()`.
	If `use_global_execution_context` is `true`, the code will be evaluated in the global execution context. Otherwise, it is evaluated in the execution context of a function within the engine's runtime environment.
	*/
	Variant eval(in String code, in bool use_global_execution_context = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.eval, _godot_object, code, use_global_execution_context);
	}
}
/// Returns: the JavaScriptSingleton
@property @nogc nothrow pragma(inline, true)
JavaScriptSingleton JavaScript()
{
	checkClassBinding!JavaScriptSingleton();
	return JavaScriptSingleton(JavaScriptSingleton.GDNativeClassBinding._singleton);
}
