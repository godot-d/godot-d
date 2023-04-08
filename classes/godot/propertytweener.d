/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.propertytweener;
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
@GodotBaseClass struct PropertyTweener
{
	package(godot) enum string _GODOT_internal_name = "PropertyTweener";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Tweener _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("as_relative") GodotMethod!(PropertyTweener) asRelative;
		@GodotName("from") GodotMethod!(PropertyTweener, Variant) from;
		@GodotName("from_current") GodotMethod!(PropertyTweener) fromCurrent;
		@GodotName("set_delay") GodotMethod!(PropertyTweener, double) setDelay;
		@GodotName("set_ease") GodotMethod!(PropertyTweener, long) setEase;
		@GodotName("set_trans") GodotMethod!(PropertyTweener, long) setTrans;
	}
	/// 
	pragma(inline, true) bool opEquals(in PropertyTweener other) const
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
	/// Construct a new instance of PropertyTweener.
	/// Note: use `memnew!PropertyTweener` instead.
	static PropertyTweener _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PropertyTweener");
		if(constructor is null) return typeof(this).init;
		return cast(PropertyTweener)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!PropertyTweener asRelative()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PropertyTweener)(GDNativeClassBinding.asRelative, _godot_object);
	}
	/**
	
	*/
	Ref!PropertyTweener from(VariantArg0)(in VariantArg0 value)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PropertyTweener)(GDNativeClassBinding.from, _godot_object, value);
	}
	/**
	
	*/
	Ref!PropertyTweener fromCurrent()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PropertyTweener)(GDNativeClassBinding.fromCurrent, _godot_object);
	}
	/**
	
	*/
	Ref!PropertyTweener setDelay(in double delay)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PropertyTweener)(GDNativeClassBinding.setDelay, _godot_object, delay);
	}
	/**
	
	*/
	Ref!PropertyTweener setEase(in long ease)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PropertyTweener)(GDNativeClassBinding.setEase, _godot_object, ease);
	}
	/**
	
	*/
	Ref!PropertyTweener setTrans(in long trans)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PropertyTweener)(GDNativeClassBinding.setTrans, _godot_object, trans);
	}
}
