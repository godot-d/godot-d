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
import godot.node;
/**
Point sampler for a $(D Path).

This node takes its parent $(D Path), and returns the coordinates of a point within it, given a distance from the first vertex.
It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be descendants of this node. Then, when setting an offset in this node, the descendant nodes will move accordingly.
*/
@GodotBaseClass struct PathFollow
{
	enum string _GODOT_internal_name = "PathFollow";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
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
		@GodotName("set_rotation_mode") GodotMethod!(void, long) setRotationMode;
		@GodotName("get_rotation_mode") GodotMethod!(PathFollow.RotationMode) getRotationMode;
		@GodotName("set_cubic_interpolation") GodotMethod!(void, bool) setCubicInterpolation;
		@GodotName("get_cubic_interpolation") GodotMethod!(bool) getCubicInterpolation;
		@GodotName("set_loop") GodotMethod!(void, bool) setLoop;
		@GodotName("has_loop") GodotMethod!(bool) hasLoop;
	}
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
	@disable new(size_t s);
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
	void setRotationMode(in long rotation_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRotationMode, _godot_object, rotation_mode);
	}
	/**
	
	*/
	PathFollow.RotationMode getRotationMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PathFollow.RotationMode)(_classBinding.getRotationMode, _godot_object);
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
