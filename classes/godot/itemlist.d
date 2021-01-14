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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.texture;
import godot.vscrollbar;
/**
Control that provides a list of selectable items (and/or icons) in a single column, or optionally in multiple columns.

This control provides a selectable list of items that may be in a single (or multiple columns) with option of text, icons, or both text and icon. Tooltips are supported and may be different for every item in the list.
Selectable items in the list may be selected or deselected and multiple selection may be enabled. Selection with right mouse button may also be enabled to allow use of popup context menus. Items may also be "activated" by double-clicking them or by pressing Enter.
Item text only supports single-line strings, newline characters (e.g. `\n`) in the string won't produce a newline. Text wrapping is enabled in $(D constant ICON_MODE_TOP) mode, but column's width is adjusted to fully fit its content by default. You need to set $(D fixedColumnWidth) greater than zero to wrap the text.
*/
@GodotBaseClass struct ItemList
{
	package(godot) enum string _GODOT_internal_name = "ItemList";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_items") GodotMethod!(Array) _getItems;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_scroll_changed") GodotMethod!(void, double) _scrollChanged;
		@GodotName("_set_items") GodotMethod!(void, Array) _setItems;
		@GodotName("add_icon_item") GodotMethod!(void, Texture, bool) addIconItem;
		@GodotName("add_item") GodotMethod!(void, String, Texture, bool) addItem;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("ensure_current_is_visible") GodotMethod!(void) ensureCurrentIsVisible;
		@GodotName("get_allow_reselect") GodotMethod!(bool) getAllowReselect;
		@GodotName("get_allow_rmb_select") GodotMethod!(bool) getAllowRmbSelect;
		@GodotName("get_fixed_column_width") GodotMethod!(long) getFixedColumnWidth;
		@GodotName("get_fixed_icon_size") GodotMethod!(Vector2) getFixedIconSize;
		@GodotName("get_icon_mode") GodotMethod!(ItemList.IconMode) getIconMode;
		@GodotName("get_icon_scale") GodotMethod!(double) getIconScale;
		@GodotName("get_item_at_position") GodotMethod!(long, Vector2, bool) getItemAtPosition;
		@GodotName("get_item_count") GodotMethod!(long) getItemCount;
		@GodotName("get_item_custom_bg_color") GodotMethod!(Color, long) getItemCustomBgColor;
		@GodotName("get_item_custom_fg_color") GodotMethod!(Color, long) getItemCustomFgColor;
		@GodotName("get_item_icon") GodotMethod!(Texture, long) getItemIcon;
		@GodotName("get_item_icon_modulate") GodotMethod!(Color, long) getItemIconModulate;
		@GodotName("get_item_icon_region") GodotMethod!(Rect2, long) getItemIconRegion;
		@GodotName("get_item_metadata") GodotMethod!(Variant, long) getItemMetadata;
		@GodotName("get_item_text") GodotMethod!(String, long) getItemText;
		@GodotName("get_item_tooltip") GodotMethod!(String, long) getItemTooltip;
		@GodotName("get_max_columns") GodotMethod!(long) getMaxColumns;
		@GodotName("get_max_text_lines") GodotMethod!(long) getMaxTextLines;
		@GodotName("get_select_mode") GodotMethod!(ItemList.SelectMode) getSelectMode;
		@GodotName("get_selected_items") GodotMethod!(PoolIntArray) getSelectedItems;
		@GodotName("get_v_scroll") GodotMethod!(VScrollBar) getVScroll;
		@GodotName("has_auto_height") GodotMethod!(bool) hasAutoHeight;
		@GodotName("is_anything_selected") GodotMethod!(bool) isAnythingSelected;
		@GodotName("is_item_disabled") GodotMethod!(bool, long) isItemDisabled;
		@GodotName("is_item_icon_transposed") GodotMethod!(bool, long) isItemIconTransposed;
		@GodotName("is_item_selectable") GodotMethod!(bool, long) isItemSelectable;
		@GodotName("is_item_tooltip_enabled") GodotMethod!(bool, long) isItemTooltipEnabled;
		@GodotName("is_same_column_width") GodotMethod!(bool) isSameColumnWidth;
		@GodotName("is_selected") GodotMethod!(bool, long) isSelected;
		@GodotName("move_item") GodotMethod!(void, long, long) moveItem;
		@GodotName("remove_item") GodotMethod!(void, long) removeItem;
		@GodotName("select") GodotMethod!(void, long, bool) select;
		@GodotName("set_allow_reselect") GodotMethod!(void, bool) setAllowReselect;
		@GodotName("set_allow_rmb_select") GodotMethod!(void, bool) setAllowRmbSelect;
		@GodotName("set_auto_height") GodotMethod!(void, bool) setAutoHeight;
		@GodotName("set_fixed_column_width") GodotMethod!(void, long) setFixedColumnWidth;
		@GodotName("set_fixed_icon_size") GodotMethod!(void, Vector2) setFixedIconSize;
		@GodotName("set_icon_mode") GodotMethod!(void, long) setIconMode;
		@GodotName("set_icon_scale") GodotMethod!(void, double) setIconScale;
		@GodotName("set_item_custom_bg_color") GodotMethod!(void, long, Color) setItemCustomBgColor;
		@GodotName("set_item_custom_fg_color") GodotMethod!(void, long, Color) setItemCustomFgColor;
		@GodotName("set_item_disabled") GodotMethod!(void, long, bool) setItemDisabled;
		@GodotName("set_item_icon") GodotMethod!(void, long, Texture) setItemIcon;
		@GodotName("set_item_icon_modulate") GodotMethod!(void, long, Color) setItemIconModulate;
		@GodotName("set_item_icon_region") GodotMethod!(void, long, Rect2) setItemIconRegion;
		@GodotName("set_item_icon_transposed") GodotMethod!(void, long, bool) setItemIconTransposed;
		@GodotName("set_item_metadata") GodotMethod!(void, long, Variant) setItemMetadata;
		@GodotName("set_item_selectable") GodotMethod!(void, long, bool) setItemSelectable;
		@GodotName("set_item_text") GodotMethod!(void, long, String) setItemText;
		@GodotName("set_item_tooltip") GodotMethod!(void, long, String) setItemTooltip;
		@GodotName("set_item_tooltip_enabled") GodotMethod!(void, long, bool) setItemTooltipEnabled;
		@GodotName("set_max_columns") GodotMethod!(void, long) setMaxColumns;
		@GodotName("set_max_text_lines") GodotMethod!(void, long) setMaxTextLines;
		@GodotName("set_same_column_width") GodotMethod!(void, bool) setSameColumnWidth;
		@GodotName("set_select_mode") GodotMethod!(void, long) setSelectMode;
		@GodotName("sort_items_by_text") GodotMethod!(void) sortItemsByText;
		@GodotName("unselect") GodotMethod!(void, long) unselect;
		@GodotName("unselect_all") GodotMethod!(void) unselectAll;
	}
	/// 
	pragma(inline, true) bool opEquals(in ItemList other) const
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
	/// Construct a new instance of ItemList.
	/// Note: use `memnew!ItemList` instead.
	static ItemList _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ItemList");
		if(constructor is null) return typeof(this).init;
		return cast(ItemList)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum SelectMode : int
	{
		/**
		Only allow selecting a single item.
		*/
		selectSingle = 0,
		/**
		Allows selecting multiple items by holding Ctrl or Shift.
		*/
		selectMulti = 1,
	}
	/// 
	enum IconMode : int
	{
		/**
		Icon is drawn above the text.
		*/
		iconModeTop = 0,
		/**
		Icon is drawn to the left of the text.
		*/
		iconModeLeft = 1,
	}
	/// 
	enum Constants : int
	{
		selectSingle = 0,
		iconModeTop = 0,
		iconModeLeft = 1,
		selectMulti = 1,
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
	void _scrollChanged(in double arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_changed");
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
	Adds an item to the item list with no text, only an icon.
	*/
	void addIconItem(Texture icon, in bool selectable = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconItem, _godot_object, icon, selectable);
	}
	/**
	Adds an item to the item list with specified text. Specify an `icon`, or use `null` as the `icon` for a list item with no icon.
	If selectable is `true`, the list item will be selectable.
	*/
	void addItem(in String text, Texture icon = Texture.init, in bool selectable = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addItem, _godot_object, text, icon, selectable);
	}
	/**
	Removes all items from the list.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Ensure current selection is visible, adjusting the scroll position as necessary.
	*/
	void ensureCurrentIsVisible()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.ensureCurrentIsVisible, _godot_object);
	}
	/**
	
	*/
	bool getAllowReselect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAllowReselect, _godot_object);
	}
	/**
	
	*/
	bool getAllowRmbSelect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAllowRmbSelect, _godot_object);
	}
	/**
	
	*/
	long getFixedColumnWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFixedColumnWidth, _godot_object);
	}
	/**
	
	*/
	Vector2 getFixedIconSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getFixedIconSize, _godot_object);
	}
	/**
	
	*/
	ItemList.IconMode getIconMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ItemList.IconMode)(GDNativeClassBinding.getIconMode, _godot_object);
	}
	/**
	
	*/
	double getIconScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getIconScale, _godot_object);
	}
	/**
	Returns the item index at the given `position`.
	When there is no item at that point, -1 will be returned if `exact` is `true`, and the closest item index will be returned otherwise.
	*/
	long getItemAtPosition(in Vector2 position, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemAtPosition, _godot_object, position, exact);
	}
	/**
	Returns the number of items currently in the list.
	*/
	long getItemCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemCount, _godot_object);
	}
	/**
	Returns the custom background color of the item specified by `idx` index.
	*/
	Color getItemCustomBgColor(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getItemCustomBgColor, _godot_object, idx);
	}
	/**
	Returns the custom foreground color of the item specified by `idx` index.
	*/
	Color getItemCustomFgColor(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getItemCustomFgColor, _godot_object, idx);
	}
	/**
	Returns the icon associated with the specified index.
	*/
	Ref!Texture getItemIcon(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getItemIcon, _godot_object, idx);
	}
	/**
	Returns a $(D Color) modulating item's icon at the specified index.
	*/
	Color getItemIconModulate(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getItemIconModulate, _godot_object, idx);
	}
	/**
	Returns the region of item's icon used. The whole icon will be used if the region has no area.
	*/
	Rect2 getItemIconRegion(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getItemIconRegion, _godot_object, idx);
	}
	/**
	Returns the metadata value of the specified index.
	*/
	Variant getItemMetadata(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getItemMetadata, _godot_object, idx);
	}
	/**
	Returns the text associated with the specified index.
	*/
	String getItemText(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getItemText, _godot_object, idx);
	}
	/**
	Returns the tooltip hint associated with the specified index.
	*/
	String getItemTooltip(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getItemTooltip, _godot_object, idx);
	}
	/**
	
	*/
	long getMaxColumns() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxColumns, _godot_object);
	}
	/**
	
	*/
	long getMaxTextLines() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxTextLines, _godot_object);
	}
	/**
	
	*/
	ItemList.SelectMode getSelectMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ItemList.SelectMode)(GDNativeClassBinding.getSelectMode, _godot_object);
	}
	/**
	Returns an array with the indexes of the selected items.
	*/
	PoolIntArray getSelectedItems()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getSelectedItems, _godot_object);
	}
	/**
	Returns the $(D GodotObject) ID associated with the list.
	*/
	VScrollBar getVScroll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VScrollBar)(GDNativeClassBinding.getVScroll, _godot_object);
	}
	/**
	
	*/
	bool hasAutoHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAutoHeight, _godot_object);
	}
	/**
	Returns `true` if one or more items are selected.
	*/
	bool isAnythingSelected()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAnythingSelected, _godot_object);
	}
	/**
	Returns `true` if the item at the specified index is disabled.
	*/
	bool isItemDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemDisabled, _godot_object, idx);
	}
	/**
	Returns `true` if the item icon will be drawn transposed, i.e. the X and Y axes are swapped.
	*/
	bool isItemIconTransposed(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemIconTransposed, _godot_object, idx);
	}
	/**
	Returns `true` if the item at the specified index is selectable.
	*/
	bool isItemSelectable(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemSelectable, _godot_object, idx);
	}
	/**
	Returns `true` if the tooltip is enabled for specified item index.
	*/
	bool isItemTooltipEnabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemTooltipEnabled, _godot_object, idx);
	}
	/**
	
	*/
	bool isSameColumnWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSameColumnWidth, _godot_object);
	}
	/**
	Returns `true` if the item at the specified index is currently selected.
	*/
	bool isSelected(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSelected, _godot_object, idx);
	}
	/**
	Moves item from index `from_idx` to `to_idx`.
	*/
	void moveItem(in long from_idx, in long to_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveItem, _godot_object, from_idx, to_idx);
	}
	/**
	Removes the item specified by `idx` index from the list.
	*/
	void removeItem(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeItem, _godot_object, idx);
	}
	/**
	Select the item at the specified index.
	$(B Note:) This method does not trigger the item selection signal.
	*/
	void select(in long idx, in bool single = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.select, _godot_object, idx, single);
	}
	/**
	
	*/
	void setAllowReselect(in bool allow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAllowReselect, _godot_object, allow);
	}
	/**
	
	*/
	void setAllowRmbSelect(in bool allow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAllowRmbSelect, _godot_object, allow);
	}
	/**
	
	*/
	void setAutoHeight(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutoHeight, _godot_object, enable);
	}
	/**
	
	*/
	void setFixedColumnWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFixedColumnWidth, _godot_object, width);
	}
	/**
	
	*/
	void setFixedIconSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFixedIconSize, _godot_object, size);
	}
	/**
	
	*/
	void setIconMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIconMode, _godot_object, mode);
	}
	/**
	
	*/
	void setIconScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIconScale, _godot_object, scale);
	}
	/**
	Sets the background color of the item specified by `idx` index to the specified $(D Color).
	
	
	var some_string = "Some text"
	some_string.set_item_custom_bg_color(0,Color(1, 0, 0, 1) # This will set the background color of the first item of the control to red.
	
	
	*/
	void setItemCustomBgColor(in long idx, in Color custom_bg_color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemCustomBgColor, _godot_object, idx, custom_bg_color);
	}
	/**
	Sets the foreground color of the item specified by `idx` index to the specified $(D Color).
	
	
	var some_string = "Some text"
	some_string.set_item_custom_fg_color(0,Color(1, 0, 0, 1) # This will set the foreground color of the first item of the control to red.
	
	
	*/
	void setItemCustomFgColor(in long idx, in Color custom_fg_color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemCustomFgColor, _godot_object, idx, custom_fg_color);
	}
	/**
	Disables (or enables) the item at the specified index.
	Disabled items cannot be selected and do not trigger activation signals (when double-clicking or pressing Enter).
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemDisabled, _godot_object, idx, disabled);
	}
	/**
	Sets (or replaces) the icon's $(D Texture) associated with the specified index.
	*/
	void setItemIcon(in long idx, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemIcon, _godot_object, idx, icon);
	}
	/**
	Sets a modulating $(D Color) of the item associated with the specified index.
	*/
	void setItemIconModulate(in long idx, in Color modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemIconModulate, _godot_object, idx, modulate);
	}
	/**
	Sets the region of item's icon used. The whole icon will be used if the region has no area.
	*/
	void setItemIconRegion(in long idx, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemIconRegion, _godot_object, idx, rect);
	}
	/**
	Sets whether the item icon will be drawn transposed.
	*/
	void setItemIconTransposed(in long idx, in bool transposed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemIconTransposed, _godot_object, idx, transposed);
	}
	/**
	Sets a value (of any type) to be stored with the item associated with the specified index.
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemMetadata, _godot_object, idx, metadata);
	}
	/**
	Allows or disallows selection of the item associated with the specified index.
	*/
	void setItemSelectable(in long idx, in bool selectable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemSelectable, _godot_object, idx, selectable);
	}
	/**
	Sets text of the item associated with the specified index.
	*/
	void setItemText(in long idx, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemText, _godot_object, idx, text);
	}
	/**
	Sets the tooltip hint for the item associated with the specified index.
	*/
	void setItemTooltip(in long idx, in String tooltip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemTooltip, _godot_object, idx, tooltip);
	}
	/**
	Sets whether the tooltip hint is enabled for specified item index.
	*/
	void setItemTooltipEnabled(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemTooltipEnabled, _godot_object, idx, enable);
	}
	/**
	
	*/
	void setMaxColumns(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxColumns, _godot_object, amount);
	}
	/**
	
	*/
	void setMaxTextLines(in long lines)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxTextLines, _godot_object, lines);
	}
	/**
	
	*/
	void setSameColumnWidth(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSameColumnWidth, _godot_object, enable);
	}
	/**
	
	*/
	void setSelectMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSelectMode, _godot_object, mode);
	}
	/**
	Sorts items in the list by their text.
	*/
	void sortItemsByText()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.sortItemsByText, _godot_object);
	}
	/**
	Ensures the item associated with the specified index is not selected.
	*/
	void unselect(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unselect, _godot_object, idx);
	}
	/**
	Ensures there are no items selected.
	*/
	void unselectAll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unselectAll, _godot_object);
	}
	/**
	If `true`, the currently selected item can be selected again.
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
	If `true`, right mouse button click can select items.
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
	If `true`, the control will automatically resize the height to fit its content.
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
	The width all columns will be adjusted to.
	A value of zero disables the adjustment, each item will have a width equal to the width of its content and the columns will have an uneven width.
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
	The size all icons will be adjusted to.
	If either X or Y component is not greater than zero, icon size won't be affected.
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
	/**
	The icon position, whether above or to the left of the text. See the $(D iconmode) constants.
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
	The scale of icon applied after $(D fixedIconSize) and transposing takes effect.
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
	Maximum columns the list will have.
	If greater than zero, the content will be split among the specified columns.
	A value of zero means unlimited columns, i.e. all items will be put in the same row.
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
	Maximum lines of text allowed in each item. Space will be reserved even when there is not enough lines of text to display.
	$(B Note:) This property takes effect only when $(D iconMode) is $(D constant ICON_MODE_TOP). To make the text wrap, $(D fixedColumnWidth) should be greater than zero.
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
	Whether all columns will have the same width.
	If `true`, the width is equal to the largest column width of all columns.
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
	Allows single or multiple item selection. See the $(D selectmode) constants.
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
}
