/**


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
import godot.globalenums;
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
		@GodotName("_repaint") GodotMethod!(void) _repaint;
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
		@GodotName("get_tab_hidden") GodotMethod!(bool, long) getTabHidden;
		@GodotName("get_tab_icon") GodotMethod!(Texture, long) getTabIcon;
		@GodotName("get_tab_idx_at_point") GodotMethod!(long, Vector2) getTabIdxAtPoint;
		@GodotName("get_tab_title") GodotMethod!(String, long) getTabTitle;
		@GodotName("get_tabs_rearrange_group") GodotMethod!(long) getTabsRearrangeGroup;
		@GodotName("get_use_hidden_tabs_for_min_size") GodotMethod!(bool) getUseHiddenTabsForMinSize;
		@GodotName("is_all_tabs_in_front") GodotMethod!(bool) isAllTabsInFront;
		@GodotName("set_all_tabs_in_front") GodotMethod!(void, bool) setAllTabsInFront;
		@GodotName("set_current_tab") GodotMethod!(void, long) setCurrentTab;
		@GodotName("set_drag_to_rearrange_enabled") GodotMethod!(void, bool) setDragToRearrangeEnabled;
		@GodotName("set_popup") GodotMethod!(void, Node) setPopup;
		@GodotName("set_tab_align") GodotMethod!(void, long) setTabAlign;
		@GodotName("set_tab_disabled") GodotMethod!(void, long, bool) setTabDisabled;
		@GodotName("set_tab_hidden") GodotMethod!(void, long, bool) setTabHidden;
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
		/** */
		alignLeft = 0,
		/** */
		alignCenter = 1,
		/** */
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
	void _repaint()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_repaint");
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
	
	*/
	Popup getPopup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Popup)(GDNativeClassBinding.getPopup, _godot_object);
	}
	/**
	
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
	
	*/
	Control getTabControl(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getTabControl, _godot_object, tab_idx);
	}
	/**
	
	*/
	long getTabCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTabCount, _godot_object);
	}
	/**
	
	*/
	bool getTabDisabled(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getTabDisabled, _godot_object, tab_idx);
	}
	/**
	
	*/
	bool getTabHidden(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getTabHidden, _godot_object, tab_idx);
	}
	/**
	
	*/
	Ref!Texture getTabIcon(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTabIcon, _godot_object, tab_idx);
	}
	/**
	
	*/
	long getTabIdxAtPoint(in Vector2 point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTabIdxAtPoint, _godot_object, point);
	}
	/**
	
	*/
	String getTabTitle(in long tab_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTabTitle, _godot_object, tab_idx);
	}
	/**
	
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
	bool isAllTabsInFront() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAllTabsInFront, _godot_object);
	}
	/**
	
	*/
	void setAllTabsInFront(in bool is_front)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAllTabsInFront, _godot_object, is_front);
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
	
	*/
	void setTabDisabled(in long tab_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabDisabled, _godot_object, tab_idx, disabled);
	}
	/**
	
	*/
	void setTabHidden(in long tab_idx, in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabHidden, _godot_object, tab_idx, hidden);
	}
	/**
	
	*/
	void setTabIcon(in long tab_idx, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabIcon, _godot_object, tab_idx, icon);
	}
	/**
	
	*/
	void setTabTitle(in long tab_idx, in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabTitle, _godot_object, tab_idx, title);
	}
	/**
	
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
	
	*/
	@property bool allTabsInFront()
	{
		return isAllTabsInFront();
	}
	/// ditto
	@property void allTabsInFront(bool v)
	{
		setAllTabsInFront(v);
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
