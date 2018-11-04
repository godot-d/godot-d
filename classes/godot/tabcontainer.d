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
import godot.container;
import godot.inputevent;
import godot.control;
import godot.texture;
import godot.popup;
import godot.canvasitem;
import godot.node;
/**
Tabbed Container.

Sets the active tab's `visible` property to the value `true`. Sets all other children's to `false`.
Ignores non-$(D Control) children.
Individual tabs are always visible unless you use $(D setTabDisabled) and $(D setTabTitle) to hide it.
To hide only a tab's content, nest the content inside a child $(D Control), so it receives the `TabContainer`'s visibility setting instead.
*/
@GodotBaseClass struct TabContainer
{
	enum string _GODOT_internal_name = "TabContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("get_tab_count") GodotMethod!(long) getTabCount;
		@GodotName("set_current_tab") GodotMethod!(void, long) setCurrentTab;
		@GodotName("get_current_tab") GodotMethod!(long) getCurrentTab;
		@GodotName("get_previous_tab") GodotMethod!(long) getPreviousTab;
		@GodotName("get_current_tab_control") GodotMethod!(Control) getCurrentTabControl;
		@GodotName("get_tab_control") GodotMethod!(Control, long) getTabControl;
		@GodotName("set_tab_align") GodotMethod!(void, long) setTabAlign;
		@GodotName("get_tab_align") GodotMethod!(TabContainer.TabAlign) getTabAlign;
		@GodotName("set_tabs_visible") GodotMethod!(void, bool) setTabsVisible;
		@GodotName("are_tabs_visible") GodotMethod!(bool) areTabsVisible;
		@GodotName("set_tab_title") GodotMethod!(void, long, String) setTabTitle;
		@GodotName("get_tab_title") GodotMethod!(String, long) getTabTitle;
		@GodotName("set_tab_icon") GodotMethod!(void, long, Texture) setTabIcon;
		@GodotName("get_tab_icon") GodotMethod!(Texture, long) getTabIcon;
		@GodotName("set_tab_disabled") GodotMethod!(void, long, bool) setTabDisabled;
		@GodotName("get_tab_disabled") GodotMethod!(bool, long) getTabDisabled;
		@GodotName("set_popup") GodotMethod!(void, GodotObject) setPopup;
		@GodotName("get_popup") GodotMethod!(Popup) getPopup;
		@GodotName("set_drag_to_rearrange_enabled") GodotMethod!(void, bool) setDragToRearrangeEnabled;
		@GodotName("get_drag_to_rearrange_enabled") GodotMethod!(bool) getDragToRearrangeEnabled;
		@GodotName("set_tabs_rearrange_group") GodotMethod!(void, long) setTabsRearrangeGroup;
		@GodotName("get_tabs_rearrange_group") GodotMethod!(long) getTabsRearrangeGroup;
		@GodotName("_child_renamed_callback") GodotMethod!(void) _childRenamedCallback;
		@GodotName("_on_theme_changed") GodotMethod!(void) _onThemeChanged;
		@GodotName("_update_current_tab") GodotMethod!(void) _updateCurrentTab;
	}
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
		Align the tabs to the left.
		*/
		alignLeft = 0,
		/**
		Align the tabs to the center.
		*/
		alignCenter = 1,
		/**
		Align the tabs to the right.
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
	Returns the number of tabs.
	*/
	long getTabCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTabCount, _godot_object);
	}
	/**
	
	*/
	void setCurrentTab(in long tab_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCurrentTab, _godot_object, tab_idx);
	}
	/**
	
	*/
	long getCurrentTab() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCurrentTab, _godot_object);
	}
	/**
	Returns the previously active tab index.
	*/
	long getPreviousTab() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPreviousTab, _godot_object);
	}
	/**
	Returns the child $(D Control) node located at the active tab index.
	*/
	Control getCurrentTabControl() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(_classBinding.getCurrentTabControl, _godot_object);
	}
	/**
	Returns the currently visible tab's $(D Control) node.
	*/
	Control getTabControl(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(_classBinding.getTabControl, _godot_object, idx);
	}
	/**
	
	*/
	void setTabAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabAlign, _godot_object, _align);
	}
	/**
	
	*/
	TabContainer.TabAlign getTabAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TabContainer.TabAlign)(_classBinding.getTabAlign, _godot_object);
	}
	/**
	
	*/
	void setTabsVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabsVisible, _godot_object, visible);
	}
	/**
	
	*/
	bool areTabsVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.areTabsVisible, _godot_object);
	}
	/**
	Sets a title for the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with $(D setTabTitle).
	*/
	void setTabTitle(in long tab_idx, in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabTitle, _godot_object, tab_idx, title);
	}
	/**
	Returns the title of the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with $(D setTabTitle).
	*/
	String getTabTitle(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTabTitle, _godot_object, tab_idx);
	}
	/**
	Sets an icon for the tab at index `tab_idx`.
	*/
	void setTabIcon(in long tab_idx, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabIcon, _godot_object, tab_idx, icon);
	}
	/**
	Returns the $(D Texture) for the tab at index `tab_idx` or null if the tab has no $(D Texture).
	*/
	Ref!Texture getTabIcon(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTabIcon, _godot_object, tab_idx);
	}
	/**
	If `disabled` is false, hides the tab at index `tab_idx`. Note that its title text will remain, unless also removed with $(D setTabTitle).
	*/
	void setTabDisabled(in long tab_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabDisabled, _godot_object, tab_idx, disabled);
	}
	/**
	Returns `true` if the tab at index `tab_idx` is disabled.
	*/
	bool getTabDisabled(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getTabDisabled, _godot_object, tab_idx);
	}
	/**
	If set on a $(D Popup) node instance, a popup menu icon appears in the top-right corner of the `TabContainer`. Clicking it will expand the $(D Popup) node.
	*/
	void setPopup(GodotObject popup)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPopup, _godot_object, popup);
	}
	/**
	Returns the $(D Popup) node instance if one has been set already with $(D setPopup).
	*/
	Popup getPopup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Popup)(_classBinding.getPopup, _godot_object);
	}
	/**
	
	*/
	void setDragToRearrangeEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDragToRearrangeEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool getDragToRearrangeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getDragToRearrangeEnabled, _godot_object);
	}
	/**
	Defines rearrange group id, choose for each `TabContainer` the same value to enable tab drag between `TabContainer`. Enable drag with `set_drag_to_rearrange_enabled(true)`.
	*/
	void setTabsRearrangeGroup(in long group_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabsRearrangeGroup, _godot_object, group_id);
	}
	/**
	Returns the `TabContainer` rearrange group id.
	*/
	long getTabsRearrangeGroup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTabsRearrangeGroup, _godot_object);
	}
	/**
	
	*/
	void _childRenamedCallback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_child_renamed_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _onThemeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_on_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
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
	If `true`, tabs can be rearranged with mouse drag.
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
