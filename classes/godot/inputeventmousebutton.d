/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventmousebutton;
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
import godot.inputeventmouse;
import godot.inputeventwithmodifiers;
/**

*/
@GodotBaseClass struct InputEventMouseButton
{
	package(godot) enum string _GODOT_internal_name = "InputEventMouseButton";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEventMouse _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_button_index") GodotMethod!(long) getButtonIndex;
		@GodotName("get_factor") GodotMethod!(double) getFactor;
		@GodotName("is_doubleclick") GodotMethod!(bool) isDoubleclick;
		@GodotName("set_button_index") GodotMethod!(void, long) setButtonIndex;
		@GodotName("set_doubleclick") GodotMethod!(void, bool) setDoubleclick;
		@GodotName("set_factor") GodotMethod!(void, double) setFactor;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEventMouseButton other) const
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
	/// Construct a new instance of InputEventMouseButton.
	/// Note: use `memnew!InputEventMouseButton` instead.
	static InputEventMouseButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventMouseButton");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMouseButton)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getButtonIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getButtonIndex, _godot_object);
	}
	/**
	
	*/
	double getFactor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFactor, _godot_object);
	}
	/**
	
	*/
	bool isDoubleclick() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDoubleclick, _godot_object);
	}
	/**
	
	*/
	void setButtonIndex(in long button_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setButtonIndex, _godot_object, button_index);
	}
	/**
	
	*/
	void setDoubleclick(in bool doubleclick)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDoubleclick, _godot_object, doubleclick);
	}
	/**
	
	*/
	void setFactor(in double factor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFactor, _godot_object, factor);
	}
	/**
	
	*/
	void setPressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPressed, _godot_object, pressed);
	}
	/**
	
	*/
	@property long buttonIndex()
	{
		return getButtonIndex();
	}
	/// ditto
	@property void buttonIndex(long v)
	{
		setButtonIndex(v);
	}
	/**
	
	*/
	@property bool doubleclick()
	{
		return isDoubleclick();
	}
	/// ditto
	@property void doubleclick(bool v)
	{
		setDoubleclick(v);
	}
	/**
	
	*/
	@property double factor()
	{
		return getFactor();
	}
	/// ditto
	@property void factor(double v)
	{
		setFactor(v);
	}
	/**
	
	*/
	@property bool pressed()
	{
		return isPressed();
	}
	/// ditto
	@property void pressed(bool v)
	{
		setPressed(v);
	}
}
