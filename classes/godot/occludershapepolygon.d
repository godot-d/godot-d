/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.occludershapepolygon;
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
import godot.occludershape;
import godot.resource;
/**

*/
@GodotBaseClass struct OccluderShapePolygon
{
	package(godot) enum string _GODOT_internal_name = "OccluderShapePolygon";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ OccluderShape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_hole_points") GodotMethod!(PoolVector2Array) getHolePoints;
		@GodotName("get_polygon_points") GodotMethod!(PoolVector2Array) getPolygonPoints;
		@GodotName("is_two_way") GodotMethod!(bool) isTwoWay;
		@GodotName("set_hole_point") GodotMethod!(void, long, Vector2) setHolePoint;
		@GodotName("set_hole_points") GodotMethod!(void, PoolVector2Array) setHolePoints;
		@GodotName("set_polygon_point") GodotMethod!(void, long, Vector2) setPolygonPoint;
		@GodotName("set_polygon_points") GodotMethod!(void, PoolVector2Array) setPolygonPoints;
		@GodotName("set_two_way") GodotMethod!(void, bool) setTwoWay;
	}
	/// 
	pragma(inline, true) bool opEquals(in OccluderShapePolygon other) const
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
	/// Construct a new instance of OccluderShapePolygon.
	/// Note: use `memnew!OccluderShapePolygon` instead.
	static OccluderShapePolygon _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("OccluderShapePolygon");
		if(constructor is null) return typeof(this).init;
		return cast(OccluderShapePolygon)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	PoolVector2Array getHolePoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getHolePoints, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getPolygonPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getPolygonPoints, _godot_object);
	}
	/**
	
	*/
	bool isTwoWay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isTwoWay, _godot_object);
	}
	/**
	
	*/
	void setHolePoint(in long index, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHolePoint, _godot_object, index, position);
	}
	/**
	
	*/
	void setHolePoints(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHolePoints, _godot_object, points);
	}
	/**
	
	*/
	void setPolygonPoint(in long index, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPolygonPoint, _godot_object, index, position);
	}
	/**
	
	*/
	void setPolygonPoints(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPolygonPoints, _godot_object, points);
	}
	/**
	
	*/
	void setTwoWay(in bool two_way)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTwoWay, _godot_object, two_way);
	}
	/**
	
	*/
	@property PoolVector2Array holePoints()
	{
		return getHolePoints();
	}
	/// ditto
	@property void holePoints(PoolVector2Array v)
	{
		setHolePoints(v);
	}
	/**
	
	*/
	@property PoolVector2Array polygonPoints()
	{
		return getPolygonPoints();
	}
	/// ditto
	@property void polygonPoints(PoolVector2Array v)
	{
		setPolygonPoints(v);
	}
	/**
	
	*/
	@property bool twoWay()
	{
		return isTwoWay();
	}
	/// ditto
	@property void twoWay(bool v)
	{
		setTwoWay(v);
	}
}
