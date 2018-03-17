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
/**
A helper node for displaying scrollable elements (e.g. lists).

A ScrollContainer node with a $(D Control) child and scrollbar child ($(D HScrollbar), $(D VScrollBar), or both) will only draw the Control within the ScrollContainer area.  Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer.  Scrollbars will also automatically resize the grabber based on the minimum_size of the Control relative to the ScrollContainer.  Works great with a $(D Panel) control.  You can set EXPAND on children size flags, so they will upscale to ScrollContainer size if ScrollContainer size is bigger (scroll is invisible for chosen dimension).
*/
@GodotBaseClass struct ScrollContainer
{
	static immutable string _GODOT_internal_name = "ScrollContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, double) _GODOT__scroll_moved;
	package(godot) alias _GODOT_methodBindInfo(string name : "_scroll_moved") = _GODOT__scroll_moved;
	/**
	
	*/
	void _scrollMoved(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
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
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_h_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_h_scroll") = _GODOT_set_enable_h_scroll;
	/**
	
	*/
	void setEnableHScroll(in bool enable)
	{
		_GODOT_set_enable_h_scroll.bind("ScrollContainer", "set_enable_h_scroll");
		ptrcall!(void)(_GODOT_set_enable_h_scroll, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_h_scroll_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_h_scroll_enabled") = _GODOT_is_h_scroll_enabled;
	/**
	
	*/
	bool isHScrollEnabled() const
	{
		_GODOT_is_h_scroll_enabled.bind("ScrollContainer", "is_h_scroll_enabled");
		return ptrcall!(bool)(_GODOT_is_h_scroll_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_v_scroll") = _GODOT_set_enable_v_scroll;
	/**
	
	*/
	void setEnableVScroll(in bool enable)
	{
		_GODOT_set_enable_v_scroll.bind("ScrollContainer", "set_enable_v_scroll");
		ptrcall!(void)(_GODOT_set_enable_v_scroll, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_v_scroll_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_v_scroll_enabled") = _GODOT_is_v_scroll_enabled;
	/**
	
	*/
	bool isVScrollEnabled() const
	{
		_GODOT_is_v_scroll_enabled.bind("ScrollContainer", "is_v_scroll_enabled");
		return ptrcall!(bool)(_GODOT_is_v_scroll_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_scrollbar_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_scrollbar_position") = _GODOT__update_scrollbar_position;
	/**
	
	*/
	void _updateScrollbarPosition()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scrollbar_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_h_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_scroll") = _GODOT_set_h_scroll;
	/**
	
	*/
	void setHScroll(in long value)
	{
		_GODOT_set_h_scroll.bind("ScrollContainer", "set_h_scroll");
		ptrcall!(void)(_GODOT_set_h_scroll, _godot_object, value);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_h_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_scroll") = _GODOT_get_h_scroll;
	/**
	
	*/
	long getHScroll() const
	{
		_GODOT_get_h_scroll.bind("ScrollContainer", "get_h_scroll");
		return ptrcall!(long)(_GODOT_get_h_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_scroll") = _GODOT_set_v_scroll;
	/**
	
	*/
	void setVScroll(in long value)
	{
		_GODOT_set_v_scroll.bind("ScrollContainer", "set_v_scroll");
		ptrcall!(void)(_GODOT_set_v_scroll, _godot_object, value);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_scroll") = _GODOT_get_v_scroll;
	/**
	
	*/
	long getVScroll() const
	{
		_GODOT_get_v_scroll.bind("ScrollContainer", "get_v_scroll");
		return ptrcall!(long)(_GODOT_get_v_scroll, _godot_object);
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
	The current horizontal scroll value.
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
}
