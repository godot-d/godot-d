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
import godot.reference;
/**
Color interpolator node.

Given a set of colors, this node will interpolate them in order, meaning, that if you have color 1, color 2 and color3, the ramp will interpolate (generate the colors between two colors) from color 1 to color 2 and from color 2 to color 3. Initially the ramp will have 2 colors (black and white), one (black) at ramp lower offset offset 0 and the other (white) at the ramp higher offset 1.
*/
@GodotBaseClass struct Gradient
{
	enum string _GODOT_internal_name = "Gradient";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_point") GodotMethod!(void, double, Color) addPoint;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("set_offset") GodotMethod!(void, long, double) setOffset;
		@GodotName("get_offset") GodotMethod!(double, long) getOffset;
		@GodotName("set_color") GodotMethod!(void, long, Color) setColor;
		@GodotName("get_color") GodotMethod!(Color, long) getColor;
		@GodotName("interpolate") GodotMethod!(Color, double) interpolate;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("set_offsets") GodotMethod!(void, PoolRealArray) setOffsets;
		@GodotName("get_offsets") GodotMethod!(PoolRealArray) getOffsets;
		@GodotName("set_colors") GodotMethod!(void, PoolColorArray) setColors;
		@GodotName("get_colors") GodotMethod!(PoolColorArray) getColors;
	}
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
	/**
	Adds the specified color to the end of the ramp, with the specified offset
	*/
	void addPoint(in double offset, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPoint, _godot_object, offset, color);
	}
	/**
	Removes the color at the index $(I offset)
	*/
	void removePoint(in long offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removePoint, _godot_object, offset);
	}
	/**
	Sets the offset for the ramp color at index $(I point)
	*/
	void setOffset(in long point, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffset, _godot_object, point, offset);
	}
	/**
	Returns the offset of the ramp color at index $(I point)
	*/
	double getOffset(in long point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getOffset, _godot_object, point);
	}
	/**
	Sets the color of the ramp color at index $(I point)
	*/
	void setColor(in long point, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColor, _godot_object, point, color);
	}
	/**
	Returns the color of the ramp color at index $(I point)
	*/
	Color getColor(in long point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object, point);
	}
	/**
	Returns the interpolated color specified by $(I offset)
	*/
	Color interpolate(in double offset)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.interpolate, _godot_object, offset);
	}
	/**
	Returns the number of colors in the ramp
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPointCount, _godot_object);
	}
	/**
	
	*/
	void setOffsets(in PoolRealArray offsets)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffsets, _godot_object, offsets);
	}
	/**
	
	*/
	PoolRealArray getOffsets() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(_classBinding.getOffsets, _godot_object);
	}
	/**
	
	*/
	void setColors(in PoolColorArray colors)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColors, _godot_object, colors);
	}
	/**
	
	*/
	PoolColorArray getColors() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolColorArray)(_classBinding.getColors, _godot_object);
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
