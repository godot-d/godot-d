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
	enum string _GODOT_internal_name = "TreeItem";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_cell_mode") GodotMethod!(void, long, long) setCellMode;
		@GodotName("get_cell_mode") GodotMethod!(TreeItem.TreeCellMode, long) getCellMode;
		@GodotName("set_checked") GodotMethod!(void, long, bool) setChecked;
		@GodotName("is_checked") GodotMethod!(bool, long) isChecked;
		@GodotName("set_text") GodotMethod!(void, long, String) setText;
		@GodotName("get_text") GodotMethod!(String, long) getText;
		@GodotName("set_icon") GodotMethod!(void, long, Texture) setIcon;
		@GodotName("get_icon") GodotMethod!(Texture, long) getIcon;
		@GodotName("set_icon_region") GodotMethod!(void, long, Rect2) setIconRegion;
		@GodotName("get_icon_region") GodotMethod!(Rect2, long) getIconRegion;
		@GodotName("set_icon_max_width") GodotMethod!(void, long, long) setIconMaxWidth;
		@GodotName("get_icon_max_width") GodotMethod!(long, long) getIconMaxWidth;
		@GodotName("set_range") GodotMethod!(void, long, double) setRange;
		@GodotName("get_range") GodotMethod!(double, long) getRange;
		@GodotName("set_range_config") GodotMethod!(void, long, double, double, double, bool) setRangeConfig;
		@GodotName("get_range_config") GodotMethod!(Dictionary, long) getRangeConfig;
		@GodotName("set_metadata") GodotMethod!(void, long, Variant) setMetadata;
		@GodotName("get_metadata") GodotMethod!(Variant, long) getMetadata;
		@GodotName("set_custom_draw") GodotMethod!(void, long, GodotObject, String) setCustomDraw;
		@GodotName("set_collapsed") GodotMethod!(void, bool) setCollapsed;
		@GodotName("is_collapsed") GodotMethod!(bool) isCollapsed;
		@GodotName("set_custom_minimum_height") GodotMethod!(void, long) setCustomMinimumHeight;
		@GodotName("get_custom_minimum_height") GodotMethod!(long) getCustomMinimumHeight;
		@GodotName("get_next") GodotMethod!(TreeItem) getNext;
		@GodotName("get_prev") GodotMethod!(TreeItem) getPrev;
		@GodotName("get_parent") GodotMethod!(TreeItem) getParent;
		@GodotName("get_children") GodotMethod!(TreeItem) getChildren;
		@GodotName("get_next_visible") GodotMethod!(TreeItem) getNextVisible;
		@GodotName("get_prev_visible") GodotMethod!(TreeItem) getPrevVisible;
		@GodotName("remove_child") GodotMethod!(void, GodotObject) removeChild;
		@GodotName("set_selectable") GodotMethod!(void, long, bool) setSelectable;
		@GodotName("is_selectable") GodotMethod!(bool, long) isSelectable;
		@GodotName("is_selected") GodotMethod!(bool, long) isSelected;
		@GodotName("select") GodotMethod!(void, long) select;
		@GodotName("deselect") GodotMethod!(void, long) deselect;
		@GodotName("set_editable") GodotMethod!(void, long, bool) setEditable;
		@GodotName("is_editable") GodotMethod!(bool, long) isEditable;
		@GodotName("set_custom_color") GodotMethod!(void, long, Color) setCustomColor;
		@GodotName("clear_custom_color") GodotMethod!(void, long) clearCustomColor;
		@GodotName("set_custom_bg_color") GodotMethod!(void, long, Color, bool) setCustomBgColor;
		@GodotName("clear_custom_bg_color") GodotMethod!(void, long) clearCustomBgColor;
		@GodotName("get_custom_bg_color") GodotMethod!(Color, long) getCustomBgColor;
		@GodotName("set_custom_as_button") GodotMethod!(void, long, bool) setCustomAsButton;
		@GodotName("is_custom_set_as_button") GodotMethod!(bool, long) isCustomSetAsButton;
		@GodotName("add_button") GodotMethod!(void, long, Texture, long, bool, String) addButton;
		@GodotName("get_button_count") GodotMethod!(long, long) getButtonCount;
		@GodotName("get_button") GodotMethod!(Texture, long, long) getButton;
		@GodotName("set_button") GodotMethod!(void, long, long, Texture) setButton;
		@GodotName("erase_button") GodotMethod!(void, long, long) eraseButton;
		@GodotName("is_button_disabled") GodotMethod!(bool, long, long) isButtonDisabled;
		@GodotName("set_expand_right") GodotMethod!(void, long, bool) setExpandRight;
		@GodotName("get_expand_right") GodotMethod!(bool, long) getExpandRight;
		@GodotName("set_tooltip") GodotMethod!(void, long, String) setTooltip;
		@GodotName("get_tooltip") GodotMethod!(String, long) getTooltip;
		@GodotName("set_text_align") GodotMethod!(void, long, long) setTextAlign;
		@GodotName("get_text_align") GodotMethod!(TreeItem.TextAlign, long) getTextAlign;
		@GodotName("move_to_top") GodotMethod!(void) moveToTop;
		@GodotName("move_to_bottom") GodotMethod!(void) moveToBottom;
		@GodotName("set_disable_folding") GodotMethod!(void, bool) setDisableFolding;
		@GodotName("is_folding_disabled") GodotMethod!(bool) isFoldingDisabled;
	}
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
		Cell contains an icon.
		*/
		cellModeIcon = 3,
		/**
		
		*/
		cellModeCustom = 4,
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
		alignCenter = 1,
		cellModeCheck = 1,
		alignRight = 2,
		cellModeRange = 2,
		cellModeIcon = 3,
		cellModeCustom = 4,
	}
	/**
	Sets the given column's cell mode to `mode`. See `CELL_MODE_*` constants.
	*/
	void setCellMode(in long column, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellMode, _godot_object, column, mode);
	}
	/**
	Returns the column's cell mode. See `CELL_MODE_*` constants.
	*/
	TreeItem.TreeCellMode getCellMode(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem.TreeCellMode)(_classBinding.getCellMode, _godot_object, column);
	}
	/**
	If `true` the column `column` is checked.
	*/
	void setChecked(in long column, in bool checked)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setChecked, _godot_object, column, checked);
	}
	/**
	Returns `true` if the given column is checked.
	*/
	bool isChecked(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isChecked, _godot_object, column);
	}
	/**
	
	*/
	void setText(in long column, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setText, _godot_object, column, text);
	}
	/**
	Returns the given column's text.
	*/
	String getText(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getText, _godot_object, column);
	}
	/**
	Sets the given column's icon $(D Texture).
	*/
	void setIcon(in long column, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIcon, _godot_object, column, texture);
	}
	/**
	Returns the given column's icon $(D Texture). Error if no icon is set.
	*/
	Ref!Texture getIcon(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getIcon, _godot_object, column);
	}
	/**
	Sets the given column's icon's texture region.
	*/
	void setIconRegion(in long column, in Rect2 region)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIconRegion, _godot_object, column, region);
	}
	/**
	Returns the icon $(D Texture) region as $(D Rect2).
	*/
	Rect2 getIconRegion(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getIconRegion, _godot_object, column);
	}
	/**
	Sets the given column's icon's maximum width.
	*/
	void setIconMaxWidth(in long column, in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIconMaxWidth, _godot_object, column, width);
	}
	/**
	Returns the column's icon's maximum width.
	*/
	long getIconMaxWidth(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getIconMaxWidth, _godot_object, column);
	}
	/**
	
	*/
	void setRange(in long column, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRange, _godot_object, column, value);
	}
	/**
	
	*/
	double getRange(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRange, _godot_object, column);
	}
	/**
	
	*/
	void setRangeConfig(in long column, in double min, in double max, in double step, in bool expr = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRangeConfig, _godot_object, column, min, max, step, expr);
	}
	/**
	
	*/
	Dictionary getRangeConfig(in long column)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getRangeConfig, _godot_object, column);
	}
	/**
	
	*/
	void setMetadata(VariantArg1)(in long column, in VariantArg1 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMetadata, _godot_object, column, meta);
	}
	/**
	
	*/
	Variant getMetadata(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getMetadata, _godot_object, column);
	}
	/**
	Sets the given column's custom draw callback to `callback` method on `object`.
	The `callback` should accept two arguments: the $(D TreeItem) that is drawn and its position and size as a $(D Rect2).
	*/
	void setCustomDraw(in long column, GodotObject object, in String callback)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomDraw, _godot_object, column, object, callback);
	}
	/**
	
	*/
	void setCollapsed(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollapsed, _godot_object, enable);
	}
	/**
	
	*/
	bool isCollapsed()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCollapsed, _godot_object);
	}
	/**
	
	*/
	void setCustomMinimumHeight(in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomMinimumHeight, _godot_object, height);
	}
	/**
	
	*/
	long getCustomMinimumHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCustomMinimumHeight, _godot_object);
	}
	/**
	Returns the next TreeItem in the tree.
	*/
	TreeItem getNext()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getNext, _godot_object);
	}
	/**
	Returns the previous TreeItem in the tree.
	*/
	TreeItem getPrev()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getPrev, _godot_object);
	}
	/**
	Returns the parent TreeItem.
	*/
	TreeItem getParent()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getParent, _godot_object);
	}
	/**
	Returns the TreeItem's child items.
	*/
	TreeItem getChildren()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getChildren, _godot_object);
	}
	/**
	Returns the next visible TreeItem in the tree.
	*/
	TreeItem getNextVisible()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getNextVisible, _godot_object);
	}
	/**
	Returns the previous visible TreeItem in the tree.
	*/
	TreeItem getPrevVisible()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getPrevVisible, _godot_object);
	}
	/**
	Removes the given child TreeItem.
	*/
	void removeChild(GodotObject child)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeChild, _godot_object, child);
	}
	/**
	If `true` the given column is selectable.
	*/
	void setSelectable(in long column, in bool selectable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSelectable, _godot_object, column, selectable);
	}
	/**
	Returns `true` if column `column` is selectable.
	*/
	bool isSelectable(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelectable, _godot_object, column);
	}
	/**
	Returns `true` if column `column` is selected.
	*/
	bool isSelected(in long column)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelected, _godot_object, column);
	}
	/**
	Selects the column `column`.
	*/
	void select(in long column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.select, _godot_object, column);
	}
	/**
	Deselects the given column.
	*/
	void deselect(in long column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.deselect, _godot_object, column);
	}
	/**
	If `true` column `column` is editable.
	*/
	void setEditable(in long column, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEditable, _godot_object, column, enabled);
	}
	/**
	Returns `true` if column `column` is editable.
	*/
	bool isEditable(in long column)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEditable, _godot_object, column);
	}
	/**
	Sets the given column's custom color.
	*/
	void setCustomColor(in long column, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomColor, _godot_object, column, color);
	}
	/**
	Resets the color for the given column to default.
	*/
	void clearCustomColor(in long column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearCustomColor, _godot_object, column);
	}
	/**
	Sets the given column's custom background color and whether to just use it as an outline.
	*/
	void setCustomBgColor(in long column, in Color color, in bool just_outline = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomBgColor, _godot_object, column, color, just_outline);
	}
	/**
	Resets the background color for the given column to default.
	*/
	void clearCustomBgColor(in long column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearCustomBgColor, _godot_object, column);
	}
	/**
	Returns the custom background color of column `column`.
	*/
	Color getCustomBgColor(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getCustomBgColor, _godot_object, column);
	}
	/**
	
	*/
	void setCustomAsButton(in long column, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomAsButton, _godot_object, column, enable);
	}
	/**
	
	*/
	bool isCustomSetAsButton(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCustomSetAsButton, _godot_object, column);
	}
	/**
	Adds a button with $(D Texture) `button` at column `column`. The `button_idx` index is used to identify the button when calling other methods. If not specified, the next available index is used, which may be retrieved by calling $(D getButtonCount) immediately after this method. Optionally, the button can be `disabled` and have a `tooltip`.
	*/
	void addButton(in long column, Texture button, in long button_idx = -1, in bool disabled = false, in String tooltip = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addButton, _godot_object, column, button, button_idx, disabled, tooltip);
	}
	/**
	Returns the number of buttons in column `column`. May be used to get the most recently added button's index, if no index was specified.
	*/
	long getButtonCount(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getButtonCount, _godot_object, column);
	}
	/**
	Returns the $(D Texture) of the button at index `button_idx` in column `column`.
	*/
	Ref!Texture getButton(in long column, in long button_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getButton, _godot_object, column, button_idx);
	}
	/**
	Sets the given column's button $(D Texture) at index `button_idx` to `button`.
	*/
	void setButton(in long column, in long button_idx, Texture button)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setButton, _godot_object, column, button_idx, button);
	}
	/**
	Removes the button at index `button_idx` in column `column`.
	*/
	void eraseButton(in long column, in long button_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.eraseButton, _godot_object, column, button_idx);
	}
	/**
	Returns `true` if the button at index `button_idx` for the given column is disabled.
	*/
	bool isButtonDisabled(in long column, in long button_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isButtonDisabled, _godot_object, column, button_idx);
	}
	/**
	If `true` column `column` is expanded to the right.
	*/
	void setExpandRight(in long column, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExpandRight, _godot_object, column, enable);
	}
	/**
	Returns `true` if `expand_right` is set.
	*/
	bool getExpandRight(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getExpandRight, _godot_object, column);
	}
	/**
	Sets the given column's tooltip text.
	*/
	void setTooltip(in long column, in String tooltip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTooltip, _godot_object, column, tooltip);
	}
	/**
	Returns the given column's tooltip.
	*/
	String getTooltip(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTooltip, _godot_object, column);
	}
	/**
	Sets the given column's text alignment. See `ALIGN_*` constants.
	*/
	void setTextAlign(in long column, in long text_align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextAlign, _godot_object, column, text_align);
	}
	/**
	Returns the given column's text alignment.
	*/
	TreeItem.TextAlign getTextAlign(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem.TextAlign)(_classBinding.getTextAlign, _godot_object, column);
	}
	/**
	Moves this TreeItem to the top in the $(D Tree) hierarchy.
	*/
	void moveToTop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.moveToTop, _godot_object);
	}
	/**
	Moves this TreeItem to the bottom in the $(D Tree) hierarchy.
	*/
	void moveToBottom()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.moveToBottom, _godot_object);
	}
	/**
	
	*/
	void setDisableFolding(in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisableFolding, _godot_object, disable);
	}
	/**
	
	*/
	bool isFoldingDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFoldingDisabled, _godot_object);
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
