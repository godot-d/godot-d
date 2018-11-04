/**
PopupMenu displays a list of options.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.popupmenu;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.popup;
import godot.inputevent;
import godot.texture;
import godot.shortcut;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
PopupMenu displays a list of options.

PopupMenu is the typical Control that displays a list of options. They are popular in toolbars or context menus.
*/
@GodotBaseClass struct PopupMenu
{
	enum string _GODOT_internal_name = "PopupMenu";
public:
@nogc nothrow:
	union { godot_object _godot_object; Popup _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("add_icon_item") GodotMethod!(void, Texture, String, long, long) addIconItem;
		@GodotName("add_item") GodotMethod!(void, String, long, long) addItem;
		@GodotName("add_icon_check_item") GodotMethod!(void, Texture, String, long, long) addIconCheckItem;
		@GodotName("add_check_item") GodotMethod!(void, String, long, long) addCheckItem;
		@GodotName("add_radio_check_item") GodotMethod!(void, String, long, long) addRadioCheckItem;
		@GodotName("add_submenu_item") GodotMethod!(void, String, String, long) addSubmenuItem;
		@GodotName("add_icon_shortcut") GodotMethod!(void, Texture, ShortCut, long, bool) addIconShortcut;
		@GodotName("add_shortcut") GodotMethod!(void, ShortCut, long, bool) addShortcut;
		@GodotName("add_icon_check_shortcut") GodotMethod!(void, Texture, ShortCut, long, bool) addIconCheckShortcut;
		@GodotName("add_check_shortcut") GodotMethod!(void, ShortCut, long, bool) addCheckShortcut;
		@GodotName("add_radio_check_shortcut") GodotMethod!(void, ShortCut, long, bool) addRadioCheckShortcut;
		@GodotName("set_item_text") GodotMethod!(void, long, String) setItemText;
		@GodotName("set_item_icon") GodotMethod!(void, long, Texture) setItemIcon;
		@GodotName("set_item_checked") GodotMethod!(void, long, bool) setItemChecked;
		@GodotName("set_item_id") GodotMethod!(void, long, long) setItemId;
		@GodotName("set_item_accelerator") GodotMethod!(void, long, long) setItemAccelerator;
		@GodotName("set_item_metadata") GodotMethod!(void, long, Variant) setItemMetadata;
		@GodotName("set_item_disabled") GodotMethod!(void, long, bool) setItemDisabled;
		@GodotName("set_item_submenu") GodotMethod!(void, long, String) setItemSubmenu;
		@GodotName("set_item_as_separator") GodotMethod!(void, long, bool) setItemAsSeparator;
		@GodotName("set_item_as_checkable") GodotMethod!(void, long, bool) setItemAsCheckable;
		@GodotName("set_item_as_radio_checkable") GodotMethod!(void, long, bool) setItemAsRadioCheckable;
		@GodotName("set_item_tooltip") GodotMethod!(void, long, String) setItemTooltip;
		@GodotName("set_item_shortcut") GodotMethod!(void, long, ShortCut, bool) setItemShortcut;
		@GodotName("set_item_multistate") GodotMethod!(void, long, long) setItemMultistate;
		@GodotName("set_item_shortcut_disabled") GodotMethod!(void, long, bool) setItemShortcutDisabled;
		@GodotName("toggle_item_checked") GodotMethod!(void, long) toggleItemChecked;
		@GodotName("toggle_item_multistate") GodotMethod!(void, long) toggleItemMultistate;
		@GodotName("get_item_text") GodotMethod!(String, long) getItemText;
		@GodotName("get_item_icon") GodotMethod!(Texture, long) getItemIcon;
		@GodotName("is_item_checked") GodotMethod!(bool, long) isItemChecked;
		@GodotName("get_item_id") GodotMethod!(long, long) getItemId;
		@GodotName("get_item_index") GodotMethod!(long, long) getItemIndex;
		@GodotName("get_item_accelerator") GodotMethod!(long, long) getItemAccelerator;
		@GodotName("get_item_metadata") GodotMethod!(Variant, long) getItemMetadata;
		@GodotName("is_item_disabled") GodotMethod!(bool, long) isItemDisabled;
		@GodotName("get_item_submenu") GodotMethod!(String, long) getItemSubmenu;
		@GodotName("is_item_separator") GodotMethod!(bool, long) isItemSeparator;
		@GodotName("is_item_checkable") GodotMethod!(bool, long) isItemCheckable;
		@GodotName("is_item_radio_checkable") GodotMethod!(bool, long) isItemRadioCheckable;
		@GodotName("is_item_shortcut_disabled") GodotMethod!(bool, long) isItemShortcutDisabled;
		@GodotName("get_item_tooltip") GodotMethod!(String, long) getItemTooltip;
		@GodotName("get_item_shortcut") GodotMethod!(ShortCut, long) getItemShortcut;
		@GodotName("get_item_count") GodotMethod!(long) getItemCount;
		@GodotName("remove_item") GodotMethod!(void, long) removeItem;
		@GodotName("add_separator") GodotMethod!(void, String) addSeparator;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("_set_items") GodotMethod!(void, Array) _setItems;
		@GodotName("_get_items") GodotMethod!(Array) _getItems;
		@GodotName("set_hide_on_item_selection") GodotMethod!(void, bool) setHideOnItemSelection;
		@GodotName("is_hide_on_item_selection") GodotMethod!(bool) isHideOnItemSelection;
		@GodotName("set_hide_on_checkable_item_selection") GodotMethod!(void, bool) setHideOnCheckableItemSelection;
		@GodotName("is_hide_on_checkable_item_selection") GodotMethod!(bool) isHideOnCheckableItemSelection;
		@GodotName("set_hide_on_state_item_selection") GodotMethod!(void, bool) setHideOnStateItemSelection;
		@GodotName("is_hide_on_state_item_selection") GodotMethod!(bool) isHideOnStateItemSelection;
		@GodotName("set_submenu_popup_delay") GodotMethod!(void, double) setSubmenuPopupDelay;
		@GodotName("get_submenu_popup_delay") GodotMethod!(double) getSubmenuPopupDelay;
		@GodotName("set_hide_on_window_lose_focus") GodotMethod!(void, bool) setHideOnWindowLoseFocus;
		@GodotName("is_hide_on_window_lose_focus") GodotMethod!(bool) isHideOnWindowLoseFocus;
		@GodotName("_submenu_timeout") GodotMethod!(void) _submenuTimeout;
	}
	bool opEquals(in PopupMenu other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PopupMenu opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PopupMenu _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PopupMenu");
		if(constructor is null) return typeof(this).init;
		return cast(PopupMenu)(constructor());
	}
	@disable new(size_t s);
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
	Add a new item with text "label" and icon "texture". An id can optionally be provided, as well as an accelerator keybinding. If no id is provided, one will be created from the index.
	*/
	void addIconItem(Texture texture, in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIconItem, _godot_object, texture, label, id, accel);
	}
	/**
	Add a new item with text "label". An id can optionally be provided, as well as an accelerator keybinding. If no id is provided, one will be created from the index.
	*/
	void addItem(in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addItem, _godot_object, label, id, accel);
	}
	/**
	Add a new checkable item with text "label" and icon "texture". An id can optionally be provided, as well as an accelerator. If no id is provided, one will be
	created from the index. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	void addIconCheckItem(Texture texture, in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIconCheckItem, _godot_object, texture, label, id, accel);
	}
	/**
	Add a new checkable item with text "label". An id can optionally be provided, as well as an accelerator. If no id is provided, one will be created from the index. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	void addCheckItem(in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCheckItem, _godot_object, label, id, accel);
	}
	/**
	The same as $(D addCheckItem) but the inserted item will look as a radio button. Remember this is just cosmetic and you have to add the logic for checking/unchecking items in radio groups.
	*/
	void addRadioCheckItem(in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addRadioCheckItem, _godot_object, label, id, accel);
	}
	/**
	Adds an item with a submenu. The submenu is the name of a child PopupMenu node that would be shown when the item is clicked. An id can optionally be provided, but if is isn't provided, one will be created from the index.
	*/
	void addSubmenuItem(in String label, in String submenu, in long id = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addSubmenuItem, _godot_object, label, submenu, id);
	}
	/**
	
	*/
	void addIconShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIconShortcut, _godot_object, texture, shortcut, id, global);
	}
	/**
	
	*/
	void addShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addShortcut, _godot_object, shortcut, id, global);
	}
	/**
	
	*/
	void addIconCheckShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIconCheckShortcut, _godot_object, texture, shortcut, id, global);
	}
	/**
	
	*/
	void addCheckShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCheckShortcut, _godot_object, shortcut, id, global);
	}
	/**
	
	*/
	void addRadioCheckShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addRadioCheckShortcut, _godot_object, shortcut, id, global);
	}
	/**
	Set the text of the item at index "idx".
	*/
	void setItemText(in long idx, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemText, _godot_object, idx, text);
	}
	/**
	
	*/
	void setItemIcon(in long idx, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemIcon, _godot_object, idx, icon);
	}
	/**
	Set the checkstate status of the item at index "idx".
	*/
	void setItemChecked(in long idx, in bool checked)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemChecked, _godot_object, idx, checked);
	}
	/**
	Set the id of the item at index "idx".
	*/
	void setItemId(in long idx, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemId, _godot_object, idx, id);
	}
	/**
	Set the accelerator of the item at index "idx". Accelerators are special combinations of keys that activate the item, no matter which control is focused.
	*/
	void setItemAccelerator(in long idx, in long accel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemAccelerator, _godot_object, idx, accel);
	}
	/**
	Sets the metadata of an item, which might be of any type. You can later get it with $(D getItemMetadata), which provides a simple way of assigning context data to items.
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemMetadata, _godot_object, idx, metadata);
	}
	/**
	Sets whether the item at index "idx" is disabled or not. When it is disabled it can't be selected, or its action invoked.
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemDisabled, _godot_object, idx, disabled);
	}
	/**
	Sets the submenu of the item at index "idx". The submenu is the name of a child PopupMenu node that would be shown when the item is clicked.
	*/
	void setItemSubmenu(in long idx, in String submenu)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemSubmenu, _godot_object, idx, submenu);
	}
	/**
	Mark the item at index "idx" as a separator, which means that it would be displayed as a mere line.
	*/
	void setItemAsSeparator(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemAsSeparator, _godot_object, idx, enable);
	}
	/**
	Set whether the item at index "idx" has a checkbox. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	void setItemAsCheckable(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemAsCheckable, _godot_object, idx, enable);
	}
	/**
	The same as $(D setItemAsCheckable) but placing a radio button in case of enabling. If used for disabling, it's the same.
	Remember this is just cosmetic and you have to add the logic for checking/unchecking items in radio groups.
	*/
	void setItemAsRadioCheckable(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemAsRadioCheckable, _godot_object, idx, enable);
	}
	/**
	
	*/
	void setItemTooltip(in long idx, in String tooltip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemTooltip, _godot_object, idx, tooltip);
	}
	/**
	
	*/
	void setItemShortcut(in long idx, ShortCut shortcut, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemShortcut, _godot_object, idx, shortcut, global);
	}
	/**
	
	*/
	void setItemMultistate(in long idx, in long state)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemMultistate, _godot_object, idx, state);
	}
	/**
	
	*/
	void setItemShortcutDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemShortcutDisabled, _godot_object, idx, disabled);
	}
	/**
	
	*/
	void toggleItemChecked(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.toggleItemChecked, _godot_object, idx);
	}
	/**
	
	*/
	void toggleItemMultistate(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.toggleItemMultistate, _godot_object, idx);
	}
	/**
	Return the text of the item at index "idx".
	*/
	String getItemText(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getItemText, _godot_object, idx);
	}
	/**
	Return the icon of the item at index "idx".
	*/
	Ref!Texture getItemIcon(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getItemIcon, _godot_object, idx);
	}
	/**
	Return whether the item at index "idx" is checked.
	*/
	bool isItemChecked(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemChecked, _godot_object, idx);
	}
	/**
	Return the id of the item at index "idx".
	*/
	long getItemId(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemId, _godot_object, idx);
	}
	/**
	Find and return the index of the item containing a given id.
	*/
	long getItemIndex(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemIndex, _godot_object, id);
	}
	/**
	Return the accelerator of the item at index "idx". Accelerators are special combinations of keys that activate the item, no matter which control is focused.
	*/
	long getItemAccelerator(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemAccelerator, _godot_object, idx);
	}
	/**
	Return the metadata of an item, which might be of any type. You can set it with $(D setItemMetadata), which provides a simple way of assigning context data to items.
	*/
	Variant getItemMetadata(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getItemMetadata, _godot_object, idx);
	}
	/**
	Return whether the item at index "idx" is disabled. When it is disabled it can't be selected, or its action invoked.
	*/
	bool isItemDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemDisabled, _godot_object, idx);
	}
	/**
	Return the submenu name of the item at index "idx".
	*/
	String getItemSubmenu(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getItemSubmenu, _godot_object, idx);
	}
	/**
	Return whether the item is a separator. If it is, it would be displayed as a line.
	*/
	bool isItemSeparator(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemSeparator, _godot_object, idx);
	}
	/**
	Return whether the item at index "idx" is checkable in some way, i.e., whether has a checkbox or radio button. Note that checkable items just display a checkmark or radio button, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	bool isItemCheckable(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemCheckable, _godot_object, idx);
	}
	/**
	Return whether the item at index "idx" has radio-button-style checkability. Remember this is just cosmetic and you have to add the logic for checking/unchecking items in radio groups.
	*/
	bool isItemRadioCheckable(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemRadioCheckable, _godot_object, idx);
	}
	/**
	
	*/
	bool isItemShortcutDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemShortcutDisabled, _godot_object, idx);
	}
	/**
	
	*/
	String getItemTooltip(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getItemTooltip, _godot_object, idx);
	}
	/**
	
	*/
	Ref!ShortCut getItemShortcut(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ShortCut)(_classBinding.getItemShortcut, _godot_object, idx);
	}
	/**
	Return the amount of items.
	*/
	long getItemCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemCount, _godot_object);
	}
	/**
	Removes the item at index "idx" from the menu. Note that the indexes of items after the removed item are going to be shifted by one.
	*/
	void removeItem(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeItem, _godot_object, idx);
	}
	/**
	Add a separator between items. Separators also occupy an index.
	*/
	void addSeparator(in String label = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addSeparator, _godot_object, label);
	}
	/**
	Clear the popup menu, in effect removing all items.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	
	*/
	void _setItems(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getItems() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void setHideOnItemSelection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHideOnItemSelection, _godot_object, enable);
	}
	/**
	
	*/
	bool isHideOnItemSelection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHideOnItemSelection, _godot_object);
	}
	/**
	
	*/
	void setHideOnCheckableItemSelection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHideOnCheckableItemSelection, _godot_object, enable);
	}
	/**
	
	*/
	bool isHideOnCheckableItemSelection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHideOnCheckableItemSelection, _godot_object);
	}
	/**
	
	*/
	void setHideOnStateItemSelection(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHideOnStateItemSelection, _godot_object, enable);
	}
	/**
	
	*/
	bool isHideOnStateItemSelection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHideOnStateItemSelection, _godot_object);
	}
	/**
	
	*/
	void setSubmenuPopupDelay(in double seconds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSubmenuPopupDelay, _godot_object, seconds);
	}
	/**
	
	*/
	double getSubmenuPopupDelay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSubmenuPopupDelay, _godot_object);
	}
	/**
	
	*/
	void setHideOnWindowLoseFocus(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHideOnWindowLoseFocus, _godot_object, enable);
	}
	/**
	
	*/
	bool isHideOnWindowLoseFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHideOnWindowLoseFocus, _godot_object);
	}
	/**
	
	*/
	void _submenuTimeout()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_submenu_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	Sets the delay time for the submenu item to popup on mouse hovering. If the popup menu is added as a child of another (acting as a submenu), it will inherit the delay time of the parent menu item. Default value: `0.3` seconds.
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
