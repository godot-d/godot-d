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
/**
A mathematic curve.

A curve that can be saved and re-used for other objects. By default it ranges between `0` and `1` on the y-axis and positions points relative to the `0.5` y-position.
*/
@GodotBaseClass struct Curve
{
	static immutable string _GODOT_internal_name = "Curve";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(long, Vector2, double, double, long, long) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	/**
	Adds a point to the curve. For each side, if the `*_mode` is `TANGENT_LINEAR`, the `*_tangent` angle (in degrees) uses the slope of the curve halfway to the adjacent point. Allows custom assignments to the `*_tangent` angle if `*_mode` is set to `TANGENT_FREE`.
	*/
	long addPoint(in Vector2 position, in double left_tangent = 0, in double right_tangent = 0, in long left_mode = 0, in long right_mode = 0)
	{
		_GODOT_add_point.bind("Curve", "add_point");
		return ptrcall!(long)(_GODOT_add_point, _godot_object, position, left_tangent, right_tangent, left_mode, right_mode);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	/**
	Removes the point at `index` from the curve.
	*/
	void removePoint(in long index)
	{
		_GODOT_remove_point.bind("Curve", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, index);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_points") = _GODOT_clear_points;
	/**
	Removes all points from the curve.
	*/
	void clearPoints()
	{
		_GODOT_clear_points.bind("Curve", "clear_points");
		ptrcall!(void)(_GODOT_clear_points, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_position") = _GODOT_get_point_position;
	/**
	Returns the curve coordinates for the point at `index`.
	*/
	Vector2 getPointPosition(in long index) const
	{
		_GODOT_get_point_position.bind("Curve", "get_point_position");
		return ptrcall!(Vector2)(_GODOT_get_point_position, _godot_object, index);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_point_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_value") = _GODOT_set_point_value;
	/**
	Assigns the vertical position `y` to the point at `index`.
	*/
	void setPointValue(in long index, in double y)
	{
		_GODOT_set_point_value.bind("Curve", "set_point_value");
		ptrcall!(void)(_GODOT_set_point_value, _godot_object, index, y);
	}
	package(godot) static GodotMethod!(long, long, double) _GODOT_set_point_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_offset") = _GODOT_set_point_offset;
	/**
	Sets the offset from `0.5`
	*/
	long setPointOffset(in long index, in double offset)
	{
		_GODOT_set_point_offset.bind("Curve", "set_point_offset");
		return ptrcall!(long)(_GODOT_set_point_offset, _godot_object, index, offset);
	}
	package(godot) static GodotMethod!(double, double) _GODOT_interpolate;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate") = _GODOT_interpolate;
	/**
	Returns the y value for the point that would exist at x-position `offset` along the curve.
	*/
	double interpolate(in double offset) const
	{
		_GODOT_interpolate.bind("Curve", "interpolate");
		return ptrcall!(double)(_GODOT_interpolate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(double, double) _GODOT_interpolate_baked;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_baked") = _GODOT_interpolate_baked;
	/**
	Returns the y value for the point that would exist at x-position `offset` along the curve using the baked cache. Bakes the curve's points if not already baked.
	*/
	double interpolateBaked(in double offset)
	{
		_GODOT_interpolate_baked.bind("Curve", "interpolate_baked");
		return ptrcall!(double)(_GODOT_interpolate_baked, _godot_object, offset);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_point_left_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_left_tangent") = _GODOT_get_point_left_tangent;
	/**
	Returns the left tangent angle (in degrees) for the point at `index`.
	*/
	double getPointLeftTangent(in long index) const
	{
		_GODOT_get_point_left_tangent.bind("Curve", "get_point_left_tangent");
		return ptrcall!(double)(_GODOT_get_point_left_tangent, _godot_object, index);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_point_right_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_right_tangent") = _GODOT_get_point_right_tangent;
	/**
	Returns the right tangent angle (in degrees) for the point at `index`.
	*/
	double getPointRightTangent(in long index) const
	{
		_GODOT_get_point_right_tangent.bind("Curve", "get_point_right_tangent");
		return ptrcall!(double)(_GODOT_get_point_right_tangent, _godot_object, index);
	}
	package(godot) static GodotMethod!(Curve.TangentMode, long) _GODOT_get_point_left_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_left_mode") = _GODOT_get_point_left_mode;
	/**
	Returns the left `TangentMode` for the point at `index`.
	*/
	Curve.TangentMode getPointLeftMode(in long index) const
	{
		_GODOT_get_point_left_mode.bind("Curve", "get_point_left_mode");
		return ptrcall!(Curve.TangentMode)(_GODOT_get_point_left_mode, _godot_object, index);
	}
	package(godot) static GodotMethod!(Curve.TangentMode, long) _GODOT_get_point_right_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_right_mode") = _GODOT_get_point_right_mode;
	/**
	Returns the right `TangentMode` for the point at `index`.
	*/
	Curve.TangentMode getPointRightMode(in long index) const
	{
		_GODOT_get_point_right_mode.bind("Curve", "get_point_right_mode");
		return ptrcall!(Curve.TangentMode)(_GODOT_get_point_right_mode, _godot_object, index);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_point_left_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_left_tangent") = _GODOT_set_point_left_tangent;
	/**
	Sets the left tangent angle for the point at `index` to `tangent`.
	*/
	void setPointLeftTangent(in long index, in double tangent)
	{
		_GODOT_set_point_left_tangent.bind("Curve", "set_point_left_tangent");
		ptrcall!(void)(_GODOT_set_point_left_tangent, _godot_object, index, tangent);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_point_right_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_right_tangent") = _GODOT_set_point_right_tangent;
	/**
	Sets the right tangent angle for the point at `index` to `tangent`.
	*/
	void setPointRightTangent(in long index, in double tangent)
	{
		_GODOT_set_point_right_tangent.bind("Curve", "set_point_right_tangent");
		ptrcall!(void)(_GODOT_set_point_right_tangent, _godot_object, index, tangent);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_point_left_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_left_mode") = _GODOT_set_point_left_mode;
	/**
	Sets the left `TangentMode` for the point at `index` to `mode`.
	*/
	void setPointLeftMode(in long index, in long mode)
	{
		_GODOT_set_point_left_mode.bind("Curve", "set_point_left_mode");
		ptrcall!(void)(_GODOT_set_point_left_mode, _godot_object, index, mode);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_point_right_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_right_mode") = _GODOT_set_point_right_mode;
	/**
	Sets the right `TangentMode` for the point at `index` to `mode`.
	*/
	void setPointRightMode(in long index, in long mode)
	{
		_GODOT_set_point_right_mode.bind("Curve", "set_point_right_mode");
		ptrcall!(void)(_GODOT_set_point_right_mode, _godot_object, index, mode);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_min_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_min_value") = _GODOT_get_min_value;
	/**
	
	*/
	double getMinValue() const
	{
		_GODOT_get_min_value.bind("Curve", "get_min_value");
		return ptrcall!(double)(_GODOT_get_min_value, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_min_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_min_value") = _GODOT_set_min_value;
	/**
	
	*/
	void setMinValue(in double min)
	{
		_GODOT_set_min_value.bind("Curve", "set_min_value");
		ptrcall!(void)(_GODOT_set_min_value, _godot_object, min);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_max_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_value") = _GODOT_get_max_value;
	/**
	
	*/
	double getMaxValue() const
	{
		_GODOT_get_max_value.bind("Curve", "get_max_value");
		return ptrcall!(double)(_GODOT_get_max_value, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_max_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_value") = _GODOT_set_max_value;
	/**
	
	*/
	void setMaxValue(in double max)
	{
		_GODOT_set_max_value.bind("Curve", "set_max_value");
		ptrcall!(void)(_GODOT_set_max_value, _godot_object, max);
	}
	package(godot) static GodotMethod!(void) _GODOT_clean_dupes;
	package(godot) alias _GODOT_methodBindInfo(string name : "clean_dupes") = _GODOT_clean_dupes;
	/**
	Removes points that are closer than `CMP_EPSILON` (0.00001) units to their neighbor on the curve.
	*/
	void cleanDupes()
	{
		_GODOT_clean_dupes.bind("Curve", "clean_dupes");
		ptrcall!(void)(_GODOT_clean_dupes, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_bake;
	package(godot) alias _GODOT_methodBindInfo(string name : "bake") = _GODOT_bake;
	/**
	Recomputes the baked cache of points for the curve.
	*/
	void bake()
	{
		_GODOT_bake.bind("Curve", "bake");
		ptrcall!(void)(_GODOT_bake, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_bake_resolution;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_resolution") = _GODOT_get_bake_resolution;
	/**
	
	*/
	long getBakeResolution() const
	{
		_GODOT_get_bake_resolution.bind("Curve", "get_bake_resolution");
		return ptrcall!(long)(_GODOT_get_bake_resolution, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_bake_resolution;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bake_resolution") = _GODOT_set_bake_resolution;
	/**
	
	*/
	void setBakeResolution(in long resolution)
	{
		_GODOT_set_bake_resolution.bind("Curve", "set_bake_resolution");
		ptrcall!(void)(_GODOT_set_bake_resolution, _godot_object, resolution);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	/**
	
	*/
	Array _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
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
