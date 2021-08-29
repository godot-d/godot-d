/**
Describes a Bézier curve in 2D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.curve2d;
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
Describes a Bézier curve in 2D space.

This class describes a Bézier curve in 2D space. It is mainly used to give a shape to a $(D Path2D), but can be manually sampled for other purposes.
It keeps a cache of precalculated points along the curve, to speed up further calculations.
*/
@GodotBaseClass struct Curve2D
{
	package(godot) enum string _GODOT_internal_name = "Curve2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_data") GodotMethod!(Dictionary) _getData;
		@GodotName("_set_data") GodotMethod!(void, Dictionary) _setData;
		@GodotName("add_point") GodotMethod!(void, Vector2, Vector2, Vector2, long) addPoint;
		@GodotName("clear_points") GodotMethod!(void) clearPoints;
		@GodotName("get_bake_interval") GodotMethod!(double) getBakeInterval;
		@GodotName("get_baked_length") GodotMethod!(double) getBakedLength;
		@GodotName("get_baked_points") GodotMethod!(PoolVector2Array) getBakedPoints;
		@GodotName("get_closest_offset") GodotMethod!(double, Vector2) getClosestOffset;
		@GodotName("get_closest_point") GodotMethod!(Vector2, Vector2) getClosestPoint;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("get_point_in") GodotMethod!(Vector2, long) getPointIn;
		@GodotName("get_point_out") GodotMethod!(Vector2, long) getPointOut;
		@GodotName("get_point_position") GodotMethod!(Vector2, long) getPointPosition;
		@GodotName("interpolate") GodotMethod!(Vector2, long, double) interpolate;
		@GodotName("interpolate_baked") GodotMethod!(Vector2, double, bool) interpolateBaked;
		@GodotName("interpolatef") GodotMethod!(Vector2, double) interpolatef;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("set_bake_interval") GodotMethod!(void, double) setBakeInterval;
		@GodotName("set_point_in") GodotMethod!(void, long, Vector2) setPointIn;
		@GodotName("set_point_out") GodotMethod!(void, long, Vector2) setPointOut;
		@GodotName("set_point_position") GodotMethod!(void, long, Vector2) setPointPosition;
		@GodotName("tessellate") GodotMethod!(PoolVector2Array, long, double) tessellate;
	}
	/// 
	pragma(inline, true) bool opEquals(in Curve2D other) const
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
	/// Construct a new instance of Curve2D.
	/// Note: use `memnew!Curve2D` instead.
	static Curve2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Curve2D");
		if(constructor is null) return typeof(this).init;
		return cast(Curve2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	void _setData(in Dictionary arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a point to a curve at `position`, with control points `in` and `out`.
	If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt;0` or `at_position &gt;= $(D getPointCount)`), the point will be appended at the end of the point list.
	*/
	void addPoint(in Vector2 position, in Vector2 _in = Vector2(0, 0), in Vector2 _out = Vector2(0, 0), in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPoint, _godot_object, position, _in, _out, at_position);
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
	double getBakeInterval() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBakeInterval, _godot_object);
	}
	/**
	Returns the total length of the curve, based on the cached points. Given enough density (see $(D bakeInterval)), it should be approximate enough.
	*/
	double getBakedLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBakedLength, _godot_object);
	}
	/**
	Returns the cache of points as a $(D PoolVector2Array).
	*/
	PoolVector2Array getBakedPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getBakedPoints, _godot_object);
	}
	/**
	Returns the closest offset to `to_point`. This offset is meant to be used in $(D interpolateBaked).
	`to_point` must be in this curve's local space.
	*/
	double getClosestOffset(in Vector2 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getClosestOffset, _godot_object, to_point);
	}
	/**
	Returns the closest baked point (in curve's local space) to `to_point`.
	`to_point` must be in this curve's local space.
	*/
	Vector2 getClosestPoint(in Vector2 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getClosestPoint, _godot_object, to_point);
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
	Returns the position of the control point leading to the vertex `idx`. The returned position is relative to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0)`.
	*/
	Vector2 getPointIn(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointIn, _godot_object, idx);
	}
	/**
	Returns the position of the control point leading out of the vertex `idx`. The returned position is relative to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0)`.
	*/
	Vector2 getPointOut(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointOut, _godot_object, idx);
	}
	/**
	Returns the position of the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0)`.
	*/
	Vector2 getPointPosition(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointPosition, _godot_object, idx);
	}
	/**
	Returns the position between the vertex `idx` and the vertex `idx + 1`, where `t` controls if the point is the first vertex (`t = 0.0`), the last vertex (`t = 1.0`), or in between. Values of `t` outside the range (`0.0 &gt;= t &lt;=1`) give strange, but predictable results.
	If `idx` is out of bounds it is truncated to the first or last vertex, and `t` is ignored. If the curve has no points, the function sends an error to the console, and returns `(0, 0)`.
	*/
	Vector2 interpolate(in long idx, in double t) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.interpolate, _godot_object, idx, t);
	}
	/**
	Returns a point within the curve at position `offset`, where `offset` is measured as a pixel distance along the curve.
	To do that, it finds the two cached points where the `offset` lies between, then interpolates the values. This interpolation is cubic if `cubic` is set to `true`, or linear if set to `false`.
	Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).
	*/
	Vector2 interpolateBaked(in double offset, in bool cubic = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.interpolateBaked, _godot_object, offset, cubic);
	}
	/**
	Returns the position at the vertex `fofs`. It calls $(D interpolate) using the integer part of `fofs` as `idx`, and its fractional part as `t`.
	*/
	Vector2 interpolatef(in double fofs) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.interpolatef, _godot_object, fofs);
	}
	/**
	Deletes the point `idx` from the curve. Sends an error to the console if `idx` is out of bounds.
	*/
	void removePoint(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePoint, _godot_object, idx);
	}
	/**
	
	*/
	void setBakeInterval(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBakeInterval, _godot_object, distance);
	}
	/**
	Sets the position of the control point leading to the vertex `idx`. If the index is out of bounds, the function sends an error to the console. The position is relative to the vertex.
	*/
	void setPointIn(in long idx, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointIn, _godot_object, idx, position);
	}
	/**
	Sets the position of the control point leading out of the vertex `idx`. If the index is out of bounds, the function sends an error to the console. The position is relative to the vertex.
	*/
	void setPointOut(in long idx, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointOut, _godot_object, idx, position);
	}
	/**
	Sets the position for the vertex `idx`. If the index is out of bounds, the function sends an error to the console.
	*/
	void setPointPosition(in long idx, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointPosition, _godot_object, idx, position);
	}
	/**
	Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.
	This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.
	`max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!
	`tolerance_degrees` controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.
	*/
	PoolVector2Array tessellate(in long max_stages = 5, in double tolerance_degrees = 4) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.tessellate, _godot_object, max_stages, tolerance_degrees);
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
}
