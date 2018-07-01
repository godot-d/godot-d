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
/**
Base dialog for user notification.

This dialog is useful for small notifications to the user about an event. It can only be accepted or closed, with the same result.
*/
@GodotBaseClass struct AcceptDialog
{
	static immutable string _GODOT_internal_name = "AcceptDialog";
public:
@nogc nothrow:
	union { godot_object _godot_object; WindowDialog _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void) _GODOT__ok;
	package(godot) alias _GODOT_methodBindInfo(string name : "_ok") = _GODOT__ok;
	/**
	
	*/
	void _ok()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_ok");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Button) _GODOT_get_ok;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ok") = _GODOT_get_ok;
	/**
	Return the OK Button.
	*/
	Button getOk()
	{
		_GODOT_get_ok.bind("AcceptDialog", "get_ok");
		return ptrcall!(Button)(_GODOT_get_ok, _godot_object);
	}
	package(godot) static GodotMethod!(Label) _GODOT_get_label;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_label") = _GODOT_get_label;
	/**
	Return the label used for built-in text.
	*/
	Label getLabel()
	{
		_GODOT_get_label.bind("AcceptDialog", "get_label");
		return ptrcall!(Label)(_GODOT_get_label, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hide_on_ok;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hide_on_ok") = _GODOT_set_hide_on_ok;
	/**
	
	*/
	void setHideOnOk(in bool enabled)
	{
		_GODOT_set_hide_on_ok.bind("AcceptDialog", "set_hide_on_ok");
		ptrcall!(void)(_GODOT_set_hide_on_ok, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_hide_on_ok;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hide_on_ok") = _GODOT_get_hide_on_ok;
	/**
	
	*/
	bool getHideOnOk() const
	{
		_GODOT_get_hide_on_ok.bind("AcceptDialog", "get_hide_on_ok");
		return ptrcall!(bool)(_GODOT_get_hide_on_ok, _godot_object);
	}
	package(godot) static GodotMethod!(Button, String, bool, String) _GODOT_add_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_button") = _GODOT_add_button;
	/**
	Adds a button with label $(I text) and a custom $(I action) to the dialog and returns the created button. $(I action) will be passed to the $(D customAction) signal when pressed.
	If `true`, $(I right) will place the button to the right of any sibling buttons. Default value: `false`.
	*/
	Button addButton(StringArg0, StringArg2)(in StringArg0 text, in bool right = false, in StringArg2 action = "")
	{
		_GODOT_add_button.bind("AcceptDialog", "add_button");
		return ptrcall!(Button)(_GODOT_add_button, _godot_object, text, right, action);
	}
	package(godot) static GodotMethod!(Button, String) _GODOT_add_cancel;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_cancel") = _GODOT_add_cancel;
	/**
	Adds a button with label $(I name) and a cancel action to the dialog and returns the created button.
	*/
	Button addCancel(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_cancel.bind("AcceptDialog", "add_cancel");
		return ptrcall!(Button)(_GODOT_add_cancel, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__builtin_text_entered;
	package(godot) alias _GODOT_methodBindInfo(string name : "_builtin_text_entered") = _GODOT__builtin_text_entered;
	/**
	
	*/
	void _builtinTextEntered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_builtin_text_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_register_text_enter;
	package(godot) alias _GODOT_methodBindInfo(string name : "register_text_enter") = _GODOT_register_text_enter;
	/**
	Registers a $(D LineEdit) in the dialog. When the enter key is pressed, the dialog will be accepted.
	*/
	void registerTextEnter(GodotObject line_edit)
	{
		_GODOT_register_text_enter.bind("AcceptDialog", "register_text_enter");
		ptrcall!(void)(_GODOT_register_text_enter, _godot_object, line_edit);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__custom_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "_custom_action") = _GODOT__custom_action;
	/**
	
	*/
	void _customAction(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_custom_action");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	/**
	
	*/
	void setText(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("AcceptDialog", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	/**
	
	*/
	String getText() const
	{
		_GODOT_get_text.bind("AcceptDialog", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
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
	If `true` the dialog is hidden when accepted. Default value: `true`.
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
