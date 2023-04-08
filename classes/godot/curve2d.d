/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.curve2d;
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
import godot.resource;
/**

*/
@GodotBaseClass struct Curve2D
{
	package(godot) enum string _GODOT_internal_name = "Curve2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_data") GodotMethod!(Dictionary) _getData;
		@GodotName("_set_data") GodotMethod!(void, Dictionary) _setData;
		@GodotName("add_point") GodotMethod!(void, Vector2, Vector2, Vector2, long) addPoint;
		@GodotName("clear_points") GodotMethod!(void) clearPoints;
		@GodotName("get_bake_interval") GodotMethod!(double) getBakeInterval;
		@GodotName("get_baked_length") GodotMethod!(double) getBakedLength;
		@GodotName("get_baked_points") GodotMethod!(PoolVector2Array) getBakedPoints;
		@GodotName("get_closest_offset") GodotMethod!(double, Vector2) getClosestOffset;
		@GodotName("get_closest_point") GodotMethod!(Vector2, Vector2) getClosestPoint;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("get_point_in") GodotMethod!(Vector2, long) getPointIn;
		@GodotName("get_point_out") GodotMethod!(Vector2, long) getPointOut;
		@GodotName("get_point_position") GodotMethod!(Vector2, long) getPointPosition;
		@GodotName("interpolate") GodotMethod!(Vector2, long, double) interpolate;
		@GodotName("interpolate_baked") GodotMethod!(Vector2, double, bool) interpolateBaked;
		@GodotName("interpolatef") GodotMethod!(Vector2, double) interpolatef;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("set_bake_interval") GodotMethod!(void, double) setBakeInterval;
		@GodotName("set_point_in") GodotMethod!(void, long, Vector2) setPointIn;
		@GodotName("set_point_out") GodotMethod!(void, long, Vector2) setPointOut;
		@GodotName("set_point_position") GodotMethod!(void, long, Vector2) setPointPosition;
		@GodotName("tessellate") GodotMethod!(PoolVector2Array, long, double) tessellate;
	}
	/// 
	pragma(inline, true) bool opEquals(in Curve2D other) const
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
	/// Construct a new instance of Curve2D.
	/// Note: use `memnew!Curve2D` instead.
	static Curve2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Curve2D");
		if(constructor is null) return typeof(this).init;
		return cast(Curve2D)(constructor());
	}
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
	
	*/
	void addPoint(in Vector2 position, in Vector2 _in = Vector2(0, 0), in Vector2 _out = Vector2(0, 0), in long index = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPoint, _godot_object, position, _in, _out, index);
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
	double getBakeInterval() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBakeInterval, _godot_object);
	}
	/**
	
	*/
	double getBakedLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBakedLength, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getBakedPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getBakedPoints, _godot_object);
	}
	/**
	
	*/
	double getClosestOffset(in Vector2 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getClosestOffset, _godot_object, to_point);
	}
	/**
	
	*/
	Vector2 getClosestPoint(in Vector2 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getClosestPoint, _godot_object, to_point);
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
	Vector2 getPointIn(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointIn, _godot_object, idx);
	}
	/**
	
	*/
	Vector2 getPointOut(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointOut, _godot_object, idx);
	}
	/**
	
	*/
	Vector2 getPointPosition(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPointPosition, _godot_object, idx);
	}
	/**
	
	*/
	Vector2 interpolate(in long idx, in double t) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.interpolate, _godot_object, idx, t);
	}
	/**
	
	*/
	Vector2 interpolateBaked(in double offset, in bool cubic = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.interpolateBaked, _godot_object, offset, cubic);
	}
	/**
	
	*/
	Vector2 interpolatef(in double fofs) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.interpolatef, _godot_object, fofs);
	}
	/**
	
	*/
	void removePoint(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePoint, _godot_object, idx);
	}
	/**
	
	*/
	void setBakeInterval(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBakeInterval, _godot_object, distance);
	}
	/**
	
	*/
	void setPointIn(in long idx, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointIn, _godot_object, idx, position);
	}
	/**
	
	*/
	void setPointOut(in long idx, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointOut, _godot_object, idx, position);
	}
	/**
	
	*/
	void setPointPosition(in long idx, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointPosition, _godot_object, idx, position);
	}
	/**
	
	*/
	PoolVector2Array tessellate(in long max_stages = 5, in double tolerance_degrees = 4) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.tessellate, _godot_object, max_stages, tolerance_degrees);
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
}
