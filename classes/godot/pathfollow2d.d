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
import godot.canvasitem;
import godot.node;
/**
Point sampler for a $(D Path2D).

This node takes its parent $(D Path2D), and returns the coordinates of a point within it, given a distance from the first vertex.
It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be descendants of this node. Then, when setting an offset in this node, the descendant nodes will move accordingly.
*/
@GodotBaseClass struct PathFollow2D
{
	enum string _GODOT_internal_name = "PathFollow2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_offset") GodotMethod!(void, double) setOffset;
		@GodotName("get_offset") GodotMethod!(double) getOffset;
		@GodotName("set_h_offset") GodotMethod!(void, double) setHOffset;
		@GodotName("get_h_offset") GodotMethod!(double) getHOffset;
		@GodotName("set_v_offset") GodotMethod!(void, double) setVOffset;
		@GodotName("get_v_offset") GodotMethod!(double) getVOffset;
		@GodotName("set_unit_offset") GodotMethod!(void, double) setUnitOffset;
		@GodotName("get_unit_offset") GodotMethod!(double) getUnitOffset;
		@GodotName("set_rotate") GodotMethod!(void, bool) setRotate;
		@GodotName("is_rotating") GodotMethod!(bool) isRotating;
		@GodotName("set_cubic_interpolation") GodotMethod!(void, bool) setCubicInterpolation;
		@GodotName("get_cubic_interpolation") GodotMethod!(bool) getCubicInterpolation;
		@GodotName("set_loop") GodotMethod!(void, bool) setLoop;
		@GodotName("has_loop") GodotMethod!(bool) hasLoop;
		@GodotName("set_lookahead") GodotMethod!(void, double) setLookahead;
		@GodotName("get_lookahead") GodotMethod!(double) getLookahead;
	}
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
	/**
	
	*/
	void setOffset(in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	double getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	void setHOffset(in double h_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHOffset, _godot_object, h_offset);
	}
	/**
	
	*/
	double getHOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getHOffset, _godot_object);
	}
	/**
	
	*/
	void setVOffset(in double v_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVOffset, _godot_object, v_offset);
	}
	/**
	
	*/
	double getVOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVOffset, _godot_object);
	}
	/**
	
	*/
	void setUnitOffset(in double unit_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUnitOffset, _godot_object, unit_offset);
	}
	/**
	
	*/
	double getUnitOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getUnitOffset, _godot_object);
	}
	/**
	
	*/
	void setRotate(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRotate, _godot_object, enable);
	}
	/**
	
	*/
	bool isRotating() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRotating, _godot_object);
	}
	/**
	
	*/
	void setCubicInterpolation(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCubicInterpolation, _godot_object, enable);
	}
	/**
	
	*/
	bool getCubicInterpolation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCubicInterpolation, _godot_object);
	}
	/**
	
	*/
	void setLoop(in bool loop)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLoop, _godot_object, loop);
	}
	/**
	
	*/
	bool hasLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasLoop, _godot_object);
	}
	/**
	
	*/
	void setLookahead(in double lookahead)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLookahead, _godot_object, lookahead);
	}
	/**
	
	*/
	double getLookahead() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLookahead, _godot_object);
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
	If `true`, the position between two cached points is interpolated cubically, and linearly otherwise.
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
	How far to look ahead of the curve to calculate the tangent if the node is rotating. E.g. shorter lookaheads will lead to faster rotations. Default value: `4`.
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
