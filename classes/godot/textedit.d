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
import godot.canvasitem;
import godot.node;
/**
Multiline text editing control.

TextEdit is meant for editing large, multiline text. It also has facilities for editing code, such as syntax highlighting support and multiple levels of undo/redo.
*/
@GodotBaseClass struct TextEdit
{
	enum string _GODOT_internal_name = "TextEdit";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_scroll_moved") GodotMethod!(void, double) _scrollMoved;
		@GodotName("_cursor_changed_emit") GodotMethod!(void) _cursorChangedEmit;
		@GodotName("_text_changed_emit") GodotMethod!(void) _textChangedEmit;
		@GodotName("_push_current_op") GodotMethod!(void) _pushCurrentOp;
		@GodotName("_click_selection_held") GodotMethod!(void) _clickSelectionHeld;
		@GodotName("_toggle_draw_caret") GodotMethod!(void) _toggleDrawCaret;
		@GodotName("_v_scroll_input") GodotMethod!(void) _vScrollInput;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("insert_text_at_cursor") GodotMethod!(void, String) insertTextAtCursor;
		@GodotName("get_line_count") GodotMethod!(long) getLineCount;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("get_line") GodotMethod!(String, long) getLine;
		@GodotName("cursor_set_column") GodotMethod!(void, long, bool) cursorSetColumn;
		@GodotName("cursor_set_line") GodotMethod!(void, long, bool, bool, long) cursorSetLine;
		@GodotName("cursor_get_column") GodotMethod!(long) cursorGetColumn;
		@GodotName("cursor_get_line") GodotMethod!(long) cursorGetLine;
		@GodotName("cursor_set_blink_enabled") GodotMethod!(void, bool) cursorSetBlinkEnabled;
		@GodotName("cursor_get_blink_enabled") GodotMethod!(bool) cursorGetBlinkEnabled;
		@GodotName("cursor_set_blink_speed") GodotMethod!(void, double) cursorSetBlinkSpeed;
		@GodotName("cursor_get_blink_speed") GodotMethod!(double) cursorGetBlinkSpeed;
		@GodotName("cursor_set_block_mode") GodotMethod!(void, bool) cursorSetBlockMode;
		@GodotName("cursor_is_block_mode") GodotMethod!(bool) cursorIsBlockMode;
		@GodotName("set_right_click_moves_caret") GodotMethod!(void, bool) setRightClickMovesCaret;
		@GodotName("is_right_click_moving_caret") GodotMethod!(bool) isRightClickMovingCaret;
		@GodotName("set_readonly") GodotMethod!(void, bool) setReadonly;
		@GodotName("is_readonly") GodotMethod!(bool) isReadonly;
		@GodotName("set_wrap_enabled") GodotMethod!(void, bool) setWrapEnabled;
		@GodotName("is_wrap_enabled") GodotMethod!(bool) isWrapEnabled;
		@GodotName("set_context_menu_enabled") GodotMethod!(void, bool) setContextMenuEnabled;
		@GodotName("is_context_menu_enabled") GodotMethod!(bool) isContextMenuEnabled;
		@GodotName("cut") GodotMethod!(void) cut;
		@GodotName("copy") GodotMethod!(void) copy;
		@GodotName("paste") GodotMethod!(void) paste;
		@GodotName("select") GodotMethod!(void, long, long, long, long) select;
		@GodotName("select_all") GodotMethod!(void) selectAll;
		@GodotName("deselect") GodotMethod!(void) deselect;
		@GodotName("is_selection_active") GodotMethod!(bool) isSelectionActive;
		@GodotName("get_selection_from_line") GodotMethod!(long) getSelectionFromLine;
		@GodotName("get_selection_from_column") GodotMethod!(long) getSelectionFromColumn;
		@GodotName("get_selection_to_line") GodotMethod!(long) getSelectionToLine;
		@GodotName("get_selection_to_column") GodotMethod!(long) getSelectionToColumn;
		@GodotName("get_selection_text") GodotMethod!(String) getSelectionText;
		@GodotName("get_word_under_cursor") GodotMethod!(String) getWordUnderCursor;
		@GodotName("search") GodotMethod!(PoolIntArray, String, long, long, long) search;
		@GodotName("undo") GodotMethod!(void) undo;
		@GodotName("redo") GodotMethod!(void) redo;
		@GodotName("clear_undo_history") GodotMethod!(void) clearUndoHistory;
		@GodotName("set_show_line_numbers") GodotMethod!(void, bool) setShowLineNumbers;
		@GodotName("is_show_line_numbers_enabled") GodotMethod!(bool) isShowLineNumbersEnabled;
		@GodotName("set_breakpoint_gutter_enabled") GodotMethod!(void, bool) setBreakpointGutterEnabled;
		@GodotName("is_breakpoint_gutter_enabled") GodotMethod!(bool) isBreakpointGutterEnabled;
		@GodotName("set_hiding_enabled") GodotMethod!(void, long) setHidingEnabled;
		@GodotName("is_hiding_enabled") GodotMethod!(long) isHidingEnabled;
		@GodotName("set_line_as_hidden") GodotMethod!(void, long, bool) setLineAsHidden;
		@GodotName("is_line_hidden") GodotMethod!(bool, long) isLineHidden;
		@GodotName("fold_all_lines") GodotMethod!(void) foldAllLines;
		@GodotName("unhide_all_lines") GodotMethod!(void) unhideAllLines;
		@GodotName("fold_line") GodotMethod!(void, long) foldLine;
		@GodotName("unfold_line") GodotMethod!(void, long) unfoldLine;
		@GodotName("toggle_fold_line") GodotMethod!(void, long) toggleFoldLine;
		@GodotName("can_fold") GodotMethod!(bool, long) canFold;
		@GodotName("is_folded") GodotMethod!(bool, long) isFolded;
		@GodotName("set_highlight_all_occurrences") GodotMethod!(void, bool) setHighlightAllOccurrences;
		@GodotName("is_highlight_all_occurrences_enabled") GodotMethod!(bool) isHighlightAllOccurrencesEnabled;
		@GodotName("set_override_selected_font_color") GodotMethod!(void, bool) setOverrideSelectedFontColor;
		@GodotName("is_overriding_selected_font_color") GodotMethod!(bool) isOverridingSelectedFontColor;
		@GodotName("set_syntax_coloring") GodotMethod!(void, bool) setSyntaxColoring;
		@GodotName("is_syntax_coloring_enabled") GodotMethod!(bool) isSyntaxColoringEnabled;
		@GodotName("set_highlight_current_line") GodotMethod!(void, bool) setHighlightCurrentLine;
		@GodotName("is_highlight_current_line_enabled") GodotMethod!(bool) isHighlightCurrentLineEnabled;
		@GodotName("set_smooth_scroll_enable") GodotMethod!(void, bool) setSmoothScrollEnable;
		@GodotName("is_smooth_scroll_enabled") GodotMethod!(bool) isSmoothScrollEnabled;
		@GodotName("set_v_scroll_speed") GodotMethod!(void, double) setVScrollSpeed;
		@GodotName("get_v_scroll_speed") GodotMethod!(double) getVScrollSpeed;
		@GodotName("add_keyword_color") GodotMethod!(void, String, Color) addKeywordColor;
		@GodotName("has_keyword_color") GodotMethod!(bool, String) hasKeywordColor;
		@GodotName("get_keyword_color") GodotMethod!(Color, String) getKeywordColor;
		@GodotName("add_color_region") GodotMethod!(void, String, String, Color, bool) addColorRegion;
		@GodotName("clear_colors") GodotMethod!(void) clearColors;
		@GodotName("menu_option") GodotMethod!(void, long) menuOption;
		@GodotName("get_menu") GodotMethod!(PopupMenu) getMenu;
		@GodotName("get_breakpoints") GodotMethod!(Array) getBreakpoints;
		@GodotName("remove_breakpoints") GodotMethod!(void) removeBreakpoints;
	}
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
	@disable new(size_t s);
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
	void _scrollMoved(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _cursorChangedEmit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_cursor_changed_emit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _textChangedEmit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_text_changed_emit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _pushCurrentOp()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_push_current_op");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _clickSelectionHeld()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_click_selection_held");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _toggleDrawCaret()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_toggle_draw_caret");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _vScrollInput()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_v_scroll_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setText, _godot_object, text);
	}
	/**
	Insert a given text at the cursor position.
	*/
	void insertTextAtCursor(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.insertTextAtCursor, _godot_object, text);
	}
	/**
	Return the amount of total lines in the text.
	*/
	long getLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLineCount, _godot_object);
	}
	/**
	
	*/
	String getText()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getText, _godot_object);
	}
	/**
	Return the text of a specific line.
	*/
	String getLine(in long line) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLine, _godot_object, line);
	}
	/**
	
	*/
	void cursorSetColumn(in long column, in bool adjust_viewport = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetColumn, _godot_object, column, adjust_viewport);
	}
	/**
	
	*/
	void cursorSetLine(in long line, in bool adjust_viewport = true, in bool can_be_hidden = true, in long wrap_index = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetLine, _godot_object, line, adjust_viewport, can_be_hidden, wrap_index);
	}
	/**
	Return the column the editing cursor is at.
	*/
	long cursorGetColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.cursorGetColumn, _godot_object);
	}
	/**
	Return the line the editing cursor is at.
	*/
	long cursorGetLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.cursorGetLine, _godot_object);
	}
	/**
	
	*/
	void cursorSetBlinkEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetBlinkEnabled, _godot_object, enable);
	}
	/**
	
	*/
	bool cursorGetBlinkEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.cursorGetBlinkEnabled, _godot_object);
	}
	/**
	
	*/
	void cursorSetBlinkSpeed(in double blink_speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetBlinkSpeed, _godot_object, blink_speed);
	}
	/**
	
	*/
	double cursorGetBlinkSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.cursorGetBlinkSpeed, _godot_object);
	}
	/**
	
	*/
	void cursorSetBlockMode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetBlockMode, _godot_object, enable);
	}
	/**
	
	*/
	bool cursorIsBlockMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.cursorIsBlockMode, _godot_object);
	}
	/**
	
	*/
	void setRightClickMovesCaret(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRightClickMovesCaret, _godot_object, enable);
	}
	/**
	
	*/
	bool isRightClickMovingCaret() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRightClickMovingCaret, _godot_object);
	}
	/**
	
	*/
	void setReadonly(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setReadonly, _godot_object, enable);
	}
	/**
	
	*/
	bool isReadonly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isReadonly, _godot_object);
	}
	/**
	
	*/
	void setWrapEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWrapEnabled, _godot_object, enable);
	}
	/**
	
	*/
	bool isWrapEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isWrapEnabled, _godot_object);
	}
	/**
	
	*/
	void setContextMenuEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setContextMenuEnabled, _godot_object, enable);
	}
	/**
	
	*/
	bool isContextMenuEnabled()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isContextMenuEnabled, _godot_object);
	}
	/**
	Cut the current selection.
	*/
	void cut()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cut, _godot_object);
	}
	/**
	Copy the current selection.
	*/
	void copy()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.copy, _godot_object);
	}
	/**
	Paste the current selection.
	*/
	void paste()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.paste, _godot_object);
	}
	/**
	Perform selection, from line/column to line/column.
	*/
	void select(in long from_line, in long from_column, in long to_line, in long to_column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.select, _godot_object, from_line, from_column, to_line, to_column);
	}
	/**
	Select all the text.
	*/
	void selectAll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.selectAll, _godot_object);
	}
	/**
	Clears the current selection.
	*/
	void deselect()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.deselect, _godot_object);
	}
	/**
	Return true if the selection is active.
	*/
	bool isSelectionActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelectionActive, _godot_object);
	}
	/**
	Return the selection begin line.
	*/
	long getSelectionFromLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectionFromLine, _godot_object);
	}
	/**
	Return the selection begin column.
	*/
	long getSelectionFromColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectionFromColumn, _godot_object);
	}
	/**
	Return the selection end line.
	*/
	long getSelectionToLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectionToLine, _godot_object);
	}
	/**
	Return the selection end column.
	*/
	long getSelectionToColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectionToColumn, _godot_object);
	}
	/**
	Return the text inside the selection.
	*/
	String getSelectionText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSelectionText, _godot_object);
	}
	/**
	
	*/
	String getWordUnderCursor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getWordUnderCursor, _godot_object);
	}
	/**
	Perform a search inside the text. Search flags can be specified in the SEARCH_* enum.
	*/
	PoolIntArray search(in String key, in long flags, in long from_line, in long from_column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.search, _godot_object, key, flags, from_line, from_column);
	}
	/**
	Perform undo operation.
	*/
	void undo()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.undo, _godot_object);
	}
	/**
	Perform redo operation.
	*/
	void redo()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.redo, _godot_object);
	}
	/**
	Clear the undo history.
	*/
	void clearUndoHistory()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearUndoHistory, _godot_object);
	}
	/**
	
	*/
	void setShowLineNumbers(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShowLineNumbers, _godot_object, enable);
	}
	/**
	
	*/
	bool isShowLineNumbersEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isShowLineNumbersEnabled, _godot_object);
	}
	/**
	
	*/
	void setBreakpointGutterEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBreakpointGutterEnabled, _godot_object, enable);
	}
	/**
	
	*/
	bool isBreakpointGutterEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBreakpointGutterEnabled, _godot_object);
	}
	/**
	
	*/
	void setHidingEnabled(in long enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHidingEnabled, _godot_object, enable);
	}
	/**
	
	*/
	long isHidingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.isHidingEnabled, _godot_object);
	}
	/**
	
	*/
	void setLineAsHidden(in long line, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLineAsHidden, _godot_object, line, enable);
	}
	/**
	
	*/
	bool isLineHidden(in long line) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isLineHidden, _godot_object, line);
	}
	/**
	
	*/
	void foldAllLines()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.foldAllLines, _godot_object);
	}
	/**
	
	*/
	void unhideAllLines()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unhideAllLines, _godot_object);
	}
	/**
	
	*/
	void foldLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.foldLine, _godot_object, line);
	}
	/**
	
	*/
	void unfoldLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unfoldLine, _godot_object, line);
	}
	/**
	Toggle the folding of the code block at the given line.
	*/
	void toggleFoldLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.toggleFoldLine, _godot_object, line);
	}
	/**
	
	*/
	bool canFold(in long line) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canFold, _godot_object, line);
	}
	/**
	
	*/
	bool isFolded(in long line) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFolded, _godot_object, line);
	}
	/**
	
	*/
	void setHighlightAllOccurrences(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHighlightAllOccurrences, _godot_object, enable);
	}
	/**
	
	*/
	bool isHighlightAllOccurrencesEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHighlightAllOccurrencesEnabled, _godot_object);
	}
	/**
	
	*/
	void setOverrideSelectedFontColor(in bool _override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOverrideSelectedFontColor, _godot_object, _override);
	}
	/**
	
	*/
	bool isOverridingSelectedFontColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOverridingSelectedFontColor, _godot_object);
	}
	/**
	
	*/
	void setSyntaxColoring(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSyntaxColoring, _godot_object, enable);
	}
	/**
	
	*/
	bool isSyntaxColoringEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSyntaxColoringEnabled, _godot_object);
	}
	/**
	
	*/
	void setHighlightCurrentLine(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHighlightCurrentLine, _godot_object, enabled);
	}
	/**
	
	*/
	bool isHighlightCurrentLineEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHighlightCurrentLineEnabled, _godot_object);
	}
	/**
	
	*/
	void setSmoothScrollEnable(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSmoothScrollEnable, _godot_object, enable);
	}
	/**
	
	*/
	bool isSmoothScrollEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSmoothScrollEnabled, _godot_object);
	}
	/**
	
	*/
	void setVScrollSpeed(in double speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVScrollSpeed, _godot_object, speed);
	}
	/**
	
	*/
	double getVScrollSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVScrollSpeed, _godot_object);
	}
	/**
	Add a keyword and its color.
	*/
	void addKeywordColor(in String keyword, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addKeywordColor, _godot_object, keyword, color);
	}
	/**
	
	*/
	bool hasKeywordColor(in String keyword) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasKeywordColor, _godot_object, keyword);
	}
	/**
	
	*/
	Color getKeywordColor(in String keyword) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getKeywordColor, _godot_object, keyword);
	}
	/**
	Add color region (given the delimiters) and its colors.
	*/
	void addColorRegion(in String begin_key, in String end_key, in Color color, in bool line_only = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addColorRegion, _godot_object, begin_key, end_key, color, line_only);
	}
	/**
	Clear all the syntax coloring information.
	*/
	void clearColors()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearColors, _godot_object);
	}
	/**
	
	*/
	void menuOption(in long option)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.menuOption, _godot_object, option);
	}
	/**
	
	*/
	PopupMenu getMenu() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PopupMenu)(_classBinding.getMenu, _godot_object);
	}
	/**
	Return an array containing the line number of each breakpoint.
	*/
	Array getBreakpoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getBreakpoints, _godot_object);
	}
	/**
	Removes all the breakpoints (without firing "breakpoint_toggled" signal).
	*/
	void removeBreakpoints()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeBreakpoints, _godot_object);
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
	If `true` the breakpoint gutter is visible.
	*/
	@property bool breakpointGutter()
	{
		return isBreakpointGutterEnabled();
	}
	/// ditto
	@property void breakpointGutter(bool v)
	{
		setBreakpointGutterEnabled(v);
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
	@property bool wrapEnabled()
	{
		return isWrapEnabled();
	}
	/// ditto
	@property void wrapEnabled(bool v)
	{
		setWrapEnabled(v);
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
