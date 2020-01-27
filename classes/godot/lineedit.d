/**
Control that provides single-line string editing.

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
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.popupmenu;
import godot.texture;
/**
Control that provides single-line string editing.

LineEdit provides a single-line string editor, used for text fields.
It features many built-in shortcuts which will always be available (`Ctrl` here maps to `Command` on macOS):
- Ctrl + C: Copy
- Ctrl + X: Cut
- Ctrl + V or Ctrl + Y: Paste/"yank"
- Ctrl + Z: Undo
- Ctrl + Shift + Z: Redo
- Ctrl + U: Delete text from the cursor position to the beginning of the line
- Ctrl + K: Delete text from the cursor position to the end of the line
- Ctrl + A: Select all text
- Up/Down arrow: Move the cursor to the beginning/end of the line
On macOS, some extra keyboard shortcuts are available:
- Ctrl + F: Like the right arrow key, move the cursor one character right
- Ctrl + B: Like the left arrow key, move the cursor one character left
- Ctrl + P: Like the up arrow key, move the cursor to the previous line
- Ctrl + N: Like the down arrow key, move the cursor to the next line
- Ctrl + D: Like the Delete key, delete the character on the right side of cursor
- Ctrl + H: Like the Backspace key, delete the character on the left side of the cursor
- Command + Left arrow: Like the Home key, move the cursor to the beginning of the line
- Command + Right arrow: Like the End key, move the cursor to the end of the line
*/
@GodotBaseClass struct LineEdit
{
	enum string _GODOT_internal_name = "LineEdit";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_editor_settings_changed") GodotMethod!(void) _editorSettingsChanged;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_text_changed") GodotMethod!(void) _textChanged;
		@GodotName("_toggle_draw_caret") GodotMethod!(void) _toggleDrawCaret;
		@GodotName("append_at_cursor") GodotMethod!(void, String) appendAtCursor;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("cursor_get_blink_enabled") GodotMethod!(bool) cursorGetBlinkEnabled;
		@GodotName("cursor_get_blink_speed") GodotMethod!(double) cursorGetBlinkSpeed;
		@GodotName("cursor_set_blink_enabled") GodotMethod!(void, bool) cursorSetBlinkEnabled;
		@GodotName("cursor_set_blink_speed") GodotMethod!(void, double) cursorSetBlinkSpeed;
		@GodotName("deselect") GodotMethod!(void) deselect;
		@GodotName("get_align") GodotMethod!(LineEdit.Align) getAlign;
		@GodotName("get_cursor_position") GodotMethod!(long) getCursorPosition;
		@GodotName("get_expand_to_text_length") GodotMethod!(bool) getExpandToTextLength;
		@GodotName("get_max_length") GodotMethod!(long) getMaxLength;
		@GodotName("get_menu") GodotMethod!(PopupMenu) getMenu;
		@GodotName("get_placeholder") GodotMethod!(String) getPlaceholder;
		@GodotName("get_placeholder_alpha") GodotMethod!(double) getPlaceholderAlpha;
		@GodotName("get_right_icon") GodotMethod!(Texture) getRightIcon;
		@GodotName("get_secret_character") GodotMethod!(String) getSecretCharacter;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("is_clear_button_enabled") GodotMethod!(bool) isClearButtonEnabled;
		@GodotName("is_context_menu_enabled") GodotMethod!(bool) isContextMenuEnabled;
		@GodotName("is_editable") GodotMethod!(bool) isEditable;
		@GodotName("is_secret") GodotMethod!(bool) isSecret;
		@GodotName("is_selecting_enabled") GodotMethod!(bool) isSelectingEnabled;
		@GodotName("is_shortcut_keys_enabled") GodotMethod!(bool) isShortcutKeysEnabled;
		@GodotName("menu_option") GodotMethod!(void, long) menuOption;
		@GodotName("select") GodotMethod!(void, long, long) select;
		@GodotName("select_all") GodotMethod!(void) selectAll;
		@GodotName("set_align") GodotMethod!(void, long) setAlign;
		@GodotName("set_clear_button_enabled") GodotMethod!(void, bool) setClearButtonEnabled;
		@GodotName("set_context_menu_enabled") GodotMethod!(void, bool) setContextMenuEnabled;
		@GodotName("set_cursor_position") GodotMethod!(void, long) setCursorPosition;
		@GodotName("set_editable") GodotMethod!(void, bool) setEditable;
		@GodotName("set_expand_to_text_length") GodotMethod!(void, bool) setExpandToTextLength;
		@GodotName("set_max_length") GodotMethod!(void, long) setMaxLength;
		@GodotName("set_placeholder") GodotMethod!(void, String) setPlaceholder;
		@GodotName("set_placeholder_alpha") GodotMethod!(void, double) setPlaceholderAlpha;
		@GodotName("set_right_icon") GodotMethod!(void, Texture) setRightIcon;
		@GodotName("set_secret") GodotMethod!(void, bool) setSecret;
		@GodotName("set_secret_character") GodotMethod!(void, String) setSecretCharacter;
		@GodotName("set_selecting_enabled") GodotMethod!(void, bool) setSelectingEnabled;
		@GodotName("set_shortcut_keys_enabled") GodotMethod!(void, bool) setShortcutKeysEnabled;
		@GodotName("set_text") GodotMethod!(void, String) setText;
	}
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
	@disable new(size_t s);
	/// 
	enum Align : int
	{
		/**
		Aligns the text on the left-hand side of the $(D LineEdit).
		*/
		alignLeft = 0,
		/**
		Centers the text in the middle of the $(D LineEdit).
		*/
		alignCenter = 1,
		/**
		Aligns the text on the right-hand side of the $(D LineEdit).
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
		Cuts (copies and clears) the selected text.
		*/
		menuCut = 0,
		/**
		Copies the selected text.
		*/
		menuCopy = 1,
		/**
		Pastes the clipboard text over the selected text (or at the cursor's position).
		Non-printable escape characters are automatically stripped from the OS clipboard via $(D String.stripEscapes).
		*/
		menuPaste = 2,
		/**
		Erases the whole $(D LineEdit) text.
		*/
		menuClear = 3,
		/**
		Selects the whole $(D LineEdit) text.
		*/
		menuSelectAll = 4,
		/**
		Undoes the previous action.
		*/
		menuUndo = 5,
		/**
		Reverse the last undo action.
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
		alignLeft = 0,
		menuCut = 0,
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
	/**
	
	*/
	void _editorSettingsChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_editor_settings_changed");
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
	void _textChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_text_changed");
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
	Adds `text` after the cursor. If the resulting value is longer than $(D maxLength), nothing happens.
	*/
	void appendAtCursor(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.appendAtCursor, _godot_object, text);
	}
	/**
	Erases the $(D LineEdit) text.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
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
	
	*/
	void cursorSetBlinkEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetBlinkEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void cursorSetBlinkSpeed(in double blink_speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cursorSetBlinkSpeed, _godot_object, blink_speed);
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
	
	*/
	LineEdit.Align getAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(LineEdit.Align)(_classBinding.getAlign, _godot_object);
	}
	/**
	
	*/
	long getCursorPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCursorPosition, _godot_object);
	}
	/**
	
	*/
	bool getExpandToTextLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getExpandToTextLength, _godot_object);
	}
	/**
	
	*/
	long getMaxLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMaxLength, _godot_object);
	}
	/**
	Returns the $(D PopupMenu) of this $(D LineEdit). By default, this menu is displayed when right-clicking on the $(D LineEdit).
	*/
	PopupMenu getMenu() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PopupMenu)(_classBinding.getMenu, _godot_object);
	}
	/**
	
	*/
	String getPlaceholder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPlaceholder, _godot_object);
	}
	/**
	
	*/
	double getPlaceholderAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPlaceholderAlpha, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getRightIcon()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getRightIcon, _godot_object);
	}
	/**
	
	*/
	String getSecretCharacter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSecretCharacter, _godot_object);
	}
	/**
	
	*/
	String getText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getText, _godot_object);
	}
	/**
	
	*/
	bool isClearButtonEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClearButtonEnabled, _godot_object);
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
	bool isEditable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEditable, _godot_object);
	}
	/**
	
	*/
	bool isSecret() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSecret, _godot_object);
	}
	/**
	
	*/
	bool isSelectingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelectingEnabled, _godot_object);
	}
	/**
	
	*/
	bool isShortcutKeysEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isShortcutKeysEnabled, _godot_object);
	}
	/**
	Executes a given action as defined in the $(D menuitems) enum.
	*/
	void menuOption(in long option)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.menuOption, _godot_object, option);
	}
	/**
	Selects characters inside $(D LineEdit) between `from` and `to`. By default, `from` is at the beginning and `to` at the end.
	
	
	text = "Welcome"
	select() # Will select "Welcome".
	select(4) # Will select "ome".
	select(2, 5) # Will select "lco".
	
	
	*/
	void select(in long from = 0, in long to = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.select, _godot_object, from, to);
	}
	/**
	Selects the whole $(D String).
	*/
	void selectAll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.selectAll, _godot_object);
	}
	/**
	
	*/
	void setAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAlign, _godot_object, _align);
	}
	/**
	
	*/
	void setClearButtonEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClearButtonEnabled, _godot_object, enable);
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
	void setCursorPosition(in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCursorPosition, _godot_object, position);
	}
	/**
	
	*/
	void setEditable(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEditable, _godot_object, enabled);
	}
	/**
	
	*/
	void setExpandToTextLength(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExpandToTextLength, _godot_object, enabled);
	}
	/**
	
	*/
	void setMaxLength(in long chars)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxLength, _godot_object, chars);
	}
	/**
	
	*/
	void setPlaceholder(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPlaceholder, _godot_object, text);
	}
	/**
	
	*/
	void setPlaceholderAlpha(in double alpha)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPlaceholderAlpha, _godot_object, alpha);
	}
	/**
	
	*/
	void setRightIcon(Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRightIcon, _godot_object, icon);
	}
	/**
	
	*/
	void setSecret(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSecret, _godot_object, enabled);
	}
	/**
	
	*/
	void setSecretCharacter(in String character)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSecretCharacter, _godot_object, character);
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
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setText, _godot_object, text);
	}
	/**
	Text alignment as defined in the $(D _align) enum.
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
	The cursor's position inside the $(D LineEdit). When set, the text may scroll to accommodate it.
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
	/**
	If `true`, the $(D LineEdit) will show a clear button if `text` is not empty, which can be used to clear the text quickly.
	*/
	@property bool clearButtonEnabled()
	{
		return isClearButtonEnabled();
	}
	/// ditto
	@property void clearButtonEnabled(bool v)
	{
		setClearButtonEnabled(v);
	}
	/**
	If `true`, the context menu will appear when right-clicked.
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
	If `false`, existing text cannot be modified and new text cannot be added.
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
	If `true`, the $(D LineEdit) width will increase to stay longer than the $(D text). It will $(B not) compress if the $(D text) is shortened.
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
	Sets the icon that will appear in the right end of the $(D LineEdit) if there's no $(D text), or always, if $(D clearButtonEnabled) is set to `false`.
	*/
	@property Texture rightIcon()
	{
		return getRightIcon();
	}
	/// ditto
	@property void rightIcon(Texture v)
	{
		setRightIcon(v);
	}
	/**
	If `true`, every character is replaced with the secret character (see $(D secretCharacter)).
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
	The character to use to mask secret input (defaults to "*"). Only a single character can be used as the secret character.
	*/
	@property String secretCharacter()
	{
		return getSecretCharacter();
	}
	/// ditto
	@property void secretCharacter(String v)
	{
		setSecretCharacter(v);
	}
	/**
	If `false`, it's impossible to select the text using mouse nor keyboard.
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
	If `false`, using shortcuts will be disabled.
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
	String value of the $(D LineEdit).
	$(B Note:) Changing text using this property won't emit the $(D textChanged) signal.
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
}
