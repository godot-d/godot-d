/**
Simple button used to represent a link to some resource.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.linkbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.basebutton;
/**
Simple button used to represent a link to some resource.

This kind of buttons are primarily used when the interaction with the button causes a context change (like linking to a web page).
*/
@GodotBaseClass struct LinkButton
{
	static immutable string _GODOT_internal_name = "LinkButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; BaseButton _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in LinkButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LinkButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static LinkButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("LinkButton");
		if(constructor is null) return typeof(this).init;
		return cast(LinkButton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum UnderlineMode : int
	{
		/**
		The LinkButton will always show an underline at the bottom of its text
		*/
		underlineModeAlways = 0,
		/**
		The LinkButton will show an underline at the bottom of its text when the mouse cursor is over it.
		*/
		underlineModeOnHover = 1,
		/**
		The LinkButton will never show an underline at the bottom of its text.
		*/
		underlineModeNever = 2,
	}
	/// 
	enum Constants : int
	{
		underlineModeAlways = 0,
		underlineModeOnHover = 1,
		underlineModeNever = 2,
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	/**
	
	*/
	void setText(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("LinkButton", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	/**
	
	*/
	String getText() const
	{
		_GODOT_get_text.bind("LinkButton", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_underline_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_underline_mode") = _GODOT_set_underline_mode;
	/**
	
	*/
	void setUnderlineMode(in long underline_mode)
	{
		_GODOT_set_underline_mode.bind("LinkButton", "set_underline_mode");
		ptrcall!(void)(_GODOT_set_underline_mode, _godot_object, underline_mode);
	}
	package(godot) static GodotMethod!(LinkButton.UnderlineMode) _GODOT_get_underline_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_underline_mode") = _GODOT_get_underline_mode;
	/**
	
	*/
	LinkButton.UnderlineMode getUnderlineMode() const
	{
		_GODOT_get_underline_mode.bind("LinkButton", "get_underline_mode");
		return ptrcall!(LinkButton.UnderlineMode)(_GODOT_get_underline_mode, _godot_object);
	}
	/**
	
	*/
	@property String text()
	{
		return getText();
	}
	/// ditto
	@property void text(String v)
	{
		setText(v);
	}
	/**
	
	*/
	@property LinkButton.UnderlineMode underline()
	{
		return getUnderlineMode();
	}
	/// ditto
	@property void underline(long v)
	{
		setUnderlineMode(v);
	}
}
