/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.curve3d;
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
@GodotBaseClass struct Curve3D
{
	package(godot) enum string _GODOT_internal_name = "Curve3D";
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
		@GodotName("add_point") GodotMethod!(void, Vector3, Vector3, Vector3, long) addPoint;
		@GodotName("clear_points") GodotMethod!(void) clearPoints;
		@GodotName("get_bake_interval") GodotMethod!(double) getBakeInterval;
		@GodotName("get_baked_length") GodotMethod!(double) getBakedLength;
		@GodotName("get_baked_points") GodotMethod!(PoolVector3Array) getBakedPoints;
		@GodotName("get_baked_tilts") GodotMethod!(PoolRealArray) getBakedTilts;
		@GodotName("get_baked_up_vectors") GodotMethod!(PoolVector3Array) getBakedUpVectors;
		@GodotName("get_closest_offset") GodotMethod!(double, Vector3) getClosestOffset;
		@GodotName("get_closest_point") GodotMethod!(Vector3, Vector3) getClosestPoint;
		@GodotName("get_point_count") GodotMethod!(long) getPointCount;
		@GodotName("get_point_in") GodotMethod!(Vector3, long) getPointIn;
		@GodotName("get_point_out") GodotMethod!(Vector3, long) getPointOut;
		@GodotName("get_point_position") GodotMethod!(Vector3, long) getPointPosition;
		@GodotName("get_point_tilt") GodotMethod!(double, long) getPointTilt;
		@GodotName("interpolate") GodotMethod!(Vector3, long, double) interpolate;
		@GodotName("interpolate_baked") GodotMethod!(Vector3, double, bool) interpolateBaked;
		@GodotName("interpolate_baked_up_vector") GodotMethod!(Vector3, double, bool) interpolateBakedUpVector;
		@GodotName("interpolatef") GodotMethod!(Vector3, double) interpolatef;
		@GodotName("is_up_vector_enabled") GodotMethod!(bool) isUpVectorEnabled;
		@GodotName("remove_point") GodotMethod!(void, long) removePoint;
		@GodotName("set_bake_interval") GodotMethod!(void, double) setBakeInterval;
		@GodotName("set_point_in") GodotMethod!(void, long, Vector3) setPointIn;
		@GodotName("set_point_out") GodotMethod!(void, long, Vector3) setPointOut;
		@GodotName("set_point_position") GodotMethod!(void, long, Vector3) setPointPosition;
		@GodotName("set_point_tilt") GodotMethod!(void, long, double) setPointTilt;
		@GodotName("set_up_vector_enabled") GodotMethod!(void, bool) setUpVectorEnabled;
		@GodotName("tessellate") GodotMethod!(PoolVector3Array, long, double) tessellate;
	}
	/// 
	pragma(inline, true) bool opEquals(in Curve3D other) const
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
	/// Construct a new instance of Curve3D.
	/// Note: use `memnew!Curve3D` instead.
	static Curve3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Curve3D");
		if(constructor is null) return typeof(this).init;
		return cast(Curve3D)(constructor());
	}
	@disable new(size_t s);
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
	void addPoint(in Vector3 position, in Vector3 _in = Vector3(0, 0, 0), in Vector3 _out = Vector3(0, 0, 0), in long index = -1)
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
	PoolVector3Array getBakedPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getBakedPoints, _godot_object);
	}
	/**
	
	*/
	PoolRealArray getBakedTilts() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(GDNativeClassBinding.getBakedTilts, _godot_object);
	}
	/**
	
	*/
	PoolVector3Array getBakedUpVectors() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getBakedUpVectors, _godot_object);
	}
	/**
	
	*/
	double getClosestOffset(in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getClosestOffset, _godot_object, to_point);
	}
	/**
	
	*/
	Vector3 getClosestPoint(in Vector3 to_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getClosestPoint, _godot_object, to_point);
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
	Vector3 getPointIn(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getPointIn, _godot_object, idx);
	}
	/**
	
	*/
	Vector3 getPointOut(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getPointOut, _godot_object, idx);
	}
	/**
	
	*/
	Vector3 getPointPosition(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getPointPosition, _godot_object, idx);
	}
	/**
	
	*/
	double getPointTilt(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPointTilt, _godot_object, idx);
	}
	/**
	
	*/
	Vector3 interpolate(in long idx, in double t) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.interpolate, _godot_object, idx, t);
	}
	/**
	
	*/
	Vector3 interpolateBaked(in double offset, in bool cubic = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.interpolateBaked, _godot_object, offset, cubic);
	}
	/**
	
	*/
	Vector3 interpolateBakedUpVector(in double offset, in bool apply_tilt = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.interpolateBakedUpVector, _godot_object, offset, apply_tilt);
	}
	/**
	
	*/
	Vector3 interpolatef(in double fofs) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.interpolatef, _godot_object, fofs);
	}
	/**
	
	*/
	bool isUpVectorEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUpVectorEnabled, _godot_object);
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
	void setPointIn(in long idx, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointIn, _godot_object, idx, position);
	}
	/**
	
	*/
	void setPointOut(in long idx, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointOut, _godot_object, idx, position);
	}
	/**
	
	*/
	void setPointPosition(in long idx, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointPosition, _godot_object, idx, position);
	}
	/**
	
	*/
	void setPointTilt(in long idx, in double tilt)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointTilt, _godot_object, idx, tilt);
	}
	/**
	
	*/
	void setUpVectorEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUpVectorEnabled, _godot_object, enable);
	}
	/**
	
	*/
	PoolVector3Array tessellate(in long max_stages = 5, in double tolerance_degrees = 4) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.tessellate, _godot_object, max_stages, tolerance_degrees);
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
	/**
	
	*/
	@property bool upVectorEnabled()
	{
		return isUpVectorEnabled();
	}
	/// ditto
	@property void upVectorEnabled(bool v)
	{
		setUpVectorEnabled(v);
	}
}
