/**
2D navigation and pathfinding node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.navigation2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.navigationpolygon;
/**
2D navigation and pathfinding node.

Navigation2D provides navigation and pathfinding within a 2D area, specified as a collection of $(D NavigationPolygon) resources. By default, these are automatically collected from child $(D NavigationPolygonInstance) nodes, but they can also be added on the fly with $(D navpolyAdd).
*/
@GodotBaseClass struct Navigation2D
{
	package(godot) enum string _GODOT_internal_name = "Navigation2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_closest_point") GodotMethod!(Vector2, Vector2) getClosestPoint;
		@GodotName("get_closest_point_owner") GodotMethod!(GodotObject, Vector2) getClosestPointOwner;
		@GodotName("get_simple_path") GodotMethod!(PoolVector2Array, Vector2, Vector2, bool) getSimplePath;
		@GodotName("navpoly_add") GodotMethod!(long, NavigationPolygon, Transform2D, GodotObject) navpolyAdd;
		@GodotName("navpoly_remove") GodotMethod!(void, long) navpolyRemove;
		@GodotName("navpoly_set_transform") GodotMethod!(void, long, Transform2D) navpolySetTransform;
	}
	/// 
	pragma(inline, true) bool opEquals(in Navigation2D other) const
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
	/// Construct a new instance of Navigation2D.
	/// Note: use `memnew!Navigation2D` instead.
	static Navigation2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Navigation2D");
		if(constructor is null) return typeof(this).init;
		return cast(Navigation2D)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the navigation point closest to the point given. Points are in local coordinate space.
	*/
	Vector2 getClosestPoint(in Vector2 to_point)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getClosestPoint, _godot_object, to_point);
	}
	/**
	Returns the owner of the $(D NavigationPolygon) which contains the navigation point closest to the point given. This is usually a $(D NavigationPolygonInstance). For polygons added via $(D navpolyAdd), returns the owner that was given (or `null` if the `owner` parameter was omitted).
	*/
	GodotObject getClosestPointOwner(in Vector2 to_point)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getClosestPointOwner, _godot_object, to_point);
	}
	/**
	Returns the path between two given points. Points are in local coordinate space. If `optimize` is `true` (the default), the path is smoothed by merging path segments where possible.
	*/
	PoolVector2Array getSimplePath(in Vector2 start, in Vector2 end, in bool optimize = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getSimplePath, _godot_object, start, end, optimize);
	}
	/**
	Adds a $(D NavigationPolygon). Returns an ID for use with $(D navpolyRemove) or $(D navpolySetTransform). If given, a $(D Transform2D) is applied to the polygon. The optional `owner` is used as return value for $(D getClosestPointOwner).
	*/
	long navpolyAdd(NavigationPolygon mesh, in Transform2D xform, GodotObject owner = GodotObject.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.navpolyAdd, _godot_object, mesh, xform, owner);
	}
	/**
	Removes the $(D NavigationPolygon) with the given ID.
	*/
	void navpolyRemove(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.navpolyRemove, _godot_object, id);
	}
	/**
	Sets the transform applied to the $(D NavigationPolygon) with the given ID.
	*/
	void navpolySetTransform(in long id, in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.navpolySetTransform, _godot_object, id, xform);
	}
}
