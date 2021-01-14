/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventpangesture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputeventgesture;
import godot.inputeventwithmodifiers;
/**

*/
@GodotBaseClass struct InputEventPanGesture
{
	package(godot) enum string _GODOT_internal_name = "InputEventPanGesture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEventGesture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_delta") GodotMethod!(Vector2) getDelta;
		@GodotName("set_delta") GodotMethod!(void, Vector2) setDelta;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEventPanGesture other) const
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
	/// Construct a new instance of InputEventPanGesture.
	/// Note: use `memnew!InputEventPanGesture` instead.
	static InputEventPanGesture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventPanGesture");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventPanGesture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Vector2 getDelta() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getDelta, _godot_object);
	}
	/**
	
	*/
	void setDelta(in Vector2 delta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDelta, _godot_object, delta);
	}
	/**
	
	*/
	@property Vector2 delta()
	{
		return getDelta();
	}
	/// ditto
	@property void delta(Vector2 v)
	{
		setDelta(v);
	}
}
