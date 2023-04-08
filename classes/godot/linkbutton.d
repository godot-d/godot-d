/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.linkbutton;
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
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct LinkButton
{
	package(godot) enum string _GODOT_internal_name = "LinkButton";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ BaseButton _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("get_underline_mode") GodotMethod!(LinkButton.UnderlineMode) getUnderlineMode;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("set_underline_mode") GodotMethod!(void, long) setUnderlineMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in LinkButton other) const
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
	/// Construct a new instance of LinkButton.
	/// Note: use `memnew!LinkButton` instead.
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
		/** */
		underlineModeAlways = 0,
		/** */
		underlineModeOnHover = 1,
		/** */
		underlineModeNever = 2,
	}
	/// 
	enum Constants : int
	{
		underlineModeAlways = 0,
		underlineModeOnHover = 1,
		underlineModeNever = 2,
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
	LinkButton.UnderlineMode getUnderlineMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(LinkButton.UnderlineMode)(GDNativeClassBinding.getUnderlineMode, _godot_object);
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
	void setUnderlineMode(in long underline_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUnderlineMode, _godot_object, underline_mode);
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
