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
import godot.reference;
/**
Defines a 2D polygon for LightOccluder2D.

Editor facility that helps you draw a 2D polygon used as resource for $(D LightOccluder2D).
*/
@GodotBaseClass struct OccluderPolygon2D
{
	enum string _GODOT_internal_name = "OccluderPolygon2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_closed") GodotMethod!(void, bool) setClosed;
		@GodotName("is_closed") GodotMethod!(bool) isClosed;
		@GodotName("set_cull_mode") GodotMethod!(void, long) setCullMode;
		@GodotName("get_cull_mode") GodotMethod!(OccluderPolygon2D.CullMode) getCullMode;
		@GodotName("set_polygon") GodotMethod!(void, PoolVector2Array) setPolygon;
		@GodotName("get_polygon") GodotMethod!(PoolVector2Array) getPolygon;
	}
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
	/**
	
	*/
	void setClosed(in bool closed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClosed, _godot_object, closed);
	}
	/**
	
	*/
	bool isClosed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClosed, _godot_object);
	}
	/**
	
	*/
	void setCullMode(in long cull_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCullMode, _godot_object, cull_mode);
	}
	/**
	
	*/
	OccluderPolygon2D.CullMode getCullMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OccluderPolygon2D.CullMode)(_classBinding.getCullMode, _godot_object);
	}
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getPolygon, _godot_object);
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
