/**
Multiline text editing control.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.textedit;
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
import godot.popupmenu;
/**
Multiline text editing control.

TextEdit is meant for editing large, multiline text. It also has facilities for editing code, such as syntax highlighting support and multiple levels of undo/redo.
*/
@GodotBaseClass struct TextEdit
{
	static immutable string _GODOT_internal_name = "TextEdit";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in TextEdit other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextEdit opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TextEdit _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TextEdit");
		if(constructor is null) return typeof(this).init;
		return cast(TextEdit)(constructor());
	}
	/// 
	enum SearchFlags : int
	{
		/**
		Match case when searching.
		*/
		searchMatchCase = 1,
		/**
		Match whole words when searching.
		*/
		searchWholeWords = 2,
		/**
		Search from end to beginning.
		*/
		searchBackwards = 4,
	}
	/// 
	enum MenuItems : int
	{
		/**
		Cuts (Copies and clears) the selected text.
		*/
		menuCut = 0,
		/**
		Copies the selected text.
		*/
		menuCopy = 1,
		/**
		Pastes the clipboard text over the selected text (or at the cursor's position).
		*/
		menuPaste = 2,
		/**
		Erases the whole $(D TextEdit) text.
		*/
		menuClear = 3,
		/**
		Selects the whole $(D TextEdit) text.
		*/
		menuSelectAll = 4,
		/**
		Undoes the previous action.
		*/
		menuUndo = 5,
		/**
		
		*/
		menuMax = 6,
	}
	/// 
	enum Constants : int
	{
		menuCut = 0,
		menuCopy = 1,
		searchMatchCase = 1,
		searchWholeWords = 2,
		menuPaste = 2,
		menuClear = 3,
		searchBackwards = 4,
		menuSelectAll = 4,
		menuUndo = 5,
		menuMax = 6,
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
	package(godot) static GodotMethod!(void) _GODOT__cursor_changed_emit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_cursor_changed_emit") = _GODOT__cursor_changed_emit;
	/**
	
	*/
	void _cursorChangedEmit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_cursor_changed_emit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__text_changed_emit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_changed_emit") = _GODOT__text_changed_emit;
	/**
	
	*/
	void _textChangedEmit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_text_changed_emit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__push_current_op;
	package(godot) alias _GODOT_methodBindInfo(string name : "_push_current_op") = _GODOT__push_current_op;
	/**
	
	*/
	void _pushCurrentOp()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_push_current_op");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__click_selection_held;
	package(godot) alias _GODOT_methodBindInfo(string name : "_click_selection_held") = _GODOT__click_selection_held;
	/**
	
	*/
	void _clickSelectionHeld()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_click_selection_held");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__toggle_draw_caret;
	package(godot) alias _GODOT_methodBindInfo(string name : "_toggle_draw_caret") = _GODOT__toggle_draw_caret;
	/**
	
	*/
	void _toggleDrawCaret()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_toggle_draw_caret");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__v_scroll_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_v_scroll_input") = _GODOT__v_scroll_input;
	/**
	
	*/
	void _vScrollInput()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_v_scroll_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	/**
	
	*/
	void setText(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("TextEdit", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_insert_text_at_cursor;
	package(godot) alias _GODOT_methodBindInfo(string name : "insert_text_at_cursor") = _GODOT_insert_text_at_cursor;
	/**
	Insert a given text at the cursor position.
	*/
	void insertTextAtCursor(StringArg0)(in StringArg0 text)
	{
		_GODOT_insert_text_at_cursor.bind("TextEdit", "insert_text_at_cursor");
		ptrcall!(void)(_GODOT_insert_text_at_cursor, _godot_object, text);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_count") = _GODOT_get_line_count;
	/**
	Return the amount of total lines in the text.
	*/
	long getLineCount() const
	{
		_GODOT_get_line_count.bind("TextEdit", "get_line_count");
		return ptrcall!(long)(_GODOT_get_line_count, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	/**
	
	*/
	String getText()
	{
		_GODOT_get_text.bind("TextEdit", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line") = _GODOT_get_line;
	/**
	Return the text of a specific line.
	*/
	String getLine(in long line) const
	{
		_GODOT_get_line.bind("TextEdit", "get_line");
		return ptrcall!(String)(_GODOT_get_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_cursor_set_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_column") = _GODOT_cursor_set_column;
	/**
	
	*/
	void cursorSetColumn(in long column, in bool adjust_viewport = true)
	{
		_GODOT_cursor_set_column.bind("TextEdit", "cursor_set_column");
		ptrcall!(void)(_GODOT_cursor_set_column, _godot_object, column, adjust_viewport);
	}
	package(godot) static GodotMethod!(void, long, bool, bool) _GODOT_cursor_set_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_line") = _GODOT_cursor_set_line;
	/**
	
	*/
	void cursorSetLine(in long line, in bool adjust_viewport = true, in bool can_be_hidden = true)
	{
		_GODOT_cursor_set_line.bind("TextEdit", "cursor_set_line");
		ptrcall!(void)(_GODOT_cursor_set_line, _godot_object, line, adjust_viewport, can_be_hidden);
	}
	package(godot) static GodotMethod!(long) _GODOT_cursor_get_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_column") = _GODOT_cursor_get_column;
	/**
	Return the column the editing cursor is at.
	*/
	long cursorGetColumn() const
	{
		_GODOT_cursor_get_column.bind("TextEdit", "cursor_get_column");
		return ptrcall!(long)(_GODOT_cursor_get_column, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_cursor_get_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_line") = _GODOT_cursor_get_line;
	/**
	Return the line the editing cursor is at.
	*/
	long cursorGetLine() const
	{
		_GODOT_cursor_get_line.bind("TextEdit", "cursor_get_line");
		return ptrcall!(long)(_GODOT_cursor_get_line, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_cursor_set_blink_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_blink_enabled") = _GODOT_cursor_set_blink_enabled;
	/**
	
	*/
	void cursorSetBlinkEnabled(in bool enable)
	{
		_GODOT_cursor_set_blink_enabled.bind("TextEdit", "cursor_set_blink_enabled");
		ptrcall!(void)(_GODOT_cursor_set_blink_enabled, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_cursor_get_blink_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_blink_enabled") = _GODOT_cursor_get_blink_enabled;
	/**
	
	*/
	bool cursorGetBlinkEnabled() const
	{
		_GODOT_cursor_get_blink_enabled.bind("TextEdit", "cursor_get_blink_enabled");
		return ptrcall!(bool)(_GODOT_cursor_get_blink_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_cursor_set_blink_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_blink_speed") = _GODOT_cursor_set_blink_speed;
	/**
	
	*/
	void cursorSetBlinkSpeed(in double blink_speed)
	{
		_GODOT_cursor_set_blink_speed.bind("TextEdit", "cursor_set_blink_speed");
		ptrcall!(void)(_GODOT_cursor_set_blink_speed, _godot_object, blink_speed);
	}
	package(godot) static GodotMethod!(double) _GODOT_cursor_get_blink_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_blink_speed") = _GODOT_cursor_get_blink_speed;
	/**
	
	*/
	double cursorGetBlinkSpeed() const
	{
		_GODOT_cursor_get_blink_speed.bind("TextEdit", "cursor_get_blink_speed");
		return ptrcall!(double)(_GODOT_cursor_get_blink_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_cursor_set_block_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_block_mode") = _GODOT_cursor_set_block_mode;
	/**
	
	*/
	void cursorSetBlockMode(in bool enable)
	{
		_GODOT_cursor_set_block_mode.bind("TextEdit", "cursor_set_block_mode");
		ptrcall!(void)(_GODOT_cursor_set_block_mode, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_cursor_is_block_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_is_block_mode") = _GODOT_cursor_is_block_mode;
	/**
	
	*/
	bool cursorIsBlockMode() const
	{
		_GODOT_cursor_is_block_mode.bind("TextEdit", "cursor_is_block_mode");
		return ptrcall!(bool)(_GODOT_cursor_is_block_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_right_click_moves_caret;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_right_click_moves_caret") = _GODOT_set_right_click_moves_caret;
	/**
	
	*/
	void setRightClickMovesCaret(in bool enable)
	{
		_GODOT_set_right_click_moves_caret.bind("TextEdit", "set_right_click_moves_caret");
		ptrcall!(void)(_GODOT_set_right_click_moves_caret, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_right_click_moving_caret;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_right_click_moving_caret") = _GODOT_is_right_click_moving_caret;
	/**
	
	*/
	bool isRightClickMovingCaret() const
	{
		_GODOT_is_right_click_moving_caret.bind("TextEdit", "is_right_click_moving_caret");
		return ptrcall!(bool)(_GODOT_is_right_click_moving_caret, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_readonly;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_readonly") = _GODOT_set_readonly;
	/**
	
	*/
	void setReadonly(in bool enable)
	{
		_GODOT_set_readonly.bind("TextEdit", "set_readonly");
		ptrcall!(void)(_GODOT_set_readonly, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_readonly;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_readonly") = _GODOT_is_readonly;
	/**
	
	*/
	bool isReadonly() const
	{
		_GODOT_is_readonly.bind("TextEdit", "is_readonly");
		return ptrcall!(bool)(_GODOT_is_readonly, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_wrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_wrap") = _GODOT_set_wrap;
	/**
	
	*/
	void setWrap(in bool enable)
	{
		_GODOT_set_wrap.bind("TextEdit", "set_wrap");
		ptrcall!(void)(_GODOT_set_wrap, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_wrapping;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_wrapping") = _GODOT_is_wrapping;
	/**
	
	*/
	bool isWrapping() const
	{
		_GODOT_is_wrapping.bind("TextEdit", "is_wrapping");
		return ptrcall!(bool)(_GODOT_is_wrapping, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_context_menu_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_context_menu_enabled") = _GODOT_set_context_menu_enabled;
	/**
	
	*/
	void setContextMenuEnabled(in bool enable)
	{
		_GODOT_set_context_menu_enabled.bind("TextEdit", "set_context_menu_enabled");
		ptrcall!(void)(_GODOT_set_context_menu_enabled, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_context_menu_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_context_menu_enabled") = _GODOT_is_context_menu_enabled;
	/**
	
	*/
	bool isContextMenuEnabled()
	{
		_GODOT_is_context_menu_enabled.bind("TextEdit", "is_context_menu_enabled");
		return ptrcall!(bool)(_GODOT_is_context_menu_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_cut;
	package(godot) alias _GODOT_methodBindInfo(string name : "cut") = _GODOT_cut;
	/**
	Cut the current selection.
	*/
	void cut()
	{
		_GODOT_cut.bind("TextEdit", "cut");
		ptrcall!(void)(_GODOT_cut, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_copy;
	package(godot) alias _GODOT_methodBindInfo(string name : "copy") = _GODOT_copy;
	/**
	Copy the current selection.
	*/
	void copy()
	{
		_GODOT_copy.bind("TextEdit", "copy");
		ptrcall!(void)(_GODOT_copy, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_paste;
	package(godot) alias _GODOT_methodBindInfo(string name : "paste") = _GODOT_paste;
	/**
	Paste the current selection.
	*/
	void paste()
	{
		_GODOT_paste.bind("TextEdit", "paste");
		ptrcall!(void)(_GODOT_paste, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long, long, long) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	/**
	Perform selection, from line/column to line/column.
	*/
	void select(in long from_line, in long from_column, in long to_line, in long to_column)
	{
		_GODOT_select.bind("TextEdit", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, from_line, from_column, to_line, to_column);
	}
	package(godot) static GodotMethod!(void) _GODOT_select_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "select_all") = _GODOT_select_all;
	/**
	Select all the text.
	*/
	void selectAll()
	{
		_GODOT_select_all.bind("TextEdit", "select_all");
		ptrcall!(void)(_GODOT_select_all, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_deselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "deselect") = _GODOT_deselect;
	/**
	Clears the current selection.
	*/
	void deselect()
	{
		_GODOT_deselect.bind("TextEdit", "deselect");
		ptrcall!(void)(_GODOT_deselect, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_selection_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selection_active") = _GODOT_is_selection_active;
	/**
	Return true if the selection is active.
	*/
	bool isSelectionActive() const
	{
		_GODOT_is_selection_active.bind("TextEdit", "is_selection_active");
		return ptrcall!(bool)(_GODOT_is_selection_active, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_selection_from_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_from_line") = _GODOT_get_selection_from_line;
	/**
	Return the selection begin line.
	*/
	long getSelectionFromLine() const
	{
		_GODOT_get_selection_from_line.bind("TextEdit", "get_selection_from_line");
		return ptrcall!(long)(_GODOT_get_selection_from_line, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_selection_from_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_from_column") = _GODOT_get_selection_from_column;
	/**
	Return the selection begin column.
	*/
	long getSelectionFromColumn() const
	{
		_GODOT_get_selection_from_column.bind("TextEdit", "get_selection_from_column");
		return ptrcall!(long)(_GODOT_get_selection_from_column, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_selection_to_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_to_line") = _GODOT_get_selection_to_line;
	/**
	Return the selection end line.
	*/
	long getSelectionToLine() const
	{
		_GODOT_get_selection_to_line.bind("TextEdit", "get_selection_to_line");
		return ptrcall!(long)(_GODOT_get_selection_to_line, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_selection_to_column;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_to_column") = _GODOT_get_selection_to_column;
	/**
	Return the selection end column.
	*/
	long getSelectionToColumn() const
	{
		_GODOT_get_selection_to_column.bind("TextEdit", "get_selection_to_column");
		return ptrcall!(long)(_GODOT_get_selection_to_column, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_selection_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_selection_text") = _GODOT_get_selection_text;
	/**
	Return the text inside the selection.
	*/
	String getSelectionText() const
	{
		_GODOT_get_selection_text.bind("TextEdit", "get_selection_text");
		return ptrcall!(String)(_GODOT_get_selection_text, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_word_under_cursor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_word_under_cursor") = _GODOT_get_word_under_cursor;
	/**
	
	*/
	String getWordUnderCursor() const
	{
		_GODOT_get_word_under_cursor.bind("TextEdit", "get_word_under_cursor");
		return ptrcall!(String)(_GODOT_get_word_under_cursor, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray, String, long, long, long) _GODOT_search;
	package(godot) alias _GODOT_methodBindInfo(string name : "search") = _GODOT_search;
	/**
	Perform a search inside the text. Search flags can be specified in the SEARCH_* enum.
	*/
	PoolIntArray search(StringArg0)(in StringArg0 key, in long flags, in long from_line, in long from_column) const
	{
		_GODOT_search.bind("TextEdit", "search");
		return ptrcall!(PoolIntArray)(_GODOT_search, _godot_object, key, flags, from_line, from_column);
	}
	package(godot) static GodotMethod!(void) _GODOT_undo;
	package(godot) alias _GODOT_methodBindInfo(string name : "undo") = _GODOT_undo;
	/**
	Perform undo operation.
	*/
	void undo()
	{
		_GODOT_undo.bind("TextEdit", "undo");
		ptrcall!(void)(_GODOT_undo, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_redo;
	package(godot) alias _GODOT_methodBindInfo(string name : "redo") = _GODOT_redo;
	/**
	Perform redo operation.
	*/
	void redo()
	{
		_GODOT_redo.bind("TextEdit", "redo");
		ptrcall!(void)(_GODOT_redo, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_undo_history;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_undo_history") = _GODOT_clear_undo_history;
	/**
	Clear the undo history.
	*/
	void clearUndoHistory()
	{
		_GODOT_clear_undo_history.bind("TextEdit", "clear_undo_history");
		ptrcall!(void)(_GODOT_clear_undo_history, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_show_line_numbers;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_show_line_numbers") = _GODOT_set_show_line_numbers;
	/**
	
	*/
	void setShowLineNumbers(in bool enable)
	{
		_GODOT_set_show_line_numbers.bind("TextEdit", "set_show_line_numbers");
		ptrcall!(void)(_GODOT_set_show_line_numbers, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_show_line_numbers_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_show_line_numbers_enabled") = _GODOT_is_show_line_numbers_enabled;
	/**
	
	*/
	bool isShowLineNumbersEnabled() const
	{
		_GODOT_is_show_line_numbers_enabled.bind("TextEdit", "is_show_line_numbers_enabled");
		return ptrcall!(bool)(_GODOT_is_show_line_numbers_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_hiding_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hiding_enabled") = _GODOT_set_hiding_enabled;
	/**
	
	*/
	void setHidingEnabled(in long enable)
	{
		_GODOT_set_hiding_enabled.bind("TextEdit", "set_hiding_enabled");
		ptrcall!(void)(_GODOT_set_hiding_enabled, _godot_object, enable);
	}
	package(godot) static GodotMethod!(long) _GODOT_is_hiding_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_hiding_enabled") = _GODOT_is_hiding_enabled;
	/**
	
	*/
	long isHidingEnabled() const
	{
		_GODOT_is_hiding_enabled.bind("TextEdit", "is_hiding_enabled");
		return ptrcall!(long)(_GODOT_is_hiding_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_line_as_hidden;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_line_as_hidden") = _GODOT_set_line_as_hidden;
	/**
	
	*/
	void setLineAsHidden(in long line, in bool enable)
	{
		_GODOT_set_line_as_hidden.bind("TextEdit", "set_line_as_hidden");
		ptrcall!(void)(_GODOT_set_line_as_hidden, _godot_object, line, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_line_hidden;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_line_hidden") = _GODOT_is_line_hidden;
	/**
	
	*/
	bool isLineHidden(in long line) const
	{
		_GODOT_is_line_hidden.bind("TextEdit", "is_line_hidden");
		return ptrcall!(bool)(_GODOT_is_line_hidden, _godot_object, line);
	}
	package(godot) static GodotMethod!(void) _GODOT_fold_all_lines;
	package(godot) alias _GODOT_methodBindInfo(string name : "fold_all_lines") = _GODOT_fold_all_lines;
	/**
	
	*/
	void foldAllLines()
	{
		_GODOT_fold_all_lines.bind("TextEdit", "fold_all_lines");
		ptrcall!(void)(_GODOT_fold_all_lines, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_unhide_all_lines;
	package(godot) alias _GODOT_methodBindInfo(string name : "unhide_all_lines") = _GODOT_unhide_all_lines;
	/**
	
	*/
	void unhideAllLines()
	{
		_GODOT_unhide_all_lines.bind("TextEdit", "unhide_all_lines");
		ptrcall!(void)(_GODOT_unhide_all_lines, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_fold_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "fold_line") = _GODOT_fold_line;
	/**
	
	*/
	void foldLine(in long line)
	{
		_GODOT_fold_line.bind("TextEdit", "fold_line");
		ptrcall!(void)(_GODOT_fold_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_unfold_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "unfold_line") = _GODOT_unfold_line;
	/**
	
	*/
	void unfoldLine(in long line)
	{
		_GODOT_unfold_line.bind("TextEdit", "unfold_line");
		ptrcall!(void)(_GODOT_unfold_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_toggle_fold_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "toggle_fold_line") = _GODOT_toggle_fold_line;
	/**
	Toggle the folding of the code block at the given line.
	*/
	void toggleFoldLine(in long line)
	{
		_GODOT_toggle_fold_line.bind("TextEdit", "toggle_fold_line");
		ptrcall!(void)(_GODOT_toggle_fold_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_can_fold;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_fold") = _GODOT_can_fold;
	/**
	
	*/
	bool canFold(in long line) const
	{
		_GODOT_can_fold.bind("TextEdit", "can_fold");
		return ptrcall!(bool)(_GODOT_can_fold, _godot_object, line);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_folded;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_folded") = _GODOT_is_folded;
	/**
	
	*/
	bool isFolded(in long line) const
	{
		_GODOT_is_folded.bind("TextEdit", "is_folded");
		return ptrcall!(bool)(_GODOT_is_folded, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_highlight_all_occurrences;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_highlight_all_occurrences") = _GODOT_set_highlight_all_occurrences;
	/**
	
	*/
	void setHighlightAllOccurrences(in bool enable)
	{
		_GODOT_set_highlight_all_occurrences.bind("TextEdit", "set_highlight_all_occurrences");
		ptrcall!(void)(_GODOT_set_highlight_all_occurrences, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_highlight_all_occurrences_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_highlight_all_occurrences_enabled") = _GODOT_is_highlight_all_occurrences_enabled;
	/**
	
	*/
	bool isHighlightAllOccurrencesEnabled() const
	{
		_GODOT_is_highlight_all_occurrences_enabled.bind("TextEdit", "is_highlight_all_occurrences_enabled");
		return ptrcall!(bool)(_GODOT_is_highlight_all_occurrences_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_override_selected_font_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_override_selected_font_color") = _GODOT_set_override_selected_font_color;
	/**
	
	*/
	void setOverrideSelectedFontColor(in bool _override)
	{
		_GODOT_set_override_selected_font_color.bind("TextEdit", "set_override_selected_font_color");
		ptrcall!(void)(_GODOT_set_override_selected_font_color, _godot_object, _override);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_overriding_selected_font_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_overriding_selected_font_color") = _GODOT_is_overriding_selected_font_color;
	/**
	
	*/
	bool isOverridingSelectedFontColor() const
	{
		_GODOT_is_overriding_selected_font_color.bind("TextEdit", "is_overriding_selected_font_color");
		return ptrcall!(bool)(_GODOT_is_overriding_selected_font_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_syntax_coloring;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_syntax_coloring") = _GODOT_set_syntax_coloring;
	/**
	
	*/
	void setSyntaxColoring(in bool enable)
	{
		_GODOT_set_syntax_coloring.bind("TextEdit", "set_syntax_coloring");
		ptrcall!(void)(_GODOT_set_syntax_coloring, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_syntax_coloring_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_syntax_coloring_enabled") = _GODOT_is_syntax_coloring_enabled;
	/**
	
	*/
	bool isSyntaxColoringEnabled() const
	{
		_GODOT_is_syntax_coloring_enabled.bind("TextEdit", "is_syntax_coloring_enabled");
		return ptrcall!(bool)(_GODOT_is_syntax_coloring_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_highlight_current_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_highlight_current_line") = _GODOT_set_highlight_current_line;
	/**
	
	*/
	void setHighlightCurrentLine(in bool enabled)
	{
		_GODOT_set_highlight_current_line.bind("TextEdit", "set_highlight_current_line");
		ptrcall!(void)(_GODOT_set_highlight_current_line, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_highlight_current_line_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_highlight_current_line_enabled") = _GODOT_is_highlight_current_line_enabled;
	/**
	
	*/
	bool isHighlightCurrentLineEnabled() const
	{
		_GODOT_is_highlight_current_line_enabled.bind("TextEdit", "is_highlight_current_line_enabled");
		return ptrcall!(bool)(_GODOT_is_highlight_current_line_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_smooth_scroll_enable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_smooth_scroll_enable") = _GODOT_set_smooth_scroll_enable;
	/**
	
	*/
	void setSmoothScrollEnable(in bool enable)
	{
		_GODOT_set_smooth_scroll_enable.bind("TextEdit", "set_smooth_scroll_enable");
		ptrcall!(void)(_GODOT_set_smooth_scroll_enable, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_smooth_scroll_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_smooth_scroll_enabled") = _GODOT_is_smooth_scroll_enabled;
	/**
	
	*/
	bool isSmoothScrollEnabled() const
	{
		_GODOT_is_smooth_scroll_enabled.bind("TextEdit", "is_smooth_scroll_enabled");
		return ptrcall!(bool)(_GODOT_is_smooth_scroll_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_v_scroll_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_scroll_speed") = _GODOT_set_v_scroll_speed;
	/**
	
	*/
	void setVScrollSpeed(in double speed)
	{
		_GODOT_set_v_scroll_speed.bind("TextEdit", "set_v_scroll_speed");
		ptrcall!(void)(_GODOT_set_v_scroll_speed, _godot_object, speed);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_v_scroll_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_scroll_speed") = _GODOT_get_v_scroll_speed;
	/**
	
	*/
	double getVScrollSpeed() const
	{
		_GODOT_get_v_scroll_speed.bind("TextEdit", "get_v_scroll_speed");
		return ptrcall!(double)(_GODOT_get_v_scroll_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Color) _GODOT_add_keyword_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_keyword_color") = _GODOT_add_keyword_color;
	/**
	Add a keyword and its color.
	*/
	void addKeywordColor(StringArg0)(in StringArg0 keyword, in Color color)
	{
		_GODOT_add_keyword_color.bind("TextEdit", "add_keyword_color");
		ptrcall!(void)(_GODOT_add_keyword_color, _godot_object, keyword, color);
	}
	package(godot) static GodotMethod!(void, String, String, Color, bool) _GODOT_add_color_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_color_region") = _GODOT_add_color_region;
	/**
	Add color region (given the delimiters) and its colors.
	*/
	void addColorRegion(StringArg0, StringArg1)(in StringArg0 begin_key, in StringArg1 end_key, in Color color, in bool line_only = false)
	{
		_GODOT_add_color_region.bind("TextEdit", "add_color_region");
		ptrcall!(void)(_GODOT_add_color_region, _godot_object, begin_key, end_key, color, line_only);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_colors") = _GODOT_clear_colors;
	/**
	Clear all the syntax coloring information.
	*/
	void clearColors()
	{
		_GODOT_clear_colors.bind("TextEdit", "clear_colors");
		ptrcall!(void)(_GODOT_clear_colors, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_menu_option;
	package(godot) alias _GODOT_methodBindInfo(string name : "menu_option") = _GODOT_menu_option;
	/**
	
	*/
	void menuOption(in long option)
	{
		_GODOT_menu_option.bind("TextEdit", "menu_option");
		ptrcall!(void)(_GODOT_menu_option, _godot_object, option);
	}
	package(godot) static GodotMethod!(PopupMenu) _GODOT_get_menu;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_menu") = _GODOT_get_menu;
	/**
	
	*/
	PopupMenu getMenu() const
	{
		_GODOT_get_menu.bind("TextEdit", "get_menu");
		return ptrcall!(PopupMenu)(_GODOT_get_menu, _godot_object);
	}
	/**
	String value of the $(D TextEdit).
	*/
	@property String text()
	{
		return getText();
	}
	/// ditto
	@property void text(String v)
	{
		setText(v);
	}
	/**
	If `true` read-only mode is enabled. Existing text cannot be modified and new text cannot be added.
	*/
	@property bool readonly()
	{
		return isReadonly();
	}
	/// ditto
	@property void readonly(bool v)
	{
		setReadonly(v);
	}
	/**
	If `true` the line containing the cursor is highlighted.
	*/
	@property bool highlightCurrentLine()
	{
		return isHighlightCurrentLineEnabled();
	}
	/// ditto
	@property void highlightCurrentLine(bool v)
	{
		setHighlightCurrentLine(v);
	}
	/**
	
	*/
	@property bool syntaxHighlighting()
	{
		return isSyntaxColoringEnabled();
	}
	/// ditto
	@property void syntaxHighlighting(bool v)
	{
		setSyntaxColoring(v);
	}
	/**
	If `true` line numbers are displayed to the left of the text.
	*/
	@property bool showLineNumbers()
	{
		return isShowLineNumbersEnabled();
	}
	/// ditto
	@property void showLineNumbers(bool v)
	{
		setShowLineNumbers(v);
	}
	/**
	
	*/
	@property bool highlightAllOccurrences()
	{
		return isHighlightAllOccurrencesEnabled();
	}
	/// ditto
	@property void highlightAllOccurrences(bool v)
	{
		setHighlightAllOccurrences(v);
	}
	/**
	
	*/
	@property bool overrideSelectedFontColor()
	{
		return isOverridingSelectedFontColor();
	}
	/// ditto
	@property void overrideSelectedFontColor(bool v)
	{
		setOverrideSelectedFontColor(v);
	}
	/**
	If `true` a right click displays the context menu.
	*/
	@property bool contextMenuEnabled()
	{
		return isContextMenuEnabled();
	}
	/// ditto
	@property void contextMenuEnabled(bool v)
	{
		setContextMenuEnabled(v);
	}
	/**
	
	*/
	@property bool smoothScrolling()
	{
		return isSmoothScrollEnabled();
	}
	/// ditto
	@property void smoothScrolling(bool v)
	{
		setSmoothScrollEnable(v);
	}
	/**
	If `true`, enables text wrapping when it goes beyond he edge of what is visible.
	*/
	@property double vScrollSpeed()
	{
		return getVScrollSpeed();
	}
	/// ditto
	@property void vScrollSpeed(double v)
	{
		setVScrollSpeed(v);
	}
	/**
	
	*/
	@property long hidingEnabled()
	{
		return isHidingEnabled();
	}
	/// ditto
	@property void hidingEnabled(long v)
	{
		setHidingEnabled(v);
	}
	/**
	
	*/
	@property bool wrapLines()
	{
		return isWrapping();
	}
	/// ditto
	@property void wrapLines(bool v)
	{
		setWrap(v);
	}
	/**
	If `true` the caret displays as a rectangle.
	If `false` the caret displays as a bar.
	*/
	@property bool caretBlockMode()
	{
		return cursorIsBlockMode();
	}
	/// ditto
	@property void caretBlockMode(bool v)
	{
		cursorSetBlockMode(v);
	}
	/**
	If `true` the caret (visual cursor) blinks.
	*/
	@property bool caretBlink()
	{
		return cursorGetBlinkEnabled();
	}
	/// ditto
	@property void caretBlink(bool v)
	{
		cursorSetBlinkEnabled(v);
	}
	/**
	Duration (in seconds) of a caret's blinking cycle.
	*/
	@property double caretBlinkSpeed()
	{
		return cursorGetBlinkSpeed();
	}
	/// ditto
	@property void caretBlinkSpeed(double v)
	{
		cursorSetBlinkSpeed(v);
	}
	/**
	If `true` a right click moves the cursor at the mouse position before displaying the context menu.
	If `false` the context menu disregards mouse location.
	*/
	@property bool caretMovingByRightClick()
	{
		return isRightClickMovingCaret();
	}
	/// ditto
	@property void caretMovingByRightClick(bool v)
	{
		setRightClickMovesCaret(v);
	}
}
