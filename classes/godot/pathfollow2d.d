/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.pathfollow2d;
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
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct PathFollow2D
{
	package(godot) enum string _GODOT_internal_name = "PathFollow2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_cubic_interpolation") GodotMethod!(bool) getCubicInterpolation;
		@GodotName("get_h_offset") GodotMethod!(double) getHOffset;
		@GodotName("get_lookahead") GodotMethod!(double) getLookahead;
		@GodotName("get_offset") GodotMethod!(double) getOffset;
		@GodotName("get_unit_offset") GodotMethod!(double) getUnitOffset;
		@GodotName("get_v_offset") GodotMethod!(double) getVOffset;
		@GodotName("has_loop") GodotMethod!(bool) hasLoop;
		@GodotName("is_rotating") GodotMethod!(bool) isRotating;
		@GodotName("set_cubic_interpolation") GodotMethod!(void, bool) setCubicInterpolation;
		@GodotName("set_h_offset") GodotMethod!(void, double) setHOffset;
		@GodotName("set_lookahead") GodotMethod!(void, double) setLookahead;
		@GodotName("set_loop") GodotMethod!(void, bool) setLoop;
		@GodotName("set_offset") GodotMethod!(void, double) setOffset;
		@GodotName("set_rotate") GodotMethod!(void, bool) setRotate;
		@GodotName("set_unit_offset") GodotMethod!(void, double) setUnitOffset;
		@GodotName("set_v_offset") GodotMethod!(void, double) setVOffset;
	}
	/// 
	pragma(inline, true) bool opEquals(in PathFollow2D other) const
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
	/// Construct a new instance of PathFollow2D.
	/// Note: use `memnew!PathFollow2D` instead.
	static PathFollow2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PathFollow2D");
		if(constructor is null) return typeof(this).init;
		return cast(PathFollow2D)(constructor());
	}
	/**
	
	*/
	bool getCubicInterpolation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCubicInterpolation, _godot_object);
	}
	/**
	
	*/
	double getHOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHOffset, _godot_object);
	}
	/**
	
	*/
	double getLookahead() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLookahead, _godot_object);
	}
	/**
	
	*/
	double getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	double getUnitOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getUnitOffset, _godot_object);
	}
	/**
	
	*/
	double getVOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVOffset, _godot_object);
	}
	/**
	
	*/
	bool hasLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasLoop, _godot_object);
	}
	/**
	
	*/
	bool isRotating() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRotating, _godot_object);
	}
	/**
	
	*/
	void setCubicInterpolation(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCubicInterpolation, _godot_object, enable);
	}
	/**
	
	*/
	void setHOffset(in double h_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHOffset, _godot_object, h_offset);
	}
	/**
	
	*/
	void setLookahead(in double lookahead)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLookahead, _godot_object, lookahead);
	}
	/**
	
	*/
	void setLoop(in bool loop)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLoop, _godot_object, loop);
	}
	/**
	
	*/
	void setOffset(in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setRotate(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRotate, _godot_object, enable);
	}
	/**
	
	*/
	void setUnitOffset(in double unit_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUnitOffset, _godot_object, unit_offset);
	}
	/**
	
	*/
	void setVOffset(in double v_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVOffset, _godot_object, v_offset);
	}
	/**
	
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
	/**
	
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
}
