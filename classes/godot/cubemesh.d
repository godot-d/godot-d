/**
Generate an axis-aligned cuboid $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cubemesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
/**
Generate an axis-aligned cuboid $(D PrimitiveMesh).


*/
@GodotBaseClass struct CubeMesh
{
	static immutable string _GODOT_internal_name = "CubeMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CubeMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CubeMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CubeMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CubeMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CubeMesh)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	/**
	
	*/
	void setSize(in Vector3 size)
	{
		_GODOT_set_size.bind("CubeMesh", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	
	*/
	Vector3 getSize() const
	{
		_GODOT_get_size.bind("CubeMesh", "get_size");
		return ptrcall!(Vector3)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_subdivide_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdivide_width") = _GODOT_set_subdivide_width;
	/**
	
	*/
	void setSubdivideWidth(in long subdivide)
	{
		_GODOT_set_subdivide_width.bind("CubeMesh", "set_subdivide_width");
		ptrcall!(void)(_GODOT_set_subdivide_width, _godot_object, subdivide);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_subdivide_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdivide_width") = _GODOT_get_subdivide_width;
	/**
	
	*/
	long getSubdivideWidth() const
	{
		_GODOT_get_subdivide_width.bind("CubeMesh", "get_subdivide_width");
		return ptrcall!(long)(_GODOT_get_subdivide_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_subdivide_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdivide_height") = _GODOT_set_subdivide_height;
	/**
	
	*/
	void setSubdivideHeight(in long divisions)
	{
		_GODOT_set_subdivide_height.bind("CubeMesh", "set_subdivide_height");
		ptrcall!(void)(_GODOT_set_subdivide_height, _godot_object, divisions);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_subdivide_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdivide_height") = _GODOT_get_subdivide_height;
	/**
	
	*/
	long getSubdivideHeight() const
	{
		_GODOT_get_subdivide_height.bind("CubeMesh", "get_subdivide_height");
		return ptrcall!(long)(_GODOT_get_subdivide_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_subdivide_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdivide_depth") = _GODOT_set_subdivide_depth;
	/**
	
	*/
	void setSubdivideDepth(in long divisions)
	{
		_GODOT_set_subdivide_depth.bind("CubeMesh", "set_subdivide_depth");
		ptrcall!(void)(_GODOT_set_subdivide_depth, _godot_object, divisions);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_subdivide_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdivide_depth") = _GODOT_get_subdivide_depth;
	/**
	
	*/
	long getSubdivideDepth() const
	{
		_GODOT_get_subdivide_depth.bind("CubeMesh", "get_subdivide_depth");
		return ptrcall!(long)(_GODOT_get_subdivide_depth, _godot_object);
	}
	/**
	Size of the cuboid mesh. Defaults to (2, 2, 2).
	*/
	@property Vector3 size()
	{
		return getSize();
	}
	/// ditto
	@property void size(Vector3 v)
	{
		setSize(v);
	}
	/**
	Number of extra edge loops inserted along the x-axis. Defaults to 0.
	*/
	@property long subdivideWidth()
	{
		return getSubdivideWidth();
	}
	/// ditto
	@property void subdivideWidth(long v)
	{
		setSubdivideWidth(v);
	}
	/**
	Number of extra edge loops inserted along the y-axis. Defaults to 0.
	*/
	@property long subdivideHeight()
	{
		return getSubdivideHeight();
	}
	/// ditto
	@property void subdivideHeight(long v)
	{
		setSubdivideHeight(v);
	}
	/**
	Number of extra edge loops inserted along the z-axis. Defaults to 0.
	*/
	@property long subdivideDepth()
	{
		return getSubdivideDepth();
	}
	/// ditto
	@property void subdivideDepth(long v)
	{
		setSubdivideDepth(v);
	}
}
