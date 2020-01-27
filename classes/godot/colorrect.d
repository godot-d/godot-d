/**
Colored rectangle.

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
Colored rectangle.

Displays a colored rectangle.
*/
@GodotBaseClass struct ColorRect
{
	enum string _GODOT_internal_name = "ColorRect";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_frame_color") GodotMethod!(Color) getFrameColor;
		@GodotName("set_frame_color") GodotMethod!(void, Color) setFrameColor;
	}
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
	/**
	
	*/
	Color getFrameColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getFrameColor, _godot_object);
	}
	/**
	
	*/
	void setFrameColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFrameColor, _godot_object, color);
	}
	/**
	The fill color.
	
	
	$ColorRect.color = Color(1, 0, 0, 1) # Set ColorRect's color to red.
	
	
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
