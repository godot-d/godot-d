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
import godot.canvasitem;
import godot.node;
/**
A 2D line.

A line through several points in 2D space.
*/
@GodotBaseClass struct Line2D
{
	enum string _GODOT_internal_name = "Line2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_points") GodotMethod!(void, PoolVector2Array) setPoints;
		@GodotName("get_points") GodotMethod!(PoolVector2Array) getPoints;
		@GodotName("set_point_position") GodotMethod!(void, long, Vector2) setPointPosition;
		@GodotName("get_point_position") GodotMethod!(Vector2, long) getPointPosition;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("add_point") GodotMethod!(void, Vector2) addPoint;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("clear_points") GodotMethod!(void) clearPoints;
		@GodotName("set_width") GodotMethod!(void, double) setWidth;
		@GodotName("get_width") GodotMethod!(double) getWidth;
		@GodotName("set_default_color") GodotMethod!(void, Color) setDefaultColor;
		@GodotName("get_default_color") GodotMethod!(Color) getDefaultColor;
		@GodotName("set_gradient") GodotMethod!(void, Gradient) setGradient;
		@GodotName("get_gradient") GodotMethod!(Gradient) getGradient;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_texture_mode") GodotMethod!(void, long) setTextureMode;
		@GodotName("get_texture_mode") GodotMethod!(Line2D.LineTextureMode) getTextureMode;
		@GodotName("set_joint_mode") GodotMethod!(void, long) setJointMode;
		@GodotName("get_joint_mode") GodotMethod!(Line2D.LineJointMode) getJointMode;
		@GodotName("set_begin_cap_mode") GodotMethod!(void, long) setBeginCapMode;
		@GodotName("get_begin_cap_mode") GodotMethod!(Line2D.LineCapMode) getBeginCapMode;
		@GodotName("set_end_cap_mode") GodotMethod!(void, long) setEndCapMode;
		@GodotName("get_end_cap_mode") GodotMethod!(Line2D.LineCapMode) getEndCapMode;
		@GodotName("set_sharp_limit") GodotMethod!(void, double) setSharpLimit;
		@GodotName("get_sharp_limit") GodotMethod!(double) getSharpLimit;
		@GodotName("set_round_precision") GodotMethod!(void, long) setRoundPrecision;
		@GodotName("get_round_precision") GodotMethod!(long) getRoundPrecision;
		@GodotName("_gradient_changed") GodotMethod!(void) _gradientChanged;
	}
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
		/**
		Stretches the texture across the line. Import the texture with Repeat Disabled for best results.
		*/
		lineTextureStretch = 2,
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
		lineJointSharp = 0,
		lineTextureNone = 0,
		lineCapBox = 1,
		lineTextureTile = 1,
		lineJointBevel = 1,
		lineJointRound = 2,
		lineTextureStretch = 2,
		lineCapRound = 2,
	}
	/**
	
	*/
	void setPoints(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPoints, _godot_object, points);
	}
	/**
	
	*/
	PoolVector2Array getPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getPoints, _godot_object);
	}
	/**
	Overwrites the position in point `i` with the supplied `position`.
	*/
	void setPointPosition(in long i, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointPosition, _godot_object, i, position);
	}
	/**
	Returns point `i`'s position.
	*/
	Vector2 getPointPosition(in long i) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getPointPosition, _godot_object, i);
	}
	/**
	Returns the Line2D's amount of points.
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPointCount, _godot_object);
	}
	/**
	Add a point at the `position`. Appends the point at the end of the line.
	*/
	void addPoint(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPoint, _godot_object, position);
	}
	/**
	Remove the point at index `i` from the line.
	*/
	void removePoint(in long i)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removePoint, _godot_object, i);
	}
	/**
	Removes all points from the line.
	*/
	void clearPoints()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearPoints, _godot_object);
	}
	/**
	
	*/
	void setWidth(in double width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWidth, _godot_object, width);
	}
	/**
	
	*/
	double getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getWidth, _godot_object);
	}
	/**
	
	*/
	void setDefaultColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultColor, _godot_object, color);
	}
	/**
	
	*/
	Color getDefaultColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getDefaultColor, _godot_object);
	}
	/**
	
	*/
	void setGradient(Gradient color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGradient, _godot_object, color);
	}
	/**
	
	*/
	Ref!Gradient getGradient() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Gradient)(_classBinding.getGradient, _godot_object);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	void setTextureMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTextureMode, _godot_object, mode);
	}
	/**
	
	*/
	Line2D.LineTextureMode getTextureMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Line2D.LineTextureMode)(_classBinding.getTextureMode, _godot_object);
	}
	/**
	
	*/
	void setJointMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setJointMode, _godot_object, mode);
	}
	/**
	
	*/
	Line2D.LineJointMode getJointMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Line2D.LineJointMode)(_classBinding.getJointMode, _godot_object);
	}
	/**
	
	*/
	void setBeginCapMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBeginCapMode, _godot_object, mode);
	}
	/**
	
	*/
	Line2D.LineCapMode getBeginCapMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Line2D.LineCapMode)(_classBinding.getBeginCapMode, _godot_object);
	}
	/**
	
	*/
	void setEndCapMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEndCapMode, _godot_object, mode);
	}
	/**
	
	*/
	Line2D.LineCapMode getEndCapMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Line2D.LineCapMode)(_classBinding.getEndCapMode, _godot_object);
	}
	/**
	
	*/
	void setSharpLimit(in double limit)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSharpLimit, _godot_object, limit);
	}
	/**
	
	*/
	double getSharpLimit() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSharpLimit, _godot_object);
	}
	/**
	
	*/
	void setRoundPrecision(in long precision)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRoundPrecision, _godot_object, precision);
	}
	/**
	
	*/
	long getRoundPrecision() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRoundPrecision, _godot_object);
	}
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
