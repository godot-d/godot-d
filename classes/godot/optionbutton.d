/**
Button control that provides selectable options when pressed.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.optionbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.button;
import godot.texture;
import godot.popupmenu;
/**
Button control that provides selectable options when pressed.

OptionButton is a type button that provides a selectable list of items when pressed. The item selected becomes the "current" item and is displayed as the button text.
*/
@GodotBaseClass struct OptionButton
{
	static immutable string _GODOT_internal_name = "OptionButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Button _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in OptionButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OptionButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static OptionButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("OptionButton");
		if(constructor is null) return typeof(this).init;
		return cast(OptionButton)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT__selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "_selected") = _GODOT__selected;
	/**
	
	*/
	void _selected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__focused;
	package(godot) alias _GODOT_methodBindInfo(string name : "_focused") = _GODOT__focused;
	/**
	
	*/
	void _focused(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_focused");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_add_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_item") = _GODOT_add_item;
	/**
	Add an item, with text "label" and (optionally) id. If no "id" is passed, "id" becomes the item index. New items are appended at the end.
	*/
	void addItem(StringArg0)(in StringArg0 label, in long id = -1)
	{
		_GODOT_add_item.bind("OptionButton", "add_item");
		ptrcall!(void)(_GODOT_add_item, _godot_object, label, id);
	}
	package(godot) static GodotMethod!(void, Texture, String, long) _GODOT_add_icon_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_item") = _GODOT_add_icon_item;
	/**
	Add an item, with a "texture" icon, text "label" and (optionally) id. If no "id" is passed, "id" becomes the item index. New items are appended at the end.
	*/
	void addIconItem(StringArg1)(Texture texture, in StringArg1 label, in long id)
	{
		_GODOT_add_icon_item.bind("OptionButton", "add_icon_item");
		ptrcall!(void)(_GODOT_add_icon_item, _godot_object, texture, label, id);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_text") = _GODOT_set_item_text;
	/**
	Set the text of an item at index "idx".
	*/
	void setItemText(StringArg1)(in long idx, in StringArg1 text)
	{
		_GODOT_set_item_text.bind("OptionButton", "set_item_text");
		ptrcall!(void)(_GODOT_set_item_text, _godot_object, idx, text);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_icon") = _GODOT_set_item_icon;
	/**
	Set the icon of an item at index "idx".
	*/
	void setItemIcon(in long idx, Texture texture)
	{
		_GODOT_set_item_icon.bind("OptionButton", "set_item_icon");
		ptrcall!(void)(_GODOT_set_item_icon, _godot_object, idx, texture);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_disabled") = _GODOT_set_item_disabled;
	/**
	
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		_GODOT_set_item_disabled.bind("OptionButton", "set_item_disabled");
		ptrcall!(void)(_GODOT_set_item_disabled, _godot_object, idx, disabled);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_id") = _GODOT_set_item_id;
	/**
	Set the ID of an item at index "idx".
	*/
	void setItemId(in long idx, in long id)
	{
		_GODOT_set_item_id.bind("OptionButton", "set_item_id");
		ptrcall!(void)(_GODOT_set_item_id, _godot_object, idx, id);
	}
	package(godot) static GodotMethod!(void, long, Variant) _GODOT_set_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_metadata") = _GODOT_set_item_metadata;
	/**
	
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		_GODOT_set_item_metadata.bind("OptionButton", "set_item_metadata");
		ptrcall!(void)(_GODOT_set_item_metadata, _godot_object, idx, metadata);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_text") = _GODOT_get_item_text;
	/**
	Return the text of the item at index "idx".
	*/
	String getItemText(in long idx) const
	{
		_GODOT_get_item_text.bind("OptionButton", "get_item_text");
		return ptrcall!(String)(_GODOT_get_item_text, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_icon") = _GODOT_get_item_icon;
	/**
	Return the icon of the item at index "idx".
	*/
	Ref!Texture getItemIcon(in long idx) const
	{
		_GODOT_get_item_icon.bind("OptionButton", "get_item_icon");
		return ptrcall!(Texture)(_GODOT_get_item_icon, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_id") = _GODOT_get_item_id;
	/**
	Return the ID of the item at index "idx".
	*/
	long getItemId(in long idx) const
	{
		_GODOT_get_item_id.bind("OptionButton", "get_item_id");
		return ptrcall!(long)(_GODOT_get_item_id, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Variant, long) _GODOT_get_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_metadata") = _GODOT_get_item_metadata;
	/**
	
	*/
	Variant getItemMetadata(in long idx) const
	{
		_GODOT_get_item_metadata.bind("OptionButton", "get_item_metadata");
		return ptrcall!(Variant)(_GODOT_get_item_metadata, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_disabled") = _GODOT_is_item_disabled;
	/**
	
	*/
	bool isItemDisabled(in long idx) const
	{
		_GODOT_is_item_disabled.bind("OptionButton", "is_item_disabled");
		return ptrcall!(bool)(_GODOT_is_item_disabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_item_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_count") = _GODOT_get_item_count;
	/**
	Return the amount of items in the OptionButton.
	*/
	long getItemCount() const
	{
		_GODOT_get_item_count.bind("OptionButton", "get_item_count");
		return ptrcall!(long)(_GODOT_get_item_count, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_add_separator;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_separator") = _GODOT_add_separator;
	/**
	Add a separator to the list of items. Separators help to group items. Separator also takes up an index and is appended at the end.
	*/
	void addSeparator()
	{
		_GODOT_add_separator.bind("OptionButton", "add_separator");
		ptrcall!(void)(_GODOT_add_separator, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear all the items in the `OptionButton`.
	*/
	void clear()
	{
		_GODOT_clear.bind("OptionButton", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	/**
	Select an item by index and make it the current item.
	*/
	void select(in long idx)
	{
		_GODOT_select.bind("OptionButton", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected") = _GODOT_get_selected;
	/**
	
	*/
	long getSelected() const
	{
		_GODOT_get_selected.bind("OptionButton", "get_selected");
		return ptrcall!(long)(_GODOT_get_selected, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_selected_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_id") = _GODOT_get_selected_id;
	/**
	
	*/
	long getSelectedId() const
	{
		_GODOT_get_selected_id.bind("OptionButton", "get_selected_id");
		return ptrcall!(long)(_GODOT_get_selected_id, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_selected_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_metadata") = _GODOT_get_selected_metadata;
	/**
	
	*/
	Variant getSelectedMetadata() const
	{
		_GODOT_get_selected_metadata.bind("OptionButton", "get_selected_metadata");
		return ptrcall!(Variant)(_GODOT_get_selected_metadata, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_item") = _GODOT_remove_item;
	/**
	
	*/
	void removeItem(in long idx)
	{
		_GODOT_remove_item.bind("OptionButton", "remove_item");
		ptrcall!(void)(_GODOT_remove_item, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__select_int;
	package(godot) alias _GODOT_methodBindInfo(string name : "_select_int") = _GODOT__select_int;
	/**
	
	*/
	void _selectInt(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_select_int");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PopupMenu) _GODOT_get_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_popup") = _GODOT_get_popup;
	/**
	Return the $(D PopupMenu) contained in this button.
	*/
	PopupMenu getPopup() const
	{
		_GODOT_get_popup.bind("OptionButton", "get_popup");
		return ptrcall!(PopupMenu)(_GODOT_get_popup, _godot_object);
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
	@property long selected()
	{
		return getSelected();
	}
	/// ditto
	@property void selected(long v)
	{
		_selectInt(v);
	}
}
