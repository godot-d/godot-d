/**
Numerical input text field.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spinbox;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.range;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.lineedit;
/**
Numerical input text field.

SpinBox is a numerical input text field. It allows entering integers and floats.
$(B Example:)


var spin_box = SpinBox.new()
add_child(spin_box)
var line_edit = spin_box.get_line_edit()
line_edit.context_menu_enabled = false
spin_box.align = LineEdit.ALIGN_RIGHT


The above code will create a $(D SpinBox), disable context menu on it and set the text alignment to right.
See $(D Range) class for more options over the $(D SpinBox).
$(B Note:) $(D SpinBox) relies on an underlying $(D LineEdit) node. To theme a $(D SpinBox)'s background, add theme items for $(D LineEdit) and customize them.
*/
@GodotBaseClass struct SpinBox
{
	package(godot) enum string _GODOT_internal_name = "SpinBox";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_line_edit_focus_exit") GodotMethod!(void) _lineEditFocusExit;
		@GodotName("_line_edit_input") GodotMethod!(void, InputEvent) _lineEditInput;
		@GodotName("_range_click_timeout") GodotMethod!(void) _rangeClickTimeout;
		@GodotName("_text_entered") GodotMethod!(void, String) _textEntered;
		@GodotName("apply") GodotMethod!(void) apply;
		@GodotName("get_align") GodotMethod!(LineEdit.Align) getAlign;
		@GodotName("get_line_edit") GodotMethod!(LineEdit) getLineEdit;
		@GodotName("get_prefix") GodotMethod!(String) getPrefix;
		@GodotName("get_suffix") GodotMethod!(String) getSuffix;
		@GodotName("is_editable") GodotMethod!(bool) isEditable;
		@GodotName("set_align") GodotMethod!(void, long) setAlign;
		@GodotName("set_editable") GodotMethod!(void, bool) setEditable;
		@GodotName("set_prefix") GodotMethod!(void, String) setPrefix;
		@GodotName("set_suffix") GodotMethod!(void, String) setSuffix;
	}
	/// 
	pragma(inline, true) bool opEquals(in SpinBox other) const
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
	/// Construct a new instance of SpinBox.
	/// Note: use `memnew!SpinBox` instead.
	static SpinBox _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpinBox");
		if(constructor is null) return typeof(this).init;
		return cast(SpinBox)(constructor());
	}
	@disable new(size_t s);
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
	void _lineEditFocusExit()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_line_edit_focus_exit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _lineEditInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_line_edit_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _rangeClickTimeout()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_range_click_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _textEntered(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_text_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Applies the current value of this $(D SpinBox).
	*/
	void apply()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.apply, _godot_object);
	}
	/**
	
	*/
	LineEdit.Align getAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(LineEdit.Align)(GDNativeClassBinding.getAlign, _godot_object);
	}
	/**
	Returns the $(D LineEdit) instance from this $(D SpinBox). You can use it to access properties and methods of $(D LineEdit).
	*/
	LineEdit getLineEdit()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(LineEdit)(GDNativeClassBinding.getLineEdit, _godot_object);
	}
	/**
	
	*/
	String getPrefix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPrefix, _godot_object);
	}
	/**
	
	*/
	String getSuffix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSuffix, _godot_object);
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
	void setAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlign, _godot_object, _align);
	}
	/**
	
	*/
	void setEditable(in bool editable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEditable, _godot_object, editable);
	}
	/**
	
	*/
	void setPrefix(in String prefix)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPrefix, _godot_object, prefix);
	}
	/**
	
	*/
	void setSuffix(in String suffix)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSuffix, _godot_object, suffix);
	}
	/**
	Sets the text alignment of the $(D SpinBox).
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
	If `true`, the $(D SpinBox) will be editable. Otherwise, it will be read only.
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
	Adds the specified `prefix` string before the numerical value of the $(D SpinBox).
	*/
	@property String prefix()
	{
		return getPrefix();
	}
	/// ditto
	@property void prefix(String v)
	{
		setPrefix(v);
	}
	/**
	Adds the specified `suffix` string after the numerical value of the $(D SpinBox).
	*/
	@property String suffix()
	{
		return getSuffix();
	}
	/// ditto
	@property void suffix(String v)
	{
		setSuffix(v);
	}
}
