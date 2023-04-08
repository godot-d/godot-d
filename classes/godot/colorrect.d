/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.colorrect;
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
import godot.control;
/**

*/
@GodotBaseClass struct ColorRect
{
	package(godot) enum string _GODOT_internal_name = "ColorRect";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_frame_color") GodotMethod!(Color) getFrameColor;
		@GodotName("set_frame_color") GodotMethod!(void, Color) setFrameColor;
	}
	/// 
	pragma(inline, true) bool opEquals(in ColorRect other) const
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
	/// Construct a new instance of ColorRect.
	/// Note: use `memnew!ColorRect` instead.
	static ColorRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ColorRect");
		if(constructor is null) return typeof(this).init;
		return cast(ColorRect)(constructor());
	}
	/**
	
	*/
	Color getFrameColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getFrameColor, _godot_object);
	}
	/**
	
	*/
	void setFrameColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrameColor, _godot_object, color);
	}
	/**
	
	*/
	@property Color color()
	{
		return getFrameColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setFrameColor(v);
	}
}
