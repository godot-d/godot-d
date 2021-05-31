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
import godot.treeitem;
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


To iterate over all the $(D TreeItem) objects in a $(D Tree) object, use $(D TreeItem.getNext) and $(D TreeItem.getChildren) after getting the root through $(D getRoot). You can use $(D GodotObject.free) on a $(D TreeItem) to remove it from the $(D Tree).
*/
@GodotBaseClass struct Tree
{
	package(godot) enum string _GODOT_internal_name = "Tree";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_popup_select") GodotMethod!(void, long) _popupSelect;
		@GodotName("_range_click_timeout") GodotMethod!(void) _rangeClickTimeout;
		@GodotName("_scroll_moved") GodotMethod!(void, double) _scrollMoved;
		@GodotName("_text_editor_enter") GodotMethod!(void, String) _textEditorEnter;
		@GodotName("_text_editor_modal_close") GodotMethod!(void) _textEditorModalClose;
		@GodotName("_value_editor_changed") GodotMethod!(void, double) _valueEditorChanged;
		@GodotName("are_column_titles_visible") GodotMethod!(bool) areColumnTitlesVisible;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("create_item") GodotMethod!(TreeItem, GodotObject, long) createItem;
		@GodotName("edit_selected") GodotMethod!(bool) editSelected;
		@GodotName("ensure_cursor_is_visible") GodotMethod!(void) ensureCursorIsVisible;
		@GodotName("get_allow_reselect") GodotMethod!(bool) getAllowReselect;
		@GodotName("get_allow_rmb_select") GodotMethod!(bool) getAllowRmbSelect;
		@GodotName("get_column_at_position") GodotMethod!(long, Vector2) getColumnAtPosition;
		@GodotName("get_column_title") GodotMethod!(String, long) getColumnTitle;
		@GodotName("get_column_width") GodotMethod!(long, long) getColumnWidth;
		@GodotName("get_columns") GodotMethod!(long) getColumns;
		@GodotName("get_custom_popup_rect") GodotMethod!(Rect2) getCustomPopupRect;
		@GodotName("get_drop_mode_flags") GodotMethod!(long) getDropModeFlags;
		@GodotName("get_drop_section_at_position") GodotMethod!(long, Vector2) getDropSectionAtPosition;
		@GodotName("get_edited") GodotMethod!(TreeItem) getEdited;
		@GodotName("get_edited_column") GodotMethod!(long) getEditedColumn;
		@GodotName("get_item_area_rect") GodotMethod!(Rect2, GodotObject, long) getItemAreaRect;
		@GodotName("get_item_at_position") GodotMethod!(TreeItem, Vector2) getItemAtPosition;
		@GodotName("get_next_selected") GodotMethod!(TreeItem, GodotObject) getNextSelected;
		@GodotName("get_pressed_button") GodotMethod!(long) getPressedButton;
		@GodotName("get_root") GodotMethod!(TreeItem) getRoot;
		@GodotName("get_scroll") GodotMethod!(Vector2) getScroll;
		@GodotName("get_select_mode") GodotMethod!(Tree.SelectMode) getSelectMode;
		@GodotName("get_selected") GodotMethod!(TreeItem) getSelected;
		@GodotName("get_selected_column") GodotMethod!(long) getSelectedColumn;
		@GodotName("is_folding_hidden") GodotMethod!(bool) isFoldingHidden;
		@GodotName("is_root_hidden") GodotMethod!(bool) isRootHidden;
		@GodotName("scroll_to_item") GodotMethod!(void, GodotObject) scrollToItem;
		@GodotName("set_allow_reselect") GodotMethod!(void, bool) setAllowReselect;
		@GodotName("set_allow_rmb_select") GodotMethod!(void, bool) setAllowRmbSelect;
		@GodotName("set_column_expand") GodotMethod!(void, long, bool) setColumnExpand;
		@GodotName("set_column_min_width") GodotMethod!(void, long, long) setColumnMinWidth;
		@GodotName("set_column_title") GodotMethod!(void, long, String) setColumnTitle;
		@GodotName("set_column_titles_visible") GodotMethod!(void, bool) setColumnTitlesVisible;
		@GodotName("set_columns") GodotMethod!(void, long) setColumns;
		@GodotName("set_drop_mode_flags") GodotMethod!(void, long) setDropModeFlags;
		@GodotName("set_hide_folding") GodotMethod!(void, bool) setHideFolding;
		@GodotName("set_hide_root") GodotMethod!(void, bool) setHideRoot;
		@GodotName("set_select_mode") GodotMethod!(void, long) setSelectMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in Tree other) const
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
	/// Construct a new instance of Tree.
	/// Note: use `memnew!Tree` instead.
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
		Allows selection of a single cell at a time. From the perspective of items, only a single item is allowed to be selected. And there is only one column selected in the selected item.
		The focus cursor is always hidden in this mode, but it is positioned at the current selection, making the currently selected item the currently focused item.
		*/
		selectSingle = 0,
		/**
		Allows selection of a single row at a time. From the perspective of items, only a single items is allowed to be selected. And all the columns are selected in the selected item.
		The focus cursor is always hidden in this mode, but it is positioned at the first column of the current selection, making the currently selected item the currently focused item.
		*/
		selectRow = 1,
		/**
		Allows selection of multiple cells at the same time. From the perspective of items, multiple items are allowed to be selected. And there can be multiple columns selected in each selected item.
		The focus cursor is visible in this mode, the item or column under the cursor is not necessarily selected.
		*/
		selectMulti = 2,
	}
	/// 
	enum DropModeFlags : int
	{
		/**
		Disables all drop sections, but still allows to detect the "on item" drop section by $(D getDropSectionAtPosition).
		$(B Note:) This is the default flag, it has no effect when combined with other flags.
		*/
		dropModeDisabled = 0,
		/**
		Enables the "on item" drop section. This drop section covers the entire item.
		When combined with $(D constant DROP_MODE_INBETWEEN), this drop section halves the height and stays centered vertically.
		*/
		dropModeOnItem = 1,
		/**
		Enables "above item" and "below item" drop sections. The "above item" drop section covers the top half of the item, and the "below item" drop section covers the bottom half.
		When combined with $(D constant DROP_MODE_ON_ITEM), these drop sections halves the height and stays on top / bottom accordingly.
		*/
		dropModeInbetween = 2,
	}
	/// 
	enum Constants : int
	{
		dropModeDisabled = 0,
		selectSingle = 0,
		dropModeOnItem = 1,
		selectRow = 1,
		dropModeInbetween = 2,
		selectMulti = 2,
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
	void _popupSelect(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_popup_select");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _rangeClickTimeout()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_range_click_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scrollMoved(in double arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _textEditorEnter(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_text_editor_enter");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _textEditorModalClose()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_text_editor_modal_close");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _valueEditorChanged(in double arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_value_editor_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns `true` if the column titles are being shown.
	*/
	bool areColumnTitlesVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.areColumnTitlesVisible, _godot_object);
	}
	/**
	Clears the tree. This removes all items.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Creates an item in the tree and adds it as a child of `parent`.
	If `parent` is `null`, the root item will be the parent, or the new item will be the root itself if the tree is empty.
	The new item will be the `idx`th child of parent, or it will be the last child if there are not enough siblings.
	*/
	TreeItem createItem(GodotObject parent = GodotObject.init, in long idx = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.createItem, _godot_object, parent, idx);
	}
	/**
	Edits the selected tree item as if it was clicked. The item must be set editable with $(D TreeItem.setEditable). Returns `true` if the item could be edited. Fails if no item is selected.
	*/
	bool editSelected()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.editSelected, _godot_object);
	}
	/**
	Makes the currently focused cell visible.
	This will scroll the tree if necessary. In $(D constant SELECT_ROW) mode, this will not do horizontal scrolling, as all the cells in the selected row is focused logically.
	$(B Note:) Despite the name of this method, the focus cursor itself is only visible in $(D constant SELECT_MULTI) mode.
	*/
	void ensureCursorIsVisible()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.ensureCursorIsVisible, _godot_object);
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
	Returns the column index at `position`, or -1 if no item is there.
	*/
	long getColumnAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColumnAtPosition, _godot_object, position);
	}
	/**
	Returns the column's title.
	*/
	String getColumnTitle(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getColumnTitle, _godot_object, column);
	}
	/**
	Returns the column's width in pixels.
	*/
	long getColumnWidth(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColumnWidth, _godot_object, column);
	}
	/**
	
	*/
	long getColumns() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColumns, _godot_object);
	}
	/**
	Returns the rectangle for custom popups. Helper to create custom cell controls that display a popup. See $(D TreeItem.setCellMode).
	*/
	Rect2 getCustomPopupRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getCustomPopupRect, _godot_object);
	}
	/**
	
	*/
	long getDropModeFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDropModeFlags, _godot_object);
	}
	/**
	Returns the drop section at `position`, or -100 if no item is there.
	Values -1, 0, or 1 will be returned for the "above item", "on item", and "below item" drop sections, respectively. See $(D dropmodeflags) for a description of each drop section.
	To get the item which the returned drop section is relative to, use $(D getItemAtPosition).
	*/
	long getDropSectionAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDropSectionAtPosition, _godot_object, position);
	}
	/**
	Returns the currently edited item. Can be used with $(D itemEdited) to get the item that was modified.
	
	
	func _ready():
	    $Tree.item_edited.connect(on_Tree_item_edited)
	
	func on_Tree_item_edited():
	    print($Tree.get_edited()) # This item just got edited (e.g. checked).
	
	
	*/
	TreeItem getEdited() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getEdited, _godot_object);
	}
	/**
	Returns the column for the currently edited item.
	*/
	long getEditedColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getEditedColumn, _godot_object);
	}
	/**
	Returns the rectangle area for the specified item. If `column` is specified, only get the position and size of that column, otherwise get the rectangle containing all columns.
	*/
	Rect2 getItemAreaRect(GodotObject item, in long column = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getItemAreaRect, _godot_object, item, column);
	}
	/**
	Returns the tree item at the specified position (relative to the tree origin position).
	*/
	TreeItem getItemAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getItemAtPosition, _godot_object, position);
	}
	/**
	Returns the next selected item after the given one, or `null` if the end is reached.
	If `from` is `null`, this returns the first selected item.
	*/
	TreeItem getNextSelected(GodotObject from)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getNextSelected, _godot_object, from);
	}
	/**
	Returns the last pressed button's index.
	*/
	long getPressedButton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPressedButton, _godot_object);
	}
	/**
	Returns the tree's root item, or `null` if the tree is empty.
	*/
	TreeItem getRoot()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getRoot, _godot_object);
	}
	/**
	Returns the current scrolling position.
	*/
	Vector2 getScroll() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getScroll, _godot_object);
	}
	/**
	
	*/
	Tree.SelectMode getSelectMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Tree.SelectMode)(GDNativeClassBinding.getSelectMode, _godot_object);
	}
	/**
	Returns the currently focused item, or `null` if no item is focused.
	In $(D constant SELECT_ROW) and $(D constant SELECT_SINGLE) modes, the focused item is same as the selected item. In $(D constant SELECT_MULTI) mode, the focused item is the item under the focus cursor, not necessarily selected.
	To get the currently selected item(s), use $(D getNextSelected).
	*/
	TreeItem getSelected() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getSelected, _godot_object);
	}
	/**
	Returns the currently focused column, or -1 if no column is focused.
	In $(D constant SELECT_SINGLE) mode, the focused column is the selected column. In $(D constant SELECT_ROW) mode, the focused column is always 0 if any item is selected. In $(D constant SELECT_MULTI) mode, the focused column is the column under the focus cursor, and there are not necessarily any column selected.
	To tell whether a column of an item is selected, use $(D TreeItem.isSelected).
	*/
	long getSelectedColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSelectedColumn, _godot_object);
	}
	/**
	
	*/
	bool isFoldingHidden() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFoldingHidden, _godot_object);
	}
	/**
	
	*/
	bool isRootHidden() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRootHidden, _godot_object);
	}
	/**
	
	*/
	void scrollToItem(GodotObject item)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scrollToItem, _godot_object, item);
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
	If `true`, the column will have the "Expand" flag of $(D Control). Columns that have the "Expand" flag will use their "min_width" in a similar fashion to $(D Control.sizeFlagsStretchRatio).
	*/
	void setColumnExpand(in long column, in bool expand)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColumnExpand, _godot_object, column, expand);
	}
	/**
	Sets the minimum width of a column. Columns that have the "Expand" flag will use their "min_width" in a similar fashion to $(D Control.sizeFlagsStretchRatio).
	*/
	void setColumnMinWidth(in long column, in long min_width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColumnMinWidth, _godot_object, column, min_width);
	}
	/**
	Sets the title of a column.
	*/
	void setColumnTitle(in long column, in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColumnTitle, _godot_object, column, title);
	}
	/**
	If `true`, column titles are visible.
	*/
	void setColumnTitlesVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColumnTitlesVisible, _godot_object, visible);
	}
	/**
	
	*/
	void setColumns(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColumns, _godot_object, amount);
	}
	/**
	
	*/
	void setDropModeFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDropModeFlags, _godot_object, flags);
	}
	/**
	
	*/
	void setHideFolding(in bool hide)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHideFolding, _godot_object, hide);
	}
	/**
	
	*/
	void setHideRoot(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHideRoot, _godot_object, enable);
	}
	/**
	
	*/
	void setSelectMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSelectMode, _godot_object, mode);
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
	The number of columns.
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
	The drop mode as an OR combination of flags. See $(D dropmodeflags) constants. Once dropping is done, reverts to $(D constant DROP_MODE_DISABLED). Setting this during $(D Control.canDropData) is recommended.
	This controls the drop sections, i.e. the decision and drawing of possible drop locations based on the mouse position.
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
	Allows single or multiple selection. See the $(D selectmode) constants.
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
