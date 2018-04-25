/**
Point sampler for a $(D Path2D).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.pathfollow2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
/**
Point sampler for a $(D Path2D).

This node takes its parent $(D Path2D), and returns the coordinates of a point within it, given a distance from the first vertex.
It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be descendants of this node. Then, when setting an offset in this node, the descendant nodes will move accordingly.
*/
@GodotBaseClass struct PathFollow2D
{
	static immutable string _GODOT_internal_name = "PathFollow2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PathFollow2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PathFollow2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PathFollow2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PathFollow2D");
		if(constructor is null) return typeof(this).init;
		return cast(PathFollow2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, double) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	
	*/
	void setOffset(in double offset)
	{
		_GODOT_set_offset.bind("PathFollow2D", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	
	*/
	double getOffset() const
	{
		_GODOT_get_offset.bind("PathFollow2D", "get_offset");
		return ptrcall!(double)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_offset") = _GODOT_set_h_offset;
	/**
	
	*/
	void setHOffset(in double h_offset)
	{
		_GODOT_set_h_offset.bind("PathFollow2D", "set_h_offset");
		ptrcall!(void)(_GODOT_set_h_offset, _godot_object, h_offset);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_offset") = _GODOT_get_h_offset;
	/**
	
	*/
	double getHOffset() const
	{
		_GODOT_get_h_offset.bind("PathFollow2D", "get_h_offset");
		return ptrcall!(double)(_GODOT_get_h_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_offset") = _GODOT_set_v_offset;
	/**
	
	*/
	void setVOffset(in double v_offset)
	{
		_GODOT_set_v_offset.bind("PathFollow2D", "set_v_offset");
		ptrcall!(void)(_GODOT_set_v_offset, _godot_object, v_offset);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_offset") = _GODOT_get_v_offset;
	/**
	
	*/
	double getVOffset() const
	{
		_GODOT_get_v_offset.bind("PathFollow2D", "get_v_offset");
		return ptrcall!(double)(_GODOT_get_v_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_unit_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unit_offset") = _GODOT_set_unit_offset;
	/**
	
	*/
	void setUnitOffset(in double unit_offset)
	{
		_GODOT_set_unit_offset.bind("PathFollow2D", "set_unit_offset");
		ptrcall!(void)(_GODOT_set_unit_offset, _godot_object, unit_offset);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_unit_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unit_offset") = _GODOT_get_unit_offset;
	/**
	
	*/
	double getUnitOffset() const
	{
		_GODOT_get_unit_offset.bind("PathFollow2D", "get_unit_offset");
		return ptrcall!(double)(_GODOT_get_unit_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_rotate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotate") = _GODOT_set_rotate;
	/**
	
	*/
	void setRotate(in bool enable)
	{
		_GODOT_set_rotate.bind("PathFollow2D", "set_rotate");
		ptrcall!(void)(_GODOT_set_rotate, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_rotating;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_rotating") = _GODOT_is_rotating;
	/**
	
	*/
	bool isRotating() const
	{
		_GODOT_is_rotating.bind("PathFollow2D", "is_rotating");
		return ptrcall!(bool)(_GODOT_is_rotating, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_cubic_interpolation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cubic_interpolation") = _GODOT_set_cubic_interpolation;
	/**
	
	*/
	void setCubicInterpolation(in bool enable)
	{
		_GODOT_set_cubic_interpolation.bind("PathFollow2D", "set_cubic_interpolation");
		ptrcall!(void)(_GODOT_set_cubic_interpolation, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_cubic_interpolation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cubic_interpolation") = _GODOT_get_cubic_interpolation;
	/**
	
	*/
	bool getCubicInterpolation() const
	{
		_GODOT_get_cubic_interpolation.bind("PathFollow2D", "get_cubic_interpolation");
		return ptrcall!(bool)(_GODOT_get_cubic_interpolation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop") = _GODOT_set_loop;
	/**
	
	*/
	void setLoop(in bool loop)
	{
		_GODOT_set_loop.bind("PathFollow2D", "set_loop");
		ptrcall!(void)(_GODOT_set_loop, _godot_object, loop);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_loop") = _GODOT_has_loop;
	/**
	
	*/
	bool hasLoop() const
	{
		_GODOT_has_loop.bind("PathFollow2D", "has_loop");
		return ptrcall!(bool)(_GODOT_has_loop, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_lookahead;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lookahead") = _GODOT_set_lookahead;
	/**
	
	*/
	void setLookahead(in double lookahead)
	{
		_GODOT_set_lookahead.bind("PathFollow2D", "set_lookahead");
		ptrcall!(void)(_GODOT_set_lookahead, _godot_object, lookahead);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_lookahead;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lookahead") = _GODOT_get_lookahead;
	/**
	
	*/
	double getLookahead() const
	{
		_GODOT_get_lookahead.bind("PathFollow2D", "get_lookahead");
		return ptrcall!(double)(_GODOT_get_lookahead, _godot_object);
	}
	/**
	The distance along the path in pixels.
	*/
	@property double offset()
	{
		return getOffset();
	}
	/// ditto
	@property void offset(double v)
	{
		setOffset(v);
	}
	/**
	The distance along the path as a number in the range 0.0 (for the first vertex) to 1.0 (for the last). This is just another way of expressing the offset within the path, as the offset supplied is multiplied internally by the path's length.
	*/
	@property double unitOffset()
	{
		return getUnitOffset();
	}
	/// ditto
	@property void unitOffset(double v)
	{
		setUnitOffset(v);
	}
	/**
	The node's offset along the curve.
	*/
	@property double hOffset()
	{
		return getHOffset();
	}
	/// ditto
	@property void hOffset(double v)
	{
		setHOffset(v);
	}
	/**
	The node's offset perpendicular to the curve.
	*/
	@property double vOffset()
	{
		return getVOffset();
	}
	/// ditto
	@property void vOffset(double v)
	{
		setVOffset(v);
	}
	/**
	If `true`, this node rotates to follow the path, making its descendants rotate.
	*/
	@property bool rotate()
	{
		return isRotating();
	}
	/// ditto
	@property void rotate(bool v)
	{
		setRotate(v);
	}
	/**
	If `true` the position between two cached points is interpolated cubically, and linearly otherwise.
	The points along the $(D Curve2D) of the $(D Path2D) are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.
	There are two answers to this problem: Either increase the number of cached points and increase memory consumption, or make a cubic interpolation between two points at the cost of (slightly) slower calculations.
	*/
	@property bool cubicInterp()
	{
		return getCubicInterpolation();
	}
	/// ditto
	@property void cubicInterp(bool v)
	{
		setCubicInterpolation(v);
	}
	/**
	If `true`, any offset outside the path's length will wrap around, instead of stopping at the ends. Use it for cyclic paths.
	*/
	@property bool loop()
	{
		return hasLoop();
	}
	/// ditto
	@property void loop(bool v)
	{
		setLoop(v);
	}
	/**
	
	*/
	@property double lookahead()
	{
		return getLookahead();
	}
	/// ditto
	@property void lookahead(double v)
	{
		setLookahead(v);
	}
}
