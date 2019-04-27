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
import godot.basebutton;
import godot.control;
import godot.canvasitem;
import godot.node;
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
		@GodotName("_selected") GodotMethod!(void, long) _selected;
		@GodotName("_focused") GodotMethod!(void, long) _focused;
		@GodotName("add_item") GodotMethod!(void, String, long) addItem;
		@GodotName("add_icon_item") GodotMethod!(void, Texture, String, long) addIconItem;
		@GodotName("set_item_text") GodotMethod!(void, long, String) setItemText;
		@GodotName("set_item_icon") GodotMethod!(void, long, Texture) setItemIcon;
		@GodotName("set_item_disabled") GodotMethod!(void, long, bool) setItemDisabled;
		@GodotName("set_item_id") GodotMethod!(void, long, long) setItemId;
		@GodotName("set_item_metadata") GodotMethod!(void, long, Variant) setItemMetadata;
		@GodotName("get_item_text") GodotMethod!(String, long) getItemText;
		@GodotName("get_item_icon") GodotMethod!(Texture, long) getItemIcon;
		@GodotName("get_item_id") GodotMethod!(long, long) getItemId;
		@GodotName("get_item_index") GodotMethod!(long, long) getItemIndex;
		@GodotName("get_item_metadata") GodotMethod!(Variant, long) getItemMetadata;
		@GodotName("is_item_disabled") GodotMethod!(bool, long) isItemDisabled;
		@GodotName("get_item_count") GodotMethod!(long) getItemCount;
		@GodotName("add_separator") GodotMethod!(void) addSeparator;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("select") GodotMethod!(void, long) select;
		@GodotName("get_selected") GodotMethod!(long) getSelected;
		@GodotName("get_selected_id") GodotMethod!(long) getSelectedId;
		@GodotName("get_selected_metadata") GodotMethod!(Variant) getSelectedMetadata;
		@GodotName("remove_item") GodotMethod!(void, long) removeItem;
		@GodotName("_select_int") GodotMethod!(void, long) _selectInt;
		@GodotName("get_popup") GodotMethod!(PopupMenu) getPopup;
		@GodotName("_set_items") GodotMethod!(void, Array) _setItems;
		@GodotName("_get_items") GodotMethod!(Array) _getItems;
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
	void _selected(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _focused(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_focused");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Add an item, with text "label" and (optionally) id. If no "id" is passed, "id" becomes the item index. New items are appended at the end.
	*/
	void addItem(in String label, in long id = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addItem, _godot_object, label, id);
	}
	/**
	Add an item, with a "texture" icon, text "label" and (optionally) id. If no "id" is passed, "id" becomes the item index. New items are appended at the end.
	*/
	void addIconItem(Texture texture, in String label, in long id = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIconItem, _godot_object, texture, label, id);
	}
	/**
	Set the text of an item at index "idx".
	*/
	void setItemText(in long idx, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemText, _godot_object, idx, text);
	}
	/**
	Set the icon of an item at index "idx".
	*/
	void setItemIcon(in long idx, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemIcon, _godot_object, idx, texture);
	}
	/**
	
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemDisabled, _godot_object, idx, disabled);
	}
	/**
	Set the ID of an item at index "idx".
	*/
	void setItemId(in long idx, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemId, _godot_object, idx, id);
	}
	/**
	
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemMetadata, _godot_object, idx, metadata);
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
	Return the ID of the item at index `idx`.
	*/
	long getItemId(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemId, _godot_object, idx);
	}
	/**
	Return the index of the item with the given `id`.
	*/
	long getItemIndex(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemIndex, _godot_object, id);
	}
	/**
	
	*/
	Variant getItemMetadata(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getItemMetadata, _godot_object, idx);
	}
	/**
	
	*/
	bool isItemDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemDisabled, _godot_object, idx);
	}
	/**
	Return the amount of items in the OptionButton.
	*/
	long getItemCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemCount, _godot_object);
	}
	/**
	Add a separator to the list of items. Separators help to group items. Separator also takes up an index and is appended at the end.
	*/
	void addSeparator()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addSeparator, _godot_object);
	}
	/**
	Clear all the items in the $(D OptionButton).
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Select an item by index and make it the current item.
	*/
	void select(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.select, _godot_object, idx);
	}
	/**
	
	*/
	long getSelected() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelected, _godot_object);
	}
	/**
	
	*/
	long getSelectedId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectedId, _godot_object);
	}
	/**
	
	*/
	Variant getSelectedMetadata() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getSelectedMetadata, _godot_object);
	}
	/**
	
	*/
	void removeItem(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeItem, _godot_object, idx);
	}
	/**
	
	*/
	void _selectInt(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_select_int");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Return the $(D PopupMenu) contained in this button.
	*/
	PopupMenu getPopup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PopupMenu)(_classBinding.getPopup, _godot_object);
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
