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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.javaclass;
/**

*/
@GodotBaseClass struct JavaClassWrapperSingleton
{
	enum string _GODOT_internal_name = "JavaClassWrapper";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "JavaClassWrapper";
		@GodotName("wrap") GodotMethod!(JavaClass, String) wrap;
	}
	bool opEquals(in JavaClassWrapperSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	JavaClassWrapperSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static JavaClassWrapperSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("JavaClassWrapper");
		if(constructor is null) return typeof(this).init;
		return cast(JavaClassWrapperSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!JavaClass wrap(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(JavaClass)(_classBinding.wrap, _godot_object, name);
	}
}
/// Returns: the JavaClassWrapperSingleton
@property @nogc nothrow pragma(inline, true)
JavaClassWrapperSingleton JavaClassWrapper()
{
	checkClassBinding!JavaClassWrapperSingleton();
	return JavaClassWrapperSingleton(JavaClassWrapperSingleton._classBinding._singleton);
}
