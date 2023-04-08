/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorproperty;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.container;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
/**

*/
@GodotBaseClass struct EditorProperty
{
	package(godot) enum string _GODOT_internal_name = "EditorProperty";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_focusable_focused") GodotMethod!(void, long) _focusableFocused;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_menu_option") GodotMethod!(void, long) _menuOption;
		@GodotName("_unhandled_key_input") GodotMethod!(void, InputEvent) _unhandledKeyInput;
		@GodotName("_update_revert_and_pin_status") GodotMethod!(void) _updateRevertAndPinStatus;
		@GodotName("add_focusable") GodotMethod!(void, Control) addFocusable;
		@GodotName("emit_changed") GodotMethod!(void, String, Variant, String, bool) emitChanged;
		@GodotName("get_edited_object") GodotMethod!(GodotObject) getEditedObject;
		@GodotName("get_edited_property") GodotMethod!(String) getEditedProperty;
		@GodotName("get_label") GodotMethod!(String) getLabel;
		@GodotName("get_tooltip_text") GodotMethod!(String) getTooltipText;
		@GodotName("is_checkable") GodotMethod!(bool) isCheckable;
		@GodotName("is_checked") GodotMethod!(bool) isChecked;
		@GodotName("is_draw_red") GodotMethod!(bool) isDrawRed;
		@GodotName("is_keying") GodotMethod!(bool) isKeying;
		@GodotName("is_read_only") GodotMethod!(bool) isReadOnly;
		@GodotName("set_bottom_editor") GodotMethod!(void, Control) setBottomEditor;
		@GodotName("set_checkable") GodotMethod!(void, bool) setCheckable;
		@GodotName("set_checked") GodotMethod!(void, bool) setChecked;
		@GodotName("set_draw_red") GodotMethod!(void, bool) setDrawRed;
		@GodotName("set_keying") GodotMethod!(void, bool) setKeying;
		@GodotName("set_label") GodotMethod!(void, String) setLabel;
		@GodotName("set_read_only") GodotMethod!(void, bool) setReadOnly;
		@GodotName("update_property") GodotMethod!(void) updateProperty;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorProperty other) const
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
	/// Construct a new instance of EditorProperty.
	/// Note: use `memnew!EditorProperty` instead.
	static EditorProperty _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorProperty");
		if(constructor is null) return typeof(this).init;
		return cast(EditorProperty)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _focusableFocused(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_focusable_focused");
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
	void _menuOption(in long option)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(option);
		String _GODOT_method_name = String("_menu_option");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _unhandledKeyInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_key_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateRevertAndPinStatus()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_revert_and_pin_status");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addFocusable(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addFocusable, _godot_object, control);
	}
	/**
	
	*/
	void emitChanged(VariantArg1)(in String property, in VariantArg1 value, in String field = gs!"", in bool changing = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.emitChanged, _godot_object, property, value, field, changing);
	}
	/**
	
	*/
	GodotObject getEditedObject()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getEditedObject, _godot_object);
	}
	/**
	
	*/
	String getEditedProperty()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getEditedProperty, _godot_object);
	}
	/**
	
	*/
	String getLabel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLabel, _godot_object);
	}
	/**
	
	*/
	String getTooltipText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTooltipText, _godot_object);
	}
	/**
	
	*/
	bool isCheckable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCheckable, _godot_object);
	}
	/**
	
	*/
	bool isChecked() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isChecked, _godot_object);
	}
	/**
	
	*/
	bool isDrawRed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDrawRed, _godot_object);
	}
	/**
	
	*/
	bool isKeying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isKeying, _godot_object);
	}
	/**
	
	*/
	bool isReadOnly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isReadOnly, _godot_object);
	}
	/**
	
	*/
	void setBottomEditor(Control editor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBottomEditor, _godot_object, editor);
	}
	/**
	
	*/
	void setCheckable(in bool checkable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCheckable, _godot_object, checkable);
	}
	/**
	
	*/
	void setChecked(in bool checked)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setChecked, _godot_object, checked);
	}
	/**
	
	*/
	void setDrawRed(in bool draw_red)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrawRed, _godot_object, draw_red);
	}
	/**
	
	*/
	void setKeying(in bool keying)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setKeying, _godot_object, keying);
	}
	/**
	
	*/
	void setLabel(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLabel, _godot_object, text);
	}
	/**
	
	*/
	void setReadOnly(in bool read_only)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setReadOnly, _godot_object, read_only);
	}
	/**
	
	*/
	void updateProperty()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("update_property");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property bool checkable()
	{
		return isCheckable();
	}
	/// ditto
	@property void checkable(bool v)
	{
		setCheckable(v);
	}
	/**
	
	*/
	@property bool checked()
	{
		return isChecked();
	}
	/// ditto
	@property void checked(bool v)
	{
		setChecked(v);
	}
	/**
	
	*/
	@property bool drawRed()
	{
		return isDrawRed();
	}
	/// ditto
	@property void drawRed(bool v)
	{
		setDrawRed(v);
	}
	/**
	
	*/
	@property bool keying()
	{
		return isKeying();
	}
	/// ditto
	@property void keying(bool v)
	{
		setKeying(v);
	}
	/**
	
	*/
	@property String label()
	{
		return getLabel();
	}
	/// ditto
	@property void label(String v)
	{
		setLabel(v);
	}
	/**
	
	*/
	@property bool readOnly()
	{
		return isReadOnly();
	}
	/// ditto
	@property void readOnly(bool v)
	{
		setReadOnly(v);
	}
}
