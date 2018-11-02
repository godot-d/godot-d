/**
Class representing a planar $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.planemesh;
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
import godot.mesh;
import godot.resource;
import godot.reference;
/**
Class representing a planar $(D PrimitiveMesh).

This flat mesh does not have a thickness.
*/
@GodotBaseClass struct PlaneMesh
{
	enum string _GODOT_internal_name = "PlaneMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("set_subdivide_width") GodotMethod!(void, long) setSubdivideWidth;
		@GodotName("get_subdivide_width") GodotMethod!(long) getSubdivideWidth;
		@GodotName("set_subdivide_depth") GodotMethod!(void, long) setSubdivideDepth;
		@GodotName("get_subdivide_depth") GodotMethod!(long) getSubdivideDepth;
	}
	bool opEquals(in PlaneMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PlaneMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PlaneMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PlaneMesh");
		if(constructor is null) return typeof(this).init;
		return cast(PlaneMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSize, _godot_object);
	}
	/**
	
	*/
	void setSubdivideWidth(in long subdivide)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSubdivideWidth, _godot_object, subdivide);
	}
	/**
	
	*/
	long getSubdivideWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSubdivideWidth, _godot_object);
	}
	/**
	
	*/
	void setSubdivideDepth(in long subdivide)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSubdivideDepth, _godot_object, subdivide);
	}
	/**
	
	*/
	long getSubdivideDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSubdivideDepth, _godot_object);
	}
	/**
	Size of the generated plane. Defaults to (2.0, 2.0).
	*/
	@property Vector2 size()
	{
		return getSize();
	}
	/// ditto
	@property void size(Vector2 v)
	{
		setSize(v);
	}
	/**
	Number of subdivision along the x-axis. Defaults to 0.
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
	Number of subdivision along the z-axis. Defaults to 0.
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
