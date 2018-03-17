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
/**
Control to show a tree of items.

This shows a tree of items that can be selected, expanded and collapsed. The tree can have multiple columns with custom controls like text editing, buttons and popups. It can be useful for structured displays and interactions.
Trees are built via code, using $(D TreeItem) objects to create the structure. They have a single root but multiple roots can be simulated if a dummy hidden root is added.
---
func _ready():
    var tree = Tree.new()
    var root = tree.create_item()
    tree.set_hide_root(true)
    var child1 = tree.create_item(root)
    var child2 = tree.create_item(root)
    var subchild1 = tree.create_item(child1)
    subchild1.set_text(0, "Subchild1")
---
*/
@GodotBaseClass struct Tree
{
	static immutable string _GODOT_internal_name = "Tree";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void) _GODOT__range_click_timeout;
	package(godot) alias _GODOT_methodBindInfo(string name : "_range_click_timeout") = _GODOT__range_click_timeout;
	/**
	
	*/
	void _rangeClickTimeout()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_range_click_timeout");
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
	package(godot) static GodotMethod!(void, long) _GODOT__popup_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "_popup_select") = _GODOT__popup_select;
	/**
	
	*/
	void _popupSelect(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_popup_select");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__text_editor_enter;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_editor_enter") = _GODOT__text_editor_enter;
	/**
	
	*/
	void _textEditorEnter(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_text_editor_enter");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__text_editor_modal_close;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_editor_modal_close") = _GODOT__text_editor_modal_close;
	/**
	
	*/
	void _textEditorModalClose()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_text_editor_modal_close");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__value_editor_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_value_editor_changed") = _GODOT__value_editor_changed;
	/**
	
	*/
	void _valueEditorChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_value_editor_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__scroll_moved;
	package(godot) alias _GODOT_methodBindInfo(string name : "_scroll_moved") = _GODOT__scroll_moved;
	/**
	
	*/
	void _scrollMoved(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clears the tree. This removes all items.
	*/
	void clear()
	{
		_GODOT_clear.bind("Tree", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(GodotObject, GodotObject, long) _GODOT_create_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_item") = _GODOT_create_item;
	/**
	Create an item in the tree and add it as the last child of `parent`. If parent is not given, it will be added as the root's last child, or it'll the be the root itself if the tree is empty.
	*/
	GodotObject createItem(GodotObject parent = GodotObject.init, in long idx = -1)
	{
		_GODOT_create_item.bind("Tree", "create_item");
		return ptrcall!(GodotObject)(_GODOT_create_item, _godot_object, parent, idx);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_root") = _GODOT_get_root;
	/**
	Returns the tree's root item.
	*/
	TreeItem getRoot()
	{
		_GODOT_get_root.bind("Tree", "get_root");
		return ptrcall!(TreeItem)(_GODOT_get_root, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_column_min_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_column_min_width") = _GODOT_set_column_min_width;
	/**
	Set the minimum width of a column.
	*/
	void setColumnMinWidth(in long column, in long min_width)
	{
		_GODOT_set_column_min_width.bind("Tree", "set_column_min_width");
		ptrcall!(void)(_GODOT_set_column_min_width, _godot_object, column, min_width);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_column_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_column_expand") = _GODOT_set_column_expand;
	/**
	If `true` the column will have the "Expand" flag of $(D Control).
	*/
	void setColumnExpand(in long column, in bool expand)
	{
		_GODOT_set_column_expand.bind("Tree", "set_column_expand");
		ptrcall!(void)(_GODOT_set_column_expand, _godot_object, column, expand);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_column_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_column_width") = _GODOT_get_column_width;
	/**
	Returns the column's width in pixels.
	*/
	long getColumnWidth(in long column) const
	{
		_GODOT_get_column_width.bind("Tree", "get_column_width");
		return ptrcall!(long)(_GODOT_get_column_width, _godot_object, column);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_root;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_root") = _GODOT_set_hide_root;
	/**
	
	*/
	void setHideRoot(in bool enable)
	{
		_GODOT_set_hide_root.bind("Tree", "set_hide_root");
		ptrcall!(void)(_GODOT_set_hide_root, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_root_hidden;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_root_hidden") = _GODOT_is_root_hidden;
	/**
	
	*/
	bool isRootHidden() const
	{
		_GODOT_is_root_hidden.bind("Tree", "is_root_hidden");
		return ptrcall!(bool)(_GODOT_is_root_hidden, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem, GodotObject) _GODOT_get_next_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next_selected") = _GODOT_get_next_selected;
	/**
	Returns the next selected item after the given one.
	*/
	TreeItem getNextSelected(GodotObject from)
	{
		_GODOT_get_next_selected.bind("Tree", "get_next_selected");
		return ptrcall!(TreeItem)(_GODOT_get_next_selected, _godot_object, from);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected") = _GODOT_get_selected;
	/**
	Returns the currently selected item.
	*/
	TreeItem getSelected() const
	{
		_GODOT_get_selected.bind("Tree", "get_selected");
		return ptrcall!(TreeItem)(_GODOT_get_selected, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_selected_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selected_column") = _GODOT_get_selected_column;
	/**
	Returns the current selection's column.
	*/
	long getSelectedColumn() const
	{
		_GODOT_get_selected_column.bind("Tree", "get_selected_column");
		return ptrcall!(long)(_GODOT_get_selected_column, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_pressed_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pressed_button") = _GODOT_get_pressed_button;
	/**
	Returns the last pressed button's index.
	*/
	long getPressedButton() const
	{
		_GODOT_get_pressed_button.bind("Tree", "get_pressed_button");
		return ptrcall!(long)(_GODOT_get_pressed_button, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_select_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_select_mode") = _GODOT_set_select_mode;
	/**
	
	*/
	void setSelectMode(in long mode)
	{
		_GODOT_set_select_mode.bind("Tree", "set_select_mode");
		ptrcall!(void)(_GODOT_set_select_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Tree.SelectMode) _GODOT_get_select_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_select_mode") = _GODOT_get_select_mode;
	/**
	
	*/
	Tree.SelectMode getSelectMode() const
	{
		_GODOT_get_select_mode.bind("Tree", "get_select_mode");
		return ptrcall!(Tree.SelectMode)(_GODOT_get_select_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_columns") = _GODOT_set_columns;
	/**
	
	*/
	void setColumns(in long amount)
	{
		_GODOT_set_columns.bind("Tree", "set_columns");
		ptrcall!(void)(_GODOT_set_columns, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_columns;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_columns") = _GODOT_get_columns;
	/**
	
	*/
	long getColumns() const
	{
		_GODOT_get_columns.bind("Tree", "get_columns");
		return ptrcall!(long)(_GODOT_get_columns, _godot_object);
	}
	package(godot) static GodotMethod!(TreeItem) _GODOT_get_edited;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edited") = _GODOT_get_edited;
	/**
	Returns the currently edited item. This is only available for custom cell mode.
	*/
	TreeItem getEdited() const
	{
		_GODOT_get_edited.bind("Tree", "get_edited");
		return ptrcall!(TreeItem)(_GODOT_get_edited, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_edited_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_edited_column") = _GODOT_get_edited_column;
	/**
	Returns the column for the currently edited item. This is only available for custom cell mode.
	*/
	long getEditedColumn() const
	{
		_GODOT_get_edited_column.bind("Tree", "get_edited_column");
		return ptrcall!(long)(_GODOT_get_edited_column, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_custom_popup_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_popup_rect") = _GODOT_get_custom_popup_rect;
	/**
	Returns the rectangle for custom popups. Helper to create custom cell controls that display a popup. See $(D TreeItem.setCellMode).
	*/
	Rect2 getCustomPopupRect() const
	{
		_GODOT_get_custom_popup_rect.bind("Tree", "get_custom_popup_rect");
		return ptrcall!(Rect2)(_GODOT_get_custom_popup_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2, GodotObject, long) _GODOT_get_item_area_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_area_rect") = _GODOT_get_item_area_rect;
	/**
	Returns the rectangle area for the specified item. If column is specified, only get the position and size of that column, otherwise get the rectangle containing all columns.
	*/
	Rect2 getItemAreaRect(GodotObject item, in long column = -1) const
	{
		_GODOT_get_item_area_rect.bind("Tree", "get_item_area_rect");
		return ptrcall!(Rect2)(_GODOT_get_item_area_rect, _godot_object, item, column);
	}
	package(godot) static GodotMethod!(TreeItem, Vector2) _GODOT_get_item_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_at_position") = _GODOT_get_item_at_position;
	/**
	Returns the tree item at the specified position (relative to the tree origin position).
	*/
	TreeItem getItemAtPosition(in Vector2 position) const
	{
		_GODOT_get_item_at_position.bind("Tree", "get_item_at_position");
		return ptrcall!(TreeItem)(_GODOT_get_item_at_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(long, Vector2) _GODOT_get_column_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_column_at_position") = _GODOT_get_column_at_position;
	/**
	Returns the column index under the given point.
	*/
	long getColumnAtPosition(in Vector2 position) const
	{
		_GODOT_get_column_at_position.bind("Tree", "get_column_at_position");
		return ptrcall!(long)(_GODOT_get_column_at_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(long, Vector2) _GODOT_get_drop_section_at_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drop_section_at_position") = _GODOT_get_drop_section_at_position;
	/**
	
	*/
	long getDropSectionAtPosition(in Vector2 position) const
	{
		_GODOT_get_drop_section_at_position.bind("Tree", "get_drop_section_at_position");
		return ptrcall!(long)(_GODOT_get_drop_section_at_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void) _GODOT_ensure_cursor_is_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "ensure_cursor_is_visible") = _GODOT_ensure_cursor_is_visible;
	/**
	Makes the currently selected item visible. This will scroll the tree to make sure the selected item is visible.
	*/
	void ensureCursorIsVisible()
	{
		_GODOT_ensure_cursor_is_visible.bind("Tree", "ensure_cursor_is_visible");
		ptrcall!(void)(_GODOT_ensure_cursor_is_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_column_titles_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_column_titles_visible") = _GODOT_set_column_titles_visible;
	/**
	If `true` column titles are visible.
	*/
	void setColumnTitlesVisible(in bool visible)
	{
		_GODOT_set_column_titles_visible.bind("Tree", "set_column_titles_visible");
		ptrcall!(void)(_GODOT_set_column_titles_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_are_column_titles_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "are_column_titles_visible") = _GODOT_are_column_titles_visible;
	/**
	Returns `true` if the column titles are being shown.
	*/
	bool areColumnTitlesVisible() const
	{
		_GODOT_are_column_titles_visible.bind("Tree", "are_column_titles_visible");
		return ptrcall!(bool)(_GODOT_are_column_titles_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_column_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_column_title") = _GODOT_set_column_title;
	/**
	Set the title of a column.
	*/
	void setColumnTitle(StringArg1)(in long column, in StringArg1 title)
	{
		_GODOT_set_column_title.bind("Tree", "set_column_title");
		ptrcall!(void)(_GODOT_set_column_title, _godot_object, column, title);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_column_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_column_title") = _GODOT_get_column_title;
	/**
	Returns the column's title.
	*/
	String getColumnTitle(in long column) const
	{
		_GODOT_get_column_title.bind("Tree", "get_column_title");
		return ptrcall!(String)(_GODOT_get_column_title, _godot_object, column);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll") = _GODOT_get_scroll;
	/**
	Returns the current scrolling position.
	*/
	Vector2 getScroll() const
	{
		_GODOT_get_scroll.bind("Tree", "get_scroll");
		return ptrcall!(Vector2)(_GODOT_get_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_folding;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_folding") = _GODOT_set_hide_folding;
	/**
	
	*/
	void setHideFolding(in bool hide)
	{
		_GODOT_set_hide_folding.bind("Tree", "set_hide_folding");
		ptrcall!(void)(_GODOT_set_hide_folding, _godot_object, hide);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_folding_hidden;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_folding_hidden") = _GODOT_is_folding_hidden;
	/**
	
	*/
	bool isFoldingHidden() const
	{
		_GODOT_is_folding_hidden.bind("Tree", "is_folding_hidden");
		return ptrcall!(bool)(_GODOT_is_folding_hidden, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_drop_mode_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drop_mode_flags") = _GODOT_set_drop_mode_flags;
	/**
	
	*/
	void setDropModeFlags(in long flags)
	{
		_GODOT_set_drop_mode_flags.bind("Tree", "set_drop_mode_flags");
		ptrcall!(void)(_GODOT_set_drop_mode_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_drop_mode_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drop_mode_flags") = _GODOT_get_drop_mode_flags;
	/**
	
	*/
	long getDropModeFlags() const
	{
		_GODOT_get_drop_mode_flags.bind("Tree", "get_drop_mode_flags");
		return ptrcall!(long)(_GODOT_get_drop_mode_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_allow_rmb_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_allow_rmb_select") = _GODOT_set_allow_rmb_select;
	/**
	
	*/
	void setAllowRmbSelect(in bool allow)
	{
		_GODOT_set_allow_rmb_select.bind("Tree", "set_allow_rmb_select");
		ptrcall!(void)(_GODOT_set_allow_rmb_select, _godot_object, allow);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_allow_rmb_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_allow_rmb_select") = _GODOT_get_allow_rmb_select;
	/**
	
	*/
	bool getAllowRmbSelect() const
	{
		_GODOT_get_allow_rmb_select.bind("Tree", "get_allow_rmb_select");
		return ptrcall!(bool)(_GODOT_get_allow_rmb_select, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_allow_reselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_allow_reselect") = _GODOT_set_allow_reselect;
	/**
	
	*/
	void setAllowReselect(in bool allow)
	{
		_GODOT_set_allow_reselect.bind("Tree", "set_allow_reselect");
		ptrcall!(void)(_GODOT_set_allow_reselect, _godot_object, allow);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_allow_reselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_allow_reselect") = _GODOT_get_allow_reselect;
	/**
	
	*/
	bool getAllowReselect() const
	{
		_GODOT_get_allow_reselect.bind("Tree", "get_allow_reselect");
		return ptrcall!(bool)(_GODOT_get_allow_reselect, _godot_object);
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
	If `true` the currently selected cell may be selected again.
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
	If `true` the folding arrow is hidden.
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
	If `true` the tree's root is hidden.
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
	The drop mode as an OR combination of flags. See `DROP_MODE_*` constants.
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
