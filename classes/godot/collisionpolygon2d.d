/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionpolygon2d;
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
/**

*/
@GodotBaseClass struct CollisionPolygon2D
{
	package(godot) enum string _GODOT_internal_name = "CollisionPolygon2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_build_mode") GodotMethod!(CollisionPolygon2D.BuildMode) getBuildMode;
		@GodotName("get_one_way_collision_margin") GodotMethod!(double) getOneWayCollisionMargin;
		@GodotName("get_polygon") GodotMethod!(PoolVector2Array) getPolygon;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("is_one_way_collision_enabled") GodotMethod!(bool) isOneWayCollisionEnabled;
		@GodotName("set_build_mode") GodotMethod!(void, long) setBuildMode;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("set_one_way_collision") GodotMethod!(void, bool) setOneWayCollision;
		@GodotName("set_one_way_collision_margin") GodotMethod!(void, double) setOneWayCollisionMargin;
		@GodotName("set_polygon") GodotMethod!(void, PoolVector2Array) setPolygon;
	}
	/// 
	pragma(inline, true) bool opEquals(in CollisionPolygon2D other) const
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
	/// Construct a new instance of CollisionPolygon2D.
	/// Note: use `memnew!CollisionPolygon2D` instead.
	static CollisionPolygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionPolygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionPolygon2D)(constructor());
	}
	/// 
	enum BuildMode : int
	{
		/** */
		buildSolids = 0,
		/** */
		buildSegments = 1,
	}
	/// 
	enum Constants : int
	{
		buildSolids = 0,
		buildSegments = 1,
	}
	/**
	
	*/
	CollisionPolygon2D.BuildMode getBuildMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CollisionPolygon2D.BuildMode)(GDNativeClassBinding.getBuildMode, _godot_object);
	}
	/**
	
	*/
	double getOneWayCollisionMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOneWayCollisionMargin, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getPolygon, _godot_object);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDisabled, _godot_object);
	}
	/**
	
	*/
	bool isOneWayCollisionEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOneWayCollisionEnabled, _godot_object);
	}
	/**
	
	*/
	void setBuildMode(in long build_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBuildMode, _godot_object, build_mode);
	}
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisabled, _godot_object, disabled);
	}
	/**
	
	*/
	void setOneWayCollision(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOneWayCollision, _godot_object, enabled);
	}
	/**
	
	*/
	void setOneWayCollisionMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOneWayCollisionMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	@property CollisionPolygon2D.BuildMode buildMode()
	{
		return getBuildMode();
	}
	/// ditto
	@property void buildMode(long v)
	{
		setBuildMode(v);
	}
	/**
	
	*/
	@property bool disabled()
	{
		return isDisabled();
	}
	/// ditto
	@property void disabled(bool v)
	{
		setDisabled(v);
	}
	/**
	
	*/
	@property bool oneWayCollision()
	{
		return isOneWayCollisionEnabled();
	}
	/// ditto
	@property void oneWayCollision(bool v)
	{
		setOneWayCollision(v);
	}
	/**
	
	*/
	@property double oneWayCollisionMargin()
	{
		return getOneWayCollisionMargin();
	}
	/// ditto
	@property void oneWayCollisionMargin(double v)
	{
		setOneWayCollisionMargin(v);
	}
	/**
	
	*/
	@property PoolVector2Array polygon()
	{
		return getPolygon();
	}
	/// ditto
	@property void polygon(PoolVector2Array v)
	{
		setPolygon(v);
	}
}
