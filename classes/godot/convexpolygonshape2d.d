/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.convexpolygonshape2d;
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
import godot.shape2d;
/**

*/
@GodotBaseClass struct ConvexPolygonShape2D
{
	package(godot) enum string _GODOT_internal_name = "ConvexPolygonShape2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_points") GodotMethod!(PoolVector2Array) getPoints;
		@GodotName("set_point_cloud") GodotMethod!(void, PoolVector2Array) setPointCloud;
		@GodotName("set_points") GodotMethod!(void, PoolVector2Array) setPoints;
	}
	/// 
	pragma(inline, true) bool opEquals(in ConvexPolygonShape2D other) const
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
	/// Construct a new instance of ConvexPolygonShape2D.
	/// Note: use `memnew!ConvexPolygonShape2D` instead.
	static ConvexPolygonShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConvexPolygonShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(ConvexPolygonShape2D)(constructor());
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
	void setPointCloud(in PoolVector2Array point_cloud)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPointCloud, _godot_object, point_cloud);
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
	@property PoolVector2Array points()
	{
		return getPoints();
	}
	/// ditto
	@property void points(PoolVector2Array v)
	{
		setPoints(v);
	}
}
