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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.curve;
import godot.gradient;
import godot.texture;
/**
A 2D line.

A line through several points in 2D space.
$(B Note:) By default, Godot can only draw up to 4,096 polygon points at a time. To increase this limit, open the Project Settings and increase $(D ProjectSettings.rendering/limits/buffers/canvasPolygonBufferSizeKb) and $(D ProjectSettings.rendering/limits/buffers/canvasPolygonIndexBufferSizeKb).
*/
@GodotBaseClass struct Line2D
{
	package(godot) enum string _GODOT_internal_name = "Line2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_curve_changed") GodotMethod!(void) _curveChanged;
		@GodotName("_gradient_changed") GodotMethod!(void) _gradientChanged;
		@GodotName("add_point") GodotMethod!(void, Vector2, long) addPoint;
		@GodotName("clear_points") GodotMethod!(void) clearPoints;
		@GodotName("get_antialiased") GodotMethod!(bool) getAntialiased;
		@GodotName("get_begin_cap_mode") GodotMethod!(Line2D.LineCapMode) getBeginCapMode;
		@GodotName("get_curve") GodotMethod!(Curve) getCurve;
		@GodotName("get_default_color") GodotMethod!(Color) getDefaultColor;
		@GodotName("get_end_cap_mode") GodotMethod!(Line2D.LineCapMode) getEndCapMode;
		@GodotName("get_gradient") GodotMethod!(Gradient) getGradient;
		@GodotName("get_joint_mode") GodotMethod!(Line2D.LineJointMode) getJointMode;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("get_point_position") GodotMethod!(Vector2, long) getPointPosition;
		@GodotName("get_points") GodotMethod!(PoolVector2Array) getPoints;
		@GodotName("get_round_precision") GodotMethod!(long) getRoundPrecision;
		@GodotName("get_sharp_limit") GodotMethod!(double) getSharpLimit;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_texture_mode") GodotMethod!(Line2D.LineTextureMode) getTextureMode;
		@GodotName("get_width") GodotMethod!(double) getWidth;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("set_antialiased") GodotMethod!(void, bool) setAntialiased;
		@GodotName("set_begin_cap_mode") GodotMethod!(void, long) setBeginCapMode;
		@GodotName("set_curve") GodotMethod!(void, Curve) setCurve;
		@GodotName("set_default_color") GodotMethod!(void, Color) setDefaultColor;
		@GodotName("set_end_cap_mode") GodotMethod!(void, long) setEndCapMode;
		@GodotName("set_gradient") GodotMethod!(void, Gradient) setGradient;
		@GodotName("set_joint_mode") GodotMethod!(void, long) setJointMode;
		@GodotName("set_point_position") GodotMethod!(void, long, Vector2) setPointPosition;
		@GodotName("set_points") GodotMethod!(void, PoolVector2Array) setPoints;
		@GodotName("set_round_precision") GodotMethod!(void, long) setRoundPrecision;
		@GodotName("set_sharp_limit") GodotMethod!(void, double) setSharpLimit;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_texture_mode") GodotMethod!(void, long) setTextureMode;
		@GodotName("set_width") GodotMethod!(void, double) setWidth;
	}
	/// 
	pragma(inline, true) bool opEquals(in Line2D other) const
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
	/// Construct a new instance of Line2D.
	/// Note: use `memnew!Line2D` instead.
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
		Tiles the texture over the line. The texture must be imported with $(B Repeat) enabled for it to work properly.
		*/
		lineTextureTile = 1,
		/**
		Stretches the texture across the line. Import the texture with $(B Repeat) disabled for best results.
		*/
		lineTextureStretch = 2,
	}
	/// 
	enum LineCapMode : int
	{
		/**
		Don't draw a line cap.
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
	void _curveChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_curve_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _gradientChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_gradient_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a point at the `position`. Appends the point at the end of the line.
	If `at_position` is given, the point is inserted before the point number `at_position`, moving that point (and every point after) after the inserted point. If `at_position` is not given, or is an illegal value (`at_position &lt; 0` or `at_position &gt;= $(D getPointCount)`), the point will be appended at the end of the point list.
	*/
	void addPoint(in Vector2 position, in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPoint, _godot_object, position, at_position);
	}
	/**
	Removes all points from the line.
	*/
	void clearPoints()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearPoints, _godot_object);
	}
	/**
	
	*/
	bool getAntialiased() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAntialiased, _godot_object);
	}
	/**
	
	*/
	Line2D.LineCapMode getBeginCapMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Line2D.LineCapMode)(GDNativeClassBinding.getBeginCapMode, _godot_object);
	}
	/**
	
	*/
	Ref!Curve getCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve)(GDNativeClassBinding.getCurve, _godot_object);
	}
	/**
	
	*/
	Color getDefaultColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getDefaultColor, _godot_object);
	}
	/**
	
	*/
	Line2D.LineCapMode getEndCapMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Line2D.LineCapMode)(GDNativeClassBinding.getEndCapMode, _godot_object);
	}
	/**
	
	*/
	Ref!Gradient getGradient() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Gradient)(GDNativeClassBinding.getGradient, _godot_object);
	}
	/**
	
	*/
	Line2D.LineJointMode getJointMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Line2D.LineJointMode)(GDNativeClassBinding.getJointMode, _godot_object);
	}
	/**
	Returns the Line2D's amount of points.
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPointCount, _godot_object);
	}
	/**
	Returns point `i`'s position.
	*/
	Vector2 getPointPosition(in long i) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointPosition, _godot_object, i);
	}
	/**
	
	*/
	PoolVector2Array getPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getPoints, _godot_object);
	}
	/**
	
	*/
	long getRoundPrecision() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRoundPrecision, _godot_object);
	}
	/**
	
	*/
	double getSharpLimit() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSharpLimit, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	Line2D.LineTextureMode getTextureMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Line2D.LineTextureMode)(GDNativeClassBinding.getTextureMode, _godot_object);
	}
	/**
	
	*/
	double getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWidth, _godot_object);
	}
	/**
	Removes the point at index `i` from the line.
	*/
	void removePoint(in long i)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePoint, _godot_object, i);
	}
	/**
	
	*/
	void setAntialiased(in bool antialiased)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAntialiased, _godot_object, antialiased);
	}
	/**
	
	*/
	void setBeginCapMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBeginCapMode, _godot_object, mode);
	}
	/**
	
	*/
	void setCurve(Curve curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurve, _godot_object, curve);
	}
	/**
	
	*/
	void setDefaultColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultColor, _godot_object, color);
	}
	/**
	
	*/
	void setEndCapMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEndCapMode, _godot_object, mode);
	}
	/**
	
	*/
	void setGradient(Gradient color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGradient, _godot_object, color);
	}
	/**
	
	*/
	void setJointMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setJointMode, _godot_object, mode);
	}
	/**
	Overwrites the position in point `i` with the supplied `position`.
	*/
	void setPointPosition(in long i, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointPosition, _godot_object, i, position);
	}
	/**
	
	*/
	void setPoints(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPoints, _godot_object, points);
	}
	/**
	
	*/
	void setRoundPrecision(in long precision)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoundPrecision, _godot_object, precision);
	}
	/**
	
	*/
	void setSharpLimit(in double limit)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSharpLimit, _godot_object, limit);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setTextureMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureMode, _godot_object, mode);
	}
	/**
	
	*/
	void setWidth(in double width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWidth, _godot_object, width);
	}
	/**
	If `true`, the line's border will be anti-aliased.
	*/
	@property bool antialiased()
	{
		return getAntialiased();
	}
	/// ditto
	@property void antialiased(bool v)
	{
		setAntialiased(v);
	}
	/**
	Controls the style of the line's first point. Use $(D linecapmode) constants.
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
	Controls the style of the line's last point. Use $(D linecapmode) constants.
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
	The points that form the lines. The line is drawn between every point set in this array. Points are interpreted as local vectors.
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
	/**
	The direction difference in radians between vector points. This value is only used if `joint mode` is set to $(D constant LINE_JOINT_SHARP).
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
	The style to render the `texture` on the line. Use $(D linetexturemode) constants.
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
	The line's width varies with the curve. The original width is simply multiply by the value of the Curve.
	*/
	@property Curve widthCurve()
	{
		return getCurve();
	}
	/// ditto
	@property void widthCurve(Curve v)
	{
		setCurve(v);
	}
}
