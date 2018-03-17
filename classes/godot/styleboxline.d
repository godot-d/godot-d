/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.styleboxline;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.stylebox;
/**

*/
@GodotBaseClass struct StyleBoxLine
{
	static immutable string _GODOT_internal_name = "StyleBoxLine";
public:
@nogc nothrow:
	union { godot_object _godot_object; StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in StyleBoxLine other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBoxLine opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StyleBoxLine _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StyleBoxLine");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBoxLine)(constructor());
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	/**
	
	*/
	void setColor(in Color color)
	{
		_GODOT_set_color.bind("StyleBoxLine", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	/**
	
	*/
	Color getColor() const
	{
		_GODOT_get_color.bind("StyleBoxLine", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_thickness;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_thickness") = _GODOT_set_thickness;
	/**
	
	*/
	void setThickness(in long thickness)
	{
		_GODOT_set_thickness.bind("StyleBoxLine", "set_thickness");
		ptrcall!(void)(_GODOT_set_thickness, _godot_object, thickness);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_thickness;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_thickness") = _GODOT_get_thickness;
	/**
	
	*/
	long getThickness() const
	{
		_GODOT_get_thickness.bind("StyleBoxLine", "get_thickness");
		return ptrcall!(long)(_GODOT_get_thickness, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_grow;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_grow") = _GODOT_set_grow;
	/**
	
	*/
	void setGrow(in double grow)
	{
		_GODOT_set_grow.bind("StyleBoxLine", "set_grow");
		ptrcall!(void)(_GODOT_set_grow, _godot_object, grow);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_grow;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_grow") = _GODOT_get_grow;
	/**
	
	*/
	double getGrow() const
	{
		_GODOT_get_grow.bind("StyleBoxLine", "get_grow");
		return ptrcall!(double)(_GODOT_get_grow, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_vertical;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertical") = _GODOT_set_vertical;
	/**
	
	*/
	void setVertical(in bool vertical)
	{
		_GODOT_set_vertical.bind("StyleBoxLine", "set_vertical");
		ptrcall!(void)(_GODOT_set_vertical, _godot_object, vertical);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_vertical;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_vertical") = _GODOT_is_vertical;
	/**
	
	*/
	bool isVertical() const
	{
		_GODOT_is_vertical.bind("StyleBoxLine", "is_vertical");
		return ptrcall!(bool)(_GODOT_is_vertical, _godot_object);
	}
	/**
	
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
	/**
	
	*/
	@property double grow()
	{
		return getGrow();
	}
	/// ditto
	@property void grow(double v)
	{
		setGrow(v);
	}
	/**
	
	*/
	@property long thickness()
	{
		return getThickness();
	}
	/// ditto
	@property void thickness(long v)
	{
		setThickness(v);
	}
	/**
	
	*/
	@property bool vertical()
	{
		return isVertical();
	}
	/// ditto
	@property void vertical(bool v)
	{
		setVertical(v);
	}
}
