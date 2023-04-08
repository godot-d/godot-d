/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.room;
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
import godot.spatial;
/**

*/
@GodotBaseClass struct Room
{
	package(godot) enum string _GODOT_internal_name = "Room";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_points") GodotMethod!(PoolVector3Array) getPoints;
		@GodotName("get_room_simplify") GodotMethod!(double) getRoomSimplify;
		@GodotName("get_use_default_simplify") GodotMethod!(bool) getUseDefaultSimplify;
		@GodotName("set_point") GodotMethod!(void, long, Vector3) setPoint;
		@GodotName("set_points") GodotMethod!(void, PoolVector3Array) setPoints;
		@GodotName("set_room_simplify") GodotMethod!(void, double) setRoomSimplify;
		@GodotName("set_use_default_simplify") GodotMethod!(void, bool) setUseDefaultSimplify;
	}
	/// 
	pragma(inline, true) bool opEquals(in Room other) const
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
	/// Construct a new instance of Room.
	/// Note: use `memnew!Room` instead.
	static Room _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Room");
		if(constructor is null) return typeof(this).init;
		return cast(Room)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	PoolVector3Array getPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getPoints, _godot_object);
	}
	/**
	
	*/
	double getRoomSimplify() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRoomSimplify, _godot_object);
	}
	/**
	
	*/
	bool getUseDefaultSimplify() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseDefaultSimplify, _godot_object);
	}
	/**
	
	*/
	void setPoint(in long index, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPoint, _godot_object, index, position);
	}
	/**
	
	*/
	void setPoints(in PoolVector3Array points)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPoints, _godot_object, points);
	}
	/**
	
	*/
	void setRoomSimplify(in double p_value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoomSimplify, _godot_object, p_value);
	}
	/**
	
	*/
	void setUseDefaultSimplify(in bool p_use)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseDefaultSimplify, _godot_object, p_use);
	}
	/**
	
	*/
	@property PoolVector3Array points()
	{
		return getPoints();
	}
	/// ditto
	@property void points(PoolVector3Array v)
	{
		setPoints(v);
	}
	/**
	
	*/
	@property double roomSimplify()
	{
		return getRoomSimplify();
	}
	/// ditto
	@property void roomSimplify(double v)
	{
		setRoomSimplify(v);
	}
	/**
	
	*/
	@property bool useDefaultSimplify()
	{
		return getUseDefaultSimplify();
	}
	/// ditto
	@property void useDefaultSimplify(bool v)
	{
		setUseDefaultSimplify(v);
	}
}
