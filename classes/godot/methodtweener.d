/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.methodtweener;
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
import godot.tweener;
/**

*/
@GodotBaseClass struct MethodTweener
{
	package(godot) enum string _GODOT_internal_name = "MethodTweener";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Tweener _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("set_delay") GodotMethod!(MethodTweener, double) setDelay;
		@GodotName("set_ease") GodotMethod!(MethodTweener, long) setEase;
		@GodotName("set_trans") GodotMethod!(MethodTweener, long) setTrans;
	}
	/// 
	pragma(inline, true) bool opEquals(in MethodTweener other) const
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
	/// Construct a new instance of MethodTweener.
	/// Note: use `memnew!MethodTweener` instead.
	static MethodTweener _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MethodTweener");
		if(constructor is null) return typeof(this).init;
		return cast(MethodTweener)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!MethodTweener setDelay(in double delay)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MethodTweener)(GDNativeClassBinding.setDelay, _godot_object, delay);
	}
	/**
	
	*/
	Ref!MethodTweener setEase(in long ease)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MethodTweener)(GDNativeClassBinding.setEase, _godot_object, ease);
	}
	/**
	
	*/
	Ref!MethodTweener setTrans(in long trans)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MethodTweener)(GDNativeClassBinding.setTrans, _godot_object, trans);
	}
}
