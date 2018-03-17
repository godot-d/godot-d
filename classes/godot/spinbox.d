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
/**
Numerical input text field.

SpinBox is a numerical input text field. It allows entering integers and floats.
*/
@GodotBaseClass struct SpinBox
{
	static immutable string _GODOT_internal_name = "SpinBox";
public:
@nogc nothrow:
	union { godot_object _godot_object; Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, String) _GODOT__text_entered;
	package(godot) alias _GODOT_methodBindInfo(string name : "_text_entered") = _GODOT__text_entered;
	/**
	
	*/
	void _textEntered(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_text_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_suffix;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_suffix") = _GODOT_set_suffix;
	/**
	
	*/
	void setSuffix(StringArg0)(in StringArg0 suffix)
	{
		_GODOT_set_suffix.bind("SpinBox", "set_suffix");
		ptrcall!(void)(_GODOT_set_suffix, _godot_object, suffix);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_suffix;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_suffix") = _GODOT_get_suffix;
	/**
	
	*/
	String getSuffix() const
	{
		_GODOT_get_suffix.bind("SpinBox", "get_suffix");
		return ptrcall!(String)(_GODOT_get_suffix, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_prefix;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_prefix") = _GODOT_set_prefix;
	/**
	
	*/
	void setPrefix(StringArg0)(in StringArg0 prefix)
	{
		_GODOT_set_prefix.bind("SpinBox", "set_prefix");
		ptrcall!(void)(_GODOT_set_prefix, _godot_object, prefix);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_prefix;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_prefix") = _GODOT_get_prefix;
	/**
	
	*/
	String getPrefix() const
	{
		_GODOT_get_prefix.bind("SpinBox", "get_prefix");
		return ptrcall!(String)(_GODOT_get_prefix, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editable") = _GODOT_set_editable;
	/**
	
	*/
	void setEditable(in bool editable)
	{
		_GODOT_set_editable.bind("SpinBox", "set_editable");
		ptrcall!(void)(_GODOT_set_editable, _godot_object, editable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editable") = _GODOT_is_editable;
	/**
	
	*/
	bool isEditable() const
	{
		_GODOT_is_editable.bind("SpinBox", "is_editable");
		return ptrcall!(bool)(_GODOT_is_editable, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__line_edit_focus_exit;
	package(godot) alias _GODOT_methodBindInfo(string name : "_line_edit_focus_exit") = _GODOT__line_edit_focus_exit;
	/**
	
	*/
	void _lineEditFocusExit()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_line_edit_focus_exit");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(LineEdit) _GODOT_get_line_edit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_edit") = _GODOT_get_line_edit;
	/**
	
	*/
	LineEdit getLineEdit()
	{
		_GODOT_get_line_edit.bind("SpinBox", "get_line_edit");
		return ptrcall!(LineEdit)(_GODOT_get_line_edit, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__line_edit_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_line_edit_input") = _GODOT__line_edit_input;
	/**
	
	*/
	void _lineEditInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_line_edit_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__range_click_timeout;
	package(godot) alias _GODOT_methodBindInfo(string name : "_range_click_timeout") = _GODOT__range_click_timeout;
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
