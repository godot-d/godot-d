/**
Tabbed Container.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tabcontainer;
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
import godot.popup;
/**
Tabbed Container.

Sets the active tab's `visible` property to the value `true`. Sets all other children's to `false`.
Ignores non-$(D Control) children.
Individual tabs are always visible unless you use $(D setTabDisabled) and $(D setTabTitle) to hide it.
To hide only a tab's content, nest the content inside a child $(D Control), so it receives the `TabContainer`'s visibility setting instead.
*/
@GodotBaseClass struct TabContainer
{
	static immutable string _GODOT_internal_name = "TabContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in TabContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TabContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TabContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TabContainer");
		if(constructor is null) return typeof(this).init;
		return cast(TabContainer)(constructor());
	}
	@disable new(size_t s);
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
	}
	/// 
	enum Constants : int
	{
		alignLeft = 0,
		alignCenter = 1,
		alignRight = 2,
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
	Returns the number of tabs.
	*/
	long getTabCount() const
	{
		_GODOT_get_tab_count.bind("TabContainer", "get_tab_count");
		return ptrcall!(long)(_GODOT_get_tab_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current_tab") = _GODOT_set_current_tab;
	/**
	
	*/
	void setCurrentTab(in long tab_idx)
	{
		_GODOT_set_current_tab.bind("TabContainer", "set_current_tab");
		ptrcall!(void)(_GODOT_set_current_tab, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_tab") = _GODOT_get_current_tab;
	/**
	
	*/
	long getCurrentTab() const
	{
		_GODOT_get_current_tab.bind("TabContainer", "get_current_tab");
		return ptrcall!(long)(_GODOT_get_current_tab, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_previous_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_previous_tab") = _GODOT_get_previous_tab;
	/**
	Returns the previously active tab index.
	*/
	long getPreviousTab() const
	{
		_GODOT_get_previous_tab.bind("TabContainer", "get_previous_tab");
		return ptrcall!(long)(_GODOT_get_previous_tab, _godot_object);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_current_tab_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_tab_control") = _GODOT_get_current_tab_control;
	/**
	Returns the child $(D Control) node located at the active tab index.
	*/
	Control getCurrentTabControl() const
	{
		_GODOT_get_current_tab_control.bind("TabContainer", "get_current_tab_control");
		return ptrcall!(Control)(_GODOT_get_current_tab_control, _godot_object);
	}
	package(godot) static GodotMethod!(Control, long) _GODOT_get_tab_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_control") = _GODOT_get_tab_control;
	/**
	Returns the currently visible tab's $(D Control) node.
	*/
	Control getTabControl(in long idx) const
	{
		_GODOT_get_tab_control.bind("TabContainer", "get_tab_control");
		return ptrcall!(Control)(_GODOT_get_tab_control, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_tab_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_align") = _GODOT_set_tab_align;
	/**
	
	*/
	void setTabAlign(in long _align)
	{
		_GODOT_set_tab_align.bind("TabContainer", "set_tab_align");
		ptrcall!(void)(_GODOT_set_tab_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(TabContainer.TabAlign) _GODOT_get_tab_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_align") = _GODOT_get_tab_align;
	/**
	
	*/
	TabContainer.TabAlign getTabAlign() const
	{
		_GODOT_get_tab_align.bind("TabContainer", "get_tab_align");
		return ptrcall!(TabContainer.TabAlign)(_GODOT_get_tab_align, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_tabs_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tabs_visible") = _GODOT_set_tabs_visible;
	/**
	
	*/
	void setTabsVisible(in bool visible)
	{
		_GODOT_set_tabs_visible.bind("TabContainer", "set_tabs_visible");
		ptrcall!(void)(_GODOT_set_tabs_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_are_tabs_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "are_tabs_visible") = _GODOT_are_tabs_visible;
	/**
	
	*/
	bool areTabsVisible() const
	{
		_GODOT_are_tabs_visible.bind("TabContainer", "are_tabs_visible");
		return ptrcall!(bool)(_GODOT_are_tabs_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_tab_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_title") = _GODOT_set_tab_title;
	/**
	Sets a title for the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with $(D setTabTitle).
	*/
	void setTabTitle(StringArg1)(in long tab_idx, in StringArg1 title)
	{
		_GODOT_set_tab_title.bind("TabContainer", "set_tab_title");
		ptrcall!(void)(_GODOT_set_tab_title, _godot_object, tab_idx, title);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_tab_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_title") = _GODOT_get_tab_title;
	/**
	Returns the title of the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with $(D setTabTitle).
	*/
	String getTabTitle(in long tab_idx) const
	{
		_GODOT_get_tab_title.bind("TabContainer", "get_tab_title");
		return ptrcall!(String)(_GODOT_get_tab_title, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_tab_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_icon") = _GODOT_set_tab_icon;
	/**
	Sets an icon for the tab at index `tab_idx`.
	*/
	void setTabIcon(in long tab_idx, Texture icon)
	{
		_GODOT_set_tab_icon.bind("TabContainer", "set_tab_icon");
		ptrcall!(void)(_GODOT_set_tab_icon, _godot_object, tab_idx, icon);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_tab_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_icon") = _GODOT_get_tab_icon;
	/**
	Returns the $(D Texture) for the tab at index `tab_idx` or null if the tab has no $(D Texture).
	*/
	Ref!Texture getTabIcon(in long tab_idx) const
	{
		_GODOT_get_tab_icon.bind("TabContainer", "get_tab_icon");
		return ptrcall!(Texture)(_GODOT_get_tab_icon, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_tab_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_disabled") = _GODOT_set_tab_disabled;
	/**
	If `disabled` is false, hides the tab at index `tab_idx`. Note that its title text will remain, unless also removed with $(D setTabTitle).
	*/
	void setTabDisabled(in long tab_idx, in bool disabled)
	{
		_GODOT_set_tab_disabled.bind("TabContainer", "set_tab_disabled");
		ptrcall!(void)(_GODOT_set_tab_disabled, _godot_object, tab_idx, disabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_tab_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_disabled") = _GODOT_get_tab_disabled;
	/**
	Returns `true` if the tab at index `tab_idx` is disabled.
	*/
	bool getTabDisabled(in long tab_idx) const
	{
		_GODOT_get_tab_disabled.bind("TabContainer", "get_tab_disabled");
		return ptrcall!(bool)(_GODOT_get_tab_disabled, _godot_object, tab_idx);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_popup") = _GODOT_set_popup;
	/**
	If set on a $(D Popup) node instance, a popup menu icon appears in the top-right corner of the `TabContainer`. Clicking it will expand the $(D Popup) node.
	*/
	void setPopup(GodotObject popup)
	{
		_GODOT_set_popup.bind("TabContainer", "set_popup");
		ptrcall!(void)(_GODOT_set_popup, _godot_object, popup);
	}
	package(godot) static GodotMethod!(Popup) _GODOT_get_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_popup") = _GODOT_get_popup;
	/**
	Returns the $(D Popup) node instance if one has been set already with $(D setPopup).
	*/
	Popup getPopup() const
	{
		_GODOT_get_popup.bind("TabContainer", "get_popup");
		return ptrcall!(Popup)(_GODOT_get_popup, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_drag_to_rearrange_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drag_to_rearrange_enabled") = _GODOT_set_drag_to_rearrange_enabled;
	/**
	
	*/
	void setDragToRearrangeEnabled(in bool enabled)
	{
		_GODOT_set_drag_to_rearrange_enabled.bind("TabContainer", "set_drag_to_rearrange_enabled");
		ptrcall!(void)(_GODOT_set_drag_to_rearrange_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_drag_to_rearrange_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drag_to_rearrange_enabled") = _GODOT_get_drag_to_rearrange_enabled;
	/**
	
	*/
	bool getDragToRearrangeEnabled() const
	{
		_GODOT_get_drag_to_rearrange_enabled.bind("TabContainer", "get_drag_to_rearrange_enabled");
		return ptrcall!(bool)(_GODOT_get_drag_to_rearrange_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_tabs_rearrange_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tabs_rearrange_group") = _GODOT_set_tabs_rearrange_group;
	/**
	
	*/
	void setTabsRearrangeGroup(in long group_id)
	{
		_GODOT_set_tabs_rearrange_group.bind("TabContainer", "set_tabs_rearrange_group");
		ptrcall!(void)(_GODOT_set_tabs_rearrange_group, _godot_object, group_id);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_tabs_rearrange_group;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tabs_rearrange_group") = _GODOT_get_tabs_rearrange_group;
	/**
	
	*/
	long getTabsRearrangeGroup() const
	{
		_GODOT_get_tabs_rearrange_group.bind("TabContainer", "get_tabs_rearrange_group");
		return ptrcall!(long)(_GODOT_get_tabs_rearrange_group, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__child_renamed_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_child_renamed_callback") = _GODOT__child_renamed_callback;
	/**
	
	*/
	void _childRenamedCallback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_child_renamed_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__on_theme_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_on_theme_changed") = _GODOT__on_theme_changed;
	/**
	
	*/
	void _onThemeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_on_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_current_tab;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_current_tab") = _GODOT__update_current_tab;
	/**
	
	*/
	void _updateCurrentTab()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The alignment of all tabs in the tab container. See the `ALIGN_*` constants for details.
	*/
	@property TabContainer.TabAlign tabAlign()
	{
		return getTabAlign();
	}
	/// ditto
	@property void tabAlign(long v)
	{
		setTabAlign(v);
	}
	/**
	The current tab index. When set, this index's $(D Control) node's `visible` property is set to `true` and all others are set to `false`.
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
	If `true` tabs are visible. If `false` tabs' content and titles are hidden. Default value: `true`.
	*/
	@property bool tabsVisible()
	{
		return areTabsVisible();
	}
	/// ditto
	@property void tabsVisible(bool v)
	{
		setTabsVisible(v);
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
