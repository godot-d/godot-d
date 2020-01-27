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
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.texturebutton;
/**
Base class for window dialogs.

Windowdialog is the base class for all window-based dialogs. It's a by-default toplevel $(D Control) that draws a window decoration and allows motion and resizing.
*/
@GodotBaseClass struct WindowDialog
{
	enum string _GODOT_internal_name = "WindowDialog";
public:
@nogc nothrow:
	union { godot_object _godot_object; Popup _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_closed") GodotMethod!(void) _closed;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("get_close_button") GodotMethod!(TextureButton) getCloseButton;
		@GodotName("get_resizable") GodotMethod!(bool) getResizable;
		@GodotName("get_title") GodotMethod!(String) getTitle;
		@GodotName("set_resizable") GodotMethod!(void, bool) setResizable;
		@GodotName("set_title") GodotMethod!(void, String) setTitle;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void _closed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_closed");
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
	Returns the close $(D TextureButton).
	*/
	TextureButton getCloseButton()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TextureButton)(_classBinding.getCloseButton, _godot_object);
	}
	/**
	
	*/
	bool getResizable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getResizable, _godot_object);
	}
	/**
	
	*/
	String getTitle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTitle, _godot_object);
	}
	/**
	
	*/
	void setResizable(in bool resizable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setResizable, _godot_object, resizable);
	}
	/**
	
	*/
	void setTitle(in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTitle, _godot_object, title);
	}
	/**
	If `true`, the user can resize the window.
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
	/**
	The text displayed in the window's title bar.
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
}
