/**
A 2D line.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.line2d;
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
import godot.gradient;
import godot.texture;
/**
A 2D line.

A line through several points in 2D space.
*/
@GodotBaseClass struct Line2D
{
	static immutable string _GODOT_internal_name = "Line2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Line2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Line2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Line2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Line2D");
		if(constructor is null) return typeof(this).init;
		return cast(Line2D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum LineTextureMode : int
	{
		/**
		Takes the left pixels of the texture and renders it over the whole line.
		*/
		lineTextureNone = 0,
		/**
		Tiles the texture over the line. The texture need to be imported with Repeat Enabled for it to work properly.
		*/
		lineTextureTile = 1,
	}
	/// 
	enum LineCapMode : int
	{
		/**
		Don't have a line cap.
		*/
		lineCapNone = 0,
		/**
		Draws the line cap as a box.
		*/
		lineCapBox = 1,
		/**
		Draws the line cap as a circle.
		*/
		lineCapRound = 2,
	}
	/// 
	enum LineJointMode : int
	{
		/**
		The line's joints will be pointy. If `sharp_limit` is greater than the rotation of a joint, it becomes a bevel joint instead.
		*/
		lineJointSharp = 0,
		/**
		The line's joints will be bevelled/chamfered.
		*/
		lineJointBevel = 1,
		/**
		The line's joints will be rounded.
		*/
		lineJointRound = 2,
	}
	/// 
	enum Constants : int
	{
		lineCapNone = 0,
		lineTextureNone = 0,
		lineJointSharp = 0,
		lineCapBox = 1,
		lineTextureTile = 1,
		lineJointBevel = 1,
		lineJointRound = 2,
		lineCapRound = 2,
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_points") = _GODOT_set_points;
	/**
	
	*/
	void setPoints(in PoolVector2Array points)
	{
		_GODOT_set_points.bind("Line2D", "set_points");
		ptrcall!(void)(_GODOT_set_points, _godot_object, points);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_points;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_points") = _GODOT_get_points;
	/**
	
	*/
	PoolVector2Array getPoints() const
	{
		_GODOT_get_points.bind("Line2D", "get_points");
		return ptrcall!(PoolVector2Array)(_GODOT_get_points, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Vector2) _GODOT_set_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_point_position") = _GODOT_set_point_position;
	/**
	Overwrites the position in point `i` with the supplied `position`.
	*/
	void setPointPosition(in long i, in Vector2 position)
	{
		_GODOT_set_point_position.bind("Line2D", "set_point_position");
		ptrcall!(void)(_GODOT_set_point_position, _godot_object, i, position);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_point_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_position") = _GODOT_get_point_position;
	/**
	Returns point `i`'s position.
	*/
	Vector2 getPointPosition(in long i) const
	{
		_GODOT_get_point_position.bind("Line2D", "get_point_position");
		return ptrcall!(Vector2)(_GODOT_get_point_position, _godot_object, i);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_point_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_point_count") = _GODOT_get_point_count;
	/**
	Returns the Line2D's amount of points.
	*/
	long getPointCount() const
	{
		_GODOT_get_point_count.bind("Line2D", "get_point_count");
		return ptrcall!(long)(_GODOT_get_point_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_add_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_point") = _GODOT_add_point;
	/**
	Add a point at the `position`. Appends the point at the end of the line.
	*/
	void addPoint(in Vector2 position)
	{
		_GODOT_add_point.bind("Line2D", "add_point");
		ptrcall!(void)(_GODOT_add_point, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_point") = _GODOT_remove_point;
	/**
	Remove the point at index `i` from the line.
	*/
	void removePoint(in long i)
	{
		_GODOT_remove_point.bind("Line2D", "remove_point");
		ptrcall!(void)(_GODOT_remove_point, _godot_object, i);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_width") = _GODOT_set_width;
	/**
	
	*/
	void setWidth(in double width)
	{
		_GODOT_set_width.bind("Line2D", "set_width");
		ptrcall!(void)(_GODOT_set_width, _godot_object, width);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_width") = _GODOT_get_width;
	/**
	
	*/
	double getWidth() const
	{
		_GODOT_get_width.bind("Line2D", "get_width");
		return ptrcall!(double)(_GODOT_get_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_default_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_color") = _GODOT_set_default_color;
	/**
	
	*/
	void setDefaultColor(in Color color)
	{
		_GODOT_set_default_color.bind("Line2D", "set_default_color");
		ptrcall!(void)(_GODOT_set_default_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_default_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_color") = _GODOT_get_default_color;
	/**
	
	*/
	Color getDefaultColor() const
	{
		_GODOT_get_default_color.bind("Line2D", "get_default_color");
		return ptrcall!(Color)(_GODOT_get_default_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, Gradient) _GODOT_set_gradient;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gradient") = _GODOT_set_gradient;
	/**
	
	*/
	void setGradient(Gradient color)
	{
		_GODOT_set_gradient.bind("Line2D", "set_gradient");
		ptrcall!(void)(_GODOT_set_gradient, _godot_object, color);
	}
	package(godot) static GodotMethod!(Gradient) _GODOT_get_gradient;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gradient") = _GODOT_get_gradient;
	/**
	
	*/
	Ref!Gradient getGradient() const
	{
		_GODOT_get_gradient.bind("Line2D", "get_gradient");
		return ptrcall!(Gradient)(_GODOT_get_gradient, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("Line2D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("Line2D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_texture_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_mode") = _GODOT_set_texture_mode;
	/**
	
	*/
	void setTextureMode(in long mode)
	{
		_GODOT_set_texture_mode.bind("Line2D", "set_texture_mode");
		ptrcall!(void)(_GODOT_set_texture_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Line2D.LineTextureMode) _GODOT_get_texture_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_mode") = _GODOT_get_texture_mode;
	/**
	
	*/
	Line2D.LineTextureMode getTextureMode() const
	{
		_GODOT_get_texture_mode.bind("Line2D", "get_texture_mode");
		return ptrcall!(Line2D.LineTextureMode)(_GODOT_get_texture_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_joint_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_joint_mode") = _GODOT_set_joint_mode;
	/**
	
	*/
	void setJointMode(in long mode)
	{
		_GODOT_set_joint_mode.bind("Line2D", "set_joint_mode");
		ptrcall!(void)(_GODOT_set_joint_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Line2D.LineJointMode) _GODOT_get_joint_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joint_mode") = _GODOT_get_joint_mode;
	/**
	
	*/
	Line2D.LineJointMode getJointMode() const
	{
		_GODOT_get_joint_mode.bind("Line2D", "get_joint_mode");
		return ptrcall!(Line2D.LineJointMode)(_GODOT_get_joint_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_begin_cap_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_begin_cap_mode") = _GODOT_set_begin_cap_mode;
	/**
	
	*/
	void setBeginCapMode(in long mode)
	{
		_GODOT_set_begin_cap_mode.bind("Line2D", "set_begin_cap_mode");
		ptrcall!(void)(_GODOT_set_begin_cap_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Line2D.LineCapMode) _GODOT_get_begin_cap_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_begin_cap_mode") = _GODOT_get_begin_cap_mode;
	/**
	
	*/
	Line2D.LineCapMode getBeginCapMode() const
	{
		_GODOT_get_begin_cap_mode.bind("Line2D", "get_begin_cap_mode");
		return ptrcall!(Line2D.LineCapMode)(_GODOT_get_begin_cap_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_end_cap_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_end_cap_mode") = _GODOT_set_end_cap_mode;
	/**
	
	*/
	void setEndCapMode(in long mode)
	{
		_GODOT_set_end_cap_mode.bind("Line2D", "set_end_cap_mode");
		ptrcall!(void)(_GODOT_set_end_cap_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Line2D.LineCapMode) _GODOT_get_end_cap_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_end_cap_mode") = _GODOT_get_end_cap_mode;
	/**
	
	*/
	Line2D.LineCapMode getEndCapMode() const
	{
		_GODOT_get_end_cap_mode.bind("Line2D", "get_end_cap_mode");
		return ptrcall!(Line2D.LineCapMode)(_GODOT_get_end_cap_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_sharp_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sharp_limit") = _GODOT_set_sharp_limit;
	/**
	
	*/
	void setSharpLimit(in double limit)
	{
		_GODOT_set_sharp_limit.bind("Line2D", "set_sharp_limit");
		ptrcall!(void)(_GODOT_set_sharp_limit, _godot_object, limit);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_sharp_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sharp_limit") = _GODOT_get_sharp_limit;
	/**
	
	*/
	double getSharpLimit() const
	{
		_GODOT_get_sharp_limit.bind("Line2D", "get_sharp_limit");
		return ptrcall!(double)(_GODOT_get_sharp_limit, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_round_precision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_round_precision") = _GODOT_set_round_precision;
	/**
	
	*/
	void setRoundPrecision(in long precision)
	{
		_GODOT_set_round_precision.bind("Line2D", "set_round_precision");
		ptrcall!(void)(_GODOT_set_round_precision, _godot_object, precision);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_round_precision;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_round_precision") = _GODOT_get_round_precision;
	/**
	
	*/
	long getRoundPrecision() const
	{
		_GODOT_get_round_precision.bind("Line2D", "get_round_precision");
		return ptrcall!(long)(_GODOT_get_round_precision, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__gradient_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gradient_changed") = _GODOT__gradient_changed;
	/**
	
	*/
	void _gradientChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_gradient_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The points that form the lines. The line is drawn between every point set in this array.
	*/
	@property PoolVector2Array points()
	{
		return getPoints();
	}
	/// ditto
	@property void points(PoolVector2Array v)
	{
		setPoints(v);
	}
	/**
	The line's width.
	*/
	@property double width()
	{
		return getWidth();
	}
	/// ditto
	@property void width(double v)
	{
		setWidth(v);
	}
	/**
	The line's color. Will not be used if a gradient is set.
	*/
	@property Color defaultColor()
	{
		return getDefaultColor();
	}
	/// ditto
	@property void defaultColor(Color v)
	{
		setDefaultColor(v);
	}
	/**
	The gradient is drawn through the whole line from start to finish. The default color will not be used if a gradient is set.
	*/
	@property Gradient gradient()
	{
		return getGradient();
	}
	/// ditto
	@property void gradient(Gradient v)
	{
		setGradient(v);
	}
	/**
	The texture used for the line's texture. Uses `texture_mode` for drawing style.
	*/
	@property Texture texture()
	{
		return getTexture();
	}
	/// ditto
	@property void texture(Texture v)
	{
		setTexture(v);
	}
	/**
	The style to render the `texture` on the line. Use `LINE_TEXTURE_*` constants. Default value: `LINE_TEXTURE_NONE`.
	*/
	@property Line2D.LineTextureMode textureMode()
	{
		return getTextureMode();
	}
	/// ditto
	@property void textureMode(long v)
	{
		setTextureMode(v);
	}
	/**
	The style for the points between the start and the end.
	*/
	@property Line2D.LineJointMode jointMode()
	{
		return getJointMode();
	}
	/// ditto
	@property void jointMode(long v)
	{
		setJointMode(v);
	}
	/**
	Controls the style of the line's first point. Use `LINE_CAP_*` constants. Default value: `LINE_CAP_NONE`.
	*/
	@property Line2D.LineCapMode beginCapMode()
	{
		return getBeginCapMode();
	}
	/// ditto
	@property void beginCapMode(long v)
	{
		setBeginCapMode(v);
	}
	/**
	Controls the style of the line's last point. Use `LINE_CAP_*` constants. Default value: `LINE_CAP_NONE`.
	*/
	@property Line2D.LineCapMode endCapMode()
	{
		return getEndCapMode();
	}
	/// ditto
	@property void endCapMode(long v)
	{
		setEndCapMode(v);
	}
	/**
	The direction difference in radians between vector points. This value is only used if `joint mode` is set to `LINE_JOINT_SHARP`.
	*/
	@property double sharpLimit()
	{
		return getSharpLimit();
	}
	/// ditto
	@property void sharpLimit(double v)
	{
		setSharpLimit(v);
	}
	/**
	The smoothness of the rounded joints and caps. This is only used if a cap or joint is set as round.
	*/
	@property long roundPrecision()
	{
		return getRoundPrecision();
	}
	/// ditto
	@property void roundPrecision(long v)
	{
		setRoundPrecision(v);
	}
}
