/**
A helper node for displaying scrollable elements such as lists.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scrollcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.container;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.hscrollbar;
import godot.vscrollbar;
/**
A helper node for displaying scrollable elements such as lists.

A ScrollContainer node meant to contain a $(D Control) child. ScrollContainers will automatically create a scrollbar child ($(D HScrollBar), $(D VScrollBar), or both) when needed and will only draw the Control within the ScrollContainer area. Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer. Scrollbars will also automatically resize the grabber based on the $(D Control.rectMinSize) of the Control relative to the ScrollContainer. Works great with a $(D Panel) control. You can set `EXPAND` on the children's size flags, so they will upscale to the ScrollContainer's size if it's larger (scroll is invisible for the chosen dimension).
*/
@GodotBaseClass struct ScrollContainer
{
	package(godot) enum string _GODOT_internal_name = "ScrollContainer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_ensure_focused_visible") GodotMethod!(void, Control) _ensureFocusedVisible;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_scroll_moved") GodotMethod!(void, double) _scrollMoved;
		@GodotName("_update_scrollbar_position") GodotMethod!(void) _updateScrollbarPosition;
		@GodotName("get_deadzone") GodotMethod!(long) getDeadzone;
		@GodotName("get_h_scroll") GodotMethod!(long) getHScroll;
		@GodotName("get_h_scrollbar") GodotMethod!(HScrollBar) getHScrollbar;
		@GodotName("get_v_scroll") GodotMethod!(long) getVScroll;
		@GodotName("get_v_scrollbar") GodotMethod!(VScrollBar) getVScrollbar;
		@GodotName("is_following_focus") GodotMethod!(bool) isFollowingFocus;
		@GodotName("is_h_scroll_enabled") GodotMethod!(bool) isHScrollEnabled;
		@GodotName("is_v_scroll_enabled") GodotMethod!(bool) isVScrollEnabled;
		@GodotName("set_deadzone") GodotMethod!(void, long) setDeadzone;
		@GodotName("set_enable_h_scroll") GodotMethod!(void, bool) setEnableHScroll;
		@GodotName("set_enable_v_scroll") GodotMethod!(void, bool) setEnableVScroll;
		@GodotName("set_follow_focus") GodotMethod!(void, bool) setFollowFocus;
		@GodotName("set_h_scroll") GodotMethod!(void, long) setHScroll;
		@GodotName("set_v_scroll") GodotMethod!(void, long) setVScroll;
	}
	/// 
	pragma(inline, true) bool opEquals(in ScrollContainer other) const
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
	/// Construct a new instance of ScrollContainer.
	/// Note: use `memnew!ScrollContainer` instead.
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
	void _ensureFocusedVisible(Control arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_ensure_focused_visible");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
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
	void _scrollMoved(in double arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateScrollbarPosition()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_scrollbar_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long getDeadzone() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDeadzone, _godot_object);
	}
	/**
	
	*/
	long getHScroll() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getHScroll, _godot_object);
	}
	/**
	Returns the horizontal scrollbar $(D HScrollBar) of this $(D ScrollContainer).
	*/
	HScrollBar getHScrollbar()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(HScrollBar)(GDNativeClassBinding.getHScrollbar, _godot_object);
	}
	/**
	
	*/
	long getVScroll() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVScroll, _godot_object);
	}
	/**
	Returns the vertical scrollbar $(D VScrollBar) of this $(D ScrollContainer).
	*/
	VScrollBar getVScrollbar()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VScrollBar)(GDNativeClassBinding.getVScrollbar, _godot_object);
	}
	/**
	
	*/
	bool isFollowingFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFollowingFocus, _godot_object);
	}
	/**
	
	*/
	bool isHScrollEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHScrollEnabled, _godot_object);
	}
	/**
	
	*/
	bool isVScrollEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVScrollEnabled, _godot_object);
	}
	/**
	
	*/
	void setDeadzone(in long deadzone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDeadzone, _godot_object, deadzone);
	}
	/**
	
	*/
	void setEnableHScroll(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnableHScroll, _godot_object, enable);
	}
	/**
	
	*/
	void setEnableVScroll(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnableVScroll, _godot_object, enable);
	}
	/**
	
	*/
	void setFollowFocus(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFollowFocus, _godot_object, enabled);
	}
	/**
	
	*/
	void setHScroll(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHScroll, _godot_object, value);
	}
	/**
	
	*/
	void setVScroll(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVScroll, _godot_object, value);
	}
	/**
	If `true`, the ScrollContainer will automatically scroll to focused children (including indirect children) to make sure they are fully visible.
	*/
	@property bool followFocus()
	{
		return isFollowingFocus();
	}
	/// ditto
	@property void followFocus(bool v)
	{
		setFollowFocus(v);
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
}
