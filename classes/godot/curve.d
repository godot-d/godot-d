/**
A mathematic curve.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.curve;
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
A mathematic curve.

A curve that can be saved and re-used for other objects. By default, it ranges between `0` and `1` on the Y axis and positions points relative to the `0.5` Y position.
*/
@GodotBaseClass struct Curve
{
	package(godot) enum string _GODOT_internal_name = "Curve";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_data") GodotMethod!(Array) _getData;
		@GodotName("_set_data") GodotMethod!(void, Array) _setData;
		@GodotName("add_point") GodotMethod!(long, Vector2, double, double, long, long) addPoint;
		@GodotName("bake") GodotMethod!(void) bake;
		@GodotName("clean_dupes") GodotMethod!(void) cleanDupes;
		@GodotName("clear_points") GodotMethod!(void) clearPoints;
		@GodotName("get_bake_resolution") GodotMethod!(long) getBakeResolution;
		@GodotName("get_max_value") GodotMethod!(double) getMaxValue;
		@GodotName("get_min_value") GodotMethod!(double) getMinValue;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("get_point_left_mode") GodotMethod!(Curve.TangentMode, long) getPointLeftMode;
		@GodotName("get_point_left_tangent") GodotMethod!(double, long) getPointLeftTangent;
		@GodotName("get_point_position") GodotMethod!(Vector2, long) getPointPosition;
		@GodotName("get_point_right_mode") GodotMethod!(Curve.TangentMode, long) getPointRightMode;
		@GodotName("get_point_right_tangent") GodotMethod!(double, long) getPointRightTangent;
		@GodotName("interpolate") GodotMethod!(double, double) interpolate;
		@GodotName("interpolate_baked") GodotMethod!(double, double) interpolateBaked;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("set_bake_resolution") GodotMethod!(void, long) setBakeResolution;
		@GodotName("set_max_value") GodotMethod!(void, double) setMaxValue;
		@GodotName("set_min_value") GodotMethod!(void, double) setMinValue;
		@GodotName("set_point_left_mode") GodotMethod!(void, long, long) setPointLeftMode;
		@GodotName("set_point_left_tangent") GodotMethod!(void, long, double) setPointLeftTangent;
		@GodotName("set_point_offset") GodotMethod!(long, long, double) setPointOffset;
		@GodotName("set_point_right_mode") GodotMethod!(void, long, long) setPointRightMode;
		@GodotName("set_point_right_tangent") GodotMethod!(void, long, double) setPointRightTangent;
		@GodotName("set_point_value") GodotMethod!(void, long, double) setPointValue;
	}
	/// 
	pragma(inline, true) bool opEquals(in Curve other) const
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
	/// Construct a new instance of Curve.
	/// Note: use `memnew!Curve` instead.
	static Curve _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Curve");
		if(constructor is null) return typeof(this).init;
		return cast(Curve)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TangentMode : int
	{
		/**
		The tangent on this side of the point is user-defined.
		*/
		tangentFree = 0,
		/**
		The curve calculates the tangent on this side of the point as the slope halfway towards the adjacent point.
		*/
		tangentLinear = 1,
		/**
		The total number of available tangent modes.
		*/
		tangentModeCount = 2,
	}
	/// 
	enum Constants : int
	{
		tangentFree = 0,
		tangentLinear = 1,
		tangentModeCount = 2,
	}
	/**
	
	*/
	Array _getData() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setData(in Array data)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a point to the curve. For each side, if the `*_mode` is $(D constant TANGENT_LINEAR), the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to $(D constant TANGENT_FREE).
	*/
	long addPoint(in Vector2 position, in double left_tangent = 0, in double right_tangent = 0, in long left_mode = 0, in long right_mode = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.addPoint, _godot_object, position, left_tangent, right_tangent, left_mode, right_mode);
	}
	/**
	Recomputes the baked cache of points for the curve.
	*/
	void bake()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bake, _godot_object);
	}
	/**
	Removes points that are closer than `CMP_EPSILON` (0.00001) units to their neighbor on the curve.
	*/
	void cleanDupes()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cleanDupes, _godot_object);
	}
	/**
	Removes all points from the curve.
	*/
	void clearPoints()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearPoints, _godot_object);
	}
	/**
	
	*/
	long getBakeResolution() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBakeResolution, _godot_object);
	}
	/**
	
	*/
	double getMaxValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMaxValue, _godot_object);
	}
	/**
	
	*/
	double getMinValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMinValue, _godot_object);
	}
	/**
	Returns the number of points describing the curve.
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPointCount, _godot_object);
	}
	/**
	Returns the left $(D tangentmode) for the point at `index`.
	*/
	Curve.TangentMode getPointLeftMode(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve.TangentMode)(GDNativeClassBinding.getPointLeftMode, _godot_object, index);
	}
	/**
	Returns the left tangent angle (in degrees) for the point at `index`.
	*/
	double getPointLeftTangent(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPointLeftTangent, _godot_object, index);
	}
	/**
	Returns the curve coordinates for the point at `index`.
	*/
	Vector2 getPointPosition(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointPosition, _godot_object, index);
	}
	/**
	Returns the right $(D tangentmode) for the point at `index`.
	*/
	Curve.TangentMode getPointRightMode(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve.TangentMode)(GDNativeClassBinding.getPointRightMode, _godot_object, index);
	}
	/**
	Returns the right tangent angle (in degrees) for the point at `index`.
	*/
	double getPointRightTangent(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPointRightTangent, _godot_object, index);
	}
	/**
	Returns the Y value for the point that would exist at the X position `offset` along the curve.
	*/
	double interpolate(in double offset) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.interpolate, _godot_object, offset);
	}
	/**
	Returns the Y value for the point that would exist at the X position `offset` along the curve using the baked cache. Bakes the curve's points if not already baked.
	*/
	double interpolateBaked(in double offset)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.interpolateBaked, _godot_object, offset);
	}
	/**
	Removes the point at `index` from the curve.
	*/
	void removePoint(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePoint, _godot_object, index);
	}
	/**
	
	*/
	void setBakeResolution(in long resolution)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBakeResolution, _godot_object, resolution);
	}
	/**
	
	*/
	void setMaxValue(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxValue, _godot_object, max);
	}
	/**
	
	*/
	void setMinValue(in double min)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMinValue, _godot_object, min);
	}
	/**
	Sets the left $(D tangentmode) for the point at `index` to `mode`.
	*/
	void setPointLeftMode(in long index, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointLeftMode, _godot_object, index, mode);
	}
	/**
	Sets the left tangent angle for the point at `index` to `tangent`.
	*/
	void setPointLeftTangent(in long index, in double tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointLeftTangent, _godot_object, index, tangent);
	}
	/**
	Sets the offset from `0.5`.
	*/
	long setPointOffset(in long index, in double offset)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.setPointOffset, _godot_object, index, offset);
	}
	/**
	Sets the right $(D tangentmode) for the point at `index` to `mode`.
	*/
	void setPointRightMode(in long index, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointRightMode, _godot_object, index, mode);
	}
	/**
	Sets the right tangent angle for the point at `index` to `tangent`.
	*/
	void setPointRightTangent(in long index, in double tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointRightTangent, _godot_object, index, tangent);
	}
	/**
	Assigns the vertical position `y` to the point at `index`.
	*/
	void setPointValue(in long index, in double y)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointValue, _godot_object, index, y);
	}
	/**
	
	*/
	@property Array _data()
	{
		return _getData();
	}
	/// ditto
	@property void _data(Array v)
	{
		_setData(v);
	}
	/**
	The number of points to include in the baked (i.e. cached) curve data.
	*/
	@property long bakeResolution()
	{
		return getBakeResolution();
	}
	/// ditto
	@property void bakeResolution(long v)
	{
		setBakeResolution(v);
	}
	/**
	The maximum value the curve can reach.
	*/
	@property double maxValue()
	{
		return getMaxValue();
	}
	/// ditto
	@property void maxValue(double v)
	{
		setMaxValue(v);
	}
	/**
	The minimum value the curve can reach.
	*/
	@property double minValue()
	{
		return getMinValue();
	}
	/// ditto
	@property void minValue(double v)
	{
		setMinValue(v);
	}
}
