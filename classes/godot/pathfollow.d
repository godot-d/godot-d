/**
Point sampler for a $(D Path).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.pathfollow;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
/**
Point sampler for a $(D Path).

This node takes its parent $(D Path), and returns the coordinates of a point within it, given a distance from the first vertex.
It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be descendants of this node. Then, when setting an offset in this node, the descendant nodes will move accordingly.
*/
@GodotBaseClass struct PathFollow
{
	static immutable string _GODOT_internal_name = "PathFollow";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PathFollow other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PathFollow opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PathFollow _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PathFollow");
		if(constructor is null) return typeof(this).init;
		return cast(PathFollow)(constructor());
	}
	/// 
	enum RotationMode : int
	{
		/**
		Forbids the PathFollow to rotate.
		*/
		rotationNone = 0,
		/**
		Allows the PathFollow to rotate in the Y axis only.
		*/
		rotationY = 1,
		/**
		Allows the PathFollow to rotate in both the X, and Y axes.
		*/
		rotationXy = 2,
		/**
		Allows the PathFollow to rotate in any axis.
		*/
		rotationXyz = 3,
	}
	/// 
	enum Constants : int
	{
		rotationNone = 0,
		rotationY = 1,
		rotationXy = 2,
		rotationXyz = 3,
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	
	*/
	void setOffset(in double offset)
	{
		_GODOT_set_offset.bind("PathFollow", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	
	*/
	double getOffset() const
	{
		_GODOT_get_offset.bind("PathFollow", "get_offset");
		return ptrcall!(double)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_offset") = _GODOT_set_h_offset;
	/**
	
	*/
	void setHOffset(in double h_offset)
	{
		_GODOT_set_h_offset.bind("PathFollow", "set_h_offset");
		ptrcall!(void)(_GODOT_set_h_offset, _godot_object, h_offset);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_offset") = _GODOT_get_h_offset;
	/**
	
	*/
	double getHOffset() const
	{
		_GODOT_get_h_offset.bind("PathFollow", "get_h_offset");
		return ptrcall!(double)(_GODOT_get_h_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_offset") = _GODOT_set_v_offset;
	/**
	
	*/
	void setVOffset(in double v_offset)
	{
		_GODOT_set_v_offset.bind("PathFollow", "set_v_offset");
		ptrcall!(void)(_GODOT_set_v_offset, _godot_object, v_offset);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_offset") = _GODOT_get_v_offset;
	/**
	
	*/
	double getVOffset() const
	{
		_GODOT_get_v_offset.bind("PathFollow", "get_v_offset");
		return ptrcall!(double)(_GODOT_get_v_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_unit_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unit_offset") = _GODOT_set_unit_offset;
	/**
	
	*/
	void setUnitOffset(in double unit_offset)
	{
		_GODOT_set_unit_offset.bind("PathFollow", "set_unit_offset");
		ptrcall!(void)(_GODOT_set_unit_offset, _godot_object, unit_offset);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_unit_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unit_offset") = _GODOT_get_unit_offset;
	/**
	
	*/
	double getUnitOffset() const
	{
		_GODOT_get_unit_offset.bind("PathFollow", "get_unit_offset");
		return ptrcall!(double)(_GODOT_get_unit_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_rotation_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation_mode") = _GODOT_set_rotation_mode;
	/**
	
	*/
	void setRotationMode(in long rotation_mode)
	{
		_GODOT_set_rotation_mode.bind("PathFollow", "set_rotation_mode");
		ptrcall!(void)(_GODOT_set_rotation_mode, _godot_object, rotation_mode);
	}
	package(godot) static GodotMethod!(PathFollow.RotationMode) _GODOT_get_rotation_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation_mode") = _GODOT_get_rotation_mode;
	/**
	
	*/
	PathFollow.RotationMode getRotationMode() const
	{
		_GODOT_get_rotation_mode.bind("PathFollow", "get_rotation_mode");
		return ptrcall!(PathFollow.RotationMode)(_GODOT_get_rotation_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_cubic_interpolation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cubic_interpolation") = _GODOT_set_cubic_interpolation;
	/**
	
	*/
	void setCubicInterpolation(in bool enable)
	{
		_GODOT_set_cubic_interpolation.bind("PathFollow", "set_cubic_interpolation");
		ptrcall!(void)(_GODOT_set_cubic_interpolation, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_cubic_interpolation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cubic_interpolation") = _GODOT_get_cubic_interpolation;
	/**
	
	*/
	bool getCubicInterpolation() const
	{
		_GODOT_get_cubic_interpolation.bind("PathFollow", "get_cubic_interpolation");
		return ptrcall!(bool)(_GODOT_get_cubic_interpolation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_loop") = _GODOT_set_loop;
	/**
	
	*/
	void setLoop(in bool loop)
	{
		_GODOT_set_loop.bind("PathFollow", "set_loop");
		ptrcall!(void)(_GODOT_set_loop, _godot_object, loop);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_loop") = _GODOT_has_loop;
	/**
	
	*/
	bool hasLoop() const
	{
		_GODOT_has_loop.bind("PathFollow", "has_loop");
		return ptrcall!(bool)(_GODOT_has_loop, _godot_object);
	}
	/**
	The distance from the first vertex, measured in 3D units along the path. This sets this node's position to a point within the path.
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
	The distance from the first vertex, considering 0.0 as the first vertex and 1.0 as the last. This is just another way of expressing the offset within the path, as the offset supplied is multiplied internally by the path's length.
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
	Allows or forbids rotation on one or more axes, depending on the constants being used.
	*/
	@property PathFollow.RotationMode rotationMode()
	{
		return getRotationMode();
	}
	/// ditto
	@property void rotationMode(long v)
	{
		setRotationMode(v);
	}
	/**
	If `true` the position between two cached points is interpolated cubically, and linearly otherwise.
	The points along the $(D Curve3D) of the $(D Path) are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.
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
}
