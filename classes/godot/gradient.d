/**
A color interpolator resource which can be used to generate colors between user-defined color points.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gradient;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
/**
A color interpolator resource which can be used to generate colors between user-defined color points.

Given a set of colors, this resource will interpolate them in order. This means that if you have color 1, color 2 and color 3, the ramp will interpolate from color 1 to color 2 and from color 2 to color 3. The ramp will initially have 2 colors (black and white), one (black) at ramp lower offset 0 and the other (white) at the ramp higher offset 1.
*/
@GodotBaseClass struct Gradient
{
	package(godot) enum string _GODOT_internal_name = "Gradient";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_point") GodotMethod!(void, double, Color) addPoint;
		@GodotName("get_color") GodotMethod!(Color, long) getColor;
		@GodotName("get_colors") GodotMethod!(PoolColorArray) getColors;
		@GodotName("get_offset") GodotMethod!(double, long) getOffset;
		@GodotName("get_offsets") GodotMethod!(PoolRealArray) getOffsets;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("interpolate") GodotMethod!(Color, double) interpolate;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("set_color") GodotMethod!(void, long, Color) setColor;
		@GodotName("set_colors") GodotMethod!(void, PoolColorArray) setColors;
		@GodotName("set_offset") GodotMethod!(void, long, double) setOffset;
		@GodotName("set_offsets") GodotMethod!(void, PoolRealArray) setOffsets;
	}
	/// 
	pragma(inline, true) bool opEquals(in Gradient other) const
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
	/// Construct a new instance of Gradient.
	/// Note: use `memnew!Gradient` instead.
	static Gradient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Gradient");
		if(constructor is null) return typeof(this).init;
		return cast(Gradient)(constructor());
	}
	@disable new(size_t s);
	/**
	Adds the specified color to the end of the ramp, with the specified offset.
	*/
	void addPoint(in double offset, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPoint, _godot_object, offset, color);
	}
	/**
	Returns the color of the ramp color at index `point`.
	*/
	Color getColor(in long point)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object, point);
	}
	/**
	
	*/
	PoolColorArray getColors() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolColorArray)(GDNativeClassBinding.getColors, _godot_object);
	}
	/**
	Returns the offset of the ramp color at index `point`.
	*/
	double getOffset(in long point)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOffset, _godot_object, point);
	}
	/**
	
	*/
	PoolRealArray getOffsets() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(GDNativeClassBinding.getOffsets, _godot_object);
	}
	/**
	Returns the number of colors in the ramp.
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPointCount, _godot_object);
	}
	/**
	Returns the interpolated color specified by `offset`.
	*/
	Color interpolate(in double offset)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.interpolate, _godot_object, offset);
	}
	/**
	Removes the color at the index `point`.
	*/
	void removePoint(in long point)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePoint, _godot_object, point);
	}
	/**
	Sets the color of the ramp color at index `point`.
	*/
	void setColor(in long point, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColor, _godot_object, point, color);
	}
	/**
	
	*/
	void setColors(in PoolColorArray colors)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColors, _godot_object, colors);
	}
	/**
	Sets the offset for the ramp color at index `point`.
	*/
	void setOffset(in long point, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOffset, _godot_object, point, offset);
	}
	/**
	
	*/
	void setOffsets(in PoolRealArray offsets)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOffsets, _godot_object, offsets);
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
}
