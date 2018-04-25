/**
Describes a Bezier curve in 2D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.curve2d;
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
Describes a Bezier curve in 2D space.

This class describes a Bezier curve in 2D space. It is mainly used to give a shape to a $(D Path2D), but can be manually sampled for other purposes.
It keeps a cache of precalculated points along the curve, to speed further calculations up.
*/
@GodotBaseClass struct Curve2D
{
	static immutable string _GODOT_internal_name = "Curve2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Curve2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Curve2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Curve2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Curve2D");
		if(constructor is null) return typeof(this).init;
		return cast(Curve2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(long) _GODOT_get_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_count") = _GODOT_get_point_count;
	/**
	Returns the number of points describing the curve.
	*/
	long getPointCount() const
	{
		_GODOT_get_point_count.bind("Curve2D", "get_point_count");
		return ptrcall!(long)(_GODOT_get_point_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2, Vector2, Vector2, long) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	/**
	Adds a point to a curve, at "position", with control points "in" and "out".
	If "at_position" is given, the point is inserted before the point number "at_position", moving that point (and every point after) after the inserted point. If "at_position" is not given, or is an illegal value (at_position &lt;0 or at_position &gt;= $(D getPointCount)), the point will be appended at the end of the point list.
	*/
	void addPoint(in Vector2 position, in Vector2 _in = Vector2(0, 0), in Vector2 _out = Vector2(0, 0), in long at_position = -1)
	{
		_GODOT_add_point.bind("Curve2D", "add_point");
		ptrcall!(void)(_GODOT_add_point, _godot_object, position, _in, _out, at_position);
	}
	package(godot) static GodotMethod!(void, long, Vector2) _GODOT_set_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_position") = _GODOT_set_point_position;
	/**
	Sets the position for the vertex "idx". If the index is out of bounds, the function sends an error to the console.
	*/
	void setPointPosition(in long idx, in Vector2 position)
	{
		_GODOT_set_point_position.bind("Curve2D", "set_point_position");
		ptrcall!(void)(_GODOT_set_point_position, _godot_object, idx, position);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_position") = _GODOT_get_point_position;
	/**
	Returns the position of the vertex "idx". If the index is out of bounds, the function sends an error to the console, and returns (0, 0).
	*/
	Vector2 getPointPosition(in long idx) const
	{
		_GODOT_get_point_position.bind("Curve2D", "get_point_position");
		return ptrcall!(Vector2)(_GODOT_get_point_position, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, Vector2) _GODOT_set_point_in;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_in") = _GODOT_set_point_in;
	/**
	Sets the position of the control point leading to the vertex "idx". If the index is out of bounds, the function sends an error to the console.
	*/
	void setPointIn(in long idx, in Vector2 position)
	{
		_GODOT_set_point_in.bind("Curve2D", "set_point_in");
		ptrcall!(void)(_GODOT_set_point_in, _godot_object, idx, position);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_point_in;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_in") = _GODOT_get_point_in;
	/**
	Returns the position of the control point leading to the vertex "idx". If the index is out of bounds, the function sends an error to the console, and returns (0, 0).
	*/
	Vector2 getPointIn(in long idx) const
	{
		_GODOT_get_point_in.bind("Curve2D", "get_point_in");
		return ptrcall!(Vector2)(_GODOT_get_point_in, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long, Vector2) _GODOT_set_point_out;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_out") = _GODOT_set_point_out;
	/**
	Sets the position of the control point leading out of the vertex "idx". If the index is out of bounds, the function sends an error to the console.
	*/
	void setPointOut(in long idx, in Vector2 position)
	{
		_GODOT_set_point_out.bind("Curve2D", "set_point_out");
		ptrcall!(void)(_GODOT_set_point_out, _godot_object, idx, position);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_point_out;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_out") = _GODOT_get_point_out;
	/**
	Returns the position of the control point leading out of the vertex "idx". If the index is out of bounds, the function sends an error to the console, and returns (0, 0).
	*/
	Vector2 getPointOut(in long idx) const
	{
		_GODOT_get_point_out.bind("Curve2D", "get_point_out");
		return ptrcall!(Vector2)(_GODOT_get_point_out, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	/**
	Deletes the point "idx" from the curve. Sends an error to the console if "idx" is out of bounds.
	*/
	void removePoint(in long idx)
	{
		_GODOT_remove_point.bind("Curve2D", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_points") = _GODOT_clear_points;
	/**
	Removes all points from the curve.
	*/
	void clearPoints()
	{
		_GODOT_clear_points.bind("Curve2D", "clear_points");
		ptrcall!(void)(_GODOT_clear_points, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, long, double) _GODOT_interpolate;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate") = _GODOT_interpolate;
	/**
	Returns the position between the vertex "idx" and the vertex "idx"+1, where "t" controls if the point is the first vertex (t = 0.0), the last vertex (t = 1.0), or in between. Values of "t" outside the range (0.0 &gt;= t  &lt;=1) give strange, but predictable results.
	If "idx" is out of bounds it is truncated to the first or last vertex, and "t" is ignored. If the curve has no points, the function sends an error to the console, and returns (0, 0).
	*/
	Vector2 interpolate(in long idx, in double t) const
	{
		_GODOT_interpolate.bind("Curve2D", "interpolate");
		return ptrcall!(Vector2)(_GODOT_interpolate, _godot_object, idx, t);
	}
	package(godot) static GodotMethod!(Vector2, double) _GODOT_interpolatef;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolatef") = _GODOT_interpolatef;
	/**
	Returns the position at the vertex "fofs". It calls $(D interpolate) using the integer part of fofs as "idx", and its fractional part as "t".
	*/
	Vector2 interpolatef(in double fofs) const
	{
		_GODOT_interpolatef.bind("Curve2D", "interpolatef");
		return ptrcall!(Vector2)(_GODOT_interpolatef, _godot_object, fofs);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bake_interval;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bake_interval") = _GODOT_set_bake_interval;
	/**
	
	*/
	void setBakeInterval(in double distance)
	{
		_GODOT_set_bake_interval.bind("Curve2D", "set_bake_interval");
		ptrcall!(void)(_GODOT_set_bake_interval, _godot_object, distance);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bake_interval;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_interval") = _GODOT_get_bake_interval;
	/**
	
	*/
	double getBakeInterval() const
	{
		_GODOT_get_bake_interval.bind("Curve2D", "get_bake_interval");
		return ptrcall!(double)(_GODOT_get_bake_interval, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_baked_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_baked_length") = _GODOT_get_baked_length;
	/**
	Returns the total length of the curve, based on the cached points. Given enough density (see $(D setBakeInterval)), it should be approximate enough.
	*/
	double getBakedLength() const
	{
		_GODOT_get_baked_length.bind("Curve2D", "get_baked_length");
		return ptrcall!(double)(_GODOT_get_baked_length, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, double, bool) _GODOT_interpolate_baked;
	package(godot) alias _GODOT_methodBindInfo(string name : "interpolate_baked") = _GODOT_interpolate_baked;
	/**
	Returns a point within the curve at position "offset", where "offset" is measured as a pixel distance along the curve.
	To do that, it finds the two cached points where the "offset" lies between, then interpolates the values. This interpolation is cubic if "cubic" is set to true, or linear if set to false.
	Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).
	*/
	Vector2 interpolateBaked(in double offset, in bool cubic = false) const
	{
		_GODOT_interpolate_baked.bind("Curve2D", "interpolate_baked");
		return ptrcall!(Vector2)(_GODOT_interpolate_baked, _godot_object, offset, cubic);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_baked_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_baked_points") = _GODOT_get_baked_points;
	/**
	Returns the cache of points as a $(D PoolVector2Array).
	*/
	PoolVector2Array getBakedPoints() const
	{
		_GODOT_get_baked_points.bind("Curve2D", "get_baked_points");
		return ptrcall!(PoolVector2Array)(_GODOT_get_baked_points, _godot_object);
	}
	package(godot) static GodotMethod!(PoolVector2Array, long, double) _GODOT_tessellate;
	package(godot) alias _GODOT_methodBindInfo(string name : "tessellate") = _GODOT_tessellate;
	/**
	Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.
	This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.
	"max_stages" controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!
	"tolerance_degrees" controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.
	*/
	PoolVector2Array tessellate(in long max_stages = 5, in double tolerance_degrees = 4) const
	{
		_GODOT_tessellate.bind("Curve2D", "tessellate");
		return ptrcall!(PoolVector2Array)(_GODOT_tessellate, _godot_object, max_stages, tolerance_degrees);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	/**
	
	*/
	void _setData(in Dictionary arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The distance in pixels between two adjacent cached points. Changing it forces the cache to be recomputed the next time the $(D getBakedPoints) or $(D getBakedLength) function is called. The smaller the distance, the more points in the cache and the more memory it will consume, so use with care.
	*/
	@property double bakeInterval()
	{
		return getBakeInterval();
	}
	/// ditto
	@property void bakeInterval(double v)
	{
		setBakeInterval(v);
	}
	/**
	
	*/
	@property Dictionary _data()
	{
		return _getData();
	}
	/// ditto
	@property void _data(Dictionary v)
	{
		_setData(v);
	}
}
