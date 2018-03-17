/**
Base class for window dialogs.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.windowdialog;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.popup;
import godot.inputevent;
import godot.texturebutton;
/**
Base class for window dialogs.

Windowdialog is the base class for all window-based dialogs. It's a by-default toplevel $(D Control) that draws a window decoration and allows motion and resizing.
*/
@GodotBaseClass struct WindowDialog
{
	static immutable string _GODOT_internal_name = "WindowDialog";
public:
@nogc nothrow:
	union { godot_object _godot_object; Popup _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in WindowDialog other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WindowDialog opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WindowDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WindowDialog");
		if(constructor is null) return typeof(this).init;
		return cast(WindowDialog)(constructor());
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
	package(godot) static GodotMethod!(void, String) _GODOT_set_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_title") = _GODOT_set_title;
	/**
	
	*/
	void setTitle(StringArg0)(in StringArg0 title)
	{
		_GODOT_set_title.bind("WindowDialog", "set_title");
		ptrcall!(void)(_GODOT_set_title, _godot_object, title);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_title") = _GODOT_get_title;
	/**
	
	*/
	String getTitle() const
	{
		_GODOT_get_title.bind("WindowDialog", "get_title");
		return ptrcall!(String)(_GODOT_get_title, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_resizable") = _GODOT_set_resizable;
	/**
	
	*/
	void setResizable(in bool resizable)
	{
		_GODOT_set_resizable.bind("WindowDialog", "set_resizable");
		ptrcall!(void)(_GODOT_set_resizable, _godot_object, resizable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resizable") = _GODOT_get_resizable;
	/**
	
	*/
	bool getResizable() const
	{
		_GODOT_get_resizable.bind("WindowDialog", "get_resizable");
		return ptrcall!(bool)(_GODOT_get_resizable, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__closed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_closed") = _GODOT__closed;
	/**
	
	*/
	void _closed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_closed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(TextureButton) _GODOT_get_close_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_close_button") = _GODOT_get_close_button;
	/**
	Return the close $(D TextureButton).
	*/
	TextureButton getCloseButton()
	{
		_GODOT_get_close_button.bind("WindowDialog", "get_close_button");
		return ptrcall!(TextureButton)(_GODOT_get_close_button, _godot_object);
	}
	/**
	The text displayed in the window's title bar. Default value: "Save a File".
	*/
	@property String windowTitle()
	{
		return getTitle();
	}
	/// ditto
	@property void windowTitle(String v)
	{
		setTitle(v);
	}
	/**
	If `true` the user can resize the window. Default value: `false`.
	*/
	@property bool resizable()
	{
		return getResizable();
	}
	/// ditto
	@property void resizable(bool v)
	{
		setResizable(v);
	}
}
