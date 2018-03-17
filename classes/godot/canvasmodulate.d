/**
Tint the entire canvas.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.canvasmodulate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
/**
Tint the entire canvas.

`CanvasModulate` tints the canvas elements using its assigned `color`.
*/
@GodotBaseClass struct CanvasModulate
{
	static immutable string _GODOT_internal_name = "CanvasModulate";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CanvasModulate other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasModulate opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CanvasModulate _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CanvasModulate");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasModulate)(constructor());
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	/**
	
	*/
	void setColor(in Color color)
	{
		_GODOT_set_color.bind("CanvasModulate", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	/**
	
	*/
	Color getColor() const
	{
		_GODOT_get_color.bind("CanvasModulate", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	/**
	The tint color to apply.
	*/
	@property Color color()
	{
		return getColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setColor(v);
	}
}
