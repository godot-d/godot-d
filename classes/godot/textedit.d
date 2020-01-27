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
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.popupmenu;
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
		@GodotName("_click_selection_held") GodotMethod!(void) _clickSelectionHeld;
		@GodotName("_cursor_changed_emit") GodotMethod!(void) _cursorChangedEmit;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_push_current_op") GodotMethod!(void) _pushCurrentOp;
		@GodotName("_scroll_moved") GodotMethod!(void, double) _scrollMoved;
		@GodotName("_text_changed_emit") GodotMethod!(void) _textChangedEmit;
		@GodotName("_toggle_draw_caret") GodotMethod!(void) _toggleDrawCaret;
		@GodotName("_update_wrap_at") GodotMethod!(void) _updateWrapAt;
		@GodotName("_v_scroll_input") GodotMethod!(void) _vScrollInput;
		@GodotName("add_color_region") GodotMethod!(void, String, String, Color, bool) addColorRegion;
		@GodotName("add_keyword_color") GodotMethod!(void, String, Color) addKeywordColor;
		@GodotName("can_fold") GodotMethod!(bool, long) canFold;
		@GodotName("center_viewport_to_cursor") GodotMethod!(void) centerViewportToCursor;
		@GodotName("clear_colors") GodotMethod!(void) clearColors;
		@GodotName("clear_undo_history") GodotMethod!(void) clearUndoHistory;
		@GodotName("copy") GodotMethod!(void) copy;
		@GodotName("cursor_get_blink_enabled") GodotMethod!(bool) cursorGetBlinkEnabled;
		@GodotName("cursor_get_blink_speed") GodotMethod!(double) cursorGetBlinkSpeed;
		@GodotName("cursor_get_column") GodotMethod!(long) cursorGetColumn;
		@GodotName("cursor_get_line") GodotMethod!(long) cursorGetLine;
		@GodotName("cursor_is_block_mode") GodotMethod!(bool) cursorIsBlockMode;
		@GodotName("cursor_set_blink_enabled") GodotMethod!(void, bool) cursorSetBlinkEnabled;
		@GodotName("cursor_set_blink_speed") GodotMethod!(void, double) cursorSetBlinkSpeed;
		@GodotName("cursor_set_block_mode") GodotMethod!(void, bool) cursorSetBlockMode;
		@GodotName("cursor_set_column") GodotMethod!(void, long, bool) cursorSetColumn;
		@GodotName("cursor_set_line") GodotMethod!(void, long, bool, bool, long) cursorSetLine;
		@GodotName("cut") GodotMethod!(void) cut;
		@GodotName("deselect") GodotMethod!(void) deselect;
		@GodotName("draw_minimap") GodotMethod!(void, bool) drawMinimap;
		@GodotName("fold_all_lines") GodotMethod!(void) foldAllLines;
		@GodotName("fold_line") GodotMethod!(void, long) foldLine;
		@GodotName("get_breakpoints") GodotMethod!(Array) getBreakpoints;
		@GodotName("get_h_scroll") GodotMethod!(long) getHScroll;
		@GodotName("get_keyword_color") GodotMethod!(Color, String) getKeywordColor;
		@GodotName("get_line") GodotMethod!(String, long) getLine;
		@GodotName("get_line_count") GodotMethod!(long) getLineCount;
		@GodotName("get_menu") GodotMethod!(PopupMenu) getMenu;
		@GodotName("get_minimap_width") GodotMethod!(long) getMinimapWidth;
		@GodotName("get_selection_from_column") GodotMethod!(long) getSelectionFromColumn;
		@GodotName("get_selection_from_line") GodotMethod!(long) getSelectionFromLine;
		@GodotName("get_selection_text") GodotMethod!(String) getSelectionText;
		@GodotName("get_selection_to_column") GodotMethod!(long) getSelectionToColumn;
		@GodotName("get_selection_to_line") GodotMethod!(long) getSelectionToLine;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("get_v_scroll") GodotMethod!(double) getVScroll;
		@GodotName("get_v_scroll_speed") GodotMethod!(double) getVScrollSpeed;
		@GodotName("get_word_under_cursor") GodotMethod!(String) getWordUnderCursor;
		@GodotName("has_keyword_color") GodotMethod!(bool, String) hasKeywordColor;
		@GodotName("insert_text_at_cursor") GodotMethod!(void, String) insertTextAtCursor;
		@GodotName("is_breakpoint_gutter_enabled") GodotMethod!(bool) isBreakpointGutterEnabled;
		@GodotName("is_context_menu_enabled") GodotMethod!(bool) isContextMenuEnabled;
		@GodotName("is_drawing_fold_gutter") GodotMethod!(bool) isDrawingFoldGutter;
		@GodotName("is_drawing_minimap") GodotMethod!(bool) isDrawingMinimap;
		@GodotName("is_drawing_spaces") GodotMethod!(bool) isDrawingSpaces;
		@GodotName("is_drawing_tabs") GodotMethod!(bool) isDrawingTabs;
		@GodotName("is_folded") GodotMethod!(bool, long) isFolded;
		@GodotName("is_hiding_enabled") GodotMethod!(bool) isHidingEnabled;
		@GodotName("is_highlight_all_occurrences_enabled") GodotMethod!(bool) isHighlightAllOccurrencesEnabled;
		@GodotName("is_highlight_current_line_enabled") GodotMethod!(bool) isHighlightCurrentLineEnabled;
		@GodotName("is_line_hidden") GodotMethod!(bool, long) isLineHidden;
		@GodotName("is_overriding_selected_font_color") GodotMethod!(bool) isOverridingSelectedFontColor;
		@GodotName("is_readonly") GodotMethod!(bool) isReadonly;
		@GodotName("is_right_click_moving_caret") GodotMethod!(bool) isRightClickMovingCaret;
		@GodotName("is_selecting_enabled") GodotMethod!(bool) isSelectingEnabled;
		@GodotName("is_selection_active") GodotMethod!(bool) isSelectionActive;
		@GodotName("is_shortcut_keys_enabled") GodotMethod!(bool) isShortcutKeysEnabled;
		@GodotName("is_show_line_numbers_enabled") GodotMethod!(bool) isShowLineNumbersEnabled;
		@GodotName("is_smooth_scroll_enabled") GodotMethod!(bool) isSmoothScrollEnabled;
		@GodotName("is_syntax_coloring_enabled") GodotMethod!(bool) isSyntaxColoringEnabled;
		@GodotName("is_wrap_enabled") GodotMethod!(bool) isWrapEnabled;
		@GodotName("menu_option") GodotMethod!(void, long) menuOption;
		@GodotName("paste") GodotMethod!(void) paste;
		@GodotName("redo") GodotMethod!(void) redo;
		@GodotName("remove_breakpoints") GodotMethod!(void) removeBreakpoints;
		@GodotName("search") GodotMethod!(PoolIntArray, String, long, long, long) search;
		@GodotName("select") GodotMethod!(void, long, long, long, long) select;
		@GodotName("select_all") GodotMethod!(void) selectAll;
		@GodotName("set_breakpoint_gutter_enabled") GodotMethod!(void, bool) setBreakpointGutterEnabled;
		@GodotName("set_context_menu_enabled") GodotMethod!(void, bool) setContextMenuEnabled;
		@GodotName("set_draw_fold_gutter") GodotMethod!(void, bool) setDrawFoldGutter;
		@GodotName("set_draw_spaces") GodotMethod!(void, bool) setDrawSpaces;
		@GodotName("set_draw_tabs") GodotMethod!(void, bool) setDrawTabs;
		@GodotName("set_h_scroll") GodotMethod!(void, long) setHScroll;
		@GodotName("set_hiding_enabled") GodotMethod!(void, bool) setHidingEnabled;
		@GodotName("set_highlight_all_occurrences") GodotMethod!(void, bool) setHighlightAllOccurrences;
		@GodotName("set_highlight_current_line") GodotMethod!(void, bool) setHighlightCurrentLine;
		@GodotName("set_line_as_hidden") GodotMethod!(void, long, bool) setLineAsHidden;
		@GodotName("set_minimap_width") GodotMethod!(void, long) setMinimapWidth;
		@GodotName("set_override_selected_font_color") GodotMethod!(void, bool) setOverrideSelectedFontColor;
		@GodotName("set_readonly") GodotMethod!(void, bool) setReadonly;
		@GodotName("set_right_click_moves_caret") GodotMethod!(void, bool) setRightClickMovesCaret;
		@GodotName("set_selecting_enabled") GodotMethod!(void, bool) setSelectingEnabled;
		@GodotName("set_shortcut_keys_enabled") GodotMethod!(void, bool) setShortcutKeysEnabled;
		@GodotName("set_show_line_numbers") GodotMethod!(void, bool) setShowLineNumbers;
		@GodotName("set_smooth_scroll_enable") GodotMethod!(void, bool) setSmoothScrollEnable;
		@GodotName("set_syntax_coloring") GodotMethod!(void, bool) setSyntaxColoring;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("set_v_scroll") GodotMethod!(void, double) setVScroll;
		@GodotName("set_v_scroll_speed") GodotMethod!(void, double) setVScrollSpeed;
		@GodotName("set_wrap_enabled") GodotMethod!(void, bool) setWrapEnabled;
		@GodotName("toggle_fold_line") GodotMethod!(void, long) toggleFoldLine;
		@GodotName("undo") GodotMethod!(void) undo;
		@GodotName("unfold_line") GodotMethod!(void, long) unfoldLine;
		@GodotName("unhide_all_lines") GodotMethod!(void) unhideAllLines;
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
	enum SearchResult : int
	{
		/**
		Used to access the result column from $(D search).
		*/
		searchResultColumn = 0,
		/**
		Used to access the result line from $(D search).
		*/
		searchResultLine = 1,
	}
	/// 
	enum MenuItems : int
	{
		/**
		Cuts (copies and clears) the selected text.
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
		Redoes the previous action.
		*/
		menuRedo = 6,
		/**
		Represents the size of the $(D menuitems) enum.
		*/
		menuMax = 7,
	}
	/// 
	enum Constants : int
	{
		menuCut = 0,
		searchResultColumn = 0,
		menuCopy = 1,
		searchResultLine = 1,
		searchMatchCase = 1,
		searchWholeWords = 2,
		menuPaste = 2,
		menuClear = 3,
		searchBackwards = 4,
		menuSelectAll = 4,
		menuUndo = 5,
		menuRedo = 6,
		menuMax = 7,
	}
	/**
	
	*/
	void _clickSelectionHeld()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_click_selection_held");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _cursorChangedEmit()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_cursor_changed_emit");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	void _pushCurrentOp()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_push_current_op");
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
	void _textChangedEmit()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_text_changed_emit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _toggleDrawCaret()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_toggle_draw_caret");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateWrapAt()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_wrap_at");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _vScrollInput()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_v_scroll_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds color region (given the delimiters) and its colors.
	*/
	void addColorRegion(in String begin_key, in String end_key, in Color color, in bool line_only = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addColorRegion, _godot_object, begin_key, end_key, color, line_only);
	}
	/**
	Adds a `keyword` and its $(D Color).
	*/
	void addKeywordColor(in String keyword, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addKeywordColor, _godot_object, keyword, color);
	}
	/**
	Returns if the given line is foldable, that is, it has indented lines right below it.
	*/
	bool canFold(in long line) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canFold, _godot_object, line);
	}
	/**
	
	*/
	void centerViewportToCursor()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.centerViewportToCursor, _godot_object);
	}
	/**
	Clears all custom syntax coloring information previously added with $(D addColorRegion) or $(D addKeywordColor).
	*/
	void clearColors()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearColors, _godot_object);
	}
	/**
	Clears the undo history.
	*/
	void clearUndoHistory()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearUndoHistory, _godot_object);
	}
	/**
	Copy's the current text selection.
	*/
	void copy()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.copy, _godot_object);
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
	double cursorGetBlinkSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.cursorGetBlinkSpeed, _godot_object);
	}
	/**
	Returns the column the editing cursor is at.
	*/
	long cursorGetColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.cursorGetColumn, _godot_object);
	}
	/**
	Returns the line the editing cursor is at.
	*/
	long cursorGetLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.cursorGetLine, _godot_object);
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
	void cursorSetBlinkEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetBlinkEnabled, _godot_object, enable);
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
	void cursorSetBlockMode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetBlockMode, _godot_object, enable);
	}
	/**
	Moves the cursor at the specified `column` index.
	If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
	*/
	void cursorSetColumn(in long column, in bool adjust_viewport = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetColumn, _godot_object, column, adjust_viewport);
	}
	/**
	Moves the cursor at the specified `line` index.
	If `adjust_viewport` is set to `true`, the viewport will center at the cursor position after the move occurs.
	If `can_be_hidden` is set to `true`, the specified `line` can be hidden using $(D setLineAsHidden).
	*/
	void cursorSetLine(in long line, in bool adjust_viewport = true, in bool can_be_hidden = true, in long wrap_index = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetLine, _godot_object, line, adjust_viewport, can_be_hidden, wrap_index);
	}
	/**
	Cut's the current selection.
	*/
	void cut()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cut, _godot_object);
	}
	/**
	Deselects the current selection.
	*/
	void deselect()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.deselect, _godot_object);
	}
	/**
	
	*/
	void drawMinimap(in bool draw)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawMinimap, _godot_object, draw);
	}
	/**
	Folds all lines that are possible to be folded (see $(D canFold)).
	*/
	void foldAllLines()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.foldAllLines, _godot_object);
	}
	/**
	Folds the given line, if possible (see $(D canFold)).
	*/
	void foldLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.foldLine, _godot_object, line);
	}
	/**
	Returns an array containing the line number of each breakpoint.
	*/
	Array getBreakpoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getBreakpoints, _godot_object);
	}
	/**
	
	*/
	long getHScroll() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHScroll, _godot_object);
	}
	/**
	Returns the $(D Color) of the specified `keyword`.
	*/
	Color getKeywordColor(in String keyword) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getKeywordColor, _godot_object, keyword);
	}
	/**
	Returns the text of a specific line.
	*/
	String getLine(in long line) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLine, _godot_object, line);
	}
	/**
	Returns the amount of total lines in the text.
	*/
	long getLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLineCount, _godot_object);
	}
	/**
	Returns the $(D PopupMenu) of this $(D TextEdit). By default, this menu is displayed when right-clicking on the $(D TextEdit).
	*/
	PopupMenu getMenu() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PopupMenu)(_classBinding.getMenu, _godot_object);
	}
	/**
	
	*/
	long getMinimapWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMinimapWidth, _godot_object);
	}
	/**
	Returns the selection begin column.
	*/
	long getSelectionFromColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectionFromColumn, _godot_object);
	}
	/**
	Returns the selection begin line.
	*/
	long getSelectionFromLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectionFromLine, _godot_object);
	}
	/**
	Returns the text inside the selection.
	*/
	String getSelectionText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSelectionText, _godot_object);
	}
	/**
	Returns the selection end column.
	*/
	long getSelectionToColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectionToColumn, _godot_object);
	}
	/**
	Returns the selection end line.
	*/
	long getSelectionToLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSelectionToLine, _godot_object);
	}
	/**
	
	*/
	String getText()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getText, _godot_object);
	}
	/**
	
	*/
	double getVScroll() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVScroll, _godot_object);
	}
	/**
	
	*/
	double getVScrollSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVScrollSpeed, _godot_object);
	}
	/**
	Returns a $(D String) text with the word under the mouse cursor location.
	*/
	String getWordUnderCursor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getWordUnderCursor, _godot_object);
	}
	/**
	Returns whether the specified `keyword` has a color set to it or not.
	*/
	bool hasKeywordColor(in String keyword) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasKeywordColor, _godot_object, keyword);
	}
	/**
	Insert the specified text at the cursor position.
	*/
	void insertTextAtCursor(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.insertTextAtCursor, _godot_object, text);
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
	bool isContextMenuEnabled()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isContextMenuEnabled, _godot_object);
	}
	/**
	
	*/
	bool isDrawingFoldGutter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDrawingFoldGutter, _godot_object);
	}
	/**
	
	*/
	bool isDrawingMinimap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDrawingMinimap, _godot_object);
	}
	/**
	
	*/
	bool isDrawingSpaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDrawingSpaces, _godot_object);
	}
	/**
	
	*/
	bool isDrawingTabs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDrawingTabs, _godot_object);
	}
	/**
	Returns whether the line at the specified index is folded or not.
	*/
	bool isFolded(in long line) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFolded, _godot_object, line);
	}
	/**
	
	*/
	bool isHidingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHidingEnabled, _godot_object);
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
	bool isHighlightCurrentLineEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHighlightCurrentLineEnabled, _godot_object);
	}
	/**
	Returns whether the line at the specified index is hidden or not.
	*/
	bool isLineHidden(in long line) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isLineHidden, _godot_object, line);
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
	bool isReadonly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isReadonly, _godot_object);
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
	bool isSelectingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelectingEnabled, _godot_object);
	}
	/**
	Returns `true` if the selection is active.
	*/
	bool isSelectionActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelectionActive, _godot_object);
	}
	/**
	
	*/
	bool isShortcutKeysEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isShortcutKeysEnabled, _godot_object);
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
	bool isSmoothScrollEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSmoothScrollEnabled, _godot_object);
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
	bool isWrapEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isWrapEnabled, _godot_object);
	}
	/**
	Triggers a right-click menu action by the specified index. See $(D menuitems) for a list of available indexes.
	*/
	void menuOption(in long option)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.menuOption, _godot_object, option);
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
	Perform redo operation.
	*/
	void redo()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.redo, _godot_object);
	}
	/**
	Removes all the breakpoints. This will not fire the $(D breakpointToggled) signal.
	*/
	void removeBreakpoints()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeBreakpoints, _godot_object);
	}
	/**
	Perform a search inside the text. Search flags can be specified in the $(D searchflags) enum.
	Returns an empty `PoolIntArray` if no result was found. Otherwise, the result line and column can be accessed at indices specified in the $(D searchresult) enum, e.g:
	
	
	var result = search(key, flags, line, column)
	if result.size() &gt; 0:
	    # Result found.
	    var res_line = result$(D TextEdit.SEARCH_RESULT_LINE)
	    var res_column = result$(D TextEdit.SEARCH_RESULT_COLUMN)
	
	
	*/
	PoolIntArray search(in String key, in long flags, in long from_line, in long from_column) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.search, _godot_object, key, flags, from_line, from_column);
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
	
	*/
	void setBreakpointGutterEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBreakpointGutterEnabled, _godot_object, enable);
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
	void setDrawFoldGutter(in bool arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawFoldGutter, _godot_object, arg0);
	}
	/**
	
	*/
	void setDrawSpaces(in bool arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawSpaces, _godot_object, arg0);
	}
	/**
	
	*/
	void setDrawTabs(in bool arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawTabs, _godot_object, arg0);
	}
	/**
	
	*/
	void setHScroll(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHScroll, _godot_object, value);
	}
	/**
	
	*/
	void setHidingEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHidingEnabled, _godot_object, enable);
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
	void setHighlightCurrentLine(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHighlightCurrentLine, _godot_object, enabled);
	}
	/**
	If `true`, hides the line of the specified index.
	*/
	void setLineAsHidden(in long line, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLineAsHidden, _godot_object, line, enable);
	}
	/**
	
	*/
	void setMinimapWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMinimapWidth, _godot_object, width);
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
	void setReadonly(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setReadonly, _godot_object, enable);
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
	void setSelectingEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSelectingEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setShortcutKeysEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShortcutKeysEnabled, _godot_object, enable);
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
	void setSmoothScrollEnable(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSmoothScrollEnable, _godot_object, enable);
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
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setText, _godot_object, text);
	}
	/**
	
	*/
	void setVScroll(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVScroll, _godot_object, value);
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
	void setWrapEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWrapEnabled, _godot_object, enable);
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
	Perform undo operation.
	*/
	void undo()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.undo, _godot_object);
	}
	/**
	Unfolds the given line, if folded.
	*/
	void unfoldLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unfoldLine, _godot_object, line);
	}
	/**
	Unhide all lines that were previously set to hidden by $(D setLineAsHidden).
	*/
	void unhideAllLines()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unhideAllLines, _godot_object);
	}
	/**
	If `true`, the breakpoint gutter is visible.
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
	If `true`, the caret (visual cursor) blinks.
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
	If `true`, the caret displays as a rectangle.
	If `false`, the caret displays as a bar.
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
	If `true`, a right-click moves the cursor at the mouse position before displaying the context menu.
	If `false`, the context menu disregards mouse location.
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
	/**
	If `true`, a right-click displays the context menu.
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
	If `true`, the "space" character will have a visible representation.
	*/
	@property bool drawSpaces()
	{
		return isDrawingSpaces();
	}
	/// ditto
	@property void drawSpaces(bool v)
	{
		setDrawSpaces(v);
	}
	/**
	If `true`, the "tab" character will have a visible representation.
	*/
	@property bool drawTabs()
	{
		return isDrawingTabs();
	}
	/// ditto
	@property void drawTabs(bool v)
	{
		setDrawTabs(v);
	}
	/**
	If `true`, the fold gutter is visible. This enables folding groups of indented lines.
	*/
	@property bool foldGutter()
	{
		return isDrawingFoldGutter();
	}
	/// ditto
	@property void foldGutter(bool v)
	{
		setDrawFoldGutter(v);
	}
	/**
	If `true`, all lines that have been set to hidden by $(D setLineAsHidden), will not be visible.
	*/
	@property bool hidingEnabled()
	{
		return isHidingEnabled();
	}
	/// ditto
	@property void hidingEnabled(bool v)
	{
		setHidingEnabled(v);
	}
	/**
	If `true`, all occurrences of the selected text will be highlighted.
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
	If `true`, the line containing the cursor is highlighted.
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
	@property bool minimapDraw()
	{
		return isDrawingMinimap();
	}
	/// ditto
	@property void minimapDraw(bool v)
	{
		drawMinimap(v);
	}
	/**
	
	*/
	@property long minimapWidth()
	{
		return getMinimapWidth();
	}
	/// ditto
	@property void minimapWidth(long v)
	{
		setMinimapWidth(v);
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
	If `true`, read-only mode is enabled. Existing text cannot be modified and new text cannot be added.
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
	The current horizontal scroll value.
	*/
	@property long scrollHorizontal()
	{
		return getHScroll();
	}
	/// ditto
	@property void scrollHorizontal(long v)
	{
		setHScroll(v);
	}
	/**
	The current vertical scroll value.
	*/
	@property double scrollVertical()
	{
		return getVScroll();
	}
	/// ditto
	@property void scrollVertical(double v)
	{
		setVScroll(v);
	}
	/**
	
	*/
	@property bool selectingEnabled()
	{
		return isSelectingEnabled();
	}
	/// ditto
	@property void selectingEnabled(bool v)
	{
		setSelectingEnabled(v);
	}
	/**
	
	*/
	@property bool shortcutKeysEnabled()
	{
		return isShortcutKeysEnabled();
	}
	/// ditto
	@property void shortcutKeysEnabled(bool v)
	{
		setShortcutKeysEnabled(v);
	}
	/**
	If `true`, line numbers are displayed to the left of the text.
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
	If `true`, sets the `step` of the scrollbars to `0.25` which results in smoother scrolling.
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
	If `true`, any custom color properties that have been set for this $(D TextEdit) will be visible.
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
	Vertical scroll sensitivity.
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
	If `true`, enables text wrapping when it goes beyond the edge of what is visible.
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
}
