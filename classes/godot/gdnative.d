/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gdnative;
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
import godot.gdnativelibrary;
/**

*/
@GodotBaseClass struct GDNative
{
	package(godot) enum string _GODOT_internal_name = "GDNative";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("call_native") GodotMethod!(Variant, String, String, Array) callNative;
		@GodotName("get_library") GodotMethod!(GDNativeLibrary) getLibrary;
		@GodotName("initialize") GodotMethod!(bool) initialize;
		@GodotName("set_library") GodotMethod!(void, GDNativeLibrary) setLibrary;
		@GodotName("terminate") GodotMethod!(bool) terminate;
	}
	/// 
	pragma(inline, true) bool opEquals(in GDNative other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) GDNative opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of GDNative.
	/// Note: use `memnew!GDNative` instead.
	static GDNative _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GDNative");
		if(constructor is null) return typeof(this).init;
		return cast(GDNative)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Variant callNative(in String calling_type, in String procedure_name, in Array arguments)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.callNative, _godot_object, calling_type, procedure_name, arguments);
	}
	/**
	
	*/
	Ref!GDNativeLibrary getLibrary() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GDNativeLibrary)(GDNativeClassBinding.getLibrary, _godot_object);
	}
	/**
	
	*/
	bool initialize()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.initialize, _godot_object);
	}
	/**
	
	*/
	void setLibrary(GDNativeLibrary library)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLibrary, _godot_object, library);
	}
	/**
	
	*/
	bool terminate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.terminate, _godot_object);
	}
	/**
	
	*/
	@property GDNativeLibrary library()
	{
		return getLibrary();
	}
	/// ditto
	@property void library(GDNativeLibrary v)
	{
		setLibrary(v);
	}
}
