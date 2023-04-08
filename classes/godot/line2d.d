/**


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
	/// 
	enum LineTextureMode : int
	{
		/** */
		lineTextureNone = 0,
		/** */
		lineTextureTile = 1,
		/** */
		lineTextureStretch = 2,
	}
	/// 
	enum LineCapMode : int
	{
		/** */
		lineCapNone = 0,
		/** */
		lineCapBox = 1,
		/** */
		lineCapRound = 2,
	}
	/// 
	enum LineJointMode : int
	{
		/** */
		lineJointSharp = 0,
		/** */
		lineJointBevel = 1,
		/** */
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
	
	*/
	void addPoint(in Vector2 position, in long index = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPoint, _godot_object, position, index);
	}
	/**
	
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
	
	*/
	long getPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPointCount, _godot_object);
	}
	/**
	
	*/
	Vector2 getPointPosition(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointPosition, _godot_object, index);
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
	
	*/
	void removePoint(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePoint, _godot_object, index);
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
	
	*/
	void setPointPosition(in long index, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointPosition, _godot_object, index, position);
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
