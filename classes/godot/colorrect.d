/**
Colored rect for canvas.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.colorrect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
/**
Colored rect for canvas.

An object that is represented on the canvas as a rect with color. $(D Color) is used to set or get color info for the rect.
*/
@GodotBaseClass struct ColorRect
{
	static immutable string _GODOT_internal_name = "ColorRect";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ColorRect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ColorRect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ColorRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ColorRect");
		if(constructor is null) return typeof(this).init;
		return cast(ColorRect)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Color) _GODOT_set_frame_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame_color") = _GODOT_set_frame_color;
	/**
	
	*/
	void setFrameColor(in Color color)
	{
		_GODOT_set_frame_color.bind("ColorRect", "set_frame_color");
		ptrcall!(void)(_GODOT_set_frame_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_frame_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame_color") = _GODOT_get_frame_color;
	/**
	
	*/
	Color getFrameColor() const
	{
		_GODOT_get_frame_color.bind("ColorRect", "get_frame_color");
		return ptrcall!(Color)(_GODOT_get_frame_color, _godot_object);
	}
	/**
	The color to fill the `ColorRect`.
	
	
	$ColorRect.color = Color(1, 0, 0, 1) # Set ColorRect node's color to red
	
	
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
