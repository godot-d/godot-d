/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.lineedit;
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
import godot.popupmenu;
import godot.texture;
/**

*/
@GodotBaseClass struct LineEdit
{
	package(godot) enum string _GODOT_internal_name = "LineEdit";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
		@GodotName("delete_char_at_cursor") GodotMethod!(void) deleteCharAtCursor;
		@GodotName("delete_text") GodotMethod!(void, long, long) deleteText;
		@GodotName("deselect") GodotMethod!(void) deselect;
		@GodotName("get_align") GodotMethod!(LineEdit.Align) getAlign;
		@GodotName("get_cursor_position") GodotMethod!(long) getCursorPosition;
		@GodotName("get_expand_to_text_length") GodotMethod!(bool) getExpandToTextLength;
		@GodotName("get_max_length") GodotMethod!(long) getMaxLength;
		@GodotName("get_menu") GodotMethod!(PopupMenu) getMenu;
		@GodotName("get_placeholder") GodotMethod!(String) getPlaceholder;
		@GodotName("get_placeholder_alpha") GodotMethod!(double) getPlaceholderAlpha;
		@GodotName("get_right_icon") GodotMethod!(Texture) getRightIcon;
		@GodotName("get_scroll_offset") GodotMethod!(long) getScrollOffset;
		@GodotName("get_secret_character") GodotMethod!(String) getSecretCharacter;
		@GodotName("get_selection_from_column") GodotMethod!(long) getSelectionFromColumn;
		@GodotName("get_selection_to_column") GodotMethod!(long) getSelectionToColumn;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("has_selection") GodotMethod!(bool) hasSelection;
		@GodotName("is_clear_button_enabled") GodotMethod!(bool) isClearButtonEnabled;
		@GodotName("is_context_menu_enabled") GodotMethod!(bool) isContextMenuEnabled;
		@GodotName("is_deselect_on_focus_loss_enabled") GodotMethod!(bool) isDeselectOnFocusLossEnabled;
		@GodotName("is_editable") GodotMethod!(bool) isEditable;
		@GodotName("is_middle_mouse_paste_enabled") GodotMethod!(bool) isMiddleMousePasteEnabled;
		@GodotName("is_secret") GodotMethod!(bool) isSecret;
		@GodotName("is_selecting_enabled") GodotMethod!(bool) isSelectingEnabled;
		@GodotName("is_shortcut_keys_enabled") GodotMethod!(bool) isShortcutKeysEnabled;
		@GodotName("is_virtual_keyboard_enabled") GodotMethod!(bool) isVirtualKeyboardEnabled;
		@GodotName("menu_option") GodotMethod!(void, long) menuOption;
		@GodotName("select") GodotMethod!(void, long, long) select;
		@GodotName("select_all") GodotMethod!(void) selectAll;
		@GodotName("set_align") GodotMethod!(void, long) setAlign;
		@GodotName("set_clear_button_enabled") GodotMethod!(void, bool) setClearButtonEnabled;
		@GodotName("set_context_menu_enabled") GodotMethod!(void, bool) setContextMenuEnabled;
		@GodotName("set_cursor_position") GodotMethod!(void, long) setCursorPosition;
		@GodotName("set_deselect_on_focus_loss_enabled") GodotMethod!(void, bool) setDeselectOnFocusLossEnabled;
		@GodotName("set_editable") GodotMethod!(void, bool) setEditable;
		@GodotName("set_expand_to_text_length") GodotMethod!(void, bool) setExpandToTextLength;
		@GodotName("set_max_length") GodotMethod!(void, long) setMaxLength;
		@GodotName("set_middle_mouse_paste_enabled") GodotMethod!(void, bool) setMiddleMousePasteEnabled;
		@GodotName("set_placeholder") GodotMethod!(void, String) setPlaceholder;
		@GodotName("set_placeholder_alpha") GodotMethod!(void, double) setPlaceholderAlpha;
		@GodotName("set_right_icon") GodotMethod!(void, Texture) setRightIcon;
		@GodotName("set_secret") GodotMethod!(void, bool) setSecret;
		@GodotName("set_secret_character") GodotMethod!(void, String) setSecretCharacter;
		@GodotName("set_selecting_enabled") GodotMethod!(void, bool) setSelectingEnabled;
		@GodotName("set_shortcut_keys_enabled") GodotMethod!(void, bool) setShortcutKeysEnabled;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("set_virtual_keyboard_enabled") GodotMethod!(void, bool) setVirtualKeyboardEnabled;
	}
	/// 
	pragma(inline, true) bool opEquals(in LineEdit other) const
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
	/// Construct a new instance of LineEdit.
	/// Note: use `memnew!LineEdit` instead.
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
		/** */
		alignLeft = 0,
		/** */
		alignCenter = 1,
		/** */
		alignRight = 2,
		/** */
		alignFill = 3,
	}
	/// 
	enum MenuItems : int
	{
		/** */
		menuCut = 0,
		/** */
		menuCopy = 1,
		/** */
		menuPaste = 2,
		/** */
		menuClear = 3,
		/** */
		menuSelectAll = 4,
		/** */
		menuUndo = 5,
		/** */
		menuRedo = 6,
		/** */
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
	
	*/
	void appendAtCursor(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.appendAtCursor, _godot_object, text);
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
	bool cursorGetBlinkEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.cursorGetBlinkEnabled, _godot_object);
	}
	/**
	
	*/
	double cursorGetBlinkSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.cursorGetBlinkSpeed, _godot_object);
	}
	/**
	
	*/
	void cursorSetBlinkEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cursorSetBlinkEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void cursorSetBlinkSpeed(in double blink_speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cursorSetBlinkSpeed, _godot_object, blink_speed);
	}
	/**
	
	*/
	void deleteCharAtCursor()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.deleteCharAtCursor, _godot_object);
	}
	/**
	
	*/
	void deleteText(in long from_column, in long to_column)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.deleteText, _godot_object, from_column, to_column);
	}
	/**
	
	*/
	void deselect()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.deselect, _godot_object);
	}
	/**
	
	*/
	LineEdit.Align getAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(LineEdit.Align)(GDNativeClassBinding.getAlign, _godot_object);
	}
	/**
	
	*/
	long getCursorPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCursorPosition, _godot_object);
	}
	/**
	
	*/
	bool getExpandToTextLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getExpandToTextLength, _godot_object);
	}
	/**
	
	*/
	long getMaxLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxLength, _godot_object);
	}
	/**
	
	*/
	PopupMenu getMenu() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PopupMenu)(GDNativeClassBinding.getMenu, _godot_object);
	}
	/**
	
	*/
	String getPlaceholder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPlaceholder, _godot_object);
	}
	/**
	
	*/
	double getPlaceholderAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPlaceholderAlpha, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getRightIcon()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getRightIcon, _godot_object);
	}
	/**
	
	*/
	long getScrollOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getScrollOffset, _godot_object);
	}
	/**
	
	*/
	String getSecretCharacter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSecretCharacter, _godot_object);
	}
	/**
	
	*/
	long getSelectionFromColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSelectionFromColumn, _godot_object);
	}
	/**
	
	*/
	long getSelectionToColumn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSelectionToColumn, _godot_object);
	}
	/**
	
	*/
	String getText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getText, _godot_object);
	}
	/**
	
	*/
	bool hasSelection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSelection, _godot_object);
	}
	/**
	
	*/
	bool isClearButtonEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClearButtonEnabled, _godot_object);
	}
	/**
	
	*/
	bool isContextMenuEnabled()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isContextMenuEnabled, _godot_object);
	}
	/**
	
	*/
	bool isDeselectOnFocusLossEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDeselectOnFocusLossEnabled, _godot_object);
	}
	/**
	
	*/
	bool isEditable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEditable, _godot_object);
	}
	/**
	
	*/
	bool isMiddleMousePasteEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isMiddleMousePasteEnabled, _godot_object);
	}
	/**
	
	*/
	bool isSecret() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSecret, _godot_object);
	}
	/**
	
	*/
	bool isSelectingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSelectingEnabled, _godot_object);
	}
	/**
	
	*/
	bool isShortcutKeysEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isShortcutKeysEnabled, _godot_object);
	}
	/**
	
	*/
	bool isVirtualKeyboardEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVirtualKeyboardEnabled, _godot_object);
	}
	/**
	
	*/
	void menuOption(in long option)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.menuOption, _godot_object, option);
	}
	/**
	
	*/
	void select(in long from = 0, in long to = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.select, _godot_object, from, to);
	}
	/**
	
	*/
	void selectAll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.selectAll, _godot_object);
	}
	/**
	
	*/
	void setAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlign, _godot_object, _align);
	}
	/**
	
	*/
	void setClearButtonEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClearButtonEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setContextMenuEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setContextMenuEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setCursorPosition(in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCursorPosition, _godot_object, position);
	}
	/**
	
	*/
	void setDeselectOnFocusLossEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDeselectOnFocusLossEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setEditable(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEditable, _godot_object, enabled);
	}
	/**
	
	*/
	void setExpandToTextLength(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpandToTextLength, _godot_object, enabled);
	}
	/**
	
	*/
	void setMaxLength(in long chars)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxLength, _godot_object, chars);
	}
	/**
	
	*/
	void setMiddleMousePasteEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMiddleMousePasteEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setPlaceholder(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPlaceholder, _godot_object, text);
	}
	/**
	
	*/
	void setPlaceholderAlpha(in double alpha)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPlaceholderAlpha, _godot_object, alpha);
	}
	/**
	
	*/
	void setRightIcon(Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRightIcon, _godot_object, icon);
	}
	/**
	
	*/
	void setSecret(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSecret, _godot_object, enabled);
	}
	/**
	
	*/
	void setSecretCharacter(in String character)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSecretCharacter, _godot_object, character);
	}
	/**
	
	*/
	void setSelectingEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSelectingEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setShortcutKeysEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShortcutKeysEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setText, _godot_object, text);
	}
	/**
	
	*/
	void setVirtualKeyboardEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVirtualKeyboardEnabled, _godot_object, enable);
	}
	/**
	
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
	@property bool deselectOnFocusLossEnabled()
	{
		return isDeselectOnFocusLossEnabled();
	}
	/// ditto
	@property void deselectOnFocusLossEnabled(bool v)
	{
		setDeselectOnFocusLossEnabled(v);
	}
	/**
	
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
	
	*/
	@property bool middleMousePasteEnabled()
	{
		return isMiddleMousePasteEnabled();
	}
	/// ditto
	@property void middleMousePasteEnabled(bool v)
	{
		setMiddleMousePasteEnabled(v);
	}
	/**
	
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
	
	*/
	@property bool virtualKeyboardEnabled()
	{
		return isVirtualKeyboardEnabled();
	}
	/// ditto
	@property void virtualKeyboardEnabled(bool v)
	{
		setVirtualKeyboardEnabled(v);
	}
}
