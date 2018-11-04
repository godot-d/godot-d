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
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Standard themed Button.

Button is the standard themed button. It can contain text and an icon, and will display them according to the current $(D Theme).
*/
@GodotBaseClass struct Button
{
	enum string _GODOT_internal_name = "Button";
public:
@nogc nothrow:
	union { godot_object _godot_object; BaseButton _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("set_button_icon") GodotMethod!(void, Texture) setButtonIcon;
		@GodotName("get_button_icon") GodotMethod!(Texture) getButtonIcon;
		@GodotName("set_flat") GodotMethod!(void, bool) setFlat;
		@GodotName("set_clip_text") GodotMethod!(void, bool) setClipText;
		@GodotName("get_clip_text") GodotMethod!(bool) getClipText;
		@GodotName("set_text_align") GodotMethod!(void, long) setTextAlign;
		@GodotName("get_text_align") GodotMethod!(Button.TextAlign) getTextAlign;
		@GodotName("is_flat") GodotMethod!(bool) isFlat;
	}
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
	/**
	
	*/
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setText, _godot_object, text);
	}
	/**
	
	*/
	String getText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getText, _godot_object);
	}
	/**
	
	*/
	void setButtonIcon(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setButtonIcon, _godot_object, texture);
	}
	/**
	
	*/
	Ref!Texture getButtonIcon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getButtonIcon, _godot_object);
	}
	/**
	
	*/
	void setFlat(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlat, _godot_object, enabled);
	}
	/**
	
	*/
	void setClipText(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClipText, _godot_object, enabled);
	}
	/**
	
	*/
	bool getClipText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getClipText, _godot_object);
	}
	/**
	
	*/
	void setTextAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextAlign, _godot_object, _align);
	}
	/**
	
	*/
	Button.TextAlign getTextAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button.TextAlign)(_classBinding.getTextAlign, _godot_object);
	}
	/**
	
	*/
	bool isFlat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFlat, _godot_object);
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
