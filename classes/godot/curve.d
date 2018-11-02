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
A mathematic curve.

A curve that can be saved and re-used for other objects. By default it ranges between `0` and `1` on the y-axis and positions points relative to the `0.5` y-position.
*/
@GodotBaseClass struct Curve
{
	enum string _GODOT_internal_name = "Curve";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("add_point") GodotMethod!(long, Vector2, double, double, long, long) addPoint;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("clear_points") GodotMethod!(void) clearPoints;
		@GodotName("get_point_position") GodotMethod!(Vector2, long) getPointPosition;
		@GodotName("set_point_value") GodotMethod!(void, long, double) setPointValue;
		@GodotName("set_point_offset") GodotMethod!(long, long, double) setPointOffset;
		@GodotName("interpolate") GodotMethod!(double, double) interpolate;
		@GodotName("interpolate_baked") GodotMethod!(double, double) interpolateBaked;
		@GodotName("get_point_left_tangent") GodotMethod!(double, long) getPointLeftTangent;
		@GodotName("get_point_right_tangent") GodotMethod!(double, long) getPointRightTangent;
		@GodotName("get_point_left_mode") GodotMethod!(Curve.TangentMode, long) getPointLeftMode;
		@GodotName("get_point_right_mode") GodotMethod!(Curve.TangentMode, long) getPointRightMode;
		@GodotName("set_point_left_tangent") GodotMethod!(void, long, double) setPointLeftTangent;
		@GodotName("set_point_right_tangent") GodotMethod!(void, long, double) setPointRightTangent;
		@GodotName("set_point_left_mode") GodotMethod!(void, long, long) setPointLeftMode;
		@GodotName("set_point_right_mode") GodotMethod!(void, long, long) setPointRightMode;
		@GodotName("get_min_value") GodotMethod!(double) getMinValue;
		@GodotName("set_min_value") GodotMethod!(void, double) setMinValue;
		@GodotName("get_max_value") GodotMethod!(double) getMaxValue;
		@GodotName("set_max_value") GodotMethod!(void, double) setMaxValue;
		@GodotName("clean_dupes") GodotMethod!(void) cleanDupes;
		@GodotName("bake") GodotMethod!(void) bake;
		@GodotName("get_bake_resolution") GodotMethod!(long) getBakeResolution;
		@GodotName("set_bake_resolution") GodotMethod!(void, long) setBakeResolution;
		@GodotName("_get_data") GodotMethod!(Array) _getData;
		@GodotName("_set_data") GodotMethod!(void, Array) _setData;
	}
	bool opEquals(in Curve other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Curve opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	Returns the number of points describing the curve.
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPointCount, _godot_object);
	}
	/**
	Adds a point to the curve. For each side, if the `*_mode` is `TANGENT_LINEAR`, the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to `TANGENT_FREE`.
	*/
	long addPoint(in Vector2 position, in double left_tangent = 0, in double right_tangent = 0, in long left_mode = 0, in long right_mode = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.addPoint, _godot_object, position, left_tangent, right_tangent, left_mode, right_mode);
	}
	/**
	Removes the point at `index` from the curve.
	*/
	void removePoint(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removePoint, _godot_object, index);
	}
	/**
	Removes all points from the curve.
	*/
	void clearPoints()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearPoints, _godot_object);
	}
	/**
	Returns the curve coordinates for the point at `index`.
	*/
	Vector2 getPointPosition(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getPointPosition, _godot_object, index);
	}
	/**
	Assigns the vertical position `y` to the point at `index`.
	*/
	void setPointValue(in long index, in double y)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointValue, _godot_object, index, y);
	}
	/**
	Sets the offset from `0.5`
	*/
	long setPointOffset(in long index, in double offset)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.setPointOffset, _godot_object, index, offset);
	}
	/**
	Returns the y value for the point that would exist at x-position `offset` along the curve.
	*/
	double interpolate(in double offset) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.interpolate, _godot_object, offset);
	}
	/**
	Returns the y value for the point that would exist at x-position `offset` along the curve using the baked cache. Bakes the curve's points if not already baked.
	*/
	double interpolateBaked(in double offset)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.interpolateBaked, _godot_object, offset);
	}
	/**
	Returns the left tangent angle (in degrees) for the point at `index`.
	*/
	double getPointLeftTangent(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPointLeftTangent, _godot_object, index);
	}
	/**
	Returns the right tangent angle (in degrees) for the point at `index`.
	*/
	double getPointRightTangent(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPointRightTangent, _godot_object, index);
	}
	/**
	Returns the left `TangentMode` for the point at `index`.
	*/
	Curve.TangentMode getPointLeftMode(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve.TangentMode)(_classBinding.getPointLeftMode, _godot_object, index);
	}
	/**
	Returns the right `TangentMode` for the point at `index`.
	*/
	Curve.TangentMode getPointRightMode(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve.TangentMode)(_classBinding.getPointRightMode, _godot_object, index);
	}
	/**
	Sets the left tangent angle for the point at `index` to `tangent`.
	*/
	void setPointLeftTangent(in long index, in double tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointLeftTangent, _godot_object, index, tangent);
	}
	/**
	Sets the right tangent angle for the point at `index` to `tangent`.
	*/
	void setPointRightTangent(in long index, in double tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointRightTangent, _godot_object, index, tangent);
	}
	/**
	Sets the left `TangentMode` for the point at `index` to `mode`.
	*/
	void setPointLeftMode(in long index, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointLeftMode, _godot_object, index, mode);
	}
	/**
	Sets the right `TangentMode` for the point at `index` to `mode`.
	*/
	void setPointRightMode(in long index, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointRightMode, _godot_object, index, mode);
	}
	/**
	
	*/
	double getMinValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMinValue, _godot_object);
	}
	/**
	
	*/
	void setMinValue(in double min)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMinValue, _godot_object, min);
	}
	/**
	
	*/
	double getMaxValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMaxValue, _godot_object);
	}
	/**
	
	*/
	void setMaxValue(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxValue, _godot_object, max);
	}
	/**
	Removes points that are closer than `CMP_EPSILON` (0.00001) units to their neighbor on the curve.
	*/
	void cleanDupes()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cleanDupes, _godot_object);
	}
	/**
	Recomputes the baked cache of points for the curve.
	*/
	void bake()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bake, _godot_object);
	}
	/**
	
	*/
	long getBakeResolution() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBakeResolution, _godot_object);
	}
	/**
	
	*/
	void setBakeResolution(in long resolution)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBakeResolution, _godot_object, resolution);
	}
	/**
	
	*/
	Array _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setData(in Array data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The minimum value the curve can reach. Default value: `0`.
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
	/**
	The maximum value the curve can reach. Default value: `1`.
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
}
