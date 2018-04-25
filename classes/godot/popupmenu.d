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
/**
PopupMenu displays a list of options.

PopupMenu is the typical Control that displays a list of options. They are popular in toolbars or context menus.
*/
@GodotBaseClass struct PopupMenu
{
	static immutable string _GODOT_internal_name = "PopupMenu";
public:
@nogc nothrow:
	union { godot_object _godot_object; Popup _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, Texture, String, long, long) _GODOT_add_icon_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_item") = _GODOT_add_icon_item;
	/**
	Add a new item with text "label" and icon "texture". An id can optionally be provided, as well as an accelerator keybinding. If no id is provided, one will be created from the index.
	*/
	void addIconItem(StringArg1)(Texture texture, in StringArg1 label, in long id = -1, in long accel = 0)
	{
		_GODOT_add_icon_item.bind("PopupMenu", "add_icon_item");
		ptrcall!(void)(_GODOT_add_icon_item, _godot_object, texture, label, id, accel);
	}
	package(godot) static GodotMethod!(void, String, long, long) _GODOT_add_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_item") = _GODOT_add_item;
	/**
	Add a new item with text "label". An id can optionally be provided, as well as an accelerator keybinding. If no id is provided, one will be created from the index.
	*/
	void addItem(StringArg0)(in StringArg0 label, in long id = -1, in long accel = 0)
	{
		_GODOT_add_item.bind("PopupMenu", "add_item");
		ptrcall!(void)(_GODOT_add_item, _godot_object, label, id, accel);
	}
	package(godot) static GodotMethod!(void, Texture, String, long, long) _GODOT_add_icon_check_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_check_item") = _GODOT_add_icon_check_item;
	/**
	Add a new checkable item with text "label" and icon "texture". An id can optionally be provided, as well as an accelerator. If no id is provided, one will be
	created from the index. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	void addIconCheckItem(StringArg1)(Texture texture, in StringArg1 label, in long id = -1, in long accel = 0)
	{
		_GODOT_add_icon_check_item.bind("PopupMenu", "add_icon_check_item");
		ptrcall!(void)(_GODOT_add_icon_check_item, _godot_object, texture, label, id, accel);
	}
	package(godot) static GodotMethod!(void, String, long, long) _GODOT_add_check_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_check_item") = _GODOT_add_check_item;
	/**
	Add a new checkable item with text "label". An id can optionally be provided, as well as an accelerator. If no id is provided, one will be created from the index. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	void addCheckItem(StringArg0)(in StringArg0 label, in long id = -1, in long accel = 0)
	{
		_GODOT_add_check_item.bind("PopupMenu", "add_check_item");
		ptrcall!(void)(_GODOT_add_check_item, _godot_object, label, id, accel);
	}
	package(godot) static GodotMethod!(void, String, long, long) _GODOT_add_radio_check_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_radio_check_item") = _GODOT_add_radio_check_item;
	/**
	The same as $(D addCheckItem) but the inserted item will look as a radio button. Remember this is just cosmetic and you have to add the logic for checking/unchecking items in radio groups.
	*/
	void addRadioCheckItem(StringArg0)(in StringArg0 label, in long id = -1, in long accel = 0)
	{
		_GODOT_add_radio_check_item.bind("PopupMenu", "add_radio_check_item");
		ptrcall!(void)(_GODOT_add_radio_check_item, _godot_object, label, id, accel);
	}
	package(godot) static GodotMethod!(void, String, String, long) _GODOT_add_submenu_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_submenu_item") = _GODOT_add_submenu_item;
	/**
	Adds an item with a submenu. The submenu is the name of a child PopupMenu node that would be shown when the item is clicked. An id can optionally be provided, but if is isn't provided, one will be created from the index.
	*/
	void addSubmenuItem(StringArg0, StringArg1)(in StringArg0 label, in StringArg1 submenu, in long id = -1)
	{
		_GODOT_add_submenu_item.bind("PopupMenu", "add_submenu_item");
		ptrcall!(void)(_GODOT_add_submenu_item, _godot_object, label, submenu, id);
	}
	package(godot) static GodotMethod!(void, Texture, ShortCut, long, bool) _GODOT_add_icon_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_shortcut") = _GODOT_add_icon_shortcut;
	/**
	
	*/
	void addIconShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		_GODOT_add_icon_shortcut.bind("PopupMenu", "add_icon_shortcut");
		ptrcall!(void)(_GODOT_add_icon_shortcut, _godot_object, texture, shortcut, id, global);
	}
	package(godot) static GodotMethod!(void, ShortCut, long, bool) _GODOT_add_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_shortcut") = _GODOT_add_shortcut;
	/**
	
	*/
	void addShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		_GODOT_add_shortcut.bind("PopupMenu", "add_shortcut");
		ptrcall!(void)(_GODOT_add_shortcut, _godot_object, shortcut, id, global);
	}
	package(godot) static GodotMethod!(void, Texture, ShortCut, long, bool) _GODOT_add_icon_check_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_check_shortcut") = _GODOT_add_icon_check_shortcut;
	/**
	
	*/
	void addIconCheckShortcut(Texture texture, ShortCut shortcut, in long id = -1, in bool global = false)
	{
		_GODOT_add_icon_check_shortcut.bind("PopupMenu", "add_icon_check_shortcut");
		ptrcall!(void)(_GODOT_add_icon_check_shortcut, _godot_object, texture, shortcut, id, global);
	}
	package(godot) static GodotMethod!(void, ShortCut, long, bool) _GODOT_add_check_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_check_shortcut") = _GODOT_add_check_shortcut;
	/**
	
	*/
	void addCheckShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		_GODOT_add_check_shortcut.bind("PopupMenu", "add_check_shortcut");
		ptrcall!(void)(_GODOT_add_check_shortcut, _godot_object, shortcut, id, global);
	}
	package(godot) static GodotMethod!(void, ShortCut, long, bool) _GODOT_add_radio_check_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_radio_check_shortcut") = _GODOT_add_radio_check_shortcut;
	/**
	
	*/
	void addRadioCheckShortcut(ShortCut shortcut, in long id = -1, in bool global = false)
	{
		_GODOT_add_radio_check_shortcut.bind("PopupMenu", "add_radio_check_shortcut");
		ptrcall!(void)(_GODOT_add_radio_check_shortcut, _godot_object, shortcut, id, global);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_text") = _GODOT_set_item_text;
	/**
	Set the text of the item at index "idx".
	*/
	void setItemText(StringArg1)(in long idx, in StringArg1 text)
	{
		_GODOT_set_item_text.bind("PopupMenu", "set_item_text");
		ptrcall!(void)(_GODOT_set_item_text, _godot_object, idx, text);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_icon") = _GODOT_set_item_icon;
	/**
	
	*/
	void setItemIcon(in long idx, Texture icon)
	{
		_GODOT_set_item_icon.bind("PopupMenu", "set_item_icon");
		ptrcall!(void)(_GODOT_set_item_icon, _godot_object, idx, icon);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_item_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_checked") = _GODOT_set_item_checked;
	/**
	Set the checkstate status of the item at index "idx".
	*/
	void setItemChecked(in long idx, in bool checked)
	{
		_GODOT_set_item_checked.bind("PopupMenu", "set_item_checked");
		ptrcall!(void)(_GODOT_set_item_checked, _godot_object, idx, checked);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_id") = _GODOT_set_item_id;
	/**
	Set the id of the item at index "idx".
	*/
	void setItemId(in long idx, in long id)
	{
		_GODOT_set_item_id.bind("PopupMenu", "set_item_id");
		ptrcall!(void)(_GODOT_set_item_id, _godot_object, idx, id);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_item_accelerator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_accelerator") = _GODOT_set_item_accelerator;
	/**
	Set the accelerator of the item at index "idx". Accelerators are special combinations of keys that activate the item, no matter which control is focused.
	*/
	void setItemAccelerator(in long idx, in long accel)
	{
		_GODOT_set_item_accelerator.bind("PopupMenu", "set_item_accelerator");
		ptrcall!(void)(_GODOT_set_item_accelerator, _godot_object, idx, accel);
	}
	package(godot) static GodotMethod!(void, long, Variant) _GODOT_set_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_metadata") = _GODOT_set_item_metadata;
	/**
	Sets the metadata of an item, which might be of any type. You can later get it with $(D getItemMetadata), which provides a simple way of assigning context data to items.
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		_GODOT_set_item_metadata.bind("PopupMenu", "set_item_metadata");
		ptrcall!(void)(_GODOT_set_item_metadata, _godot_object, idx, metadata);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_disabled") = _GODOT_set_item_disabled;
	/**
	Sets whether the item at index "idx" is disabled or not. When it is disabled it can't be selected, or its action invoked.
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		_GODOT_set_item_disabled.bind("PopupMenu", "set_item_disabled");
		ptrcall!(void)(_GODOT_set_item_disabled, _godot_object, idx, disabled);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_item_submenu;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_submenu") = _GODOT_set_item_submenu;
	/**
	Sets the submenu of the item at index "idx". The submenu is the name of a child PopupMenu node that would be shown when the item is clicked.
	*/
	void setItemSubmenu(StringArg1)(in long idx, in StringArg1 submenu)
	{
		_GODOT_set_item_submenu.bind("PopupMenu", "set_item_submenu");
		ptrcall!(void)(_GODOT_set_item_submenu, _godot_object, idx, submenu);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_item_as_separator;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_as_separator") = _GODOT_set_item_as_separator;
	/**
	Mark the item at index "idx" as a separator, which means that it would be displayed as a mere line.
	*/
	void setItemAsSeparator(in long idx, in bool enable)
	{
		_GODOT_set_item_as_separator.bind("PopupMenu", "set_item_as_separator");
		ptrcall!(void)(_GODOT_set_item_as_separator, _godot_object, idx, enable);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_item_as_checkable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_as_checkable") = _GODOT_set_item_as_checkable;
	/**
	Set whether the item at index "idx" has a checkbox. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	void setItemAsCheckable(in long idx, in bool enable)
	{
		_GODOT_set_item_as_checkable.bind("PopupMenu", "set_item_as_checkable");
		ptrcall!(void)(_GODOT_set_item_as_checkable, _godot_object, idx, enable);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_item_as_radio_checkable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_as_radio_checkable") = _GODOT_set_item_as_radio_checkable;
	/**
	The same as $(D setItemAsCheckable) but placing a radio button in case of enabling. If used for disabling, it's the same.
	Remember this is just cosmetic and you have to add the logic for checking/unchecking items in radio groups.
	*/
	void setItemAsRadioCheckable(in long idx, in bool enable)
	{
		_GODOT_set_item_as_radio_checkable.bind("PopupMenu", "set_item_as_radio_checkable");
		ptrcall!(void)(_GODOT_set_item_as_radio_checkable, _godot_object, idx, enable);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_item_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_tooltip") = _GODOT_set_item_tooltip;
	/**
	
	*/
	void setItemTooltip(StringArg1)(in long idx, in StringArg1 tooltip)
	{
		_GODOT_set_item_tooltip.bind("PopupMenu", "set_item_tooltip");
		ptrcall!(void)(_GODOT_set_item_tooltip, _godot_object, idx, tooltip);
	}
	package(godot) static GodotMethod!(void, long, ShortCut, bool) _GODOT_set_item_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_shortcut") = _GODOT_set_item_shortcut;
	/**
	
	*/
	void setItemShortcut(in long idx, ShortCut shortcut, in bool global = false)
	{
		_GODOT_set_item_shortcut.bind("PopupMenu", "set_item_shortcut");
		ptrcall!(void)(_GODOT_set_item_shortcut, _godot_object, idx, shortcut, global);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_item_multistate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_multistate") = _GODOT_set_item_multistate;
	/**
	
	*/
	void setItemMultistate(in long idx, in long state)
	{
		_GODOT_set_item_multistate.bind("PopupMenu", "set_item_multistate");
		ptrcall!(void)(_GODOT_set_item_multistate, _godot_object, idx, state);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_toggle_item_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "toggle_item_checked") = _GODOT_toggle_item_checked;
	/**
	
	*/
	void toggleItemChecked(in long idx)
	{
		_GODOT_toggle_item_checked.bind("PopupMenu", "toggle_item_checked");
		ptrcall!(void)(_GODOT_toggle_item_checked, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_toggle_item_multistate;
	package(godot) alias _GODOT_methodBindInfo(string name : "toggle_item_multistate") = _GODOT_toggle_item_multistate;
	/**
	
	*/
	void toggleItemMultistate(in long idx)
	{
		_GODOT_toggle_item_multistate.bind("PopupMenu", "toggle_item_multistate");
		ptrcall!(void)(_GODOT_toggle_item_multistate, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_text") = _GODOT_get_item_text;
	/**
	Return the text of the item at index "idx".
	*/
	String getItemText(in long idx) const
	{
		_GODOT_get_item_text.bind("PopupMenu", "get_item_text");
		return ptrcall!(String)(_GODOT_get_item_text, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_icon") = _GODOT_get_item_icon;
	/**
	Return the icon of the item at index "idx".
	*/
	Ref!Texture getItemIcon(in long idx) const
	{
		_GODOT_get_item_icon.bind("PopupMenu", "get_item_icon");
		return ptrcall!(Texture)(_GODOT_get_item_icon, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_item_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_checked") = _GODOT_is_item_checked;
	/**
	Return whether the item at index "idx" is checked.
	*/
	bool isItemChecked(in long idx) const
	{
		_GODOT_is_item_checked.bind("PopupMenu", "is_item_checked");
		return ptrcall!(bool)(_GODOT_is_item_checked, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_id") = _GODOT_get_item_id;
	/**
	Return the id of the item at index "idx".
	*/
	long getItemId(in long idx) const
	{
		_GODOT_get_item_id.bind("PopupMenu", "get_item_id");
		return ptrcall!(long)(_GODOT_get_item_id, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_item_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_index") = _GODOT_get_item_index;
	/**
	Find and return the index of the item containing a given id.
	*/
	long getItemIndex(in long id) const
	{
		_GODOT_get_item_index.bind("PopupMenu", "get_item_index");
		return ptrcall!(long)(_GODOT_get_item_index, _godot_object, id);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_item_accelerator;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_accelerator") = _GODOT_get_item_accelerator;
	/**
	Return the accelerator of the item at index "idx". Accelerators are special combinations of keys that activate the item, no matter which control is focused.
	*/
	long getItemAccelerator(in long idx) const
	{
		_GODOT_get_item_accelerator.bind("PopupMenu", "get_item_accelerator");
		return ptrcall!(long)(_GODOT_get_item_accelerator, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Variant, long) _GODOT_get_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_metadata") = _GODOT_get_item_metadata;
	/**
	Return the metadata of an item, which might be of any type. You can set it with $(D setItemMetadata), which provides a simple way of assigning context data to items.
	*/
	Variant getItemMetadata(in long idx) const
	{
		_GODOT_get_item_metadata.bind("PopupMenu", "get_item_metadata");
		return ptrcall!(Variant)(_GODOT_get_item_metadata, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_disabled") = _GODOT_is_item_disabled;
	/**
	Return whether the item at index "idx" is disabled. When it is disabled it can't be selected, or its action invoked.
	*/
	bool isItemDisabled(in long idx) const
	{
		_GODOT_is_item_disabled.bind("PopupMenu", "is_item_disabled");
		return ptrcall!(bool)(_GODOT_is_item_disabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_item_submenu;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_submenu") = _GODOT_get_item_submenu;
	/**
	Return the submenu name of the item at index "idx".
	*/
	String getItemSubmenu(in long idx) const
	{
		_GODOT_get_item_submenu.bind("PopupMenu", "get_item_submenu");
		return ptrcall!(String)(_GODOT_get_item_submenu, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_item_separator;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_separator") = _GODOT_is_item_separator;
	/**
	Return whether the item is a separator. If it is, it would be displayed as a line.
	*/
	bool isItemSeparator(in long idx) const
	{
		_GODOT_is_item_separator.bind("PopupMenu", "is_item_separator");
		return ptrcall!(bool)(_GODOT_is_item_separator, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_item_checkable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_checkable") = _GODOT_is_item_checkable;
	/**
	Return whether the item at index "idx" is checkable in some way, i.e., whether has a checkbox or radio button. Note that checkable items just display a checkmark or radio button, but don't have any built-in checking behavior and must be checked/unchecked manually.
	*/
	bool isItemCheckable(in long idx) const
	{
		_GODOT_is_item_checkable.bind("PopupMenu", "is_item_checkable");
		return ptrcall!(bool)(_GODOT_is_item_checkable, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_item_radio_checkable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_radio_checkable") = _GODOT_is_item_radio_checkable;
	/**
	Return whether the item at index "idx" has radio-button-style checkability. Remember this is just cosmetic and you have to add the logic for checking/unchecking items in radio groups.
	*/
	bool isItemRadioCheckable(in long idx) const
	{
		_GODOT_is_item_radio_checkable.bind("PopupMenu", "is_item_radio_checkable");
		return ptrcall!(bool)(_GODOT_is_item_radio_checkable, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_item_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_tooltip") = _GODOT_get_item_tooltip;
	/**
	
	*/
	String getItemTooltip(in long idx) const
	{
		_GODOT_get_item_tooltip.bind("PopupMenu", "get_item_tooltip");
		return ptrcall!(String)(_GODOT_get_item_tooltip, _godot_object, idx);
	}
	package(godot) static GodotMethod!(ShortCut, long) _GODOT_get_item_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_shortcut") = _GODOT_get_item_shortcut;
	/**
	
	*/
	Ref!ShortCut getItemShortcut(in long idx) const
	{
		_GODOT_get_item_shortcut.bind("PopupMenu", "get_item_shortcut");
		return ptrcall!(ShortCut)(_GODOT_get_item_shortcut, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_item_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_count") = _GODOT_get_item_count;
	/**
	Return the amount of items.
	*/
	long getItemCount() const
	{
		_GODOT_get_item_count.bind("PopupMenu", "get_item_count");
		return ptrcall!(long)(_GODOT_get_item_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_item") = _GODOT_remove_item;
	/**
	Removes the item at index "idx" from the menu. Note that the indexes of items after the removed item are going to be shifted by one.
	*/
	void removeItem(in long idx)
	{
		_GODOT_remove_item.bind("PopupMenu", "remove_item");
		ptrcall!(void)(_GODOT_remove_item, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_add_separator;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_separator") = _GODOT_add_separator;
	/**
	Add a separator between items. Separators also occupy an index.
	*/
	void addSeparator()
	{
		_GODOT_add_separator.bind("PopupMenu", "add_separator");
		ptrcall!(void)(_GODOT_add_separator, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear the popup menu, in effect removing all items.
	*/
	void clear()
	{
		_GODOT_clear.bind("PopupMenu", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_items") = _GODOT__set_items;
	/**
	
	*/
	void _setItems(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_items") = _GODOT__get_items;
	/**
	
	*/
	Array _getItems() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_on_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_on_item_selection") = _GODOT_set_hide_on_item_selection;
	/**
	
	*/
	void setHideOnItemSelection(in bool enable)
	{
		_GODOT_set_hide_on_item_selection.bind("PopupMenu", "set_hide_on_item_selection");
		ptrcall!(void)(_GODOT_set_hide_on_item_selection, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_hide_on_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_hide_on_item_selection") = _GODOT_is_hide_on_item_selection;
	/**
	
	*/
	bool isHideOnItemSelection() const
	{
		_GODOT_is_hide_on_item_selection.bind("PopupMenu", "is_hide_on_item_selection");
		return ptrcall!(bool)(_GODOT_is_hide_on_item_selection, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_on_checkable_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_on_checkable_item_selection") = _GODOT_set_hide_on_checkable_item_selection;
	/**
	
	*/
	void setHideOnCheckableItemSelection(in bool enable)
	{
		_GODOT_set_hide_on_checkable_item_selection.bind("PopupMenu", "set_hide_on_checkable_item_selection");
		ptrcall!(void)(_GODOT_set_hide_on_checkable_item_selection, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_hide_on_checkable_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_hide_on_checkable_item_selection") = _GODOT_is_hide_on_checkable_item_selection;
	/**
	
	*/
	bool isHideOnCheckableItemSelection() const
	{
		_GODOT_is_hide_on_checkable_item_selection.bind("PopupMenu", "is_hide_on_checkable_item_selection");
		return ptrcall!(bool)(_GODOT_is_hide_on_checkable_item_selection, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_on_state_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_on_state_item_selection") = _GODOT_set_hide_on_state_item_selection;
	/**
	
	*/
	void setHideOnStateItemSelection(in bool enable)
	{
		_GODOT_set_hide_on_state_item_selection.bind("PopupMenu", "set_hide_on_state_item_selection");
		ptrcall!(void)(_GODOT_set_hide_on_state_item_selection, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_hide_on_state_item_selection;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_hide_on_state_item_selection") = _GODOT_is_hide_on_state_item_selection;
	/**
	
	*/
	bool isHideOnStateItemSelection() const
	{
		_GODOT_is_hide_on_state_item_selection.bind("PopupMenu", "is_hide_on_state_item_selection");
		return ptrcall!(bool)(_GODOT_is_hide_on_state_item_selection, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__submenu_timeout;
	package(godot) alias _GODOT_methodBindInfo(string name : "_submenu_timeout") = _GODOT__submenu_timeout;
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
}
