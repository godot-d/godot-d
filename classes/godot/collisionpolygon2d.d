/**
Defines a 2D collision polygon.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionpolygon2d;
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
/**
Defines a 2D collision polygon.

Provides a 2D collision polygon to a $(D CollisionObject2D) parent. Polygon can be drawn in the editor or specified by a list of vertices.
*/
@GodotBaseClass struct CollisionPolygon2D
{
	static immutable string _GODOT_internal_name = "CollisionPolygon2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CollisionPolygon2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionPolygon2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		Collisions will include the polygon and its contained area.
		*/
		buildSolids = 0,
		/**
		Collisions will only include the polygon edges.
		*/
		buildSegments = 1,
	}
	/// 
	enum Constants : int
	{
		buildSolids = 0,
		buildSegments = 1,
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_polygon") = _GODOT_set_polygon;
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		_GODOT_set_polygon.bind("CollisionPolygon2D", "set_polygon");
		ptrcall!(void)(_GODOT_set_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		_GODOT_get_polygon.bind("CollisionPolygon2D", "get_polygon");
		return ptrcall!(PoolVector2Array)(_GODOT_get_polygon, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_build_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_build_mode") = _GODOT_set_build_mode;
	/**
	
	*/
	void setBuildMode(in long build_mode)
	{
		_GODOT_set_build_mode.bind("CollisionPolygon2D", "set_build_mode");
		ptrcall!(void)(_GODOT_set_build_mode, _godot_object, build_mode);
	}
	package(godot) static GodotMethod!(CollisionPolygon2D.BuildMode) _GODOT_get_build_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_build_mode") = _GODOT_get_build_mode;
	/**
	
	*/
	CollisionPolygon2D.BuildMode getBuildMode() const
	{
		_GODOT_get_build_mode.bind("CollisionPolygon2D", "get_build_mode");
		return ptrcall!(CollisionPolygon2D.BuildMode)(_GODOT_get_build_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled") = _GODOT_set_disabled;
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		_GODOT_set_disabled.bind("CollisionPolygon2D", "set_disabled");
		ptrcall!(void)(_GODOT_set_disabled, _godot_object, disabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_disabled") = _GODOT_is_disabled;
	/**
	
	*/
	bool isDisabled() const
	{
		_GODOT_is_disabled.bind("CollisionPolygon2D", "is_disabled");
		return ptrcall!(bool)(_GODOT_is_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_one_way_collision;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_one_way_collision") = _GODOT_set_one_way_collision;
	/**
	
	*/
	void setOneWayCollision(in bool enabled)
	{
		_GODOT_set_one_way_collision.bind("CollisionPolygon2D", "set_one_way_collision");
		ptrcall!(void)(_GODOT_set_one_way_collision, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_one_way_collision_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_one_way_collision_enabled") = _GODOT_is_one_way_collision_enabled;
	/**
	
	*/
	bool isOneWayCollisionEnabled() const
	{
		_GODOT_is_one_way_collision_enabled.bind("CollisionPolygon2D", "is_one_way_collision_enabled");
		return ptrcall!(bool)(_GODOT_is_one_way_collision_enabled, _godot_object);
	}
	/**
	Collision build mode. Use one of the `BUILD_*` constants. Default value: `BUILD_SOLIDS`.
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
	The polygon's list of vertices. The final point will be connected to the first.
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
	/**
	If `true` no collisions will be detected.
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
	If `true` only edges that face up, relative to CollisionPolygon2D's rotation, will collide with other objects.
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
}
