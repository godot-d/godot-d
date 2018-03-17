/**
Control that provides a list of selectable items (and/or icons) in a single column, or optionally in multiple columns.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.itemlist;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
import godot.vscrollbar;
import godot.inputevent;
/**
Control that provides a list of selectable items (and/or icons) in a single column, or optionally in multiple columns.

This control provides a selectable list of items that may be in a single (or multiple columns) with option of text, icons,
or both text and icon.  Tooltips are supported and may be different for every item in the list.  Selectable items in the list
may be selected or deselected and multiple selection may be enabled.  Selection with right mouse button may also be enabled
to allow use of popup context menus.  Items may also be 'activated' with a double click (or Enter key).
*/
@GodotBaseClass struct ItemList
{
	static immutable string _GODOT_internal_name = "ItemList";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ItemList other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ItemList opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ItemList _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ItemList");
		if(constructor is null) return typeof(this).init;
		return cast(ItemList)(constructor());
	}
	/// 
	enum SelectMode : int
	{
		/**
		
		*/
		selectSingle = 0,
		/**
		
		*/
		selectMulti = 1,
	}
	/// 
	enum IconMode : int
	{
		/**
		
		*/
		iconModeTop = 0,
		/**
		
		*/
		iconModeLeft = 1,
	}
	/// 
	enum Constants : int
	{
		iconModeTop = 0,
		selectSingle = 0,
		selectMulti = 1,
		iconModeLeft = 1,
	}
	package(godot) static GodotMethod!(void, String, Texture, bool) _GODOT_add_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_item") = _GODOT_add_item;
	/**
	Adds an item to the item list with specified text.  Specify an icon of null for a list item with no icon.
	If selectable is true the list item will be selectable.
	*/
	void addItem(StringArg0)(in StringArg0 text, Texture icon = Texture.init, in bool selectable = true)
	{
		_GODOT_add_item.bind("ItemList", "add_item");
		ptrcall!(void)(_GODOT_add_item, _godot_object, text, icon, selectable);
	}
	package(godot) static GodotMethod!(void, Texture, bool) _GODOT_add_icon_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_item") = _GODOT_add_icon_item;
	/**
	Adds an item to the item list with no text, only an icon.
	*/
	void addIconItem(Texture icon, in bool selectable = true)
	{
		_GODOT_add_icon_item.bind("ItemList", "add_icon_item");
		ptrcall!(void)(_GODOT_add_icon_item, _godot_object, icon, selectable);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_text") = _GODOT_set_item_text;
	/**
	Sets text of item at specified index.
	*/
	void setItemText(StringArg1)(in long idx, in StringArg1 text)
	{
		_GODOT_set_item_text.bind("ItemList", "set_item_text");
		ptrcall!(void)(_GODOT_set_item_text, _godot_object, idx, text);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_item_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_text") = _GODOT_get_item_text;
	/**
	Return the text for specified item index.
	*/
	String getItemText(in long idx) const
	{
		_GODOT_get_item_text.bind("ItemList", "get_item_text");
		return ptrcall!(String)(_GODOT_get_item_text, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_icon") = _GODOT_set_item_icon;
	/**
	Set (or replace) icon of the item at the specified index.
	*/
	void setItemIcon(in long idx, Texture icon)
	{
		_GODOT_set_item_icon.bind("ItemList", "set_item_icon");
		ptrcall!(void)(_GODOT_set_item_icon, _godot_object, idx, icon);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_item_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_icon") = _GODOT_get_item_icon;
	/**
	
	*/
	Ref!Texture getItemIcon(in long idx) const
	{
		_GODOT_get_item_icon.bind("ItemList", "get_item_icon");
		return ptrcall!(Texture)(_GODOT_get_item_icon, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, Rect2) _GODOT_set_item_icon_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_icon_region") = _GODOT_set_item_icon_region;
	/**
	
	*/
	void setItemIconRegion(in long idx, in Rect2 rect)
	{
		_GODOT_set_item_icon_region.bind("ItemList", "set_item_icon_region");
		ptrcall!(void)(_GODOT_set_item_icon_region, _godot_object, idx, rect);
	}
	package(godot) static GodotMethod!(Rect2, long) _GODOT_get_item_icon_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_icon_region") = _GODOT_get_item_icon_region;
	/**
	
	*/
	Rect2 getItemIconRegion(in long idx) const
	{
		_GODOT_get_item_icon_region.bind("ItemList", "get_item_icon_region");
		return ptrcall!(Rect2)(_GODOT_get_item_icon_region, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_item_selectable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_selectable") = _GODOT_set_item_selectable;
	/**
	Allow or disallow selection of the item at the specified index.
	*/
	void setItemSelectable(in long idx, in bool selectable)
	{
		_GODOT_set_item_selectable.bind("ItemList", "set_item_selectable");
		ptrcall!(void)(_GODOT_set_item_selectable, _godot_object, idx, selectable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_item_selectable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_selectable") = _GODOT_is_item_selectable;
	/**
	Returns whether or not the item at the specified index is selectable.
	*/
	bool isItemSelectable(in long idx) const
	{
		_GODOT_is_item_selectable.bind("ItemList", "is_item_selectable");
		return ptrcall!(bool)(_GODOT_is_item_selectable, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_disabled") = _GODOT_set_item_disabled;
	/**
	Disable (or enable) item at specified index.
	Disabled items are not be selectable and do not fire activation (Enter or double-click) signals.
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		_GODOT_set_item_disabled.bind("ItemList", "set_item_disabled");
		ptrcall!(void)(_GODOT_set_item_disabled, _godot_object, idx, disabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_item_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_disabled") = _GODOT_is_item_disabled;
	/**
	Returns whether or not the item at the specified index is disabled
	*/
	bool isItemDisabled(in long idx) const
	{
		_GODOT_is_item_disabled.bind("ItemList", "is_item_disabled");
		return ptrcall!(bool)(_GODOT_is_item_disabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, Variant) _GODOT_set_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_metadata") = _GODOT_set_item_metadata;
	/**
	Sets a value (of any type) to be stored with the item at the specified index.
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		_GODOT_set_item_metadata.bind("ItemList", "set_item_metadata");
		ptrcall!(void)(_GODOT_set_item_metadata, _godot_object, idx, metadata);
	}
	package(godot) static GodotMethod!(Variant, long) _GODOT_get_item_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_metadata") = _GODOT_get_item_metadata;
	/**
	
	*/
	Variant getItemMetadata(in long idx) const
	{
		_GODOT_get_item_metadata.bind("ItemList", "get_item_metadata");
		return ptrcall!(Variant)(_GODOT_get_item_metadata, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, Color) _GODOT_set_item_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_custom_bg_color") = _GODOT_set_item_custom_bg_color;
	/**
	
	*/
	void setItemCustomBgColor(in long idx, in Color custom_bg_color)
	{
		_GODOT_set_item_custom_bg_color.bind("ItemList", "set_item_custom_bg_color");
		ptrcall!(void)(_GODOT_set_item_custom_bg_color, _godot_object, idx, custom_bg_color);
	}
	package(godot) static GodotMethod!(Color, long) _GODOT_get_item_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_custom_bg_color") = _GODOT_get_item_custom_bg_color;
	/**
	
	*/
	Color getItemCustomBgColor(in long idx) const
	{
		_GODOT_get_item_custom_bg_color.bind("ItemList", "get_item_custom_bg_color");
		return ptrcall!(Color)(_GODOT_get_item_custom_bg_color, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_item_tooltip_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_tooltip_enabled") = _GODOT_set_item_tooltip_enabled;
	/**
	Sets whether the tooltip is enabled for specified item index.
	*/
	void setItemTooltipEnabled(in long idx, in bool enable)
	{
		_GODOT_set_item_tooltip_enabled.bind("ItemList", "set_item_tooltip_enabled");
		ptrcall!(void)(_GODOT_set_item_tooltip_enabled, _godot_object, idx, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_item_tooltip_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_item_tooltip_enabled") = _GODOT_is_item_tooltip_enabled;
	/**
	Returns whether the tooltip is enabled for specified item index.
	*/
	bool isItemTooltipEnabled(in long idx) const
	{
		_GODOT_is_item_tooltip_enabled.bind("ItemList", "is_item_tooltip_enabled");
		return ptrcall!(bool)(_GODOT_is_item_tooltip_enabled, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_item_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_tooltip") = _GODOT_set_item_tooltip;
	/**
	Sets tooltip hint for item at specified index.
	*/
	void setItemTooltip(StringArg1)(in long idx, in StringArg1 tooltip)
	{
		_GODOT_set_item_tooltip.bind("ItemList", "set_item_tooltip");
		ptrcall!(void)(_GODOT_set_item_tooltip, _godot_object, idx, tooltip);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_item_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_tooltip") = _GODOT_get_item_tooltip;
	/**
	Return tooltip hint for specified item index.
	*/
	String getItemTooltip(in long idx) const
	{
		_GODOT_get_item_tooltip.bind("ItemList", "get_item_tooltip");
		return ptrcall!(String)(_GODOT_get_item_tooltip, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	/**
	Select the item at the specified index.
	Note:  This method does not trigger the item selection signal.
	*/
	void select(in long idx, in bool single = true)
	{
		_GODOT_select.bind("ItemList", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, idx, single);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_unselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "unselect") = _GODOT_unselect;
	/**
	Ensure item at specified index is not selected.
	*/
	void unselect(in long idx)
	{
		_GODOT_unselect.bind("ItemList", "unselect");
		ptrcall!(void)(_GODOT_unselect, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_unselect_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "unselect_all") = _GODOT_unselect_all;
	/**
	
	*/
	void unselectAll()
	{
		_GODOT_unselect_all.bind("ItemList", "unselect_all");
		ptrcall!(void)(_GODOT_unselect_all, _godot_object);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selected") = _GODOT_is_selected;
	/**
	Returns whether or not item at the specified index is currently selected.
	*/
	bool isSelected(in long idx) const
	{
		_GODOT_is_selected.bind("ItemList", "is_selected");
		return ptrcall!(bool)(_GODOT_is_selected, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_selected_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_items") = _GODOT_get_selected_items;
	/**
	Returns the list of selected indexes.
	*/
	PoolIntArray getSelectedItems()
	{
		_GODOT_get_selected_items.bind("ItemList", "get_selected_items");
		return ptrcall!(PoolIntArray)(_GODOT_get_selected_items, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_move_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_item") = _GODOT_move_item;
	/**
	
	*/
	void moveItem(in long p_from_idx, in long p_to_idx)
	{
		_GODOT_move_item.bind("ItemList", "move_item");
		ptrcall!(void)(_GODOT_move_item, _godot_object, p_from_idx, p_to_idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_item_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_count") = _GODOT_get_item_count;
	/**
	Return count of items currently in the item list.
	*/
	long getItemCount() const
	{
		_GODOT_get_item_count.bind("ItemList", "get_item_count");
		return ptrcall!(long)(_GODOT_get_item_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_item") = _GODOT_remove_item;
	/**
	Remove item at specified index from the list.
	*/
	void removeItem(in long idx)
	{
		_GODOT_remove_item.bind("ItemList", "remove_item");
		ptrcall!(void)(_GODOT_remove_item, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Remove all items from the list.
	*/
	void clear()
	{
		_GODOT_clear.bind("ItemList", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_sort_items_by_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "sort_items_by_text") = _GODOT_sort_items_by_text;
	/**
	Sorts items in the list by their text.
	*/
	void sortItemsByText()
	{
		_GODOT_sort_items_by_text.bind("ItemList", "sort_items_by_text");
		ptrcall!(void)(_GODOT_sort_items_by_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_fixed_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fixed_column_width") = _GODOT_set_fixed_column_width;
	/**
	
	*/
	void setFixedColumnWidth(in long width)
	{
		_GODOT_set_fixed_column_width.bind("ItemList", "set_fixed_column_width");
		ptrcall!(void)(_GODOT_set_fixed_column_width, _godot_object, width);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_fixed_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fixed_column_width") = _GODOT_get_fixed_column_width;
	/**
	
	*/
	long getFixedColumnWidth() const
	{
		_GODOT_get_fixed_column_width.bind("ItemList", "get_fixed_column_width");
		return ptrcall!(long)(_GODOT_get_fixed_column_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_same_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_same_column_width") = _GODOT_set_same_column_width;
	/**
	
	*/
	void setSameColumnWidth(in bool enable)
	{
		_GODOT_set_same_column_width.bind("ItemList", "set_same_column_width");
		ptrcall!(void)(_GODOT_set_same_column_width, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_same_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_same_column_width") = _GODOT_is_same_column_width;
	/**
	
	*/
	bool isSameColumnWidth() const
	{
		_GODOT_is_same_column_width.bind("ItemList", "is_same_column_width");
		return ptrcall!(bool)(_GODOT_is_same_column_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_max_text_lines;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_text_lines") = _GODOT_set_max_text_lines;
	/**
	
	*/
	void setMaxTextLines(in long lines)
	{
		_GODOT_set_max_text_lines.bind("ItemList", "set_max_text_lines");
		ptrcall!(void)(_GODOT_set_max_text_lines, _godot_object, lines);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_max_text_lines;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_text_lines") = _GODOT_get_max_text_lines;
	/**
	
	*/
	long getMaxTextLines() const
	{
		_GODOT_get_max_text_lines.bind("ItemList", "get_max_text_lines");
		return ptrcall!(long)(_GODOT_get_max_text_lines, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_max_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_columns") = _GODOT_set_max_columns;
	/**
	
	*/
	void setMaxColumns(in long amount)
	{
		_GODOT_set_max_columns.bind("ItemList", "set_max_columns");
		ptrcall!(void)(_GODOT_set_max_columns, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_max_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_columns") = _GODOT_get_max_columns;
	/**
	
	*/
	long getMaxColumns() const
	{
		_GODOT_get_max_columns.bind("ItemList", "get_max_columns");
		return ptrcall!(long)(_GODOT_get_max_columns, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_select_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_select_mode") = _GODOT_set_select_mode;
	/**
	
	*/
	void setSelectMode(in long mode)
	{
		_GODOT_set_select_mode.bind("ItemList", "set_select_mode");
		ptrcall!(void)(_GODOT_set_select_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(ItemList.SelectMode) _GODOT_get_select_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_select_mode") = _GODOT_get_select_mode;
	/**
	
	*/
	ItemList.SelectMode getSelectMode() const
	{
		_GODOT_get_select_mode.bind("ItemList", "get_select_mode");
		return ptrcall!(ItemList.SelectMode)(_GODOT_get_select_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_icon_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon_mode") = _GODOT_set_icon_mode;
	/**
	
	*/
	void setIconMode(in long mode)
	{
		_GODOT_set_icon_mode.bind("ItemList", "set_icon_mode");
		ptrcall!(void)(_GODOT_set_icon_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(ItemList.IconMode) _GODOT_get_icon_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_mode") = _GODOT_get_icon_mode;
	/**
	
	*/
	ItemList.IconMode getIconMode() const
	{
		_GODOT_get_icon_mode.bind("ItemList", "get_icon_mode");
		return ptrcall!(ItemList.IconMode)(_GODOT_get_icon_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_fixed_icon_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fixed_icon_size") = _GODOT_set_fixed_icon_size;
	/**
	
	*/
	void setFixedIconSize(in Vector2 size)
	{
		_GODOT_set_fixed_icon_size.bind("ItemList", "set_fixed_icon_size");
		ptrcall!(void)(_GODOT_set_fixed_icon_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_fixed_icon_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fixed_icon_size") = _GODOT_get_fixed_icon_size;
	/**
	
	*/
	Vector2 getFixedIconSize() const
	{
		_GODOT_get_fixed_icon_size.bind("ItemList", "get_fixed_icon_size");
		return ptrcall!(Vector2)(_GODOT_get_fixed_icon_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_icon_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon_scale") = _GODOT_set_icon_scale;
	/**
	
	*/
	void setIconScale(in double scale)
	{
		_GODOT_set_icon_scale.bind("ItemList", "set_icon_scale");
		ptrcall!(void)(_GODOT_set_icon_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_icon_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_scale") = _GODOT_get_icon_scale;
	/**
	
	*/
	double getIconScale() const
	{
		_GODOT_get_icon_scale.bind("ItemList", "get_icon_scale");
		return ptrcall!(double)(_GODOT_get_icon_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_allow_rmb_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_allow_rmb_select") = _GODOT_set_allow_rmb_select;
	/**
	
	*/
	void setAllowRmbSelect(in bool allow)
	{
		_GODOT_set_allow_rmb_select.bind("ItemList", "set_allow_rmb_select");
		ptrcall!(void)(_GODOT_set_allow_rmb_select, _godot_object, allow);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_allow_rmb_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_allow_rmb_select") = _GODOT_get_allow_rmb_select;
	/**
	
	*/
	bool getAllowRmbSelect() const
	{
		_GODOT_get_allow_rmb_select.bind("ItemList", "get_allow_rmb_select");
		return ptrcall!(bool)(_GODOT_get_allow_rmb_select, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_allow_reselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_allow_reselect") = _GODOT_set_allow_reselect;
	/**
	
	*/
	void setAllowReselect(in bool allow)
	{
		_GODOT_set_allow_reselect.bind("ItemList", "set_allow_reselect");
		ptrcall!(void)(_GODOT_set_allow_reselect, _godot_object, allow);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_allow_reselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_allow_reselect") = _GODOT_get_allow_reselect;
	/**
	
	*/
	bool getAllowReselect() const
	{
		_GODOT_get_allow_reselect.bind("ItemList", "get_allow_reselect");
		return ptrcall!(bool)(_GODOT_get_allow_reselect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_auto_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_auto_height") = _GODOT_set_auto_height;
	/**
	
	*/
	void setAutoHeight(in bool enable)
	{
		_GODOT_set_auto_height.bind("ItemList", "set_auto_height");
		ptrcall!(void)(_GODOT_set_auto_height, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_auto_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_auto_height") = _GODOT_has_auto_height;
	/**
	
	*/
	bool hasAutoHeight() const
	{
		_GODOT_has_auto_height.bind("ItemList", "has_auto_height");
		return ptrcall!(bool)(_GODOT_has_auto_height, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_anything_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_anything_selected") = _GODOT_is_anything_selected;
	/**
	
	*/
	bool isAnythingSelected()
	{
		_GODOT_is_anything_selected.bind("ItemList", "is_anything_selected");
		return ptrcall!(bool)(_GODOT_is_anything_selected, _godot_object);
	}
	package(godot) static GodotMethod!(long, Vector2, bool) _GODOT_get_item_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_at_position") = _GODOT_get_item_at_position;
	/**
	Given a position within the control return the item (if any) at that point.
	*/
	long getItemAtPosition(in Vector2 position, in bool exact = false) const
	{
		_GODOT_get_item_at_position.bind("ItemList", "get_item_at_position");
		return ptrcall!(long)(_GODOT_get_item_at_position, _godot_object, position, exact);
	}
	package(godot) static GodotMethod!(void) _GODOT_ensure_current_is_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "ensure_current_is_visible") = _GODOT_ensure_current_is_visible;
	/**
	Ensure selection is visible, adjusting the scroll position as necessary.
	*/
	void ensureCurrentIsVisible()
	{
		_GODOT_ensure_current_is_visible.bind("ItemList", "ensure_current_is_visible");
		ptrcall!(void)(_GODOT_ensure_current_is_visible, _godot_object);
	}
	package(godot) static GodotMethod!(VScrollBar) _GODOT_get_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_scroll") = _GODOT_get_v_scroll;
	/**
	Returns the current vertical scroll bar for the List.
	*/
	VScrollBar getVScroll()
	{
		_GODOT_get_v_scroll.bind("ItemList", "get_v_scroll");
		return ptrcall!(VScrollBar)(_GODOT_get_v_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__scroll_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_scroll_changed") = _GODOT__scroll_changed;
	/**
	
	*/
	void _scrollChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
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
	Allow single or multiple selection. See the `SELECT_*` constants.
	*/
	@property ItemList.SelectMode selectMode()
	{
		return getSelectMode();
	}
	/// ditto
	@property void selectMode(long v)
	{
		setSelectMode(v);
	}
	/**
	If `true` the currently selected item may be selected again.
	*/
	@property bool allowReselect()
	{
		return getAllowReselect();
	}
	/// ditto
	@property void allowReselect(bool v)
	{
		setAllowReselect(v);
	}
	/**
	If `true` a right mouse button click can select items.
	*/
	@property bool allowRmbSelect()
	{
		return getAllowRmbSelect();
	}
	/// ditto
	@property void allowRmbSelect(bool v)
	{
		setAllowRmbSelect(v);
	}
	/**
	
	*/
	@property long maxTextLines()
	{
		return getMaxTextLines();
	}
	/// ditto
	@property void maxTextLines(long v)
	{
		setMaxTextLines(v);
	}
	/**
	
	*/
	@property bool autoHeight()
	{
		return hasAutoHeight();
	}
	/// ditto
	@property void autoHeight(bool v)
	{
		setAutoHeight(v);
	}
	/**
	
	*/
	@property long maxColumns()
	{
		return getMaxColumns();
	}
	/// ditto
	@property void maxColumns(long v)
	{
		setMaxColumns(v);
	}
	/**
	
	*/
	@property bool sameColumnWidth()
	{
		return isSameColumnWidth();
	}
	/// ditto
	@property void sameColumnWidth(bool v)
	{
		setSameColumnWidth(v);
	}
	/**
	
	*/
	@property long fixedColumnWidth()
	{
		return getFixedColumnWidth();
	}
	/// ditto
	@property void fixedColumnWidth(long v)
	{
		setFixedColumnWidth(v);
	}
	/**
	
	*/
	@property ItemList.IconMode iconMode()
	{
		return getIconMode();
	}
	/// ditto
	@property void iconMode(long v)
	{
		setIconMode(v);
	}
	/**
	
	*/
	@property double iconScale()
	{
		return getIconScale();
	}
	/// ditto
	@property void iconScale(double v)
	{
		setIconScale(v);
	}
	/**
	
	*/
	@property Vector2 fixedIconSize()
	{
		return getFixedIconSize();
	}
	/// ditto
	@property void fixedIconSize(Vector2 v)
	{
		setFixedIconSize(v);
	}
}
