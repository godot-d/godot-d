/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.windowdialog;
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
import godot.popup;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.texturebutton;
/**

*/
@GodotBaseClass struct WindowDialog
{
	package(godot) enum string _GODOT_internal_name = "WindowDialog";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Popup _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in WindowDialog other) const
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
	/// Construct a new instance of WindowDialog.
	/// Note: use `memnew!WindowDialog` instead.
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
	
	*/
	TextureButton getCloseButton()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TextureButton)(GDNativeClassBinding.getCloseButton, _godot_object);
	}
	/**
	
	*/
	bool getResizable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getResizable, _godot_object);
	}
	/**
	
	*/
	String getTitle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTitle, _godot_object);
	}
	/**
	
	*/
	void setResizable(in bool resizable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setResizable, _godot_object, resizable);
	}
	/**
	
	*/
	void setTitle(in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTitle, _godot_object, title);
	}
	/**
	
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
