/**
Tabs Control.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tabs;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.inputevent;
import godot.texture;
/**
Tabs Control.

Simple tabs control, similar to $(D TabContainer) but is only in charge of drawing tabs, not interact with children.
*/
@GodotBaseClass struct Tabs
{
	static immutable string _GODOT_internal_name = "Tabs";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Tabs other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Tabs opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Tabs _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Tabs");
		if(constructor is null) return typeof(this).init;
		return cast(Tabs)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum CloseButtonDisplayPolicy : int
	{
		/**
		
		*/
		closeButtonShowNever = 0,
		/**
		
		*/
		closeButtonShowActiveOnly = 1,
		/**
		
		*/
		closeButtonShowAlways = 2,
		/**
		
		*/
		closeButtonMax = 3,
	}
	/// 
	enum TabAlign : int
	{
		/**
		
		*/
		alignLeft = 0,
		/**
		
		*/
		alignCenter = 1,
		/**
		
		*/
		alignRight = 2,
		/**
		
		*/
		alignMax = 3,
	}
	/// 
	enum Constants : int
	{
		closeButtonShowNever = 0,
		alignLeft = 0,
		closeButtonShowActiveOnly = 1,
		alignCenter = 1,
		closeButtonShowAlways = 2,
		alignRight = 2,
		closeButtonMax = 3,
		alignMax = 3,
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
	package(godot) static GodotMethod!(long) _GODOT_get_tab_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_count") = _GODOT_get_tab_count;
	/**
	
	*/
	long getTabCount() const
	{
		_GODOT_get_tab_count.bind("Tabs", "get_tab_count");
		return ptrcall!(long)(_GODOT_get_tab_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_tab") = _GODOT_set_current_tab;
	/**
	
	*/
	void setCurrentTab(in long tab_idx)
	{
		_GODOT_set_current_tab.bind("Tabs", "set_current_tab");
		ptrcall!(void)(_GODOT_set_current_tab, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_tab") = _GODOT_get_current_tab;
	/**
	
	*/
	long getCurrentTab() const
	{
		_GODOT_get_current_tab.bind("Tabs", "get_current_tab");
		return ptrcall!(long)(_GODOT_get_current_tab, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_tab_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_title") = _GODOT_set_tab_title;
	/**
	
	*/
	void setTabTitle(StringArg1)(in long tab_idx, in StringArg1 title)
	{
		_GODOT_set_tab_title.bind("Tabs", "set_tab_title");
		ptrcall!(void)(_GODOT_set_tab_title, _godot_object, tab_idx, title);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_tab_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_title") = _GODOT_get_tab_title;
	/**
	
	*/
	String getTabTitle(in long tab_idx) const
	{
		_GODOT_get_tab_title.bind("Tabs", "get_tab_title");
		return ptrcall!(String)(_GODOT_get_tab_title, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_tab_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_icon") = _GODOT_set_tab_icon;
	/**
	
	*/
	void setTabIcon(in long tab_idx, Texture icon)
	{
		_GODOT_set_tab_icon.bind("Tabs", "set_tab_icon");
		ptrcall!(void)(_GODOT_set_tab_icon, _godot_object, tab_idx, icon);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_tab_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_icon") = _GODOT_get_tab_icon;
	/**
	
	*/
	Ref!Texture getTabIcon(in long tab_idx) const
	{
		_GODOT_get_tab_icon.bind("Tabs", "get_tab_icon");
		return ptrcall!(Texture)(_GODOT_get_tab_icon, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_tab_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_disabled") = _GODOT_set_tab_disabled;
	/**
	
	*/
	void setTabDisabled(in long tab_idx, in bool disabled)
	{
		_GODOT_set_tab_disabled.bind("Tabs", "set_tab_disabled");
		ptrcall!(void)(_GODOT_set_tab_disabled, _godot_object, tab_idx, disabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_tab_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_disabled") = _GODOT_get_tab_disabled;
	/**
	
	*/
	bool getTabDisabled(in long tab_idx) const
	{
		_GODOT_get_tab_disabled.bind("Tabs", "get_tab_disabled");
		return ptrcall!(bool)(_GODOT_get_tab_disabled, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_tab") = _GODOT_remove_tab;
	/**
	
	*/
	void removeTab(in long tab_idx)
	{
		_GODOT_remove_tab.bind("Tabs", "remove_tab");
		ptrcall!(void)(_GODOT_remove_tab, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, String, Texture) _GODOT_add_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_tab") = _GODOT_add_tab;
	/**
	
	*/
	void addTab(StringArg0)(in StringArg0 title = "", Texture icon = Texture.init)
	{
		_GODOT_add_tab.bind("Tabs", "add_tab");
		ptrcall!(void)(_GODOT_add_tab, _godot_object, title, icon);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_tab_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_align") = _GODOT_set_tab_align;
	/**
	
	*/
	void setTabAlign(in long _align)
	{
		_GODOT_set_tab_align.bind("Tabs", "set_tab_align");
		ptrcall!(void)(_GODOT_set_tab_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(Tabs.TabAlign) _GODOT_get_tab_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_align") = _GODOT_get_tab_align;
	/**
	
	*/
	Tabs.TabAlign getTabAlign() const
	{
		_GODOT_get_tab_align.bind("Tabs", "get_tab_align");
		return ptrcall!(Tabs.TabAlign)(_GODOT_get_tab_align, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_tab_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_offset") = _GODOT_get_tab_offset;
	/**
	
	*/
	long getTabOffset() const
	{
		_GODOT_get_tab_offset.bind("Tabs", "get_tab_offset");
		return ptrcall!(long)(_GODOT_get_tab_offset, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_offset_buttons_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset_buttons_visible") = _GODOT_get_offset_buttons_visible;
	/**
	
	*/
	bool getOffsetButtonsVisible() const
	{
		_GODOT_get_offset_buttons_visible.bind("Tabs", "get_offset_buttons_visible");
		return ptrcall!(bool)(_GODOT_get_offset_buttons_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_ensure_tab_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "ensure_tab_visible") = _GODOT_ensure_tab_visible;
	/**
	
	*/
	void ensureTabVisible(in long idx)
	{
		_GODOT_ensure_tab_visible.bind("Tabs", "ensure_tab_visible");
		ptrcall!(void)(_GODOT_ensure_tab_visible, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Rect2, long) _GODOT_get_tab_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_rect") = _GODOT_get_tab_rect;
	/**
	Returns tab $(D Rect2) with local position and size.
	*/
	Rect2 getTabRect(in long tab_idx) const
	{
		_GODOT_get_tab_rect.bind("Tabs", "get_tab_rect");
		return ptrcall!(Rect2)(_GODOT_get_tab_rect, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_move_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_tab") = _GODOT_move_tab;
	/**
	Rearrange tab.
	*/
	void moveTab(in long from, in long to)
	{
		_GODOT_move_tab.bind("Tabs", "move_tab");
		ptrcall!(void)(_GODOT_move_tab, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_tab_close_display_policy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_close_display_policy") = _GODOT_set_tab_close_display_policy;
	/**
	
	*/
	void setTabCloseDisplayPolicy(in long policy)
	{
		_GODOT_set_tab_close_display_policy.bind("Tabs", "set_tab_close_display_policy");
		ptrcall!(void)(_GODOT_set_tab_close_display_policy, _godot_object, policy);
	}
	package(godot) static GodotMethod!(Tabs.CloseButtonDisplayPolicy) _GODOT_get_tab_close_display_policy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_close_display_policy") = _GODOT_get_tab_close_display_policy;
	/**
	
	*/
	Tabs.CloseButtonDisplayPolicy getTabCloseDisplayPolicy() const
	{
		_GODOT_get_tab_close_display_policy.bind("Tabs", "get_tab_close_display_policy");
		return ptrcall!(Tabs.CloseButtonDisplayPolicy)(_GODOT_get_tab_close_display_policy, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_scrolling_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scrolling_enabled") = _GODOT_set_scrolling_enabled;
	/**
	
	*/
	void setScrollingEnabled(in bool enabled)
	{
		_GODOT_set_scrolling_enabled.bind("Tabs", "set_scrolling_enabled");
		ptrcall!(void)(_GODOT_set_scrolling_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_scrolling_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scrolling_enabled") = _GODOT_get_scrolling_enabled;
	/**
	
	*/
	bool getScrollingEnabled() const
	{
		_GODOT_get_scrolling_enabled.bind("Tabs", "get_scrolling_enabled");
		return ptrcall!(bool)(_GODOT_get_scrolling_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_drag_to_rearrange_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drag_to_rearrange_enabled") = _GODOT_set_drag_to_rearrange_enabled;
	/**
	
	*/
	void setDragToRearrangeEnabled(in bool enabled)
	{
		_GODOT_set_drag_to_rearrange_enabled.bind("Tabs", "set_drag_to_rearrange_enabled");
		ptrcall!(void)(_GODOT_set_drag_to_rearrange_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_drag_to_rearrange_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drag_to_rearrange_enabled") = _GODOT_get_drag_to_rearrange_enabled;
	/**
	
	*/
	bool getDragToRearrangeEnabled() const
	{
		_GODOT_get_drag_to_rearrange_enabled.bind("Tabs", "get_drag_to_rearrange_enabled");
		return ptrcall!(bool)(_GODOT_get_drag_to_rearrange_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_tabs_rearrange_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tabs_rearrange_group") = _GODOT_set_tabs_rearrange_group;
	/**
	
	*/
	void setTabsRearrangeGroup(in long group_id)
	{
		_GODOT_set_tabs_rearrange_group.bind("Tabs", "set_tabs_rearrange_group");
		ptrcall!(void)(_GODOT_set_tabs_rearrange_group, _godot_object, group_id);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_tabs_rearrange_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tabs_rearrange_group") = _GODOT_get_tabs_rearrange_group;
	/**
	
	*/
	long getTabsRearrangeGroup() const
	{
		_GODOT_get_tabs_rearrange_group.bind("Tabs", "get_tabs_rearrange_group");
		return ptrcall!(long)(_GODOT_get_tabs_rearrange_group, _godot_object);
	}
	/**
	
	*/
	@property long currentTab()
	{
		return getCurrentTab();
	}
	/// ditto
	@property void currentTab(long v)
	{
		setCurrentTab(v);
	}
	/**
	
	*/
	@property Tabs.TabAlign tabAlign()
	{
		return getTabAlign();
	}
	/// ditto
	@property void tabAlign(long v)
	{
		setTabAlign(v);
	}
	/**
	
	*/
	@property Tabs.CloseButtonDisplayPolicy tabCloseDisplayPolicy()
	{
		return getTabCloseDisplayPolicy();
	}
	/// ditto
	@property void tabCloseDisplayPolicy(long v)
	{
		setTabCloseDisplayPolicy(v);
	}
	/**
	
	*/
	@property bool scrollingEnabled()
	{
		return getScrollingEnabled();
	}
	/// ditto
	@property void scrollingEnabled(bool v)
	{
		setScrollingEnabled(v);
	}
	/**
	
	*/
	@property bool dragToRearrangeEnabled()
	{
		return getDragToRearrangeEnabled();
	}
	/// ditto
	@property void dragToRearrangeEnabled(bool v)
	{
		setDragToRearrangeEnabled(v);
	}
}
