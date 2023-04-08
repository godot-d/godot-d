/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.popupmenu;
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
import godot.popup;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.shortcut;
import godot.texture;
/**

*/
@GodotBaseClass struct PopupMenu
{
	package(godot) enum string _GODOT_internal_name = "PopupMenu";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Popup _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_items") GodotMethod!(Array) _getItems;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_set_items") GodotMethod!(void, Array) _setItems;
		@GodotName("_submenu_timeout") GodotMethod!(void) _submenuTimeout;
		@GodotName("add_check_item") GodotMethod!(void, String, long, long) addCheckItem;
		@GodotName("add_check_shortcut") GodotMethod!(void, ShortCut, long, bool) addCheckShortcut;
		@GodotName("add_icon_check_item") GodotMethod!(void, Texture, String, long, long) addIconCheckItem;
		@GodotName("add_icon_check_shortcut") GodotMethod!(void, Texture, ShortCut, long, bool) addIconCheckShortcut;
		@GodotName("add_icon_item") GodotMethod!(void, Texture, String, long, long) addIconItem;
		@GodotName("add_icon_radio_check_item") GodotMethod!(void, Texture, String, long, long) addIconRadioCheckItem;
		@GodotName("add_icon_radio_check_shortcut") GodotMethod!(void, Texture, ShortCut, long, bool) addIconRadioCheckShortcut;
		@GodotName("add_icon_shortcut") GodotMethod!(void, Texture, ShortCut, long, bool) addIconShortcut;
		@GodotName("add_item") GodotMethod!(void, String, long, long) addItem;
		@GodotName("add_multistate_item") GodotMethod!(void, String, long, long, long, long) addMultistateItem;
		@GodotName("add_radio_check_item") GodotMethod!(void, String, long, long) addRadioCheckItem;
		@GodotName("add_radio_check_shortcut") GodotMethod!(void, ShortCut, long, bool) addRadioCheckShortcut;
		@GodotName("add_separator") GodotMethod!(void, String, long) addSeparator;
		@GodotName("add_shortcut") GodotMethod!(void, ShortCut, long, bool) addShortcut;
		@GodotName("add_submenu_item") GodotMethod!(void, String, String, long) addSubmenuItem;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_allow_search") GodotMethod!(bool) getAllowSearch;
		@GodotName("get_current_index") GodotMethod!(long) getCurrentIndex;
		@GodotName("get_item_accelerator") GodotMethod!(long, long) getItemAccelerator;
		@GodotName("get_item_count") GodotMethod!(long) getItemCount;
		@GodotName("get_item_icon") GodotMethod!(Texture, long) getItemIcon;
		@GodotName("get_item_id") GodotMethod!(long, long) getItemId;
		@GodotName("get_item_index") GodotMethod!(long, long) getItemIndex;
		@GodotName("get_item_metadata") GodotMethod!(Variant, long) getItemMetadata;
		@GodotName("get_item_shortcut") GodotMethod!(ShortCut, long) getItemShortcut;
		@GodotName("get_item_submenu") GodotMethod!(String, long) getItemSubmenu;
		@GodotName("get_item_text") GodotMethod!(String, long) getItemText;
		@GodotName("get_item_tooltip") GodotMethod!(String, long) getItemTooltip;
		@GodotName("get_submenu_popup_delay") GodotMethod!(double) getSubmenuPopupDelay;
		@GodotName("is_hide_on_checkable_item_selection") GodotMethod!(bool) isHideOnCheckableItemSelection;
		@GodotName("is_hide_on_item_selection") GodotMethod!(bool) isHideOnItemSelection;
		@GodotName("is_hide_on_state_item_selection") GodotMethod!(bool) isHideOnStateItemSelection;
		@GodotName("is_hide_on_window_lose_focus") GodotMethod!(bool) isHideOnWindowLoseFocus;
		@GodotName("is_item_checkable") GodotMethod!(bool, long) isItemCheckable;
		@GodotName("is_item_checked") GodotMethod!(bool, long) isItemChecked;
		@GodotName("is_item_disabled") GodotMethod!(bool, long) isItemDisabled;
		@GodotName("is_item_radio_checkable") GodotMethod!(bool, long) isItemRadioCheckable;
		@GodotName("is_item_separator") GodotMethod!(bool, long) isItemSeparator;
		@GodotName("is_item_shortcut_disabled") GodotMethod!(bool, long) isItemShortcutDisabled;
		@GodotName("remove_item") GodotMethod!(void, long) removeItem;
		@GodotName("set_allow_search") GodotMethod!(void, bool) setAllowSearch;
		@GodotName("set_current_index") GodotMethod!(void, long) setCurrentIndex;
		@GodotName("set_hide_on_checkable_item_selection") GodotMethod!(void, bool) setHideOnCheckableItemSelection;
		@GodotName("set_hide_on_item_selection") GodotMethod!(void, bool) setHideOnItemSelection;
		@GodotName("set_hide_on_state_item_selection") GodotMethod!(void, bool) setHideOnStateItemSelection;
		@GodotName("set_hide_on_window_lose_focus") GodotMethod!(void, bool) setHideOnWindowLoseFocus;
		@GodotName("set_item_accelerator") GodotMethod!(void, long, long) setItemAccelerator;
		@GodotName("set_item_as_checkable") GodotMethod!(void, long, bool) setItemAsCheckable;
		@GodotName("set_item_as_radio_checkable") GodotMethod!(void, long, bool) setItemAsRadioCheckable;
		@GodotName("set_item_as_separator") GodotMethod!(void, long, bool) setItemAsSeparator;
		@GodotName("set_item_checked") GodotMethod!(void, long, bool) setItemChecked;
		@GodotName("set_item_disabled") GodotMethod!(void, long, bool) setItemDisabled;
		@GodotName("set_item_icon") GodotMethod!(void, long, Texture) setItemIcon;
		@GodotName("set_item_id") GodotMethod!(void, long, long) setItemId;
		@GodotName("set_item_metadata") GodotMethod!(void, long, Variant) setItemMetadata;
		@GodotName("set_item_multistate") GodotMethod!(void, long, long) setItemMultistate;
		@GodotName("set_item_shortcut") GodotMethod!(void, long, ShortCut, bool) setItemShortcut;
		@GodotName("set_item_shortcut_disabled") GodotMethod!(void, long, bool) setItemShortcutDisabled;
		@GodotName("set_item_submenu") GodotMethod!(void, long, String) setItemSubmenu;
		@GodotName("set_item_text") GodotMethod!(void, long, String) setItemText;
		@GodotName("set_item_tooltip") GodotMethod!(void, long, String) setItemTooltip;
		@GodotName("set_submenu_popup_delay") GodotMethod!(void, double) setSubmenuPopupDelay;
		@GodotName("toggle_item_checked") GodotMethod!(void, long) toggleItemChecked;
		@GodotName("toggle_item_multistate") GodotMethod!(void, long) toggleItemMultistate;
	}
	/// 
	pragma(inline, true) bool opEquals(in PopupMenu other) const
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
	/// Construct a new instance of PopupMenu.
	/// Note: use `memnew!PopupMenu` instead.
	static PopupMenu _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PopupMenu");
		if(constructor is null) return typeof(this).init;
		return cast(PopupMenu)(constructor());
	}
	/**
	
	*/
	Array _getItems() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
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
	void _setItems(in Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _submenuTimeout()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_submenu_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addCheckItem(in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCheckItem, _godot_object, label, id, accel);
	}
	/**
	
	*/
	void addCheckShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCheckShortcut, _godot_object, shortcut, id, global);
	}
	/**
	
	*/
	void addIconCheckItem(Texture texture, in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconCheckItem, _godot_object, texture, label, id, accel);
	}
	/**
	
	*/
	void addIconCheckShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconCheckShortcut, _godot_object, texture, shortcut, id, global);
	}
	/**
	
	*/
	void addIconItem(Texture texture, in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconItem, _godot_object, texture, label, id, accel);
	}
	/**
	
	*/
	void addIconRadioCheckItem(Texture texture, in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconRadioCheckItem, _godot_object, texture, label, id, accel);
	}
	/**
	
	*/
	void addIconRadioCheckShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconRadioCheckShortcut, _godot_object, texture, shortcut, id, global);
	}
	/**
	
	*/
	void addIconShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconShortcut, _godot_object, texture, shortcut, id, global);
	}
	/**
	
	*/
	void addItem(in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addItem, _godot_object, label, id, accel);
	}
	/**
	
	*/
	void addMultistateItem(in String label, in long max_states, in long default_state = 0, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addMultistateItem, _godot_object, label, max_states, default_state, id, accel);
	}
	/**
	
	*/
	void addRadioCheckItem(in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addRadioCheckItem, _godot_object, label, id, accel);
	}
	/**
	
	*/
	void addRadioCheckShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addRadioCheckShortcut, _godot_object, shortcut, id, global);
	}
	/**
	
	*/
	void addSeparator(in String label = gs!"", in long id = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSeparator, _godot_object, label, id);
	}
	/**
	
	*/
	void addShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addShortcut, _godot_object, shortcut, id, global);
	}
	/**
	
	*/
	void addSubmenuItem(in String label, in String submenu, in long id = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSubmenuItem, _godot_object, label, submenu, id);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	bool getAllowSearch() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAllowSearch, _godot_object);
	}
	/**
	
	*/
	long getCurrentIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCurrentIndex, _godot_object);
	}
	/**
	
	*/
	long getItemAccelerator(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemAccelerator, _godot_object, idx);
	}
	/**
	
	*/
	long getItemCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemCount, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getItemIcon(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getItemIcon, _godot_object, idx);
	}
	/**
	
	*/
	long getItemId(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemId, _godot_object, idx);
	}
	/**
	
	*/
	long getItemIndex(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemIndex, _godot_object, id);
	}
	/**
	
	*/
	Variant getItemMetadata(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getItemMetadata, _godot_object, idx);
	}
	/**
	
	*/
	Ref!ShortCut getItemShortcut(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ShortCut)(GDNativeClassBinding.getItemShortcut, _godot_object, idx);
	}
	/**
	
	*/
	String getItemSubmenu(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getItemSubmenu, _godot_object, idx);
	}
	/**
	
	*/
	String getItemText(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getItemText, _godot_object, idx);
	}
	/**
	
	*/
	String getItemTooltip(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getItemTooltip, _godot_object, idx);
	}
	/**
	
	*/
	double getSubmenuPopupDelay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSubmenuPopupDelay, _godot_object);
	}
	/**
	
	*/
	bool isHideOnCheckableItemSelection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHideOnCheckableItemSelection, _godot_object);
	}
	/**
	
	*/
	bool isHideOnItemSelection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHideOnItemSelection, _godot_object);
	}
	/**
	
	*/
	bool isHideOnStateItemSelection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHideOnStateItemSelection, _godot_object);
	}
	/**
	
	*/
	bool isHideOnWindowLoseFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHideOnWindowLoseFocus, _godot_object);
	}
	/**
	
	*/
	bool isItemCheckable(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemCheckable, _godot_object, idx);
	}
	/**
	
	*/
	bool isItemChecked(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemChecked, _godot_object, idx);
	}
	/**
	
	*/
	bool isItemDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemDisabled, _godot_object, idx);
	}
	/**
	
	*/
	bool isItemRadioCheckable(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemRadioCheckable, _godot_object, idx);
	}
	/**
	
	*/
	bool isItemSeparator(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemSeparator, _godot_object, idx);
	}
	/**
	
	*/
	bool isItemShortcutDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemShortcutDisabled, _godot_object, idx);
	}
	/**
	
	*/
	void removeItem(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeItem, _godot_object, idx);
	}
	/**
	
	*/
	void setAllowSearch(in bool allow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAllowSearch, _godot_object, allow);
	}
	/**
	
	*/
	void setCurrentIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrentIndex, _godot_object, index);
	}
	/**
	
	*/
	void setHideOnCheckableItemSelection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHideOnCheckableItemSelection, _godot_object, enable);
	}
	/**
	
	*/
	void setHideOnItemSelection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHideOnItemSelection, _godot_object, enable);
	}
	/**
	
	*/
	void setHideOnStateItemSelection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHideOnStateItemSelection, _godot_object, enable);
	}
	/**
	
	*/
	void setHideOnWindowLoseFocus(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHideOnWindowLoseFocus, _godot_object, enable);
	}
	/**
	
	*/
	void setItemAccelerator(in long idx, in long accel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemAccelerator, _godot_object, idx, accel);
	}
	/**
	
	*/
	void setItemAsCheckable(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemAsCheckable, _godot_object, idx, enable);
	}
	/**
	
	*/
	void setItemAsRadioCheckable(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemAsRadioCheckable, _godot_object, idx, enable);
	}
	/**
	
	*/
	void setItemAsSeparator(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemAsSeparator, _godot_object, idx, enable);
	}
	/**
	
	*/
	void setItemChecked(in long idx, in bool checked)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemChecked, _godot_object, idx, checked);
	}
	/**
	
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemDisabled, _godot_object, idx, disabled);
	}
	/**
	
	*/
	void setItemIcon(in long idx, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemIcon, _godot_object, idx, icon);
	}
	/**
	
	*/
	void setItemId(in long idx, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemId, _godot_object, idx, id);
	}
	/**
	
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemMetadata, _godot_object, idx, metadata);
	}
	/**
	
	*/
	void setItemMultistate(in long idx, in long state)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemMultistate, _godot_object, idx, state);
	}
	/**
	
	*/
	void setItemShortcut(in long idx, ShortCut shortcut, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemShortcut, _godot_object, idx, shortcut, global);
	}
	/**
	
	*/
	void setItemShortcutDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemShortcutDisabled, _godot_object, idx, disabled);
	}
	/**
	
	*/
	void setItemSubmenu(in long idx, in String submenu)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemSubmenu, _godot_object, idx, submenu);
	}
	/**
	
	*/
	void setItemText(in long idx, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemText, _godot_object, idx, text);
	}
	/**
	
	*/
	void setItemTooltip(in long idx, in String tooltip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemTooltip, _godot_object, idx, tooltip);
	}
	/**
	
	*/
	void setSubmenuPopupDelay(in double seconds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSubmenuPopupDelay, _godot_object, seconds);
	}
	/**
	
	*/
	void toggleItemChecked(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.toggleItemChecked, _godot_object, idx);
	}
	/**
	
	*/
	void toggleItemMultistate(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.toggleItemMultistate, _godot_object, idx);
	}
	/**
	
	*/
	@property bool allowSearch()
	{
		return getAllowSearch();
	}
	/// ditto
	@property void allowSearch(bool v)
	{
		setAllowSearch(v);
	}
	/**
	
	*/
	@property bool hideOnCheckableItemSelection()
	{
		return isHideOnCheckableItemSelection();
	}
	/// ditto
	@property void hideOnCheckableItemSelection(bool v)
	{
		setHideOnCheckableItemSelection(v);
	}
	/**
	
	*/
	@property bool hideOnItemSelection()
	{
		return isHideOnItemSelection();
	}
	/// ditto
	@property void hideOnItemSelection(bool v)
	{
		setHideOnItemSelection(v);
	}
	/**
	
	*/
	@property bool hideOnStateItemSelection()
	{
		return isHideOnStateItemSelection();
	}
	/// ditto
	@property void hideOnStateItemSelection(bool v)
	{
		setHideOnStateItemSelection(v);
	}
	/**
	
	*/
	@property Array items()
	{
		return _getItems();
	}
	/// ditto
	@property void items(Array v)
	{
		_setItems(v);
	}
	/**
	
	*/
	@property double submenuPopupDelay()
	{
		return getSubmenuPopupDelay();
	}
	/// ditto
	@property void submenuPopupDelay(double v)
	{
		setSubmenuPopupDelay(v);
	}
}
