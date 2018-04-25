/**
Defines a 2D polygon for LightOccluder2D.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.occluderpolygon2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
/**
Defines a 2D polygon for LightOccluder2D.

Editor facility that helps you draw a 2D polygon used as resource for $(D LightOccluder2D).
*/
@GodotBaseClass struct OccluderPolygon2D
{
	static immutable string _GODOT_internal_name = "OccluderPolygon2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in OccluderPolygon2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	OccluderPolygon2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static OccluderPolygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("OccluderPolygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(OccluderPolygon2D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum CullMode : int
	{
		/**
		Culling mode for the occlusion. Disabled means no culling. See $(D cullMode).
		*/
		cullDisabled = 0,
		/**
		Culling mode for the occlusion. Sets the culling to be in clockwise direction. See $(D cullMode).
		*/
		cullClockwise = 1,
		/**
		Culling mode for the occlusion. Sets the culling to be in counter clockwise direction. See $(D cullMode).
		*/
		cullCounterClockwise = 2,
	}
	/// 
	enum Constants : int
	{
		cullDisabled = 0,
		cullClockwise = 1,
		cullCounterClockwise = 2,
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_closed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_closed") = _GODOT_set_closed;
	/**
	
	*/
	void setClosed(in bool closed)
	{
		_GODOT_set_closed.bind("OccluderPolygon2D", "set_closed");
		ptrcall!(void)(_GODOT_set_closed, _godot_object, closed);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_closed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_closed") = _GODOT_is_closed;
	/**
	
	*/
	bool isClosed() const
	{
		_GODOT_is_closed.bind("OccluderPolygon2D", "is_closed");
		return ptrcall!(bool)(_GODOT_is_closed, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_cull_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cull_mode") = _GODOT_set_cull_mode;
	/**
	
	*/
	void setCullMode(in long cull_mode)
	{
		_GODOT_set_cull_mode.bind("OccluderPolygon2D", "set_cull_mode");
		ptrcall!(void)(_GODOT_set_cull_mode, _godot_object, cull_mode);
	}
	package(godot) static GodotMethod!(OccluderPolygon2D.CullMode) _GODOT_get_cull_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cull_mode") = _GODOT_get_cull_mode;
	/**
	
	*/
	OccluderPolygon2D.CullMode getCullMode() const
	{
		_GODOT_get_cull_mode.bind("OccluderPolygon2D", "get_cull_mode");
		return ptrcall!(OccluderPolygon2D.CullMode)(_GODOT_get_cull_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_polygon") = _GODOT_set_polygon;
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		_GODOT_set_polygon.bind("OccluderPolygon2D", "set_polygon");
		ptrcall!(void)(_GODOT_set_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		_GODOT_get_polygon.bind("OccluderPolygon2D", "get_polygon");
		return ptrcall!(PoolVector2Array)(_GODOT_get_polygon, _godot_object);
	}
	/**
	If `true` closes the polygon. A closed OccluderPolygon2D occludes the light coming from any direction. An opened OccluderPolygon2D occludes the light only at its outline's direction. Default value `true`.
	*/
	@property bool closed()
	{
		return isClosed();
	}
	/// ditto
	@property void closed(bool v)
	{
		setClosed(v);
	}
	/**
	Set the direction of the occlusion culling when not `CULL_DISABLED`. Default value `DISABLED`.
	*/
	@property OccluderPolygon2D.CullMode cullMode()
	{
		return getCullMode();
	}
	/// ditto
	@property void cullMode(long v)
	{
		setCullMode(v);
	}
	/**
	A $(D Vector2) array with the index for polygon's vertices positions.
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
