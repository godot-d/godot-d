/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.javaclasswrapper;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.javaclass;
/**

*/
@GodotBaseClass struct JavaClassWrapperSingleton
{
	package(godot) enum string _GODOT_internal_name = "JavaClassWrapper";
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
		immutable char* _singletonName = "JavaClassWrapper";
		@GodotName("wrap") GodotMethod!(JavaClass, String) wrap;
	}
	/// 
	pragma(inline, true) bool opEquals(in JavaClassWrapperSingleton other) const
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
	/// Construct a new instance of JavaClassWrapperSingleton.
	/// Note: use `memnew!JavaClassWrapperSingleton` instead.
	static JavaClassWrapperSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("JavaClassWrapper");
		if(constructor is null) return typeof(this).init;
		return cast(JavaClassWrapperSingleton)(constructor());
	}
	/**
	
	*/
	Ref!JavaClass wrap(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(JavaClass)(GDNativeClassBinding.wrap, _godot_object, name);
	}
}
/// Returns: the JavaClassWrapperSingleton
@property @nogc nothrow pragma(inline, true)
JavaClassWrapperSingleton JavaClassWrapper()
{
	checkClassBinding!JavaClassWrapperSingleton();
	return JavaClassWrapperSingleton(JavaClassWrapperSingleton.GDNativeClassBinding._singleton);
}
