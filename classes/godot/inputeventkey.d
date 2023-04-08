/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventkey;
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
import godot.inputeventwithmodifiers;
/**

*/
@GodotBaseClass struct InputEventKey
{
	package(godot) enum string _GODOT_internal_name = "InputEventKey";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEventWithModifiers _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_physical_scancode") GodotMethod!(long) getPhysicalScancode;
		@GodotName("get_physical_scancode_with_modifiers") GodotMethod!(long) getPhysicalScancodeWithModifiers;
		@GodotName("get_scancode") GodotMethod!(long) getScancode;
		@GodotName("get_scancode_with_modifiers") GodotMethod!(long) getScancodeWithModifiers;
		@GodotName("get_unicode") GodotMethod!(long) getUnicode;
		@GodotName("set_echo") GodotMethod!(void, bool) setEcho;
		@GodotName("set_physical_scancode") GodotMethod!(void, long) setPhysicalScancode;
		@GodotName("set_pressed") GodotMethod!(void, bool) setPressed;
		@GodotName("set_scancode") GodotMethod!(void, long) setScancode;
		@GodotName("set_unicode") GodotMethod!(void, long) setUnicode;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEventKey other) const
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
	/// Construct a new instance of InputEventKey.
	/// Note: use `memnew!InputEventKey` instead.
	static InputEventKey _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventKey");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventKey)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getPhysicalScancode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPhysicalScancode, _godot_object);
	}
	/**
	
	*/
	long getPhysicalScancodeWithModifiers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPhysicalScancodeWithModifiers, _godot_object);
	}
	/**
	
	*/
	long getScancode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getScancode, _godot_object);
	}
	/**
	
	*/
	long getScancodeWithModifiers() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getScancodeWithModifiers, _godot_object);
	}
	/**
	
	*/
	long getUnicode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUnicode, _godot_object);
	}
	/**
	
	*/
	void setEcho(in bool echo)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEcho, _godot_object, echo);
	}
	/**
	
	*/
	void setPhysicalScancode(in long scancode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicalScancode, _godot_object, scancode);
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
	void setScancode(in long scancode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScancode, _godot_object, scancode);
	}
	/**
	
	*/
	void setUnicode(in long unicode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUnicode, _godot_object, unicode);
	}
	/**
	
	*/
	@property bool echo()
	{
		return isEcho();
	}
	/// ditto
	@property void echo(bool v)
	{
		setEcho(v);
	}
	/**
	
	*/
	@property long physicalScancode()
	{
		return getPhysicalScancode();
	}
	/// ditto
	@property void physicalScancode(long v)
	{
		setPhysicalScancode(v);
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
	/**
	
	*/
	@property long scancode()
	{
		return getScancode();
	}
	/// ditto
	@property void scancode(long v)
	{
		setScancode(v);
	}
	/**
	
	*/
	@property long unicode()
	{
		return getUnicode();
	}
	/// ditto
	@property void unicode(long v)
	{
		setUnicode(v);
	}
}
