/**
Control for a single item inside a $(D Tree).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.treeitem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.texture;
/**
Control for a single item inside a $(D Tree).

May have child `TreeItem`s and be styled as well as contain buttons.
*/
@GodotBaseClass struct TreeItem
{
	static immutable string _GODOT_internal_name = "TreeItem";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in TreeItem other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TreeItem opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TreeItem _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TreeItem");
		if(constructor is null) return typeof(this).init;
		return cast(TreeItem)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TreeCellMode : int
	{
		/**
		Cell contains a string.
		*/
		cellModeString = 0,
		/**
		Cell can be checked.
		*/
		cellModeCheck = 1,
		/**
		Cell contains a range.
		*/
		cellModeRange = 2,
		/**
		Cell contains a range expression.
		*/
		cellModeRangeExpression = 3,
		/**
		Cell contains an icon.
		*/
		cellModeIcon = 4,
		/**
		
		*/
		cellModeCustom = 5,
	}
	/// 
	enum TextAlign : int
	{
		/**
		Align text to the left. See `set_text_align()`.
		*/
		alignLeft = 0,
		/**
		Center text. See `set_text_align()`.
		*/
		alignCenter = 1,
		/**
		Align text to the right. See `set_text_align()`.
		*/
		alignRight = 2,
	}
	/// 
	enum Constants : int
	{
		alignLeft = 0,
		cellModeString = 0,
		cellModeCheck = 1,
		alignCenter = 1,
		cellModeRange = 2,
		alignRight = 2,
		cellModeRangeExpression = 3,
		cellModeIcon = 4,
		cellModeCustom = 5,
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_cell_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_mode") = _GODOT_set_cell_mode;
	/**
	Sets the given column's cell mode to `mode`. See `CELL_MODE_*` constants.
	*/
	void setCellMode(in long column, in long mode)
	{
		_GODOT_set_cell_mode.bind("TreeItem", "set_cell_mode");
		ptrcall!(void)(_GODOT_set_cell_mode, _godot_object, column, mode);
	}
	package(godot) static GodotMethod!(TreeItem.TreeCellMode, long) _GODOT_get_cell_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_mode") = _GODOT_get_cell_mode;
	/**
	Returns the column's cell mode. See `CELL_MODE_*` constants.
	*/
	TreeItem.TreeCellMode getCellMode(in long column) const
	{
		_GODOT_get_cell_mode.bind("TreeItem", "get_cell_mode");
		return ptrcall!(TreeItem.TreeCellMode)(_GODOT_get_cell_mode, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_checked") = _GODOT_set_checked;
	/**
	If `true` the column `column` is checked.
	*/
	void setChecked(in long column, in bool checked)
	{
		_GODOT_set_checked.bind("TreeItem", "set_checked");
		ptrcall!(void)(_GODOT_set_checked, _godot_object, column, checked);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_checked;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_checked") = _GODOT_is_checked;
	/**
	Returns `true` if the given column is checked.
	*/
	bool isChecked(in long column) const
	{
		_GODOT_is_checked.bind("TreeItem", "is_checked");
		return ptrcall!(bool)(_GODOT_is_checked, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	/**
	
	*/
	void setText(StringArg1)(in long column, in StringArg1 text)
	{
		_GODOT_set_text.bind("TreeItem", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, column, text);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	/**
	Returns the given column's text.
	*/
	String getText(in long column) const
	{
		_GODOT_get_text.bind("TreeItem", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon") = _GODOT_set_icon;
	/**
	Sets the given column's icon $(D Texture).
	*/
	void setIcon(in long column, Texture texture)
	{
		_GODOT_set_icon.bind("TreeItem", "set_icon");
		ptrcall!(void)(_GODOT_set_icon, _godot_object, column, texture);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon") = _GODOT_get_icon;
	/**
	Returns the given column's icon $(D Texture). Error if no icon is set.
	*/
	Ref!Texture getIcon(in long column) const
	{
		_GODOT_get_icon.bind("TreeItem", "get_icon");
		return ptrcall!(Texture)(_GODOT_get_icon, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, Rect2) _GODOT_set_icon_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon_region") = _GODOT_set_icon_region;
	/**
	Sets the given column's icon's texture region.
	*/
	void setIconRegion(in long column, in Rect2 region)
	{
		_GODOT_set_icon_region.bind("TreeItem", "set_icon_region");
		ptrcall!(void)(_GODOT_set_icon_region, _godot_object, column, region);
	}
	package(godot) static GodotMethod!(Rect2, long) _GODOT_get_icon_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_region") = _GODOT_get_icon_region;
	/**
	Returns the icon $(D Texture) region as $(D Rect2).
	*/
	Rect2 getIconRegion(in long column) const
	{
		_GODOT_get_icon_region.bind("TreeItem", "get_icon_region");
		return ptrcall!(Rect2)(_GODOT_get_icon_region, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_icon_max_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon_max_width") = _GODOT_set_icon_max_width;
	/**
	Sets the given column's icon's maximum width.
	*/
	void setIconMaxWidth(in long column, in long width)
	{
		_GODOT_set_icon_max_width.bind("TreeItem", "set_icon_max_width");
		ptrcall!(void)(_GODOT_set_icon_max_width, _godot_object, column, width);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_icon_max_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_max_width") = _GODOT_get_icon_max_width;
	/**
	Returns the column's icon's maximum width.
	*/
	long getIconMaxWidth(in long column) const
	{
		_GODOT_get_icon_max_width.bind("TreeItem", "get_icon_max_width");
		return ptrcall!(long)(_GODOT_get_icon_max_width, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_range") = _GODOT_set_range;
	/**
	
	*/
	void setRange(in long column, in double value)
	{
		_GODOT_set_range.bind("TreeItem", "set_range");
		ptrcall!(void)(_GODOT_set_range, _godot_object, column, value);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_range") = _GODOT_get_range;
	/**
	
	*/
	double getRange(in long column) const
	{
		_GODOT_get_range.bind("TreeItem", "get_range");
		return ptrcall!(double)(_GODOT_get_range, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, double, double, double, bool) _GODOT_set_range_config;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_range_config") = _GODOT_set_range_config;
	/**
	
	*/
	void setRangeConfig(in long column, in double min, in double max, in double step, in bool expr = false)
	{
		_GODOT_set_range_config.bind("TreeItem", "set_range_config");
		ptrcall!(void)(_GODOT_set_range_config, _godot_object, column, min, max, step, expr);
	}
	package(godot) static GodotMethod!(Dictionary, long) _GODOT_get_range_config;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_range_config") = _GODOT_get_range_config;
	/**
	
	*/
	Dictionary getRangeConfig(in long column)
	{
		_GODOT_get_range_config.bind("TreeItem", "get_range_config");
		return ptrcall!(Dictionary)(_GODOT_get_range_config, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, Variant) _GODOT_set_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_metadata") = _GODOT_set_metadata;
	/**
	
	*/
	void setMetadata(VariantArg1)(in long column, in VariantArg1 meta)
	{
		_GODOT_set_metadata.bind("TreeItem", "set_metadata");
		ptrcall!(void)(_GODOT_set_metadata, _godot_object, column, meta);
	}
	package(godot) static GodotMethod!(Variant, long) _GODOT_get_metadata;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_metadata") = _GODOT_get_metadata;
	/**
	
	*/
	Variant getMetadata(in long column) const
	{
		_GODOT_get_metadata.bind("TreeItem", "get_metadata");
		return ptrcall!(Variant)(_GODOT_get_metadata, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, GodotObject, String) _GODOT_set_custom_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_draw") = _GODOT_set_custom_draw;
	/**
	Sets the given column's custom draw callback to `callback` method on `object`.
	*/
	void setCustomDraw(StringArg2)(in long column, GodotObject object, in StringArg2 callback)
	{
		_GODOT_set_custom_draw.bind("TreeItem", "set_custom_draw");
		ptrcall!(void)(_GODOT_set_custom_draw, _godot_object, column, object, callback);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_collapsed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collapsed") = _GODOT_set_collapsed;
	/**
	
	*/
	void setCollapsed(in bool enable)
	{
		_GODOT_set_collapsed.bind("TreeItem", "set_collapsed");
		ptrcall!(void)(_GODOT_set_collapsed, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_collapsed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_collapsed") = _GODOT_is_collapsed;
	/**
	
	*/
	bool isCollapsed()
	{
		_GODOT_is_collapsed.bind("TreeItem", "is_collapsed");
		return ptrcall!(bool)(_GODOT_is_collapsed, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_custom_minimum_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_minimum_height") = _GODOT_set_custom_minimum_height;
	/**
	
	*/
	void setCustomMinimumHeight(in long height)
	{
		_GODOT_set_custom_minimum_height.bind("TreeItem", "set_custom_minimum_height");
		ptrcall!(void)(_GODOT_set_custom_minimum_height, _godot_object, height);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_custom_minimum_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_minimum_height") = _GODOT_get_custom_minimum_height;
	/**
	
	*/
	long getCustomMinimumHeight() const
	{
		_GODOT_get_custom_minimum_height.bind("TreeItem", "get_custom_minimum_height");
		return ptrcall!(long)(_GODOT_get_custom_minimum_height, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next") = _GODOT_get_next;
	/**
	Returns the next TreeItem in the tree.
	*/
	TreeItem getNext()
	{
		_GODOT_get_next.bind("TreeItem", "get_next");
		return ptrcall!(TreeItem)(_GODOT_get_next, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_prev;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_prev") = _GODOT_get_prev;
	/**
	Returns the previous TreeItem in the tree.
	*/
	TreeItem getPrev()
	{
		_GODOT_get_prev.bind("TreeItem", "get_prev");
		return ptrcall!(TreeItem)(_GODOT_get_prev, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent") = _GODOT_get_parent;
	/**
	Returns the parent TreeItem.
	*/
	TreeItem getParent()
	{
		_GODOT_get_parent.bind("TreeItem", "get_parent");
		return ptrcall!(TreeItem)(_GODOT_get_parent, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_children;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_children") = _GODOT_get_children;
	/**
	Returns the TreeItem's child items.
	*/
	TreeItem getChildren()
	{
		_GODOT_get_children.bind("TreeItem", "get_children");
		return ptrcall!(TreeItem)(_GODOT_get_children, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_next_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next_visible") = _GODOT_get_next_visible;
	/**
	Returns the next visible TreeItem in the tree.
	*/
	TreeItem getNextVisible()
	{
		_GODOT_get_next_visible.bind("TreeItem", "get_next_visible");
		return ptrcall!(TreeItem)(_GODOT_get_next_visible, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_prev_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_prev_visible") = _GODOT_get_prev_visible;
	/**
	Returns the previous visible TreeItem in the tree.
	*/
	TreeItem getPrevVisible()
	{
		_GODOT_get_prev_visible.bind("TreeItem", "get_prev_visible");
		return ptrcall!(TreeItem)(_GODOT_get_prev_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_remove_child;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_child") = _GODOT_remove_child;
	/**
	Removes the child TreeItem at index `index`.
	*/
	void removeChild(GodotObject child)
	{
		_GODOT_remove_child.bind("TreeItem", "remove_child");
		ptrcall!(void)(_GODOT_remove_child, _godot_object, child);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_selectable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_selectable") = _GODOT_set_selectable;
	/**
	If `true` the given column is selectable.
	*/
	void setSelectable(in long column, in bool selectable)
	{
		_GODOT_set_selectable.bind("TreeItem", "set_selectable");
		ptrcall!(void)(_GODOT_set_selectable, _godot_object, column, selectable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_selectable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selectable") = _GODOT_is_selectable;
	/**
	Returns `true` if column `column` is selectable.
	*/
	bool isSelectable(in long column) const
	{
		_GODOT_is_selectable.bind("TreeItem", "is_selectable");
		return ptrcall!(bool)(_GODOT_is_selectable, _godot_object, column);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selected") = _GODOT_is_selected;
	/**
	Returns `true` if column `column` is selected.
	*/
	bool isSelected(in long column)
	{
		_GODOT_is_selected.bind("TreeItem", "is_selected");
		return ptrcall!(bool)(_GODOT_is_selected, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	/**
	Selects the column `column`.
	*/
	void select(in long column)
	{
		_GODOT_select.bind("TreeItem", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_deselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "deselect") = _GODOT_deselect;
	/**
	Deselects the given column.
	*/
	void deselect(in long column)
	{
		_GODOT_deselect.bind("TreeItem", "deselect");
		ptrcall!(void)(_GODOT_deselect, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editable") = _GODOT_set_editable;
	/**
	If `true` column `column` is editable.
	*/
	void setEditable(in long column, in bool enabled)
	{
		_GODOT_set_editable.bind("TreeItem", "set_editable");
		ptrcall!(void)(_GODOT_set_editable, _godot_object, column, enabled);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editable") = _GODOT_is_editable;
	/**
	Returns `true` if column `column` is editable.
	*/
	bool isEditable(in long column)
	{
		_GODOT_is_editable.bind("TreeItem", "is_editable");
		return ptrcall!(bool)(_GODOT_is_editable, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, Color) _GODOT_set_custom_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_color") = _GODOT_set_custom_color;
	/**
	Sets the given column's custom color.
	*/
	void setCustomColor(in long column, in Color color)
	{
		_GODOT_set_custom_color.bind("TreeItem", "set_custom_color");
		ptrcall!(void)(_GODOT_set_custom_color, _godot_object, column, color);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_clear_custom_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_custom_color") = _GODOT_clear_custom_color;
	/**
	Resets the color for the given column to default.
	*/
	void clearCustomColor(in long column)
	{
		_GODOT_clear_custom_color.bind("TreeItem", "clear_custom_color");
		ptrcall!(void)(_GODOT_clear_custom_color, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, Color, bool) _GODOT_set_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_bg_color") = _GODOT_set_custom_bg_color;
	/**
	Sets the given column's custom background color and whether to just use it as an outline.
	*/
	void setCustomBgColor(in long column, in Color color, in bool just_outline = false)
	{
		_GODOT_set_custom_bg_color.bind("TreeItem", "set_custom_bg_color");
		ptrcall!(void)(_GODOT_set_custom_bg_color, _godot_object, column, color, just_outline);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_clear_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_custom_bg_color") = _GODOT_clear_custom_bg_color;
	/**
	Resets the background color for the given column to default.
	*/
	void clearCustomBgColor(in long column)
	{
		_GODOT_clear_custom_bg_color.bind("TreeItem", "clear_custom_bg_color");
		ptrcall!(void)(_GODOT_clear_custom_bg_color, _godot_object, column);
	}
	package(godot) static GodotMethod!(Color, long) _GODOT_get_custom_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_bg_color") = _GODOT_get_custom_bg_color;
	/**
	Returns the custom background color of column `column`.
	*/
	Color getCustomBgColor(in long column) const
	{
		_GODOT_get_custom_bg_color.bind("TreeItem", "get_custom_bg_color");
		return ptrcall!(Color)(_GODOT_get_custom_bg_color, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_custom_as_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_as_button") = _GODOT_set_custom_as_button;
	/**
	
	*/
	void setCustomAsButton(in long column, in bool enable)
	{
		_GODOT_set_custom_as_button.bind("TreeItem", "set_custom_as_button");
		ptrcall!(void)(_GODOT_set_custom_as_button, _godot_object, column, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_custom_set_as_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_custom_set_as_button") = _GODOT_is_custom_set_as_button;
	/**
	
	*/
	bool isCustomSetAsButton(in long column) const
	{
		_GODOT_is_custom_set_as_button.bind("TreeItem", "is_custom_set_as_button");
		return ptrcall!(bool)(_GODOT_is_custom_set_as_button, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, Texture, long, bool, String) _GODOT_add_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_button") = _GODOT_add_button;
	/**
	Adds a button with $(D Texture) `button` at column `column`. The `button_idx` index is used to identify the button when calling other methods. If not specified, the next available index is used, which may be retrieved by calling `get_buton_count()` immediately after this method. Optionally, the button can be `disabled` and have a `tooltip`.
	*/
	void addButton(StringArg4)(in long column, Texture button, in long button_idx = -1, in bool disabled = false, in StringArg4 tooltip = "")
	{
		_GODOT_add_button.bind("TreeItem", "add_button");
		ptrcall!(void)(_GODOT_add_button, _godot_object, column, button, button_idx, disabled, tooltip);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_button_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_count") = _GODOT_get_button_count;
	/**
	Returns the number of buttons in column `column`. May be used to get the most recently added button's index, if no index was specified.
	*/
	long getButtonCount(in long column) const
	{
		_GODOT_get_button_count.bind("TreeItem", "get_button_count");
		return ptrcall!(long)(_GODOT_get_button_count, _godot_object, column);
	}
	package(godot) static GodotMethod!(Texture, long, long) _GODOT_get_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button") = _GODOT_get_button;
	/**
	Returns the $(D Texture) of the button at index `button_idx` in column `column`.
	*/
	Ref!Texture getButton(in long column, in long button_idx) const
	{
		_GODOT_get_button.bind("TreeItem", "get_button");
		return ptrcall!(Texture)(_GODOT_get_button, _godot_object, column, button_idx);
	}
	package(godot) static GodotMethod!(void, long, long, Texture) _GODOT_set_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button") = _GODOT_set_button;
	/**
	Sets the given column's button $(D Texture) at index `button_idx` to `button`.
	*/
	void setButton(in long column, in long button_idx, Texture button)
	{
		_GODOT_set_button.bind("TreeItem", "set_button");
		ptrcall!(void)(_GODOT_set_button, _godot_object, column, button_idx, button);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_erase_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "erase_button") = _GODOT_erase_button;
	/**
	Removes the button at index `button_idx` in column `column`.
	*/
	void eraseButton(in long column, in long button_idx)
	{
		_GODOT_erase_button.bind("TreeItem", "erase_button");
		ptrcall!(void)(_GODOT_erase_button, _godot_object, column, button_idx);
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT_is_button_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_button_disabled") = _GODOT_is_button_disabled;
	/**
	Returns `true` if the button at index `button_idx` for the given column is disabled.
	*/
	bool isButtonDisabled(in long column, in long button_idx) const
	{
		_GODOT_is_button_disabled.bind("TreeItem", "is_button_disabled");
		return ptrcall!(bool)(_GODOT_is_button_disabled, _godot_object, column, button_idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_expand_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_right") = _GODOT_set_expand_right;
	/**
	If `true` column `column` is expanded to the right.
	*/
	void setExpandRight(in long column, in bool enable)
	{
		_GODOT_set_expand_right.bind("TreeItem", "set_expand_right");
		ptrcall!(void)(_GODOT_set_expand_right, _godot_object, column, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_get_expand_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand_right") = _GODOT_get_expand_right;
	/**
	Returns `true` if `expand_right` is set.
	*/
	bool getExpandRight(in long column) const
	{
		_GODOT_get_expand_right.bind("TreeItem", "get_expand_right");
		return ptrcall!(bool)(_GODOT_get_expand_right, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tooltip") = _GODOT_set_tooltip;
	/**
	Sets the given column's tooltip text.
	*/
	void setTooltip(StringArg1)(in long column, in StringArg1 tooltip)
	{
		_GODOT_set_tooltip.bind("TreeItem", "set_tooltip");
		ptrcall!(void)(_GODOT_set_tooltip, _godot_object, column, tooltip);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tooltip") = _GODOT_get_tooltip;
	/**
	Returns the given column's tooltip.
	*/
	String getTooltip(in long column) const
	{
		_GODOT_get_tooltip.bind("TreeItem", "get_tooltip");
		return ptrcall!(String)(_GODOT_get_tooltip, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_text_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text_align") = _GODOT_set_text_align;
	/**
	Sets the given column's text alignment. See `ALIGN_*` constants.
	*/
	void setTextAlign(in long column, in long text_align)
	{
		_GODOT_set_text_align.bind("TreeItem", "set_text_align");
		ptrcall!(void)(_GODOT_set_text_align, _godot_object, column, text_align);
	}
	package(godot) static GodotMethod!(TreeItem.TextAlign, long) _GODOT_get_text_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text_align") = _GODOT_get_text_align;
	/**
	Returns the given column's text alignment.
	*/
	TreeItem.TextAlign getTextAlign(in long column) const
	{
		_GODOT_get_text_align.bind("TreeItem", "get_text_align");
		return ptrcall!(TreeItem.TextAlign)(_GODOT_get_text_align, _godot_object, column);
	}
	package(godot) static GodotMethod!(void) _GODOT_move_to_top;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_to_top") = _GODOT_move_to_top;
	/**
	Moves this TreeItem to the top in the $(D Tree) hierarchy.
	*/
	void moveToTop()
	{
		_GODOT_move_to_top.bind("TreeItem", "move_to_top");
		ptrcall!(void)(_GODOT_move_to_top, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_move_to_bottom;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_to_bottom") = _GODOT_move_to_bottom;
	/**
	Moves this TreeItem to the bottom in the $(D Tree) hierarchy.
	*/
	void moveToBottom()
	{
		_GODOT_move_to_bottom.bind("TreeItem", "move_to_bottom");
		ptrcall!(void)(_GODOT_move_to_bottom, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disable_folding;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disable_folding") = _GODOT_set_disable_folding;
	/**
	
	*/
	void setDisableFolding(in bool disable)
	{
		_GODOT_set_disable_folding.bind("TreeItem", "set_disable_folding");
		ptrcall!(void)(_GODOT_set_disable_folding, _godot_object, disable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_folding_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_folding_disabled") = _GODOT_is_folding_disabled;
	/**
	
	*/
	bool isFoldingDisabled() const
	{
		_GODOT_is_folding_disabled.bind("TreeItem", "is_folding_disabled");
		return ptrcall!(bool)(_GODOT_is_folding_disabled, _godot_object);
	}
	/**
	If `true` the TreeItem is collapsed.
	*/
	@property bool collapsed()
	{
		return isCollapsed();
	}
	/// ditto
	@property void collapsed(bool v)
	{
		setCollapsed(v);
	}
	/**
	If `true` folding is disabled for this TreeItem.
	*/
	@property bool disableFolding()
	{
		return isFoldingDisabled();
	}
	/// ditto
	@property void disableFolding(bool v)
	{
		setDisableFolding(v);
	}
	/**
	The custom minimum height.
	*/
	@property long customMinimumHeight()
	{
		return getCustomMinimumHeight();
	}
	/// ditto
	@property void customMinimumHeight(long v)
	{
		setCustomMinimumHeight(v);
	}
}
