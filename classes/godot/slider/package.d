/**
Base class for GUI Sliders.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.slider;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.range;
import godot.inputevent;
/**
Base class for GUI Sliders.


*/
@GodotBaseClass struct Slider
{
	static immutable string _GODOT_internal_name = "Slider";
public:
@nogc nothrow:
	union { godot_object _godot_object; Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Slider other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Slider opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Slider _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Slider");
		if(constructor is null) return typeof(this).init;
		return cast(Slider)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_ticks;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ticks") = _GODOT_set_ticks;
	/**
	
	*/
	void setTicks(in long count)
	{
		_GODOT_set_ticks.bind("Slider", "set_ticks");
		ptrcall!(void)(_GODOT_set_ticks, _godot_object, count);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_ticks;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ticks") = _GODOT_get_ticks;
	/**
	
	*/
	long getTicks() const
	{
		_GODOT_get_ticks.bind("Slider", "get_ticks");
		return ptrcall!(long)(_GODOT_get_ticks, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_ticks_on_borders;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ticks_on_borders") = _GODOT_get_ticks_on_borders;
	/**
	
	*/
	bool getTicksOnBorders() const
	{
		_GODOT_get_ticks_on_borders.bind("Slider", "get_ticks_on_borders");
		return ptrcall!(bool)(_GODOT_get_ticks_on_borders, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ticks_on_borders;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ticks_on_borders") = _GODOT_set_ticks_on_borders;
	/**
	
	*/
	void setTicksOnBorders(in bool ticks_on_border)
	{
		_GODOT_set_ticks_on_borders.bind("Slider", "set_ticks_on_borders");
		ptrcall!(void)(_GODOT_set_ticks_on_borders, _godot_object, ticks_on_border);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editable") = _GODOT_set_editable;
	/**
	
	*/
	void setEditable(in bool editable)
	{
		_GODOT_set_editable.bind("Slider", "set_editable");
		ptrcall!(void)(_GODOT_set_editable, _godot_object, editable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editable") = _GODOT_is_editable;
	/**
	
	*/
	bool isEditable() const
	{
		_GODOT_is_editable.bind("Slider", "is_editable");
		return ptrcall!(bool)(_GODOT_is_editable, _godot_object);
	}
	/**
	
	*/
	@property bool editable()
	{
		return isEditable();
	}
	/// ditto
	@property void editable(bool v)
	{
		setEditable(v);
	}
	/**
	
	*/
	@property long tickCount()
	{
		return getTicks();
	}
	/// ditto
	@property void tickCount(long v)
	{
		setTicks(v);
	}
	/**
	
	*/
	@property bool ticksOnBorders()
	{
		return getTicksOnBorders();
	}
	/// ditto
	@property void ticksOnBorders(bool v)
	{
		setTicksOnBorders(v);
	}
	/**
	
	*/
	@property long focusMode()
	{
		return getFocusMode();
	}
	/// ditto
	@property void focusMode(long v)
	{
		setFocusMode(v);
	}
}
