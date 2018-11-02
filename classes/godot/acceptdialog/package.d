/**
Base dialog for user notification.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.acceptdialog;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.windowdialog;
import godot.button;
import godot.label;
import godot.popup;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Base dialog for user notification.

This dialog is useful for small notifications to the user about an event. It can only be accepted or closed, with the same result.
*/
@GodotBaseClass struct AcceptDialog
{
	enum string _GODOT_internal_name = "AcceptDialog";
public:
@nogc nothrow:
	union { godot_object _godot_object; WindowDialog _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_ok") GodotMethod!(void) _ok;
		@GodotName("get_ok") GodotMethod!(Button) getOk;
		@GodotName("get_label") GodotMethod!(Label) getLabel;
		@GodotName("set_hide_on_ok") GodotMethod!(void, bool) setHideOnOk;
		@GodotName("get_hide_on_ok") GodotMethod!(bool) getHideOnOk;
		@GodotName("add_button") GodotMethod!(Button, String, bool, String) addButton;
		@GodotName("add_cancel") GodotMethod!(Button, String) addCancel;
		@GodotName("_builtin_text_entered") GodotMethod!(void, String) _builtinTextEntered;
		@GodotName("register_text_enter") GodotMethod!(void, GodotObject) registerTextEnter;
		@GodotName("_custom_action") GodotMethod!(void, String) _customAction;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("get_text") GodotMethod!(String) getText;
	}
	bool opEquals(in AcceptDialog other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AcceptDialog opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AcceptDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AcceptDialog");
		if(constructor is null) return typeof(this).init;
		return cast(AcceptDialog)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _ok()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_ok");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Return the OK Button.
	*/
	Button getOk()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button)(_classBinding.getOk, _godot_object);
	}
	/**
	Return the label used for built-in text.
	*/
	Label getLabel()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Label)(_classBinding.getLabel, _godot_object);
	}
	/**
	
	*/
	void setHideOnOk(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHideOnOk, _godot_object, enabled);
	}
	/**
	
	*/
	bool getHideOnOk() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getHideOnOk, _godot_object);
	}
	/**
	Adds a button with label $(I text) and a custom $(I action) to the dialog and returns the created button. $(I action) will be passed to the $(D customAction) signal when pressed.
	If `true`, $(I right) will place the button to the right of any sibling buttons. Default value: `false`.
	*/
	Button addButton(StringArg0, StringArg2)(in StringArg0 text, in bool right = false, in StringArg2 action = "")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button)(_classBinding.addButton, _godot_object, text, right, action);
	}
	/**
	Adds a button with label $(I name) and a cancel action to the dialog and returns the created button.
	*/
	Button addCancel(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button)(_classBinding.addCancel, _godot_object, name);
	}
	/**
	
	*/
	void _builtinTextEntered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_builtin_text_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Registers a $(D LineEdit) in the dialog. When the enter key is pressed, the dialog will be accepted.
	*/
	void registerTextEnter(GodotObject line_edit)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.registerTextEnter, _godot_object, line_edit);
	}
	/**
	
	*/
	void _customAction(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_custom_action");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setText(StringArg0)(in StringArg0 text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setText, _godot_object, text);
	}
	/**
	
	*/
	String getText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getText, _godot_object);
	}
	/**
	The text displayed by this dialog.
	*/
	@property String dialogText()
	{
		return getText();
	}
	/// ditto
	@property void dialogText(String v)
	{
		setText(v);
	}
	/**
	If `true` the dialog is hidden when the OK button is pressed. You can set it to `false` if you want to do e.g. input validation when receiving the $(D confirmed) signal, and handle hiding the dialog in your own logic. Default value: `true`.
	Note: Some nodes derived from this class can have a different default value, and potentially their own built-in logic overriding this setting. For example $(D FileDialog) defaults to `false`, and has its own input validation code that is called when you press OK, which eventually hides the dialog if the input is valid. As such this property can't be used in $(D FileDialog) to disable hiding the dialog when pressing OK.
	*/
	@property bool dialogHideOnOk()
	{
		return getHideOnOk();
	}
	/// ditto
	@property void dialogHideOnOk(bool v)
	{
		setHideOnOk(v);
	}
}
