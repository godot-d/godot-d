/**
Control to show a tree of items.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.tree;
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
import godot.inputevent;
import godot.treeitem;
import godot.canvasitem;
import godot.node;
/**
Control to show a tree of items.

This shows a tree of items that can be selected, expanded and collapsed. The tree can have multiple columns with custom controls like text editing, buttons and popups. It can be useful for structured displays and interactions.
Trees are built via code, using $(D TreeItem) objects to create the structure. They have a single root but multiple roots can be simulated if a dummy hidden root is added.


func _ready():
    var tree = Tree.new()
    var root = tree.create_item()
    tree.set_hide_root(true)
    var child1 = tree.create_item(root)
    var child2 = tree.create_item(root)
    var subchild1 = tree.create_item(child1)
    subchild1.set_text(0, "Subchild1")


*/
@GodotBaseClass struct Tree
{
	enum string _GODOT_internal_name = "Tree";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_range_click_timeout") GodotMethod!(void) _rangeClickTimeout;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_popup_select") GodotMethod!(void, long) _popupSelect;
		@GodotName("_text_editor_enter") GodotMethod!(void, String) _textEditorEnter;
		@GodotName("_text_editor_modal_close") GodotMethod!(void) _textEditorModalClose;
		@GodotName("_value_editor_changed") GodotMethod!(void, double) _valueEditorChanged;
		@GodotName("_scroll_moved") GodotMethod!(void, double) _scrollMoved;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("create_item") GodotMethod!(TreeItem, GodotObject, long) createItem;
		@GodotName("get_root") GodotMethod!(TreeItem) getRoot;
		@GodotName("set_column_min_width") GodotMethod!(void, long, long) setColumnMinWidth;
		@GodotName("set_column_expand") GodotMethod!(void, long, bool) setColumnExpand;
		@GodotName("get_column_width") GodotMethod!(long, long) getColumnWidth;
		@GodotName("set_hide_root") GodotMethod!(void, bool) setHideRoot;
		@GodotName("is_root_hidden") GodotMethod!(bool) isRootHidden;
		@GodotName("get_next_selected") GodotMethod!(TreeItem, GodotObject) getNextSelected;
		@GodotName("get_selected") GodotMethod!(TreeItem) getSelected;
		@GodotName("get_selected_column") GodotMethod!(long) getSelectedColumn;
		@GodotName("get_pressed_button") GodotMethod!(long) getPressedButton;
		@GodotName("set_select_mode") GodotMethod!(void, long) setSelectMode;
		@GodotName("get_select_mode") GodotMethod!(Tree.SelectMode) getSelectMode;
		@GodotName("set_columns") GodotMethod!(void, long) setColumns;
		@GodotName("get_columns") GodotMethod!(long) getColumns;
		@GodotName("get_edited") GodotMethod!(TreeItem) getEdited;
		@GodotName("get_edited_column") GodotMethod!(long) getEditedColumn;
		@GodotName("get_custom_popup_rect") GodotMethod!(Rect2) getCustomPopupRect;
		@GodotName("get_item_area_rect") GodotMethod!(Rect2, GodotObject, long) getItemAreaRect;
		@GodotName("get_item_at_position") GodotMethod!(TreeItem, Vector2) getItemAtPosition;
		@GodotName("get_column_at_position") GodotMethod!(long, Vector2) getColumnAtPosition;
		@GodotName("get_drop_section_at_position") GodotMethod!(long, Vector2) getDropSectionAtPosition;
		@GodotName("ensure_cursor_is_visible") GodotMethod!(void) ensureCursorIsVisible;
		@GodotName("set_column_titles_visible") GodotMethod!(void, bool) setColumnTitlesVisible;
		@GodotName("are_column_titles_visible") GodotMethod!(bool) areColumnTitlesVisible;
		@GodotName("set_column_title") GodotMethod!(void, long, String) setColumnTitle;
		@GodotName("get_column_title") GodotMethod!(String, long) getColumnTitle;
		@GodotName("get_scroll") GodotMethod!(Vector2) getScroll;
		@GodotName("set_hide_folding") GodotMethod!(void, bool) setHideFolding;
		@GodotName("is_folding_hidden") GodotMethod!(bool) isFoldingHidden;
		@GodotName("set_drop_mode_flags") GodotMethod!(void, long) setDropModeFlags;
		@GodotName("get_drop_mode_flags") GodotMethod!(long) getDropModeFlags;
		@GodotName("set_allow_rmb_select") GodotMethod!(void, bool) setAllowRmbSelect;
		@GodotName("get_allow_rmb_select") GodotMethod!(bool) getAllowRmbSelect;
		@GodotName("set_allow_reselect") GodotMethod!(void, bool) setAllowReselect;
		@GodotName("get_allow_reselect") GodotMethod!(bool) getAllowReselect;
	}
	bool opEquals(in Tree other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Tree opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Tree _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Tree");
		if(constructor is null) return typeof(this).init;
		return cast(Tree)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum SelectMode : int
	{
		/**
		Allow selection of a single item at a time.
		*/
		selectSingle = 0,
		/**
		
		*/
		selectRow = 1,
		/**
		Allow selection of multiple items at the same time.
		*/
		selectMulti = 2,
	}
	/// 
	enum DropModeFlags : int
	{
		/**
		
		*/
		dropModeDisabled = 0,
		/**
		
		*/
		dropModeOnItem = 1,
		/**
		
		*/
		dropModeInbetween = 2,
	}
	/// 
	enum Constants : int
	{
		dropModeDisabled = 0,
		selectSingle = 0,
		selectRow = 1,
		dropModeOnItem = 1,
		dropModeInbetween = 2,
		selectMulti = 2,
	}
	/**
	
	*/
	void _rangeClickTimeout()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_range_click_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _popupSelect(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_popup_select");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _textEditorEnter(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_text_editor_enter");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _textEditorModalClose()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_text_editor_modal_close");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _valueEditorChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_value_editor_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scrollMoved(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Clears the tree. This removes all items.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Create an item in the tree and add it as the last child of `parent`. If parent is not given, it will be added as the root's last child, or it'll the be the root itself if the tree is empty.
	*/
	TreeItem createItem(GodotObject parent = GodotObject.init, in long idx = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.createItem, _godot_object, parent, idx);
	}
	/**
	Returns the tree's root item.
	*/
	TreeItem getRoot()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getRoot, _godot_object);
	}
	/**
	Set the minimum width of a column.
	*/
	void setColumnMinWidth(in long column, in long min_width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColumnMinWidth, _godot_object, column, min_width);
	}
	/**
	If `true`, the column will have the "Expand" flag of $(D Control).
	*/
	void setColumnExpand(in long column, in bool expand)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColumnExpand, _godot_object, column, expand);
	}
	/**
	Returns the column's width in pixels.
	*/
	long getColumnWidth(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getColumnWidth, _godot_object, column);
	}
	/**
	
	*/
	void setHideRoot(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHideRoot, _godot_object, enable);
	}
	/**
	
	*/
	bool isRootHidden() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRootHidden, _godot_object);
	}
	/**
	Returns the next selected item after the given one.
	*/
	TreeItem getNextSelected(GodotObject from)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getNextSelected, _godot_object, from);
	}
	/**
	Returns the currently selected item.
	*/
	TreeItem getSelected() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getSelected, _godot_object);
	}
	/**
	Returns the current selection's column.
	*/
	long getSelectedColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectedColumn, _godot_object);
	}
	/**
	Returns the last pressed button's index.
	*/
	long getPressedButton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPressedButton, _godot_object);
	}
	/**
	
	*/
	void setSelectMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSelectMode, _godot_object, mode);
	}
	/**
	
	*/
	Tree.SelectMode getSelectMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Tree.SelectMode)(_classBinding.getSelectMode, _godot_object);
	}
	/**
	
	*/
	void setColumns(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColumns, _godot_object, amount);
	}
	/**
	
	*/
	long getColumns() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getColumns, _godot_object);
	}
	/**
	Returns the currently edited item. This is only available for custom cell mode.
	*/
	TreeItem getEdited() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getEdited, _godot_object);
	}
	/**
	Returns the column for the currently edited item. This is only available for custom cell mode.
	*/
	long getEditedColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getEditedColumn, _godot_object);
	}
	/**
	Returns the rectangle for custom popups. Helper to create custom cell controls that display a popup. See $(D TreeItem.setCellMode).
	*/
	Rect2 getCustomPopupRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getCustomPopupRect, _godot_object);
	}
	/**
	Returns the rectangle area for the specified item. If column is specified, only get the position and size of that column, otherwise get the rectangle containing all columns.
	*/
	Rect2 getItemAreaRect(GodotObject item, in long column = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getItemAreaRect, _godot_object, item, column);
	}
	/**
	Returns the tree item at the specified position (relative to the tree origin position).
	*/
	TreeItem getItemAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(_classBinding.getItemAtPosition, _godot_object, position);
	}
	/**
	Returns the column index under the given point.
	*/
	long getColumnAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getColumnAtPosition, _godot_object, position);
	}
	/**
	If $(D dropModeFlags) includes `DROP_MODE_INBETWEEN`, returns -1 if `position` is the upper part of a tree item at that position, 1 for the lower part, and additionally 0 for the middle part if $(D dropModeFlags) includes `DROP_MODE_ON_ITEM`.
	Otherwise, returns 0. If there are no tree item at `position`, returns -100.
	*/
	long getDropSectionAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDropSectionAtPosition, _godot_object, position);
	}
	/**
	Makes the currently selected item visible. This will scroll the tree to make sure the selected item is visible.
	*/
	void ensureCursorIsVisible()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.ensureCursorIsVisible, _godot_object);
	}
	/**
	If `true`, column titles are visible.
	*/
	void setColumnTitlesVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColumnTitlesVisible, _godot_object, visible);
	}
	/**
	Returns `true` if the column titles are being shown.
	*/
	bool areColumnTitlesVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.areColumnTitlesVisible, _godot_object);
	}
	/**
	Set the title of a column.
	*/
	void setColumnTitle(in long column, in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColumnTitle, _godot_object, column, title);
	}
	/**
	Returns the column's title.
	*/
	String getColumnTitle(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getColumnTitle, _godot_object, column);
	}
	/**
	Returns the current scrolling position.
	*/
	Vector2 getScroll() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScroll, _godot_object);
	}
	/**
	
	*/
	void setHideFolding(in bool hide)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHideFolding, _godot_object, hide);
	}
	/**
	
	*/
	bool isFoldingHidden() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFoldingHidden, _godot_object);
	}
	/**
	
	*/
	void setDropModeFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDropModeFlags, _godot_object, flags);
	}
	/**
	
	*/
	long getDropModeFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDropModeFlags, _godot_object);
	}
	/**
	
	*/
	void setAllowRmbSelect(in bool allow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAllowRmbSelect, _godot_object, allow);
	}
	/**
	
	*/
	bool getAllowRmbSelect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAllowRmbSelect, _godot_object);
	}
	/**
	
	*/
	void setAllowReselect(in bool allow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAllowReselect, _godot_object, allow);
	}
	/**
	
	*/
	bool getAllowReselect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAllowReselect, _godot_object);
	}
	/**
	The amount of columns.
	*/
	@property long columns()
	{
		return getColumns();
	}
	/// ditto
	@property void columns(long v)
	{
		setColumns(v);
	}
	/**
	If `true`, the currently selected cell may be selected again.
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
	If `true`, a right mouse button click can select items.
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
	If `true`, the folding arrow is hidden.
	*/
	@property bool hideFolding()
	{
		return isFoldingHidden();
	}
	/// ditto
	@property void hideFolding(bool v)
	{
		setHideFolding(v);
	}
	/**
	If `true`, the tree's root is hidden.
	*/
	@property bool hideRoot()
	{
		return isRootHidden();
	}
	/// ditto
	@property void hideRoot(bool v)
	{
		setHideRoot(v);
	}
	/**
	The drop mode as an OR combination of flags. See `DROP_MODE_*` constants. Once dropping is done, reverts to `DROP_MODE_DISABLED`. Setting this during $(D Control.canDropData) is recommended.
	*/
	@property long dropModeFlags()
	{
		return getDropModeFlags();
	}
	/// ditto
	@property void dropModeFlags(long v)
	{
		setDropModeFlags(v);
	}
	/**
	Allow single or multiple selection. See the `SELECT_*` constants.
	*/
	@property Tree.SelectMode selectMode()
	{
		return getSelectMode();
	}
	/// ditto
	@property void selectMode(long v)
	{
		setSelectMode(v);
	}
}
