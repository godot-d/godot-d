/**
Standard themed Button.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.button;
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
import godot.texture;
/**
Standard themed Button.

Button is the standard themed button. It can contain text and an icon, and will display them according to the current $(D Theme).
*/
@GodotBaseClass struct Button
{
	static immutable string _GODOT_internal_name = "Button";
public:
@nogc nothrow:
	union { godot_object _godot_object; BaseButton _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Button other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Button opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Button _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Button");
		if(constructor is null) return typeof(this).init;
		return cast(Button)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TextAlign : int
	{
		/**
		Align the text to the left.
		*/
		alignLeft = 0,
		/**
		Align the text to the center.
		*/
		alignCenter = 1,
		/**
		Align the text to the right.
		*/
		alignRight = 2,
	}
	/// 
	enum Constants : int
	{
		alignLeft = 0,
		alignCenter = 1,
		alignRight = 2,
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	/**
	
	*/
	void setText(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("Button", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	/**
	
	*/
	String getText() const
	{
		_GODOT_get_text.bind("Button", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_button_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_button_icon") = _GODOT_set_button_icon;
	/**
	
	*/
	void setButtonIcon(Texture texture)
	{
		_GODOT_set_button_icon.bind("Button", "set_button_icon");
		ptrcall!(void)(_GODOT_set_button_icon, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_button_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_button_icon") = _GODOT_get_button_icon;
	/**
	
	*/
	Ref!Texture getButtonIcon() const
	{
		_GODOT_get_button_icon.bind("Button", "get_button_icon");
		return ptrcall!(Texture)(_GODOT_get_button_icon, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_flat;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flat") = _GODOT_set_flat;
	/**
	
	*/
	void setFlat(in bool enabled)
	{
		_GODOT_set_flat.bind("Button", "set_flat");
		ptrcall!(void)(_GODOT_set_flat, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_clip_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clip_text") = _GODOT_set_clip_text;
	/**
	
	*/
	void setClipText(in bool enabled)
	{
		_GODOT_set_clip_text.bind("Button", "set_clip_text");
		ptrcall!(void)(_GODOT_set_clip_text, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_clip_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clip_text") = _GODOT_get_clip_text;
	/**
	
	*/
	bool getClipText() const
	{
		_GODOT_get_clip_text.bind("Button", "get_clip_text");
		return ptrcall!(bool)(_GODOT_get_clip_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_text_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text_align") = _GODOT_set_text_align;
	/**
	
	*/
	void setTextAlign(in long _align)
	{
		_GODOT_set_text_align.bind("Button", "set_text_align");
		ptrcall!(void)(_GODOT_set_text_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(Button.TextAlign) _GODOT_get_text_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text_align") = _GODOT_get_text_align;
	/**
	
	*/
	Button.TextAlign getTextAlign() const
	{
		_GODOT_get_text_align.bind("Button", "get_text_align");
		return ptrcall!(Button.TextAlign)(_GODOT_get_text_align, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_flat;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_flat") = _GODOT_is_flat;
	/**
	
	*/
	bool isFlat() const
	{
		_GODOT_is_flat.bind("Button", "is_flat");
		return ptrcall!(bool)(_GODOT_is_flat, _godot_object);
	}
	/**
	The button's text that will be displayed inside the button's area.
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
	Button's icon, if text is present the icon will be placed before the text.
	*/
	@property Texture icon()
	{
		return getButtonIcon();
	}
	/// ditto
	@property void icon(Texture v)
	{
		setButtonIcon(v);
	}
	/**
	Flat buttons don't display decoration.
	*/
	@property bool flat()
	{
		return isFlat();
	}
	/// ditto
	@property void flat(bool v)
	{
		setFlat(v);
	}
	/**
	When this property is enabled, text that is too large to fit the button is clipped, when disabled the Button will always be wide enough to hold the text. This property is disabled by default.
	*/
	@property bool clipText()
	{
		return getClipText();
	}
	/// ditto
	@property void clipText(bool v)
	{
		setClipText(v);
	}
	/**
	Text alignment policy for the button's text, use one of the ALIGN_* constants.
	*/
	@property Button.TextAlign _align()
	{
		return getTextAlign();
	}
	/// ditto
	@property void _align(long v)
	{
		setTextAlign(v);
	}
}
