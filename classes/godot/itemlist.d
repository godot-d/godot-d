/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.texture;
import godot.vscrollbar;
/**

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
	/// 
	enum SelectMode : int
	{
		/** */
		selectSingle = 0,
		/** */
		selectMulti = 1,
	}
	/// 
	enum IconMode : int
	{
		/** */
		iconModeTop = 0,
		/** */
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
	
	*/
	void addIconItem(Texture icon, in bool selectable = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconItem, _godot_object, icon, selectable);
	}
	/**
	
	*/
	void addItem(in String text, Texture icon = Texture.init, in bool selectable = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addItem, _godot_object, text, icon, selectable);
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
	
	*/
	long getItemAtPosition(in Vector2 position, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getItemAtPosition, _godot_object, position, exact);
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
	Color getItemCustomBgColor(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getItemCustomBgColor, _godot_object, idx);
	}
	/**
	
	*/
	Color getItemCustomFgColor(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getItemCustomFgColor, _godot_object, idx);
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
	Color getItemIconModulate(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getItemIconModulate, _godot_object, idx);
	}
	/**
	
	*/
	Rect2 getItemIconRegion(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getItemIconRegion, _godot_object, idx);
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
	
	*/
	PoolIntArray getSelectedItems()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getSelectedItems, _godot_object);
	}
	/**
	
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
	
	*/
	bool isAnythingSelected()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAnythingSelected, _godot_object);
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
	bool isItemIconTransposed(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemIconTransposed, _godot_object, idx);
	}
	/**
	
	*/
	bool isItemSelectable(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isItemSelectable, _godot_object, idx);
	}
	/**
	
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
	
	*/
	bool isSelected(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSelected, _godot_object, idx);
	}
	/**
	
	*/
	void moveItem(in long from_idx, in long to_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveItem, _godot_object, from_idx, to_idx);
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
	
	*/
	void setItemCustomBgColor(in long idx, in Color custom_bg_color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemCustomBgColor, _godot_object, idx, custom_bg_color);
	}
	/**
	
	*/
	void setItemCustomFgColor(in long idx, in Color custom_fg_color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemCustomFgColor, _godot_object, idx, custom_fg_color);
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
	void setItemIconModulate(in long idx, in Color modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemIconModulate, _godot_object, idx, modulate);
	}
	/**
	
	*/
	void setItemIconRegion(in long idx, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemIconRegion, _godot_object, idx, rect);
	}
	/**
	
	*/
	void setItemIconTransposed(in long idx, in bool transposed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemIconTransposed, _godot_object, idx, transposed);
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
	void setItemSelectable(in long idx, in bool selectable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemSelectable, _godot_object, idx, selectable);
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
	
	*/
	void sortItemsByText()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.sortItemsByText, _godot_object);
	}
	/**
	
	*/
	void unselect(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unselect, _godot_object, idx);
	}
	/**
	
	*/
	void unselectAll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unselectAll, _godot_object);
	}
	/**
	
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
