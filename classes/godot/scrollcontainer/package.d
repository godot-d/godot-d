/**
A helper node for displaying scrollable elements (e.g. lists).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scrollcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.container;
import godot.inputevent;
import godot.hscrollbar;
import godot.vscrollbar;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
A helper node for displaying scrollable elements (e.g. lists).

A ScrollContainer node with a $(D Control) child and scrollbar child ($(D HScrollbar), $(D VScrollBar), or both) will only draw the Control within the ScrollContainer area. Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer. Scrollbars will also automatically resize the grabber based on the minimum_size of the Control relative to the ScrollContainer. Works great with a $(D Panel) control. You can set EXPAND on children size flags, so they will upscale to ScrollContainer size if ScrollContainer size is bigger (scroll is invisible for chosen dimension).
*/
@GodotBaseClass struct ScrollContainer
{
	enum string _GODOT_internal_name = "ScrollContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_scroll_moved") GodotMethod!(void, double) _scrollMoved;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("set_enable_h_scroll") GodotMethod!(void, bool) setEnableHScroll;
		@GodotName("is_h_scroll_enabled") GodotMethod!(bool) isHScrollEnabled;
		@GodotName("set_enable_v_scroll") GodotMethod!(void, bool) setEnableVScroll;
		@GodotName("is_v_scroll_enabled") GodotMethod!(bool) isVScrollEnabled;
		@GodotName("_update_scrollbar_position") GodotMethod!(void) _updateScrollbarPosition;
		@GodotName("set_h_scroll") GodotMethod!(void, long) setHScroll;
		@GodotName("get_h_scroll") GodotMethod!(long) getHScroll;
		@GodotName("set_v_scroll") GodotMethod!(void, long) setVScroll;
		@GodotName("get_v_scroll") GodotMethod!(long) getVScroll;
		@GodotName("set_deadzone") GodotMethod!(void, long) setDeadzone;
		@GodotName("get_deadzone") GodotMethod!(long) getDeadzone;
		@GodotName("get_h_scrollbar") GodotMethod!(HScrollBar) getHScrollbar;
		@GodotName("get_v_scrollbar") GodotMethod!(VScrollBar) getVScrollbar;
	}
	bool opEquals(in ScrollContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ScrollContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ScrollContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ScrollContainer");
		if(constructor is null) return typeof(this).init;
		return cast(ScrollContainer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _scrollMoved(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setEnableHScroll(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnableHScroll, _godot_object, enable);
	}
	/**
	
	*/
	bool isHScrollEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHScrollEnabled, _godot_object);
	}
	/**
	
	*/
	void setEnableVScroll(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnableVScroll, _godot_object, enable);
	}
	/**
	
	*/
	bool isVScrollEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isVScrollEnabled, _godot_object);
	}
	/**
	
	*/
	void _updateScrollbarPosition()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scrollbar_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setHScroll(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHScroll, _godot_object, value);
	}
	/**
	
	*/
	long getHScroll() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHScroll, _godot_object);
	}
	/**
	
	*/
	void setVScroll(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVScroll, _godot_object, value);
	}
	/**
	
	*/
	long getVScroll() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVScroll, _godot_object);
	}
	/**
	
	*/
	void setDeadzone(in long deadzone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDeadzone, _godot_object, deadzone);
	}
	/**
	
	*/
	long getDeadzone() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDeadzone, _godot_object);
	}
	/**
	
	*/
	HScrollBar getHScrollbar()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(HScrollBar)(_classBinding.getHScrollbar, _godot_object);
	}
	/**
	
	*/
	VScrollBar getVScrollbar()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VScrollBar)(_classBinding.getVScrollbar, _godot_object);
	}
	/**
	If `true`, enables horizontal scrolling.
	*/
	@property bool scrollHorizontalEnabled()
	{
		return isHScrollEnabled();
	}
	/// ditto
	@property void scrollHorizontalEnabled(bool v)
	{
		setEnableHScroll(v);
	}
	/**
	The current horizontal scroll value.
	*/
	@property long scrollHorizontal()
	{
		return getHScroll();
	}
	/// ditto
	@property void scrollHorizontal(long v)
	{
		setHScroll(v);
	}
	/**
	If `true`, enables vertical scrolling.
	*/
	@property bool scrollVerticalEnabled()
	{
		return isVScrollEnabled();
	}
	/// ditto
	@property void scrollVerticalEnabled(bool v)
	{
		setEnableVScroll(v);
	}
	/**
	The current vertical scroll value.
	*/
	@property long scrollVertical()
	{
		return getVScroll();
	}
	/// ditto
	@property void scrollVertical(long v)
	{
		setVScroll(v);
	}
	/**
	
	*/
	@property long scrollDeadzone()
	{
		return getDeadzone();
	}
	/// ditto
	@property void scrollDeadzone(long v)
	{
		setDeadzone(v);
	}
}
