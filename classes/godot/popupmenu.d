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
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.shortcut;
import godot.texture;
/**
PopupMenu displays a list of options.

$(D PopupMenu) is a $(D Control) that displays a list of options. They are popular in toolbars or context menus.
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
		@GodotName("add_separator") GodotMethod!(void, String) addSeparator;
		@GodotName("add_shortcut") GodotMethod!(void, ShortCut, long, bool) addShortcut;
		@GodotName("add_submenu_item") GodotMethod!(void, String, String, long) addSubmenuItem;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_allow_search") GodotMethod!(bool) getAllowSearch;
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
	pragma(inline, true) PopupMenu opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
	@disable new(size_t s);
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
	Adds a new checkable item with text `label`.
	An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See $(D getItemAccelerator) for more info on accelerators.
	$(B Note:) Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See $(D setItemChecked) for more info on how to control it.
	*/
	void addCheckItem(in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCheckItem, _godot_object, label, id, accel);
	}
	/**
	Adds a new checkable item and assigns the specified $(D ShortCut) to it. Sets the label of the checkbox to the $(D ShortCut)'s name.
	An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	$(B Note:) Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See $(D setItemChecked) for more info on how to control it.
	*/
	void addCheckShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCheckShortcut, _godot_object, shortcut, id, global);
	}
	/**
	Adds a new checkable item with text `label` and icon `texture`.
	An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See $(D getItemAccelerator) for more info on accelerators.
	$(B Note:) Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See $(D setItemChecked) for more info on how to control it.
	*/
	void addIconCheckItem(Texture texture, in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconCheckItem, _godot_object, texture, label, id, accel);
	}
	/**
	Adds a new checkable item and assigns the specified $(D ShortCut) and icon `texture` to it. Sets the label of the checkbox to the $(D ShortCut)'s name.
	An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	$(B Note:) Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See $(D setItemChecked) for more info on how to control it.
	*/
	void addIconCheckShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconCheckShortcut, _godot_object, texture, shortcut, id, global);
	}
	/**
	Adds a new item with text `label` and icon `texture`.
	An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See $(D getItemAccelerator) for more info on accelerators.
	*/
	void addIconItem(Texture texture, in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconItem, _godot_object, texture, label, id, accel);
	}
	/**
	Same as $(D addIconCheckItem), but uses a radio check button.
	*/
	void addIconRadioCheckItem(Texture texture, in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconRadioCheckItem, _godot_object, texture, label, id, accel);
	}
	/**
	Same as $(D addIconCheckShortcut), but uses a radio check button.
	*/
	void addIconRadioCheckShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconRadioCheckShortcut, _godot_object, texture, shortcut, id, global);
	}
	/**
	Adds a new item and assigns the specified $(D ShortCut) and icon `texture` to it. Sets the label of the checkbox to the $(D ShortCut)'s name.
	An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	*/
	void addIconShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconShortcut, _godot_object, texture, shortcut, id, global);
	}
	/**
	Adds a new item with text `label`.
	An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See $(D getItemAccelerator) for more info on accelerators.
	*/
	void addItem(in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addItem, _godot_object, label, id, accel);
	}
	/**
	Adds a new multistate item with text `label`.
	Contrarily to normal binary items, multistate items can have more than two states, as defined by `max_states`. Each press or activate of the item will increase the state by one. The default value is defined by `default_state`.
	An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See $(D getItemAccelerator) for more info on accelerators.
	*/
	void addMultistateItem(in String label, in long max_states, in long default_state = 0, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addMultistateItem, _godot_object, label, max_states, default_state, id, accel);
	}
	/**
	Adds a new radio check button with text `label`.
	An `id` can optionally be provided, as well as an accelerator (`accel`). If no `id` is provided, one will be created from the index. If no `accel` is provided then the default `0` will be assigned to it. See $(D getItemAccelerator) for more info on accelerators.
	$(B Note:) Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See $(D setItemChecked) for more info on how to control it.
	*/
	void addRadioCheckItem(in String label, in long id = -1, in long accel = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addRadioCheckItem, _godot_object, label, id, accel);
	}
	/**
	Adds a new radio check button and assigns a $(D ShortCut) to it. Sets the label of the checkbox to the $(D ShortCut)'s name.
	An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	$(B Note:) Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually. See $(D setItemChecked) for more info on how to control it.
	*/
	void addRadioCheckShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addRadioCheckShortcut, _godot_object, shortcut, id, global);
	}
	/**
	Adds a separator between items. Separators also occupy an index.
	*/
	void addSeparator(in String label = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSeparator, _godot_object, label);
	}
	/**
	Adds a $(D ShortCut).
	An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	*/
	void addShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addShortcut, _godot_object, shortcut, id, global);
	}
	/**
	Adds an item that will act as a submenu of the parent $(D PopupMenu) node when clicked. The `submenu` argument is the name of the child $(D PopupMenu) node that will be shown when the item is clicked.
	An `id` can optionally be provided. If no `id` is provided, one will be created from the index.
	*/
	void addSubmenuItem(in String label, in String submenu, in long id = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSubmenuItem, _godot_object, label, submenu, id);
	}
	/**
	Removes all items from the $(D PopupMenu).
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
	Returns the accelerator of the item at index `idx`. Accelerators are special combinations of keys that activate the item, no matter which control is focused.
	*/
	long getItemAccelerator(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemAccelerator, _godot_object, idx);
	}
	/**
	Returns the number of items in the $(D PopupMenu).
	*/
	long getItemCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemCount, _godot_object);
	}
	/**
	Returns the icon of the item at index `idx`.
	*/
	Ref!Texture getItemIcon(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getItemIcon, _godot_object, idx);
	}
	/**
	Returns the id of the item at index `idx`. `id` can be manually assigned, while index can not.
	*/
	long getItemId(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemId, _godot_object, idx);
	}
	/**
	Returns the index of the item containing the specified `id`. Index is automatically assigned to each item by the engine. Index can not be set manually.
	*/
	long getItemIndex(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemIndex, _godot_object, id);
	}
	/**
	Returns the metadata of the specified item, which might be of any type. You can set it with $(D setItemMetadata), which provides a simple way of assigning context data to items.
	*/
	Variant getItemMetadata(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getItemMetadata, _godot_object, idx);
	}
	/**
	Returns the $(D ShortCut) associated with the specified `idx` item.
	*/
	Ref!ShortCut getItemShortcut(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ShortCut)(GDNativeClassBinding.getItemShortcut, _godot_object, idx);
	}
	/**
	Returns the submenu name of the item at index `idx`. See $(D addSubmenuItem) for more info on how to add a submenu.
	*/
	String getItemSubmenu(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getItemSubmenu, _godot_object, idx);
	}
	/**
	Returns the text of the item at index `idx`.
	*/
	String getItemText(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getItemText, _godot_object, idx);
	}
	/**
	Returns the tooltip associated with the specified index index `idx`.
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
	Returns `true` if the popup will be hidden when the window loses focus or not.
	*/
	bool isHideOnWindowLoseFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHideOnWindowLoseFocus, _godot_object);
	}
	/**
	Returns `true` if the item at index `idx` is checkable in some way, i.e. if it has a checkbox or radio button.
	$(B Note:) Checkable items just display a checkmark or radio button, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	bool isItemCheckable(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemCheckable, _godot_object, idx);
	}
	/**
	Returns `true` if the item at index `idx` is checked.
	*/
	bool isItemChecked(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemChecked, _godot_object, idx);
	}
	/**
	Returns `true` if the item at index `idx` is disabled. When it is disabled it can't be selected, or its action invoked.
	See $(D setItemDisabled) for more info on how to disable an item.
	*/
	bool isItemDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemDisabled, _godot_object, idx);
	}
	/**
	Returns `true` if the item at index `idx` has radio button-style checkability.
	$(B Note:) This is purely cosmetic; you must add the logic for checking/unchecking items in radio groups.
	*/
	bool isItemRadioCheckable(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemRadioCheckable, _godot_object, idx);
	}
	/**
	Returns `true` if the item is a separator. If it is, it will be displayed as a line. See $(D addSeparator) for more info on how to add a separator.
	*/
	bool isItemSeparator(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemSeparator, _godot_object, idx);
	}
	/**
	Returns `true` if the specified item's shortcut is disabled.
	*/
	bool isItemShortcutDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemShortcutDisabled, _godot_object, idx);
	}
	/**
	Removes the item at index `idx` from the menu.
	$(B Note:) The indices of items after the removed item will be shifted by one.
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
	Hides the $(D PopupMenu) when the window loses focus.
	*/
	void setHideOnWindowLoseFocus(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHideOnWindowLoseFocus, _godot_object, enable);
	}
	/**
	Sets the accelerator of the item at index `idx`. Accelerators are special combinations of keys that activate the item, no matter which control is focused.
	*/
	void setItemAccelerator(in long idx, in long accel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemAccelerator, _godot_object, idx, accel);
	}
	/**
	Sets whether the item at index `idx` has a checkbox. If `false`, sets the type of the item to plain text.
	$(B Note:) Checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	void setItemAsCheckable(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemAsCheckable, _godot_object, idx, enable);
	}
	/**
	Sets the type of the item at the specified index `idx` to radio button. If `false`, sets the type of the item to plain text.
	*/
	void setItemAsRadioCheckable(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemAsRadioCheckable, _godot_object, idx, enable);
	}
	/**
	Mark the item at index `idx` as a separator, which means that it would be displayed as a line. If `false`, sets the type of the item to plain text.
	*/
	void setItemAsSeparator(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemAsSeparator, _godot_object, idx, enable);
	}
	/**
	Sets the checkstate status of the item at index `idx`.
	*/
	void setItemChecked(in long idx, in bool checked)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemChecked, _godot_object, idx, checked);
	}
	/**
	Enables/disables the item at index `idx`. When it is disabled, it can't be selected and its action can't be invoked.
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemDisabled, _godot_object, idx, disabled);
	}
	/**
	Replaces the $(D Texture) icon of the specified `idx`.
	*/
	void setItemIcon(in long idx, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemIcon, _godot_object, idx, icon);
	}
	/**
	Sets the `id` of the item at index `idx`.
	*/
	void setItemId(in long idx, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemId, _godot_object, idx, id);
	}
	/**
	Sets the metadata of an item, which may be of any type. You can later get it with $(D getItemMetadata), which provides a simple way of assigning context data to items.
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemMetadata, _godot_object, idx, metadata);
	}
	/**
	Sets the state of an multistate item. See $(D addMultistateItem) for details.
	*/
	void setItemMultistate(in long idx, in long state)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemMultistate, _godot_object, idx, state);
	}
	/**
	Sets a $(D ShortCut) for the specified item `idx`.
	*/
	void setItemShortcut(in long idx, ShortCut shortcut, in bool global = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemShortcut, _godot_object, idx, shortcut, global);
	}
	/**
	Disables the $(D ShortCut) of the specified index `idx`.
	*/
	void setItemShortcutDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemShortcutDisabled, _godot_object, idx, disabled);
	}
	/**
	Sets the submenu of the item at index `idx`. The submenu is the name of a child $(D PopupMenu) node that would be shown when the item is clicked.
	*/
	void setItemSubmenu(in long idx, in String submenu)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemSubmenu, _godot_object, idx, submenu);
	}
	/**
	Sets the text of the item at index `idx`.
	*/
	void setItemText(in long idx, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemText, _godot_object, idx, text);
	}
	/**
	Sets the $(D String) tooltip of the item at the specified index `idx`.
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
	Toggles the check state of the item of the specified index `idx`.
	*/
	void toggleItemChecked(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.toggleItemChecked, _godot_object, idx);
	}
	/**
	Cycle to the next state of an multistate item. See $(D addMultistateItem) for details.
	*/
	void toggleItemMultistate(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.toggleItemMultistate, _godot_object, idx);
	}
	/**
	If `true`, allows to navigate $(D PopupMenu) with letter keys.
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
	If `true`, hides the $(D PopupMenu) when a checkbox or radio button is selected.
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
	If `true`, hides the $(D PopupMenu) when an item is selected.
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
	If `true`, hides the $(D PopupMenu) when a state item is selected.
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
	Sets the delay time in seconds for the submenu item to popup on mouse hovering. If the popup menu is added as a child of another (acting as a submenu), it will inherit the delay time of the parent menu item.
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
