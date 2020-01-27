/**
Describes a Bézier curve in 3D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.curve3d;
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
Describes a Bézier curve in 3D space.

This class describes a Bézier curve in 3D space. It is mainly used to give a shape to a $(D Path), but can be manually sampled for other purposes.
It keeps a cache of precalculated points along the curve, to speed up further calculations.
*/
@GodotBaseClass struct Curve3D
{
	enum string _GODOT_internal_name = "Curve3D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_get_data") GodotMethod!(Dictionary) _getData;
		@GodotName("_set_data") GodotMethod!(void, Dictionary) _setData;
		@GodotName("add_point") GodotMethod!(void, Vector3, Vector3, Vector3, long) addPoint;
		@GodotName("clear_points") GodotMethod!(void) clearPoints;
		@GodotName("get_bake_interval") GodotMethod!(double) getBakeInterval;
		@GodotName("get_baked_length") GodotMethod!(double) getBakedLength;
		@GodotName("get_baked_points") GodotMethod!(PoolVector3Array) getBakedPoints;
		@GodotName("get_baked_tilts") GodotMethod!(PoolRealArray) getBakedTilts;
		@GodotName("get_baked_up_vectors") GodotMethod!(PoolVector3Array) getBakedUpVectors;
		@GodotName("get_closest_offset") GodotMethod!(double, Vector3) getClosestOffset;
		@GodotName("get_closest_point") GodotMethod!(Vector3, Vector3) getClosestPoint;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("get_point_in") GodotMethod!(Vector3, long) getPointIn;
		@GodotName("get_point_out") GodotMethod!(Vector3, long) getPointOut;
		@GodotName("get_point_position") GodotMethod!(Vector3, long) getPointPosition;
		@GodotName("get_point_tilt") GodotMethod!(double, long) getPointTilt;
		@GodotName("interpolate") GodotMethod!(Vector3, long, double) interpolate;
		@GodotName("interpolate_baked") GodotMethod!(Vector3, double, bool) interpolateBaked;
		@GodotName("interpolate_baked_up_vector") GodotMethod!(Vector3, double, bool) interpolateBakedUpVector;
		@GodotName("interpolatef") GodotMethod!(Vector3, double) interpolatef;
		@GodotName("is_up_vector_enabled") GodotMethod!(bool) isUpVectorEnabled;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("set_bake_interval") GodotMethod!(void, double) setBakeInterval;
		@GodotName("set_point_in") GodotMethod!(void, long, Vector3) setPointIn;
		@GodotName("set_point_out") GodotMethod!(void, long, Vector3) setPointOut;
		@GodotName("set_point_position") GodotMethod!(void, long, Vector3) setPointPosition;
		@GodotName("set_point_tilt") GodotMethod!(void, long, double) setPointTilt;
		@GodotName("set_up_vector_enabled") GodotMethod!(void, bool) setUpVectorEnabled;
		@GodotName("tessellate") GodotMethod!(PoolVector3Array, long, double) tessellate;
	}
	bool opEquals(in Curve3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Curve3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Curve3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Curve3D");
		if(constructor is null) return typeof(this).init;
		return cast(Curve3D)(constructor());
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
	void addPoint(in Vector3 position, in Vector3 _in = Vector3(0, 0, 0), in Vector3 _out = Vector3(0, 0, 0), in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPoint, _godot_object, position, _in, _out, at_position);
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
	
	*/
	double getBakeInterval() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBakeInterval, _godot_object);
	}
	/**
	Returns the total length of the curve, based on the cached points. Given enough density (see $(D bakeInterval)), it should be approximate enough.
	*/
	double getBakedLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBakedLength, _godot_object);
	}
	/**
	Returns the cache of points as a $(D PoolVector3Array).
	*/
	PoolVector3Array getBakedPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.getBakedPoints, _godot_object);
	}
	/**
	Returns the cache of tilts as a $(D PoolRealArray).
	*/
	PoolRealArray getBakedTilts() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(_classBinding.getBakedTilts, _godot_object);
	}
	/**
	Returns the cache of up vectors as a $(D PoolVector3Array).
	If $(D upVectorEnabled) is `false`, the cache will be empty.
	*/
	PoolVector3Array getBakedUpVectors() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.getBakedUpVectors, _godot_object);
	}
	/**
	Returns the closest offset to `to_point`. This offset is meant to be used in $(D interpolateBaked) or $(D interpolateBakedUpVector).
	`to_point` must be in this curve's local space.
	*/
	double getClosestOffset(in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getClosestOffset, _godot_object, to_point);
	}
	/**
	Returns the closest point (in curve's local space) to `to_point`.
	`to_point` must be in this curve's local space.
	*/
	Vector3 getClosestPoint(in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getClosestPoint, _godot_object, to_point);
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
	Returns the position of the control point leading to the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0, 0)`.
	*/
	Vector3 getPointIn(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getPointIn, _godot_object, idx);
	}
	/**
	Returns the position of the control point leading out of the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0, 0)`.
	*/
	Vector3 getPointOut(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getPointOut, _godot_object, idx);
	}
	/**
	Returns the position of the vertex `idx`. If the index is out of bounds, the function sends an error to the console, and returns `(0, 0, 0)`.
	*/
	Vector3 getPointPosition(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getPointPosition, _godot_object, idx);
	}
	/**
	Returns the tilt angle in radians for the point `idx`. If the index is out of bounds, the function sends an error to the console, and returns `0`.
	*/
	double getPointTilt(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPointTilt, _godot_object, idx);
	}
	/**
	Returns the position between the vertex `idx` and the vertex `idx + 1`, where `t` controls if the point is the first vertex (`t = 0.0`), the last vertex (`t = 1.0`), or in between. Values of `t` outside the range (`0.0 &gt;= t &lt;=1`) give strange, but predictable results.
	If `idx` is out of bounds it is truncated to the first or last vertex, and `t` is ignored. If the curve has no points, the function sends an error to the console, and returns `(0, 0, 0)`.
	*/
	Vector3 interpolate(in long idx, in double t) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.interpolate, _godot_object, idx, t);
	}
	/**
	Returns a point within the curve at position `offset`, where `offset` is measured as a pixel distance along the curve.
	To do that, it finds the two cached points where the `offset` lies between, then interpolates the values. This interpolation is cubic if `cubic` is set to `true`, or linear if set to `false`.
	Cubic interpolation tends to follow the curves better, but linear is faster (and often, precise enough).
	*/
	Vector3 interpolateBaked(in double offset, in bool cubic = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.interpolateBaked, _godot_object, offset, cubic);
	}
	/**
	Returns an up vector within the curve at position `offset`, where `offset` is measured as a distance in 3D units along the curve.
	To do that, it finds the two cached up vectors where the `offset` lies between, then interpolates the values. If `apply_tilt` is `true`, an interpolated tilt is applied to the interpolated up vector.
	If the curve has no up vectors, the function sends an error to the console, and returns `(0, 1, 0)`.
	*/
	Vector3 interpolateBakedUpVector(in double offset, in bool apply_tilt = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.interpolateBakedUpVector, _godot_object, offset, apply_tilt);
	}
	/**
	Returns the position at the vertex `fofs`. It calls $(D interpolate) using the integer part of `fofs` as `idx`, and its fractional part as `t`.
	*/
	Vector3 interpolatef(in double fofs) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.interpolatef, _godot_object, fofs);
	}
	/**
	
	*/
	bool isUpVectorEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUpVectorEnabled, _godot_object);
	}
	/**
	Deletes the point `idx` from the curve. Sends an error to the console if `idx` is out of bounds.
	*/
	void removePoint(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removePoint, _godot_object, idx);
	}
	/**
	
	*/
	void setBakeInterval(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBakeInterval, _godot_object, distance);
	}
	/**
	Sets the position of the control point leading to the vertex `idx`. If the index is out of bounds, the function sends an error to the console.
	*/
	void setPointIn(in long idx, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointIn, _godot_object, idx, position);
	}
	/**
	Sets the position of the control point leading out of the vertex `idx`. If the index is out of bounds, the function sends an error to the console.
	*/
	void setPointOut(in long idx, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointOut, _godot_object, idx, position);
	}
	/**
	Sets the position for the vertex `idx`. If the index is out of bounds, the function sends an error to the console.
	*/
	void setPointPosition(in long idx, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointPosition, _godot_object, idx, position);
	}
	/**
	Sets the tilt angle in radians for the point `idx`. If the index is out of bounds, the function sends an error to the console.
	The tilt controls the rotation along the look-at axis an object traveling the path would have. In the case of a curve controlling a $(D PathFollow), this tilt is an offset over the natural tilt the $(D PathFollow) calculates.
	*/
	void setPointTilt(in long idx, in double tilt)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointTilt, _godot_object, idx, tilt);
	}
	/**
	
	*/
	void setUpVectorEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUpVectorEnabled, _godot_object, enable);
	}
	/**
	Returns a list of points along the curve, with a curvature controlled point density. That is, the curvier parts will have more points than the straighter parts.
	This approximation makes straight segments between each point, then subdivides those segments until the resulting shape is similar enough.
	`max_stages` controls how many subdivisions a curve segment may face before it is considered approximate enough. Each subdivision splits the segment in half, so the default 5 stages may mean up to 32 subdivisions per curve segment. Increase with care!
	`tolerance_degrees` controls how many degrees the midpoint of a segment may deviate from the real curve, before the segment has to be subdivided.
	*/
	PoolVector3Array tessellate(in long max_stages = 5, in double tolerance_degrees = 4) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.tessellate, _godot_object, max_stages, tolerance_degrees);
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
	The distance in meters between two adjacent cached points. Changing it forces the cache to be recomputed the next time the $(D getBakedPoints) or $(D getBakedLength) function is called. The smaller the distance, the more points in the cache and the more memory it will consume, so use with care.
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
	If `true`, the curve will bake up vectors used for orientation. This is used when $(D PathFollow.rotationMode) is set to $(D constant PathFollow.ROTATION_ORIENTED). Changing it forces the cache to be recomputed.
	*/
	@property bool upVectorEnabled()
	{
		return isUpVectorEnabled();
	}
	/// ditto
	@property void upVectorEnabled(bool v)
	{
		setUpVectorEnabled(v);
	}
}
