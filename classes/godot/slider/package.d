/**
Base class for GUI sliders.

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
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
/**
Base class for GUI sliders.


*/
@GodotBaseClass struct Slider
{
	enum string _GODOT_internal_name = "Slider";
public:
@nogc nothrow:
	union { godot_object _godot_object; Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("get_ticks") GodotMethod!(long) getTicks;
		@GodotName("get_ticks_on_borders") GodotMethod!(bool) getTicksOnBorders;
		@GodotName("is_editable") GodotMethod!(bool) isEditable;
		@GodotName("is_scrollable") GodotMethod!(bool) isScrollable;
		@GodotName("set_editable") GodotMethod!(void, bool) setEditable;
		@GodotName("set_scrollable") GodotMethod!(void, bool) setScrollable;
		@GodotName("set_ticks") GodotMethod!(void, long) setTicks;
		@GodotName("set_ticks_on_borders") GodotMethod!(void, bool) setTicksOnBorders;
	}
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
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long getTicks() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTicks, _godot_object);
	}
	/**
	
	*/
	bool getTicksOnBorders() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getTicksOnBorders, _godot_object);
	}
	/**
	
	*/
	bool isEditable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEditable, _godot_object);
	}
	/**
	
	*/
	bool isScrollable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isScrollable, _godot_object);
	}
	/**
	
	*/
	void setEditable(in bool editable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEditable, _godot_object, editable);
	}
	/**
	
	*/
	void setScrollable(in bool scrollable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScrollable, _godot_object, scrollable);
	}
	/**
	
	*/
	void setTicks(in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTicks, _godot_object, count);
	}
	/**
	
	*/
	void setTicksOnBorders(in bool ticks_on_border)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTicksOnBorders, _godot_object, ticks_on_border);
	}
	/**
	If `true`, the slider can be interacted with. If `false`, the value can be changed only by code.
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
	If `true`, the value can be changed using the mouse wheel.
	*/
	@property bool scrollable()
	{
		return isScrollable();
	}
	/// ditto
	@property void scrollable(bool v)
	{
		setScrollable(v);
	}
	/**
	Number of ticks displayed on the slider, including border ticks. Ticks are uniformly-distributed value markers.
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
	If `true`, the slider will display ticks for minimum and maximum values.
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
}
