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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.inputevent;
import godot.resource;
import godot.reference;
/**
Base class for keys events with modifiers.

Contains keys events information with modifiers support like `SHIFT` or `ALT`. See $(D Node._input).
*/
@GodotBaseClass struct InputEventWithModifiers
{
	enum string _GODOT_internal_name = "InputEventWithModifiers";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_alt") GodotMethod!(void, bool) setAlt;
		@GodotName("get_alt") GodotMethod!(bool) getAlt;
		@GodotName("set_shift") GodotMethod!(void, bool) setShift;
		@GodotName("get_shift") GodotMethod!(bool) getShift;
		@GodotName("set_control") GodotMethod!(void, bool) setControl;
		@GodotName("get_control") GodotMethod!(bool) getControl;
		@GodotName("set_metakey") GodotMethod!(void, bool) setMetakey;
		@GodotName("get_metakey") GodotMethod!(bool) getMetakey;
		@GodotName("set_command") GodotMethod!(void, bool) setCommand;
		@GodotName("get_command") GodotMethod!(bool) getCommand;
	}
	bool opEquals(in InputEventWithModifiers other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventWithModifiers opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setAlt(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAlt, _godot_object, enable);
	}
	/**
	
	*/
	bool getAlt() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAlt, _godot_object);
	}
	/**
	
	*/
	void setShift(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShift, _godot_object, enable);
	}
	/**
	
	*/
	bool getShift() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getShift, _godot_object);
	}
	/**
	
	*/
	void setControl(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setControl, _godot_object, enable);
	}
	/**
	
	*/
	bool getControl() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getControl, _godot_object);
	}
	/**
	
	*/
	void setMetakey(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMetakey, _godot_object, enable);
	}
	/**
	
	*/
	bool getMetakey() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getMetakey, _godot_object);
	}
	/**
	
	*/
	void setCommand(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCommand, _godot_object, enable);
	}
	/**
	
	*/
	bool getCommand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCommand, _godot_object);
	}
	/**
	State of the Alt modifier.
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
	State of the Shift modifier.
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
	/**
	State of the Ctrl modifier.
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
	State of the Meta modifier.
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
	State of the Command modifier.
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
}
