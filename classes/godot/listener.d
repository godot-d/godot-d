/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.listener;
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
import godot.spatial;
/**

*/
@GodotBaseClass struct Listener
{
	package(godot) enum string _GODOT_internal_name = "Listener";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("clear_current") GodotMethod!(void) clearCurrent;
		@GodotName("get_listener_transform") GodotMethod!(Transform) getListenerTransform;
		@GodotName("is_current") GodotMethod!(bool) isCurrent;
		@GodotName("make_current") GodotMethod!(void) makeCurrent;
	}
	/// 
	pragma(inline, true) bool opEquals(in Listener other) const
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
	/// Construct a new instance of Listener.
	/// Note: use `memnew!Listener` instead.
	static Listener _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Listener");
		if(constructor is null) return typeof(this).init;
		return cast(Listener)(constructor());
	}
	/**
	
	*/
	void clearCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCurrent, _godot_object);
	}
	/**
	
	*/
	Transform getListenerTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getListenerTransform, _godot_object);
	}
	/**
	
	*/
	bool isCurrent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCurrent, _godot_object);
	}
	/**
	
	*/
	void makeCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeCurrent, _godot_object);
	}
}
