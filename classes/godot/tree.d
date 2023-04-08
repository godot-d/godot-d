/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.treeitem;
/**

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
		@GodotName("get_button_id_at_position") GodotMethod!(long, Vector2) getButtonIdAtPosition;
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
	/// 
	enum SelectMode : int
	{
		/** */
		selectSingle = 0,
		/** */
		selectRow = 1,
		/** */
		selectMulti = 2,
	}
	/// 
	enum DropModeFlags : int
	{
		/** */
		dropModeDisabled = 0,
		/** */
		dropModeOnItem = 1,
		/** */
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
	
	*/
	bool areColumnTitlesVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.areColumnTitlesVisible, _godot_object);
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
	TreeItem createItem(GodotObject parent = GodotObject.init, in long idx = -1)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.createItem, _godot_object, parent, idx);
	}
	/**
	
	*/
	bool editSelected()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.editSelected, _godot_object);
	}
	/**
	
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
	
	*/
	long getButtonIdAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getButtonIdAtPosition, _godot_object, position);
	}
	/**
	
	*/
	long getColumnAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColumnAtPosition, _godot_object, position);
	}
	/**
	
	*/
	String getColumnTitle(in long column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getColumnTitle, _godot_object, column);
	}
	/**
	
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
	
	*/
	long getDropSectionAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDropSectionAtPosition, _godot_object, position);
	}
	/**
	
	*/
	TreeItem getEdited() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getEdited, _godot_object);
	}
	/**
	
	*/
	long getEditedColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getEditedColumn, _godot_object);
	}
	/**
	
	*/
	Rect2 getItemAreaRect(GodotObject item, in long column = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getItemAreaRect, _godot_object, item, column);
	}
	/**
	
	*/
	TreeItem getItemAtPosition(in Vector2 position) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getItemAtPosition, _godot_object, position);
	}
	/**
	
	*/
	TreeItem getNextSelected(GodotObject from)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getNextSelected, _godot_object, from);
	}
	/**
	
	*/
	long getPressedButton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPressedButton, _godot_object);
	}
	/**
	
	*/
	TreeItem getRoot()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getRoot, _godot_object);
	}
	/**
	
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
	
	*/
	TreeItem getSelected() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TreeItem)(GDNativeClassBinding.getSelected, _godot_object);
	}
	/**
	
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
	
	*/
	void setColumnExpand(in long column, in bool expand)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColumnExpand, _godot_object, column, expand);
	}
	/**
	
	*/
	void setColumnMinWidth(in long column, in long min_width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColumnMinWidth, _godot_object, column, min_width);
	}
	/**
	
	*/
	void setColumnTitle(in long column, in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColumnTitle, _godot_object, column, title);
	}
	/**
	
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
	@property bool columnTitlesVisible()
	{
		return areColumnTitlesVisible();
	}
	/// ditto
	@property void columnTitlesVisible(bool v)
	{
		setColumnTitlesVisible(v);
	}
	/**
	
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
