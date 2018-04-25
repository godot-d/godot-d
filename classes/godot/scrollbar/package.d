/**
Base class for scroll bars.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scrollbar;
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
Base class for scroll bars.

Scrollbars are a $(D Range) based $(D Control), that display a draggable area (the size of the page). Horizontal ($(D HScrollBar)) and Vertical ($(D VScrollBar)) versions are available.
*/
@GodotBaseClass struct ScrollBar
{
	static immutable string _GODOT_internal_name = "ScrollBar";
public:
@nogc nothrow:
	union { godot_object _godot_object; Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ScrollBar other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ScrollBar opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ScrollBar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ScrollBar");
		if(constructor is null) return typeof(this).init;
		return cast(ScrollBar)(constructor());
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
	package(godot) static GodotMethod!(void, double) _GODOT_set_custom_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_step") = _GODOT_set_custom_step;
	/**
	
	*/
	void setCustomStep(in double step)
	{
		_GODOT_set_custom_step.bind("ScrollBar", "set_custom_step");
		ptrcall!(void)(_GODOT_set_custom_step, _godot_object, step);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_custom_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_step") = _GODOT_get_custom_step;
	/**
	
	*/
	double getCustomStep() const
	{
		_GODOT_get_custom_step.bind("ScrollBar", "get_custom_step");
		return ptrcall!(double)(_GODOT_get_custom_step, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__drag_slave_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_drag_slave_input") = _GODOT__drag_slave_input;
	/**
	
	*/
	void _dragSlaveInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_drag_slave_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__drag_slave_exit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_drag_slave_exit") = _GODOT__drag_slave_exit;
	/**
	
	*/
	void _dragSlaveExit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_drag_slave_exit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property double customStep()
	{
		return getCustomStep();
	}
	/// ditto
	@property void customStep(double v)
	{
		setCustomStep(v);
	}
}
