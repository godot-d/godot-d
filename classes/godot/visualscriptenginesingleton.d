/**
A Visual Script node returning a singleton from $(D @GlobalScope).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptenginesingleton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**
A Visual Script node returning a singleton from $(D @GlobalScope).


*/
@GodotBaseClass struct VisualScriptEngineSingleton
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptEngineSingleton";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_singleton") GodotMethod!(String) getSingleton;
		@GodotName("set_singleton") GodotMethod!(void, String) setSingleton;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptEngineSingleton other) const
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
	/// Construct a new instance of VisualScriptEngineSingleton.
	/// Note: use `memnew!VisualScriptEngineSingleton` instead.
	static VisualScriptEngineSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptEngineSingleton");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptEngineSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getSingleton()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSingleton, _godot_object);
	}
	/**
	
	*/
	void setSingleton(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSingleton, _godot_object, name);
	}
	/**
	The singleton's name.
	*/
	@property String constant()
	{
		return getSingleton();
	}
	/// ditto
	@property void constant(String v)
	{
		setSingleton(v);
	}
}
