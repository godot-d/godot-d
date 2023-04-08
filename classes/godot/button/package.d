/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.button;
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
import godot.basebutton;
import godot.control;
import godot.texture;
/**

*/
@GodotBaseClass struct Button
{
	package(godot) enum string _GODOT_internal_name = "Button";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ BaseButton _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_button_icon") GodotMethod!(Texture) getButtonIcon;
		@GodotName("get_clip_text") GodotMethod!(bool) getClipText;
		@GodotName("get_icon_align") GodotMethod!(Button.TextAlign) getIconAlign;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("get_text_align") GodotMethod!(Button.TextAlign) getTextAlign;
		@GodotName("is_expand_icon") GodotMethod!(bool) isExpandIcon;
		@GodotName("is_flat") GodotMethod!(bool) isFlat;
		@GodotName("set_button_icon") GodotMethod!(void, Texture) setButtonIcon;
		@GodotName("set_clip_text") GodotMethod!(void, bool) setClipText;
		@GodotName("set_expand_icon") GodotMethod!(void, bool) setExpandIcon;
		@GodotName("set_flat") GodotMethod!(void, bool) setFlat;
		@GodotName("set_icon_align") GodotMethod!(void, long) setIconAlign;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("set_text_align") GodotMethod!(void, long) setTextAlign;
	}
	/// 
	pragma(inline, true) bool opEquals(in Button other) const
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
	/// Construct a new instance of Button.
	/// Note: use `memnew!Button` instead.
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
		/** */
		alignLeft = 0,
		/** */
		alignCenter = 1,
		/** */
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
	Ref!Texture getButtonIcon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getButtonIcon, _godot_object);
	}
	/**
	
	*/
	bool getClipText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getClipText, _godot_object);
	}
	/**
	
	*/
	Button.TextAlign getIconAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button.TextAlign)(GDNativeClassBinding.getIconAlign, _godot_object);
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
	Button.TextAlign getTextAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button.TextAlign)(GDNativeClassBinding.getTextAlign, _godot_object);
	}
	/**
	
	*/
	bool isExpandIcon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isExpandIcon, _godot_object);
	}
	/**
	
	*/
	bool isFlat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlat, _godot_object);
	}
	/**
	
	*/
	void setButtonIcon(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setButtonIcon, _godot_object, texture);
	}
	/**
	
	*/
	void setClipText(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClipText, _godot_object, enabled);
	}
	/**
	
	*/
	void setExpandIcon(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpandIcon, _godot_object, enabled);
	}
	/**
	
	*/
	void setFlat(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlat, _godot_object, enabled);
	}
	/**
	
	*/
	void setIconAlign(in long icon_align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIconAlign, _godot_object, icon_align);
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
	void setTextAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextAlign, _godot_object, _align);
	}
	/**
	
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
	/**
	
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
	
	*/
	@property bool expandIcon()
	{
		return isExpandIcon();
	}
	/// ditto
	@property void expandIcon(bool v)
	{
		setExpandIcon(v);
	}
	/**
	
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
	
	*/
	@property Button.TextAlign iconAlign()
	{
		return getIconAlign();
	}
	/// ditto
	@property void iconAlign(long v)
	{
		setIconAlign(v);
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
}
