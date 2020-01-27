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
import godot.basebutton;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.texture;
import godot.popupmenu;
/**
Button control that provides selectable options when pressed.

OptionButton is a type button that provides a selectable list of items when pressed. The item selected becomes the "current" item and is displayed as the button text.
*/
@GodotBaseClass struct OptionButton
{
	enum string _GODOT_internal_name = "OptionButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Button _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_focused") GodotMethod!(void, long) _focused;
		@GodotName("_get_items") GodotMethod!(Array) _getItems;
		@GodotName("_select_int") GodotMethod!(void, long) _selectInt;
		@GodotName("_selected") GodotMethod!(void, long) _selected;
		@GodotName("_set_items") GodotMethod!(void, Array) _setItems;
		@GodotName("add_icon_item") GodotMethod!(void, Texture, String, long) addIconItem;
		@GodotName("add_item") GodotMethod!(void, String, long) addItem;
		@GodotName("add_separator") GodotMethod!(void) addSeparator;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_item_count") GodotMethod!(long) getItemCount;
		@GodotName("get_item_icon") GodotMethod!(Texture, long) getItemIcon;
		@GodotName("get_item_id") GodotMethod!(long, long) getItemId;
		@GodotName("get_item_index") GodotMethod!(long, long) getItemIndex;
		@GodotName("get_item_metadata") GodotMethod!(Variant, long) getItemMetadata;
		@GodotName("get_item_text") GodotMethod!(String, long) getItemText;
		@GodotName("get_popup") GodotMethod!(PopupMenu) getPopup;
		@GodotName("get_selected") GodotMethod!(long) getSelected;
		@GodotName("get_selected_id") GodotMethod!(long) getSelectedId;
		@GodotName("get_selected_metadata") GodotMethod!(Variant) getSelectedMetadata;
		@GodotName("is_item_disabled") GodotMethod!(bool, long) isItemDisabled;
		@GodotName("remove_item") GodotMethod!(void, long) removeItem;
		@GodotName("select") GodotMethod!(void, long) select;
		@GodotName("set_item_disabled") GodotMethod!(void, long, bool) setItemDisabled;
		@GodotName("set_item_icon") GodotMethod!(void, long, Texture) setItemIcon;
		@GodotName("set_item_id") GodotMethod!(void, long, long) setItemId;
		@GodotName("set_item_metadata") GodotMethod!(void, long, Variant) setItemMetadata;
		@GodotName("set_item_text") GodotMethod!(void, long, String) setItemText;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void _focused(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_focused");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	void _selectInt(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_select_int");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _selected(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_selected");
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
	Adds an item, with a `texture` icon, text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.
	*/
	void addIconItem(Texture texture, in String label, in long id = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIconItem, _godot_object, texture, label, id);
	}
	/**
	Adds an item, with text `label` and (optionally) `id`. If no `id` is passed, the item index will be used as the item's ID. New items are appended at the end.
	*/
	void addItem(in String label, in long id = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addItem, _godot_object, label, id);
	}
	/**
	Adds a separator to the list of items. Separators help to group items. Separator also takes up an index and is appended at the end.
	*/
	void addSeparator()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addSeparator, _godot_object);
	}
	/**
	Clears all the items in the $(D OptionButton).
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Returns the amount of items in the OptionButton, including separators.
	*/
	long getItemCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemCount, _godot_object);
	}
	/**
	Returns the icon of the item at index `idx`.
	*/
	Ref!Texture getItemIcon(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getItemIcon, _godot_object, idx);
	}
	/**
	Returns the ID of the item at index `idx`.
	*/
	long getItemId(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemId, _godot_object, idx);
	}
	/**
	Returns the index of the item with the given `id`.
	*/
	long getItemIndex(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemIndex, _godot_object, id);
	}
	/**
	Retrieves the metadata of an item. Metadata may be any type and can be used to store extra information about an item, such as an external string ID.
	*/
	Variant getItemMetadata(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getItemMetadata, _godot_object, idx);
	}
	/**
	Returns the text of the item at index `idx`.
	*/
	String getItemText(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getItemText, _godot_object, idx);
	}
	/**
	Returns the $(D PopupMenu) contained in this button.
	*/
	PopupMenu getPopup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PopupMenu)(_classBinding.getPopup, _godot_object);
	}
	/**
	
	*/
	long getSelected() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelected, _godot_object);
	}
	/**
	Returns the ID of the selected item, or `0` if no item is selected.
	*/
	long getSelectedId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectedId, _godot_object);
	}
	/**
	Gets the metadata of the selected item. Metadata for items can be set using $(D setItemMetadata).
	*/
	Variant getSelectedMetadata() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getSelectedMetadata, _godot_object);
	}
	/**
	Returns `true` if the item at index `idx` is disabled.
	*/
	bool isItemDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemDisabled, _godot_object, idx);
	}
	/**
	Removes the item at index `idx`.
	*/
	void removeItem(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeItem, _godot_object, idx);
	}
	/**
	Selects an item by index and makes it the current item. This will work even if the item is disabled.
	*/
	void select(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.select, _godot_object, idx);
	}
	/**
	Sets whether the item at index `idx` is disabled.
	Disabled items are drawn differently in the dropdown and are not selectable by the user. If the current selected item is set as disabled, it will remain selected.
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemDisabled, _godot_object, idx, disabled);
	}
	/**
	Sets the icon of the item at index `idx`.
	*/
	void setItemIcon(in long idx, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemIcon, _godot_object, idx, texture);
	}
	/**
	Sets the ID of the item at index `idx`.
	*/
	void setItemId(in long idx, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemId, _godot_object, idx, id);
	}
	/**
	Sets the metadata of an item. Metadata may be of any type and can be used to store extra information about an item, such as an external string ID.
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemMetadata, _godot_object, idx, metadata);
	}
	/**
	Sets the text of the item at index `idx`.
	*/
	void setItemText(in long idx, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemText, _godot_object, idx, text);
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
	The index of the currently selected item, or `-1` if no item is selected.
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
