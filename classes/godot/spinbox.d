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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.range;
import godot.inputevent;
import godot.lineedit;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Numerical input text field.

SpinBox is a numerical input text field. It allows entering integers and floats.
*/
@GodotBaseClass struct SpinBox
{
	enum string _GODOT_internal_name = "SpinBox";
public:
@nogc nothrow:
	union { godot_object _godot_object; Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_text_entered") GodotMethod!(void, String) _textEntered;
		@GodotName("set_align") GodotMethod!(void, long) setAlign;
		@GodotName("get_align") GodotMethod!(LineEdit.Align) getAlign;
		@GodotName("set_suffix") GodotMethod!(void, String) setSuffix;
		@GodotName("get_suffix") GodotMethod!(String) getSuffix;
		@GodotName("set_prefix") GodotMethod!(void, String) setPrefix;
		@GodotName("get_prefix") GodotMethod!(String) getPrefix;
		@GodotName("set_editable") GodotMethod!(void, bool) setEditable;
		@GodotName("is_editable") GodotMethod!(bool) isEditable;
		@GodotName("_line_edit_focus_exit") GodotMethod!(void) _lineEditFocusExit;
		@GodotName("get_line_edit") GodotMethod!(LineEdit) getLineEdit;
		@GodotName("_line_edit_input") GodotMethod!(void, InputEvent) _lineEditInput;
		@GodotName("_range_click_timeout") GodotMethod!(void) _rangeClickTimeout;
	}
	bool opEquals(in SpinBox other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpinBox opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _textEntered(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_text_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	LineEdit.Align getAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(LineEdit.Align)(_classBinding.getAlign, _godot_object);
	}
	/**
	
	*/
	void setSuffix(in String suffix)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSuffix, _godot_object, suffix);
	}
	/**
	
	*/
	String getSuffix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSuffix, _godot_object);
	}
	/**
	
	*/
	void setPrefix(in String prefix)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPrefix, _godot_object, prefix);
	}
	/**
	
	*/
	String getPrefix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPrefix, _godot_object);
	}
	/**
	
	*/
	void setEditable(in bool editable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEditable, _godot_object, editable);
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
	void _lineEditFocusExit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_line_edit_focus_exit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	LineEdit getLineEdit()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(LineEdit)(_classBinding.getLineEdit, _godot_object);
	}
	/**
	
	*/
	void _lineEditInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_line_edit_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _rangeClickTimeout()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_range_click_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
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
