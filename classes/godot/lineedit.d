/**
Control that provides single line string editing.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.lineedit;
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
Control that provides single line string editing.

LineEdit provides a single line string editor, used for text fields.
*/
@GodotBaseClass struct LineEdit
{
	static immutable string _GODOT_internal_name = "LineEdit";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in LineEdit other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LineEdit opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static LineEdit _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("LineEdit");
		if(constructor is null) return typeof(this).init;
		return cast(LineEdit)(constructor());
	}
	/// 
	enum Align : int
	{
		/**
		Aligns the text on the left hand side of the $(D LineEdit).
		*/
		alignLeft = 0,
		/**
		Centers the text in the middle of the $(D LineEdit).
		*/
		alignCenter = 1,
		/**
		Aligns the text on the right hand side of the $(D LineEdit).
		*/
		alignRight = 2,
		/**
		Stretches whitespaces to fit the $(D LineEdit)'s width.
		*/
		alignFill = 3,
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
		Erases the whole $(D Linedit) text.
		*/
		menuClear = 3,
		/**
		Selects the whole $(D Linedit) text.
		*/
		menuSelectAll = 4,
		/**
		Undoes the previous action.
		*/
		menuUndo = 5,
		/**
		
		*/
		menuRedo = 6,
		/**
		
		*/
		menuMax = 7,
	}
	/// 
	enum Constants : int
	{
		menuCut = 0,
		alignLeft = 0,
		menuCopy = 1,
		alignCenter = 1,
		alignRight = 2,
		menuPaste = 2,
		alignFill = 3,
		menuClear = 3,
		menuSelectAll = 4,
		menuUndo = 5,
		menuRedo = 6,
		menuMax = 7,
	}
	package(godot) static GodotMethod!(void) _GODOT__text_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_changed") = _GODOT__text_changed;
	/**
	
	*/
	void _textChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_text_changed");
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
	package(godot) static GodotMethod!(void) _GODOT__editor_settings_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_editor_settings_changed") = _GODOT__editor_settings_changed;
	/**
	
	*/
	void _editorSettingsChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_editor_settings_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_align") = _GODOT_set_align;
	/**
	
	*/
	void setAlign(in long _align)
	{
		_GODOT_set_align.bind("LineEdit", "set_align");
		ptrcall!(void)(_GODOT_set_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(LineEdit.Align) _GODOT_get_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_align") = _GODOT_get_align;
	/**
	
	*/
	LineEdit.Align getAlign() const
	{
		_GODOT_get_align.bind("LineEdit", "get_align");
		return ptrcall!(LineEdit.Align)(_GODOT_get_align, _godot_object);
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
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Erases the $(D LineEdit) text.
	*/
	void clear()
	{
		_GODOT_clear.bind("LineEdit", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_select;
	package(godot) alias _GODOT_methodBindInfo(string name : "select") = _GODOT_select;
	/**
	Selects characters inside $(D LineEdit) between `from` and `to`. By default `from` is at the beginning and `to` at the end.
	---
	text = "Welcome"
	select()     # Welcome
	select(4)    # ome
	select(2, 5) # lco
	---
	*/
	void select(in long from = 0, in long to = -1)
	{
		_GODOT_select.bind("LineEdit", "select");
		ptrcall!(void)(_GODOT_select, _godot_object, from, to);
	}
	package(godot) static GodotMethod!(void) _GODOT_select_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "select_all") = _GODOT_select_all;
	/**
	Selects the whole $(D String).
	*/
	void selectAll()
	{
		_GODOT_select_all.bind("LineEdit", "select_all");
		ptrcall!(void)(_GODOT_select_all, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_deselect;
	package(godot) alias _GODOT_methodBindInfo(string name : "deselect") = _GODOT_deselect;
	/**
	Clears the current selection.
	*/
	void deselect()
	{
		_GODOT_deselect.bind("LineEdit", "deselect");
		ptrcall!(void)(_GODOT_deselect, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	/**
	
	*/
	void setText(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("LineEdit", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	/**
	
	*/
	String getText() const
	{
		_GODOT_get_text.bind("LineEdit", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_placeholder") = _GODOT_set_placeholder;
	/**
	
	*/
	void setPlaceholder(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_placeholder.bind("LineEdit", "set_placeholder");
		ptrcall!(void)(_GODOT_set_placeholder, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_placeholder") = _GODOT_get_placeholder;
	/**
	
	*/
	String getPlaceholder() const
	{
		_GODOT_get_placeholder.bind("LineEdit", "get_placeholder");
		return ptrcall!(String)(_GODOT_get_placeholder, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_placeholder_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_placeholder_alpha") = _GODOT_set_placeholder_alpha;
	/**
	
	*/
	void setPlaceholderAlpha(in double alpha)
	{
		_GODOT_set_placeholder_alpha.bind("LineEdit", "set_placeholder_alpha");
		ptrcall!(void)(_GODOT_set_placeholder_alpha, _godot_object, alpha);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_placeholder_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_placeholder_alpha") = _GODOT_get_placeholder_alpha;
	/**
	
	*/
	double getPlaceholderAlpha() const
	{
		_GODOT_get_placeholder_alpha.bind("LineEdit", "get_placeholder_alpha");
		return ptrcall!(double)(_GODOT_get_placeholder_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_cursor_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cursor_position") = _GODOT_set_cursor_position;
	/**
	
	*/
	void setCursorPosition(in long position)
	{
		_GODOT_set_cursor_position.bind("LineEdit", "set_cursor_position");
		ptrcall!(void)(_GODOT_set_cursor_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_cursor_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cursor_position") = _GODOT_get_cursor_position;
	/**
	
	*/
	long getCursorPosition() const
	{
		_GODOT_get_cursor_position.bind("LineEdit", "get_cursor_position");
		return ptrcall!(long)(_GODOT_get_cursor_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_expand_to_text_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand_to_text_length") = _GODOT_set_expand_to_text_length;
	/**
	
	*/
	void setExpandToTextLength(in bool enabled)
	{
		_GODOT_set_expand_to_text_length.bind("LineEdit", "set_expand_to_text_length");
		ptrcall!(void)(_GODOT_set_expand_to_text_length, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_expand_to_text_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand_to_text_length") = _GODOT_get_expand_to_text_length;
	/**
	
	*/
	bool getExpandToTextLength() const
	{
		_GODOT_get_expand_to_text_length.bind("LineEdit", "get_expand_to_text_length");
		return ptrcall!(bool)(_GODOT_get_expand_to_text_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_cursor_set_blink_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_blink_enabled") = _GODOT_cursor_set_blink_enabled;
	/**
	
	*/
	void cursorSetBlinkEnabled(in bool enabled)
	{
		_GODOT_cursor_set_blink_enabled.bind("LineEdit", "cursor_set_blink_enabled");
		ptrcall!(void)(_GODOT_cursor_set_blink_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_cursor_get_blink_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_blink_enabled") = _GODOT_cursor_get_blink_enabled;
	/**
	
	*/
	bool cursorGetBlinkEnabled() const
	{
		_GODOT_cursor_get_blink_enabled.bind("LineEdit", "cursor_get_blink_enabled");
		return ptrcall!(bool)(_GODOT_cursor_get_blink_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_cursor_set_blink_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_set_blink_speed") = _GODOT_cursor_set_blink_speed;
	/**
	
	*/
	void cursorSetBlinkSpeed(in double blink_speed)
	{
		_GODOT_cursor_set_blink_speed.bind("LineEdit", "cursor_set_blink_speed");
		ptrcall!(void)(_GODOT_cursor_set_blink_speed, _godot_object, blink_speed);
	}
	package(godot) static GodotMethod!(double) _GODOT_cursor_get_blink_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "cursor_get_blink_speed") = _GODOT_cursor_get_blink_speed;
	/**
	
	*/
	double cursorGetBlinkSpeed() const
	{
		_GODOT_cursor_get_blink_speed.bind("LineEdit", "cursor_get_blink_speed");
		return ptrcall!(double)(_GODOT_cursor_get_blink_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_max_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_length") = _GODOT_set_max_length;
	/**
	
	*/
	void setMaxLength(in long chars)
	{
		_GODOT_set_max_length.bind("LineEdit", "set_max_length");
		ptrcall!(void)(_GODOT_set_max_length, _godot_object, chars);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_max_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_length") = _GODOT_get_max_length;
	/**
	
	*/
	long getMaxLength() const
	{
		_GODOT_get_max_length.bind("LineEdit", "get_max_length");
		return ptrcall!(long)(_GODOT_get_max_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_append_at_cursor;
	package(godot) alias _GODOT_methodBindInfo(string name : "append_at_cursor") = _GODOT_append_at_cursor;
	/**
	Adds `text` after the cursor. If the resulting value is longer than $(D maxLength), nothing happens.
	*/
	void appendAtCursor(StringArg0)(in StringArg0 text)
	{
		_GODOT_append_at_cursor.bind("LineEdit", "append_at_cursor");
		ptrcall!(void)(_GODOT_append_at_cursor, _godot_object, text);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editable") = _GODOT_set_editable;
	/**
	
	*/
	void setEditable(in bool enabled)
	{
		_GODOT_set_editable.bind("LineEdit", "set_editable");
		ptrcall!(void)(_GODOT_set_editable, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editable") = _GODOT_is_editable;
	/**
	
	*/
	bool isEditable() const
	{
		_GODOT_is_editable.bind("LineEdit", "is_editable");
		return ptrcall!(bool)(_GODOT_is_editable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_secret;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_secret") = _GODOT_set_secret;
	/**
	
	*/
	void setSecret(in bool enabled)
	{
		_GODOT_set_secret.bind("LineEdit", "set_secret");
		ptrcall!(void)(_GODOT_set_secret, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_secret;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_secret") = _GODOT_is_secret;
	/**
	
	*/
	bool isSecret() const
	{
		_GODOT_is_secret.bind("LineEdit", "is_secret");
		return ptrcall!(bool)(_GODOT_is_secret, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_menu_option;
	package(godot) alias _GODOT_methodBindInfo(string name : "menu_option") = _GODOT_menu_option;
	/**
	Executes a given action as defined in the MENU_* enum.
	*/
	void menuOption(in long option)
	{
		_GODOT_menu_option.bind("LineEdit", "menu_option");
		ptrcall!(void)(_GODOT_menu_option, _godot_object, option);
	}
	package(godot) static GodotMethod!(PopupMenu) _GODOT_get_menu;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_menu") = _GODOT_get_menu;
	/**
	Returns the $(D PopupMenu) of this `LineEdit`. By default, this menu is displayed when right-clicking on the $(D LineEdit).
	*/
	PopupMenu getMenu() const
	{
		_GODOT_get_menu.bind("LineEdit", "get_menu");
		return ptrcall!(PopupMenu)(_GODOT_get_menu, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_context_menu_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_context_menu_enabled") = _GODOT_set_context_menu_enabled;
	/**
	
	*/
	void setContextMenuEnabled(in bool enable)
	{
		_GODOT_set_context_menu_enabled.bind("LineEdit", "set_context_menu_enabled");
		ptrcall!(void)(_GODOT_set_context_menu_enabled, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_context_menu_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_context_menu_enabled") = _GODOT_is_context_menu_enabled;
	/**
	
	*/
	bool isContextMenuEnabled()
	{
		_GODOT_is_context_menu_enabled.bind("LineEdit", "is_context_menu_enabled");
		return ptrcall!(bool)(_GODOT_is_context_menu_enabled, _godot_object);
	}
	/**
	String value of the $(D LineEdit).
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
	Text alignment as defined in the ALIGN_* enum.
	*/
	@property LineEdit.Align _align()
	{
		return getAlign();
	}
	/// ditto
	@property void _align(long v)
	{
		setAlign(v);
	}
	/**
	Maximum amount of characters that can be entered inside the $(D LineEdit). If `0`, there is no limit.
	*/
	@property long maxLength()
	{
		return getMaxLength();
	}
	/// ditto
	@property void maxLength(long v)
	{
		setMaxLength(v);
	}
	/**
	If `false` existing text cannot be modified and new text cannot be added.
	*/
	@property bool editable()
	{
		return isEditable();
	}
	/// ditto
	@property void editable(bool v)
	{
		setEditable(v);
	}
	/**
	If `true` every character is shown as "*".
	*/
	@property bool secret()
	{
		return isSecret();
	}
	/// ditto
	@property void secret(bool v)
	{
		setSecret(v);
	}
	/**
	If `true` the $(D LineEdit) width will increase to stay longer than the $(D text). It will $(B not) compress if the $(D text) is shortened.
	*/
	@property bool expandToTextLength()
	{
		return getExpandToTextLength();
	}
	/// ditto
	@property void expandToTextLength(bool v)
	{
		setExpandToTextLength(v);
	}
	/**
	Defines how the $(D LineEdit) can grab focus (Keyboard and mouse, only keyboard, or none). See `enum FocusMode` in $(D Control) for details.
	*/
	@property long focusMode()
	{
		return getFocusMode();
	}
	/// ditto
	@property void focusMode(long v)
	{
		setFocusMode(v);
	}
	/**
	If `true` the context menu will appear when right clicked.
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
	Text shown when the $(D LineEdit) is empty. It is $(B not) the $(D LineEdit)'s default value (see $(D text)).
	*/
	@property String placeholderText()
	{
		return getPlaceholder();
	}
	/// ditto
	@property void placeholderText(String v)
	{
		setPlaceholder(v);
	}
	/**
	Opacity of the $(D placeholderText). From `0` to `1`.
	*/
	@property double placeholderAlpha()
	{
		return getPlaceholderAlpha();
	}
	/// ditto
	@property void placeholderAlpha(double v)
	{
		setPlaceholderAlpha(v);
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
	The cursor's position inside the `LineEdit`. When set, the text may scroll to accommodate it.
	*/
	@property long caretPosition()
	{
		return getCursorPosition();
	}
	/// ditto
	@property void caretPosition(long v)
	{
		setCursorPosition(v);
	}
}
