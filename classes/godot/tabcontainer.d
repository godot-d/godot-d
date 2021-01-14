/**
Tabbed container.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tabcontainer;
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
import godot.popup;
import godot.texture;
/**
Tabbed container.

Sets the active tab's `visible` property to the value `true`. Sets all other children's to `false`.
Ignores non-$(D Control) children.
Individual tabs are always visible unless you use $(D setTabDisabled) and $(D setTabTitle) to hide it.
To hide only a tab's content, nest the content inside a child $(D Control), so it receives the $(D TabContainer)'s visibility setting instead.
*/
@GodotBaseClass struct TabContainer
{
	package(godot) enum string _GODOT_internal_name = "TabContainer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_child_renamed_callback") GodotMethod!(void) _childRenamedCallback;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_on_mouse_exited") GodotMethod!(void) _onMouseExited;
		@GodotName("_on_theme_changed") GodotMethod!(void) _onThemeChanged;
		@GodotName("_update_current_tab") GodotMethod!(void) _updateCurrentTab;
		@GodotName("are_tabs_visible") GodotMethod!(bool) areTabsVisible;
		@GodotName("get_current_tab") GodotMethod!(long) getCurrentTab;
		@GodotName("get_current_tab_control") GodotMethod!(Control) getCurrentTabControl;
		@GodotName("get_drag_to_rearrange_enabled") GodotMethod!(bool) getDragToRearrangeEnabled;
		@GodotName("get_popup") GodotMethod!(Popup) getPopup;
		@GodotName("get_previous_tab") GodotMethod!(long) getPreviousTab;
		@GodotName("get_tab_align") GodotMethod!(TabContainer.TabAlign) getTabAlign;
		@GodotName("get_tab_control") GodotMethod!(Control, long) getTabControl;
		@GodotName("get_tab_count") GodotMethod!(long) getTabCount;
		@GodotName("get_tab_disabled") GodotMethod!(bool, long) getTabDisabled;
		@GodotName("get_tab_icon") GodotMethod!(Texture, long) getTabIcon;
		@GodotName("get_tab_title") GodotMethod!(String, long) getTabTitle;
		@GodotName("get_tabs_rearrange_group") GodotMethod!(long) getTabsRearrangeGroup;
		@GodotName("get_use_hidden_tabs_for_min_size") GodotMethod!(bool) getUseHiddenTabsForMinSize;
		@GodotName("set_current_tab") GodotMethod!(void, long) setCurrentTab;
		@GodotName("set_drag_to_rearrange_enabled") GodotMethod!(void, bool) setDragToRearrangeEnabled;
		@GodotName("set_popup") GodotMethod!(void, Node) setPopup;
		@GodotName("set_tab_align") GodotMethod!(void, long) setTabAlign;
		@GodotName("set_tab_disabled") GodotMethod!(void, long, bool) setTabDisabled;
		@GodotName("set_tab_icon") GodotMethod!(void, long, Texture) setTabIcon;
		@GodotName("set_tab_title") GodotMethod!(void, long, String) setTabTitle;
		@GodotName("set_tabs_rearrange_group") GodotMethod!(void, long) setTabsRearrangeGroup;
		@GodotName("set_tabs_visible") GodotMethod!(void, bool) setTabsVisible;
		@GodotName("set_use_hidden_tabs_for_min_size") GodotMethod!(void, bool) setUseHiddenTabsForMinSize;
	}
	/// 
	pragma(inline, true) bool opEquals(in TabContainer other) const
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
	/// Construct a new instance of TabContainer.
	/// Note: use `memnew!TabContainer` instead.
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
	void _childRenamedCallback()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_child_renamed_callback");
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
	void _onMouseExited()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_on_mouse_exited");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _onThemeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_on_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateCurrentTab()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_current_tab");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool areTabsVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.areTabsVisible, _godot_object);
	}
	/**
	
	*/
	long getCurrentTab() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCurrentTab, _godot_object);
	}
	/**
	Returns the child $(D Control) node located at the active tab index.
	*/
	Control getCurrentTabControl() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getCurrentTabControl, _godot_object);
	}
	/**
	
	*/
	bool getDragToRearrangeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getDragToRearrangeEnabled, _godot_object);
	}
	/**
	Returns the $(D Popup) node instance if one has been set already with $(D setPopup).
	*/
	Popup getPopup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Popup)(GDNativeClassBinding.getPopup, _godot_object);
	}
	/**
	Returns the previously active tab index.
	*/
	long getPreviousTab() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPreviousTab, _godot_object);
	}
	/**
	
	*/
	TabContainer.TabAlign getTabAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TabContainer.TabAlign)(GDNativeClassBinding.getTabAlign, _godot_object);
	}
	/**
	Returns the $(D Control) node from the tab at index `tab_idx`.
	*/
	Control getTabControl(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getTabControl, _godot_object, tab_idx);
	}
	/**
	Returns the number of tabs.
	*/
	long getTabCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTabCount, _godot_object);
	}
	/**
	Returns `true` if the tab at index `tab_idx` is disabled.
	*/
	bool getTabDisabled(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getTabDisabled, _godot_object, tab_idx);
	}
	/**
	Returns the $(D Texture) for the tab at index `tab_idx` or `null` if the tab has no $(D Texture).
	*/
	Ref!Texture getTabIcon(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTabIcon, _godot_object, tab_idx);
	}
	/**
	Returns the title of the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with $(D setTabTitle).
	*/
	String getTabTitle(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTabTitle, _godot_object, tab_idx);
	}
	/**
	Returns the $(D TabContainer) rearrange group id.
	*/
	long getTabsRearrangeGroup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTabsRearrangeGroup, _godot_object);
	}
	/**
	
	*/
	bool getUseHiddenTabsForMinSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseHiddenTabsForMinSize, _godot_object);
	}
	/**
	
	*/
	void setCurrentTab(in long tab_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentTab, _godot_object, tab_idx);
	}
	/**
	
	*/
	void setDragToRearrangeEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDragToRearrangeEnabled, _godot_object, enabled);
	}
	/**
	If set on a $(D Popup) node instance, a popup menu icon appears in the top-right corner of the $(D TabContainer). Clicking it will expand the $(D Popup) node.
	*/
	void setPopup(Node popup)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPopup, _godot_object, popup);
	}
	/**
	
	*/
	void setTabAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabAlign, _godot_object, _align);
	}
	/**
	If `disabled` is `false`, hides the tab at index `tab_idx`.
	$(B Note:) Its title text will remain, unless also removed with $(D setTabTitle).
	*/
	void setTabDisabled(in long tab_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabDisabled, _godot_object, tab_idx, disabled);
	}
	/**
	Sets an icon for the tab at index `tab_idx`.
	*/
	void setTabIcon(in long tab_idx, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabIcon, _godot_object, tab_idx, icon);
	}
	/**
	Sets a title for the tab at index `tab_idx`. Tab titles default to the name of the indexed child node, but this can be overridden with $(D setTabTitle).
	*/
	void setTabTitle(in long tab_idx, in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabTitle, _godot_object, tab_idx, title);
	}
	/**
	Defines rearrange group id, choose for each $(D TabContainer) the same value to enable tab drag between $(D TabContainer). Enable drag with `set_drag_to_rearrange_enabled(true)`.
	*/
	void setTabsRearrangeGroup(in long group_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabsRearrangeGroup, _godot_object, group_id);
	}
	/**
	
	*/
	void setTabsVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabsVisible, _godot_object, visible);
	}
	/**
	
	*/
	void setUseHiddenTabsForMinSize(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseHiddenTabsForMinSize, _godot_object, enabled);
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
	/**
	The alignment of all tabs in the tab container. See the $(D tabalign) constants for details.
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
	If `true`, tabs are visible. If `false`, tabs' content and titles are hidden.
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
	If `true`, children $(D Control) nodes that are hidden have their minimum size take into account in the total, instead of only the currently visible one.
	*/
	@property bool useHiddenTabsForMinSize()
	{
		return getUseHiddenTabsForMinSize();
	}
	/// ditto
	@property void useHiddenTabsForMinSize(bool v)
	{
		setUseHiddenTabsForMinSize(v);
	}
}
