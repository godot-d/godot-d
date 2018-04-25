/**
Color interpolator node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gradient;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
/**
Color interpolator node.

Given a set of colors, this node will interpolate them in order, meaning, that if you have color 1, color 2 and color3, the ramp will interpolate (generate the colors between two colors) from color 1 to color 2 and from color 2 to color 3. Initially the ramp will have 2 colors (black and white), one (black) at ramp lower offset offset 0 and the other (white) at the ramp higher offset 1.
*/
@GodotBaseClass struct Gradient
{
	static immutable string _GODOT_internal_name = "Gradient";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Gradient other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Gradient opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Gradient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Gradient");
		if(constructor is null) return typeof(this).init;
		return cast(Gradient)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, double, Color) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	/**
	Adds the specified color to the end of the ramp, with the specified offset
	*/
	void addPoint(in double offset, in Color color)
	{
		_GODOT_add_point.bind("Gradient", "add_point");
		ptrcall!(void)(_GODOT_add_point, _godot_object, offset, color);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	/**
	Removes the color at the index $(I offset)
	*/
	void removePoint(in long offset)
	{
		_GODOT_remove_point.bind("Gradient", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	Sets the offset for the ramp color at index $(I point)
	*/
	void setOffset(in long point, in double offset)
	{
		_GODOT_set_offset.bind("Gradient", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, point, offset);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	Returns the offset of the ramp color at index $(I point)
	*/
	double getOffset(in long point) const
	{
		_GODOT_get_offset.bind("Gradient", "get_offset");
		return ptrcall!(double)(_GODOT_get_offset, _godot_object, point);
	}
	package(godot) static GodotMethod!(void, long, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	/**
	Sets the color of the ramp color at index $(I point)
	*/
	void setColor(in long point, in Color color)
	{
		_GODOT_set_color.bind("Gradient", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, point, color);
	}
	package(godot) static GodotMethod!(Color, long) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	/**
	Returns the color of the ramp color at index $(I point)
	*/
	Color getColor(in long point) const
	{
		_GODOT_get_color.bind("Gradient", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object, point);
	}
	package(godot) static GodotMethod!(Color, double) _GODOT_interpolate;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate") = _GODOT_interpolate;
	/**
	Returns the interpolated color specified by $(I offset)
	*/
	Color interpolate(in double offset)
	{
		_GODOT_interpolate.bind("Gradient", "interpolate");
		return ptrcall!(Color)(_GODOT_interpolate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_count") = _GODOT_get_point_count;
	/**
	Returns the number of colors in the ramp
	*/
	long getPointCount() const
	{
		_GODOT_get_point_count.bind("Gradient", "get_point_count");
		return ptrcall!(long)(_GODOT_get_point_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolRealArray) _GODOT_set_offsets;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offsets") = _GODOT_set_offsets;
	/**
	
	*/
	void setOffsets(in PoolRealArray offsets)
	{
		_GODOT_set_offsets.bind("Gradient", "set_offsets");
		ptrcall!(void)(_GODOT_set_offsets, _godot_object, offsets);
	}
	package(godot) static GodotMethod!(PoolRealArray) _GODOT_get_offsets;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offsets") = _GODOT_get_offsets;
	/**
	
	*/
	PoolRealArray getOffsets() const
	{
		_GODOT_get_offsets.bind("Gradient", "get_offsets");
		return ptrcall!(PoolRealArray)(_GODOT_get_offsets, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolColorArray) _GODOT_set_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_colors") = _GODOT_set_colors;
	/**
	
	*/
	void setColors(in PoolColorArray colors)
	{
		_GODOT_set_colors.bind("Gradient", "set_colors");
		ptrcall!(void)(_GODOT_set_colors, _godot_object, colors);
	}
	package(godot) static GodotMethod!(PoolColorArray) _GODOT_get_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_colors") = _GODOT_get_colors;
	/**
	
	*/
	PoolColorArray getColors() const
	{
		_GODOT_get_colors.bind("Gradient", "get_colors");
		return ptrcall!(PoolColorArray)(_GODOT_get_colors, _godot_object);
	}
	/**
	Gradient's offsets returned as a $(D PoolRealArray).
	*/
	@property PoolRealArray offsets()
	{
		return getOffsets();
	}
	/// ditto
	@property void offsets(PoolRealArray v)
	{
		setOffsets(v);
	}
	/**
	Gradient's colors returned as a $(D PoolColorArray).
	*/
	@property PoolColorArray colors()
	{
		return getColors();
	}
	/// ditto
	@property void colors(PoolColorArray v)
	{
		setColors(v);
	}
}
