/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.acceptdialog;
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
import godot.windowdialog;
import godot.button;
import godot.label;
import godot.node;
import godot.control;
/**

*/
@GodotBaseClass struct AcceptDialog
{
	package(godot) enum string _GODOT_internal_name = "AcceptDialog";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ WindowDialog _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_builtin_text_entered") GodotMethod!(void, String) _builtinTextEntered;
		@GodotName("_custom_action") GodotMethod!(void, String) _customAction;
		@GodotName("_ok") GodotMethod!(void) _ok;
		@GodotName("add_button") GodotMethod!(Button, String, bool, String) addButton;
		@GodotName("add_cancel") GodotMethod!(Button, String) addCancel;
		@GodotName("get_hide_on_ok") GodotMethod!(bool) getHideOnOk;
		@GodotName("get_label") GodotMethod!(Label) getLabel;
		@GodotName("get_ok") GodotMethod!(Button) getOk;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("has_autowrap") GodotMethod!(bool) hasAutowrap;
		@GodotName("register_text_enter") GodotMethod!(void, Node) registerTextEnter;
		@GodotName("remove_button") GodotMethod!(void, Control) removeButton;
		@GodotName("set_autowrap") GodotMethod!(void, bool) setAutowrap;
		@GodotName("set_hide_on_ok") GodotMethod!(void, bool) setHideOnOk;
		@GodotName("set_text") GodotMethod!(void, String) setText;
	}
	/// 
	pragma(inline, true) bool opEquals(in AcceptDialog other) const
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
	/// Construct a new instance of AcceptDialog.
	/// Note: use `memnew!AcceptDialog` instead.
	static AcceptDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AcceptDialog");
		if(constructor is null) return typeof(this).init;
		return cast(AcceptDialog)(constructor());
	}
	/**
	
	*/
	void _builtinTextEntered(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_builtin_text_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _customAction(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_custom_action");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _ok()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_ok");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Button addButton(in String text, in bool right = false, in String action = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button)(GDNativeClassBinding.addButton, _godot_object, text, right, action);
	}
	/**
	
	*/
	Button addCancel(in String name)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button)(GDNativeClassBinding.addCancel, _godot_object, name);
	}
	/**
	
	*/
	bool getHideOnOk() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getHideOnOk, _godot_object);
	}
	/**
	
	*/
	Label getLabel()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Label)(GDNativeClassBinding.getLabel, _godot_object);
	}
	/**
	
	*/
	Button getOk()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button)(GDNativeClassBinding.getOk, _godot_object);
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
	bool hasAutowrap()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAutowrap, _godot_object);
	}
	/**
	
	*/
	void registerTextEnter(Node line_edit)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.registerTextEnter, _godot_object, line_edit);
	}
	/**
	
	*/
	void removeButton(Control button)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeButton, _godot_object, button);
	}
	/**
	
	*/
	void setAutowrap(in bool autowrap)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutowrap, _godot_object, autowrap);
	}
	/**
	
	*/
	void setHideOnOk(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHideOnOk, _godot_object, enabled);
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
	@property bool dialogAutowrap()
	{
		return hasAutowrap();
	}
	/// ditto
	@property void dialogAutowrap(bool v)
	{
		setAutowrap(v);
	}
	/**
	
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
	/**
	
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
}
