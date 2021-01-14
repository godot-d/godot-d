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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.texture;
/**
Control for a single item inside a $(D Tree).

May have child $(D TreeItem)s and be styled as well as contain buttons.
You can remove a $(D TreeItem) by using $(D GodotObject.free).
*/
@GodotBaseClass struct TreeItem
{
	package(godot) enum string _GODOT_internal_name = "TreeItem";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_button") GodotMethod!(void, long, Texture, long, bool, String) addButton;
		@GodotName("call_recursive") GodotMethod!(Variant, String, GodotVarArgs) callRecursive;
		@GodotName("clear_custom_bg_color") GodotMethod!(void, long) clearCustomBgColor;
		@GodotName("clear_custom_color") GodotMethod!(void, long) clearCustomColor;
		@GodotName("deselect") GodotMethod!(void, long) deselect;
		@GodotName("erase_button") GodotMethod!(void, long, long) eraseButton;
		@GodotName("get_button") GodotMethod!(Texture, long, long) getButton;
		@GodotName("get_button_count") GodotMethod!(long, long) getButtonCount;
		@GodotName("get_button_tooltip") GodotMethod!(String, long, long) getButtonTooltip;
		@GodotName("get_cell_mode") GodotMethod!(TreeItem.TreeCellMode, long) getCellMode;
		@GodotName("get_children") GodotMethod!(TreeItem) getChildren;
		@GodotName("get_custom_bg_color") GodotMethod!(Color, long) getCustomBgColor;
		@GodotName("get_custom_color") GodotMethod!(Color, long) getCustomColor;
		@GodotName("get_custom_minimum_height") GodotMethod!(long) getCustomMinimumHeight;
		@GodotName("get_expand_right") GodotMethod!(bool, long) getExpandRight;
		@GodotName("get_icon") GodotMethod!(Texture, long) getIcon;
		@GodotName("get_icon_max_width") GodotMethod!(long, long) getIconMaxWidth;
		@GodotName("get_icon_modulate") GodotMethod!(Color, long) getIconModulate;
		@GodotName("get_icon_region") GodotMethod!(Rect2, long) getIconRegion;
		@GodotName("get_metadata") GodotMethod!(Variant, long) getMetadata;
		@GodotName("get_next") GodotMethod!(TreeItem) getNext;
		@GodotName("get_next_visible") GodotMethod!(TreeItem, bool) getNextVisible;
		@GodotName("get_parent") GodotMethod!(TreeItem) getParent;
		@GodotName("get_prev") GodotMethod!(TreeItem) getPrev;
		@GodotName("get_prev_visible") GodotMethod!(TreeItem, bool) getPrevVisible;
		@GodotName("get_range") GodotMethod!(double, long) getRange;
		@GodotName("get_range_config") GodotMethod!(Dictionary, long) getRangeConfig;
		@GodotName("get_suffix") GodotMethod!(String, long) getSuffix;
		@GodotName("get_text") GodotMethod!(String, long) getText;
		@GodotName("get_text_align") GodotMethod!(TreeItem.TextAlign, long) getTextAlign;
		@GodotName("get_tooltip") GodotMethod!(String, long) getTooltip;
		@GodotName("is_button_disabled") GodotMethod!(bool, long, long) isButtonDisabled;
		@GodotName("is_checked") GodotMethod!(bool, long) isChecked;
		@GodotName("is_collapsed") GodotMethod!(bool) isCollapsed;
		@GodotName("is_custom_set_as_button") GodotMethod!(bool, long) isCustomSetAsButton;
		@GodotName("is_editable") GodotMethod!(bool, long) isEditable;
		@GodotName("is_folding_disabled") GodotMethod!(bool) isFoldingDisabled;
		@GodotName("is_selectable") GodotMethod!(bool, long) isSelectable;
		@GodotName("is_selected") GodotMethod!(bool, long) isSelected;
		@GodotName("move_to_bottom") GodotMethod!(void) moveToBottom;
		@GodotName("move_to_top") GodotMethod!(void) moveToTop;
		@GodotName("remove_child") GodotMethod!(void, GodotObject) removeChild;
		@GodotName("select") GodotMethod!(void, long) select;
		@GodotName("set_button") GodotMethod!(void, long, long, Texture) setButton;
		@GodotName("set_button_disabled") GodotMethod!(void, long, long, bool) setButtonDisabled;
		@GodotName("set_cell_mode") GodotMethod!(void, long, long) setCellMode;
		@GodotName("set_checked") GodotMethod!(void, long, bool) setChecked;
		@GodotName("set_collapsed") GodotMethod!(void, bool) setCollapsed;
		@GodotName("set_custom_as_button") GodotMethod!(void, long, bool) setCustomAsButton;
		@GodotName("set_custom_bg_color") GodotMethod!(void, long, Color, bool) setCustomBgColor;
		@GodotName("set_custom_color") GodotMethod!(void, long, Color) setCustomColor;
		@GodotName("set_custom_draw") GodotMethod!(void, long, GodotObject, String) setCustomDraw;
		@GodotName("set_custom_minimum_height") GodotMethod!(void, long) setCustomMinimumHeight;
		@GodotName("set_disable_folding") GodotMethod!(void, bool) setDisableFolding;
		@GodotName("set_editable") GodotMethod!(void, long, bool) setEditable;
		@GodotName("set_expand_right") GodotMethod!(void, long, bool) setExpandRight;
		@GodotName("set_icon") GodotMethod!(void, long, Texture) setIcon;
		@GodotName("set_icon_max_width") GodotMethod!(void, long, long) setIconMaxWidth;
		@GodotName("set_icon_modulate") GodotMethod!(void, long, Color) setIconModulate;
		@GodotName("set_icon_region") GodotMethod!(void, long, Rect2) setIconRegion;
		@GodotName("set_metadata") GodotMethod!(void, long, Variant) setMetadata;
		@GodotName("set_range") GodotMethod!(void, long, double) setRange;
		@GodotName("set_range_config") GodotMethod!(void, long, double, double, double, bool) setRangeConfig;
		@GodotName("set_selectable") GodotMethod!(void, long, bool) setSelectable;
		@GodotName("set_suffix") GodotMethod!(void, long, String) setSuffix;
		@GodotName("set_text") GodotMethod!(void, long, String) setText;
		@GodotName("set_text_align") GodotMethod!(void, long, long) setTextAlign;
		@GodotName("set_tooltip") GodotMethod!(void, long, String) setTooltip;
	}
	/// 
	pragma(inline, true) bool opEquals(in TreeItem other) const
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
	/// Construct a new instance of TreeItem.
	/// Note: use `memnew!TreeItem` instead.
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
	Adds a button with $(D Texture) `button` at column `column`. The `button_idx` index is used to identify the button when calling other methods. If not specified, the next available index is used, which may be retrieved by calling $(D getButtonCount) immediately after this method. Optionally, the button can be `disabled` and have a `tooltip`.
	*/
	void addButton(in long column, Texture button, in long button_idx = -1, in bool disabled = false, in String tooltip = gs!"")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addButton, _godot_object, column, button, button_idx, disabled, tooltip);
	}
	/**
	Calls the `method` on the actual TreeItem and its children recursively. Pass parameters as a comma separated list.
	*/
	Variant callRecursive(VarArgs...)(in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_recursive");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Resets the background color for the given column to default.
	*/
	void clearCustomBgColor(in long column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCustomBgColor, _godot_object, column);
	}
	/**
	Resets the color for the given column to default.
	*/
	void clearCustomColor(in long column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCustomColor, _godot_object, column);
	}
	/**
	Deselects the given column.
	*/
	void deselect(in long column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.deselect, _godot_object, column);
	}
	/**
	Removes the button at index `button_idx` in column `column`.
	*/
	void eraseButton(in long column, in long button_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseButton, _godot_object, column, button_idx);
	}
	/**
	Returns the $(D Texture) of the button at index `button_idx` in column `column`.
	*/
	Ref!Texture getButton(in long column, in long button_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getButton, _godot_object, column, button_idx);
	}
	/**
	Returns the number of buttons in column `column`. May be used to get the most recently added button's index, if no index was specified.
	*/
	long getButtonCount(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getButtonCount, _godot_object, column);
	}
	/**
	Returns the tooltip string for the button at index `button_idx` in column `column`.
	*/
	String getButtonTooltip(in long column, in long button_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getButtonTooltip, _godot_object, column, button_idx);
	}
	/**
	Returns the column's cell mode.
	*/
	TreeItem.TreeCellMode getCellMode(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem.TreeCellMode)(GDNativeClassBinding.getCellMode, _godot_object, column);
	}
	/**
	Returns the TreeItem's first child item or a null object if there is none.
	*/
	TreeItem getChildren()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getChildren, _godot_object);
	}
	/**
	Returns the custom background color of column `column`.
	*/
	Color getCustomBgColor(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getCustomBgColor, _godot_object, column);
	}
	/**
	Returns the custom color of column `column`.
	*/
	Color getCustomColor(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getCustomColor, _godot_object, column);
	}
	/**
	
	*/
	long getCustomMinimumHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCustomMinimumHeight, _godot_object);
	}
	/**
	Returns `true` if `expand_right` is set.
	*/
	bool getExpandRight(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getExpandRight, _godot_object, column);
	}
	/**
	Returns the given column's icon $(D Texture). Error if no icon is set.
	*/
	Ref!Texture getIcon(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getIcon, _godot_object, column);
	}
	/**
	Returns the column's icon's maximum width.
	*/
	long getIconMaxWidth(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getIconMaxWidth, _godot_object, column);
	}
	/**
	Returns the $(D Color) modulating the column's icon.
	*/
	Color getIconModulate(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getIconModulate, _godot_object, column);
	}
	/**
	Returns the icon $(D Texture) region as $(D Rect2).
	*/
	Rect2 getIconRegion(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getIconRegion, _godot_object, column);
	}
	/**
	
	*/
	Variant getMetadata(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getMetadata, _godot_object, column);
	}
	/**
	Returns the next TreeItem in the tree or a null object if there is none.
	*/
	TreeItem getNext()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getNext, _godot_object);
	}
	/**
	Returns the next visible TreeItem in the tree or a null object if there is none.
	If `wrap` is enabled, the method will wrap around to the first visible element in the tree when called on the last visible element, otherwise it returns `null`.
	*/
	TreeItem getNextVisible(in bool wrap = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getNextVisible, _godot_object, wrap);
	}
	/**
	Returns the parent TreeItem or a null object if there is none.
	*/
	TreeItem getParent()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getParent, _godot_object);
	}
	/**
	Returns the previous TreeItem in the tree or a null object if there is none.
	*/
	TreeItem getPrev()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getPrev, _godot_object);
	}
	/**
	Returns the previous visible TreeItem in the tree or a null object if there is none.
	If `wrap` is enabled, the method will wrap around to the last visible element in the tree when called on the first visible element, otherwise it returns `null`.
	*/
	TreeItem getPrevVisible(in bool wrap = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getPrevVisible, _godot_object, wrap);
	}
	/**
	
	*/
	double getRange(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRange, _godot_object, column);
	}
	/**
	
	*/
	Dictionary getRangeConfig(in long column)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getRangeConfig, _godot_object, column);
	}
	/**
	
	*/
	String getSuffix(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSuffix, _godot_object, column);
	}
	/**
	Returns the given column's text.
	*/
	String getText(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getText, _godot_object, column);
	}
	/**
	Returns the given column's text alignment.
	*/
	TreeItem.TextAlign getTextAlign(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem.TextAlign)(GDNativeClassBinding.getTextAlign, _godot_object, column);
	}
	/**
	Returns the given column's tooltip.
	*/
	String getTooltip(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTooltip, _godot_object, column);
	}
	/**
	Returns `true` if the button at index `button_idx` for the given column is disabled.
	*/
	bool isButtonDisabled(in long column, in long button_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isButtonDisabled, _godot_object, column, button_idx);
	}
	/**
	Returns `true` if the given column is checked.
	*/
	bool isChecked(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isChecked, _godot_object, column);
	}
	/**
	
	*/
	bool isCollapsed()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCollapsed, _godot_object);
	}
	/**
	
	*/
	bool isCustomSetAsButton(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCustomSetAsButton, _godot_object, column);
	}
	/**
	Returns `true` if column `column` is editable.
	*/
	bool isEditable(in long column)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEditable, _godot_object, column);
	}
	/**
	
	*/
	bool isFoldingDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFoldingDisabled, _godot_object);
	}
	/**
	Returns `true` if column `column` is selectable.
	*/
	bool isSelectable(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSelectable, _godot_object, column);
	}
	/**
	Returns `true` if column `column` is selected.
	*/
	bool isSelected(in long column)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSelected, _godot_object, column);
	}
	/**
	Moves this TreeItem to the bottom in the $(D Tree) hierarchy.
	*/
	void moveToBottom()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveToBottom, _godot_object);
	}
	/**
	Moves this TreeItem to the top in the $(D Tree) hierarchy.
	*/
	void moveToTop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveToTop, _godot_object);
	}
	/**
	Removes the given child $(D TreeItem) and all its children from the $(D Tree). Note that it doesn't free the item from memory, so it can be reused later. To completely remove a $(D TreeItem) use $(D GodotObject.free).
	*/
	void removeChild(GodotObject child)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeChild, _godot_object, child);
	}
	/**
	Selects the column `column`.
	*/
	void select(in long column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.select, _godot_object, column);
	}
	/**
	Sets the given column's button $(D Texture) at index `button_idx` to `button`.
	*/
	void setButton(in long column, in long button_idx, Texture button)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setButton, _godot_object, column, button_idx, button);
	}
	/**
	If `true`, disables the button at index `button_idx` in column `column`.
	*/
	void setButtonDisabled(in long column, in long button_idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setButtonDisabled, _godot_object, column, button_idx, disabled);
	}
	/**
	Sets the given column's cell mode to `mode`. See $(D treecellmode) constants.
	*/
	void setCellMode(in long column, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellMode, _godot_object, column, mode);
	}
	/**
	If `true`, the column `column` is checked.
	*/
	void setChecked(in long column, in bool checked)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setChecked, _godot_object, column, checked);
	}
	/**
	
	*/
	void setCollapsed(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollapsed, _godot_object, enable);
	}
	/**
	
	*/
	void setCustomAsButton(in long column, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomAsButton, _godot_object, column, enable);
	}
	/**
	Sets the given column's custom background color and whether to just use it as an outline.
	*/
	void setCustomBgColor(in long column, in Color color, in bool just_outline = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomBgColor, _godot_object, column, color, just_outline);
	}
	/**
	Sets the given column's custom color.
	*/
	void setCustomColor(in long column, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomColor, _godot_object, column, color);
	}
	/**
	Sets the given column's custom draw callback to `callback` method on `object`.
	The `callback` should accept two arguments: the $(D TreeItem) that is drawn and its position and size as a $(D Rect2).
	*/
	void setCustomDraw(in long column, GodotObject object, in String callback)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomDraw, _godot_object, column, object, callback);
	}
	/**
	
	*/
	void setCustomMinimumHeight(in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomMinimumHeight, _godot_object, height);
	}
	/**
	
	*/
	void setDisableFolding(in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisableFolding, _godot_object, disable);
	}
	/**
	If `true`, column `column` is editable.
	*/
	void setEditable(in long column, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEditable, _godot_object, column, enabled);
	}
	/**
	If `true`, column `column` is expanded to the right.
	*/
	void setExpandRight(in long column, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpandRight, _godot_object, column, enable);
	}
	/**
	Sets the given column's icon $(D Texture).
	*/
	void setIcon(in long column, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIcon, _godot_object, column, texture);
	}
	/**
	Sets the given column's icon's maximum width.
	*/
	void setIconMaxWidth(in long column, in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIconMaxWidth, _godot_object, column, width);
	}
	/**
	Modulates the given column's icon with `modulate`.
	*/
	void setIconModulate(in long column, in Color modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIconModulate, _godot_object, column, modulate);
	}
	/**
	Sets the given column's icon's texture region.
	*/
	void setIconRegion(in long column, in Rect2 region)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIconRegion, _godot_object, column, region);
	}
	/**
	
	*/
	void setMetadata(VariantArg1)(in long column, in VariantArg1 meta)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMetadata, _godot_object, column, meta);
	}
	/**
	
	*/
	void setRange(in long column, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRange, _godot_object, column, value);
	}
	/**
	
	*/
	void setRangeConfig(in long column, in double min, in double max, in double step, in bool expr = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRangeConfig, _godot_object, column, min, max, step, expr);
	}
	/**
	If `true`, the given column is selectable.
	*/
	void setSelectable(in long column, in bool selectable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSelectable, _godot_object, column, selectable);
	}
	/**
	
	*/
	void setSuffix(in long column, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSuffix, _godot_object, column, text);
	}
	/**
	
	*/
	void setText(in long column, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setText, _godot_object, column, text);
	}
	/**
	Sets the given column's text alignment. See $(D textalign) for possible values.
	*/
	void setTextAlign(in long column, in long text_align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextAlign, _godot_object, column, text_align);
	}
	/**
	Sets the given column's tooltip text.
	*/
	void setTooltip(in long column, in String tooltip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTooltip, _godot_object, column, tooltip);
	}
	/**
	If `true`, the TreeItem is collapsed.
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
	/**
	If `true`, folding is disabled for this TreeItem.
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
}
