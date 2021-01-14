/**
Base class for keys events with modifiers.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventwithmodifiers;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.inputevent;
import godot.resource;
/**
Base class for keys events with modifiers.

Contains keys events information with modifiers support like `Shift` or `Alt`. See $(D Node._input).
*/
@GodotBaseClass struct InputEventWithModifiers
{
	package(godot) enum string _GODOT_internal_name = "InputEventWithModifiers";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_alt") GodotMethod!(bool) getAlt;
		@GodotName("get_command") GodotMethod!(bool) getCommand;
		@GodotName("get_control") GodotMethod!(bool) getControl;
		@GodotName("get_metakey") GodotMethod!(bool) getMetakey;
		@GodotName("get_shift") GodotMethod!(bool) getShift;
		@GodotName("set_alt") GodotMethod!(void, bool) setAlt;
		@GodotName("set_command") GodotMethod!(void, bool) setCommand;
		@GodotName("set_control") GodotMethod!(void, bool) setControl;
		@GodotName("set_metakey") GodotMethod!(void, bool) setMetakey;
		@GodotName("set_shift") GodotMethod!(void, bool) setShift;
	}
	/// 
	pragma(inline, true) bool opEquals(in InputEventWithModifiers other) const
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
	/// Construct a new instance of InputEventWithModifiers.
	/// Note: use `memnew!InputEventWithModifiers` instead.
	static InputEventWithModifiers _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventWithModifiers");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventWithModifiers)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool getAlt() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAlt, _godot_object);
	}
	/**
	
	*/
	bool getCommand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCommand, _godot_object);
	}
	/**
	
	*/
	bool getControl() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getControl, _godot_object);
	}
	/**
	
	*/
	bool getMetakey() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getMetakey, _godot_object);
	}
	/**
	
	*/
	bool getShift() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getShift, _godot_object);
	}
	/**
	
	*/
	void setAlt(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlt, _godot_object, enable);
	}
	/**
	
	*/
	void setCommand(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCommand, _godot_object, enable);
	}
	/**
	
	*/
	void setControl(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setControl, _godot_object, enable);
	}
	/**
	
	*/
	void setMetakey(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMetakey, _godot_object, enable);
	}
	/**
	
	*/
	void setShift(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShift, _godot_object, enable);
	}
	/**
	State of the `Alt` modifier.
	*/
	@property bool alt()
	{
		return getAlt();
	}
	/// ditto
	@property void alt(bool v)
	{
		setAlt(v);
	}
	/**
	State of the `Command` modifier.
	*/
	@property bool command()
	{
		return getCommand();
	}
	/// ditto
	@property void command(bool v)
	{
		setCommand(v);
	}
	/**
	State of the `Ctrl` modifier.
	*/
	@property bool control()
	{
		return getControl();
	}
	/// ditto
	@property void control(bool v)
	{
		setControl(v);
	}
	/**
	State of the `Meta` modifier.
	*/
	@property bool meta()
	{
		return getMetakey();
	}
	/// ditto
	@property void meta(bool v)
	{
		setMetakey(v);
	}
	/**
	State of the `Shift` modifier.
	*/
	@property bool shift()
	{
		return getShift();
	}
	/// ditto
	@property void shift(bool v)
	{
		setShift(v);
	}
}
