/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.resource;
/**

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
		@GodotName("get_interpolation_mode") GodotMethod!(Gradient.InterpolationMode) getInterpolationMode;
		@GodotName("get_offset") GodotMethod!(double, long) getOffset;
		@GodotName("get_offsets") GodotMethod!(PoolRealArray) getOffsets;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("interpolate") GodotMethod!(Color, double) interpolate;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("set_color") GodotMethod!(void, long, Color) setColor;
		@GodotName("set_colors") GodotMethod!(void, PoolColorArray) setColors;
		@GodotName("set_interpolation_mode") GodotMethod!(void, long) setInterpolationMode;
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
	/// 
	enum InterpolationMode : int
	{
		/** */
		gradientInterpolateLinear = 0,
		/** */
		gradientInterpolateConstant = 1,
		/** */
		gradientInterpolateCubic = 2,
	}
	/// 
	enum Constants : int
	{
		gradientInterpolateLinear = 0,
		gradientInterpolateConstant = 1,
		gradientInterpolateCubic = 2,
	}
	/**
	
	*/
	void addPoint(in double offset, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPoint, _godot_object, offset, color);
	}
	/**
	
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
	
	*/
	Gradient.InterpolationMode getInterpolationMode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Gradient.InterpolationMode)(GDNativeClassBinding.getInterpolationMode, _godot_object);
	}
	/**
	
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
	
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPointCount, _godot_object);
	}
	/**
	
	*/
	Color interpolate(in double offset)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.interpolate, _godot_object, offset);
	}
	/**
	
	*/
	void removePoint(in long point)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePoint, _godot_object, point);
	}
	/**
	
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
	
	*/
	void setInterpolationMode(in long interpolation_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInterpolationMode, _godot_object, interpolation_mode);
	}
	/**
	
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
	
	*/
	@property Gradient.InterpolationMode interpolationMode()
	{
		return getInterpolationMode();
	}
	/// ditto
	@property void interpolationMode(long v)
	{
		setInterpolationMode(v);
	}
	/**
	
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
