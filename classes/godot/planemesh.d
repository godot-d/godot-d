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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
/**
Class representing a planar $(D PrimitiveMesh).

This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Z axes; this default rotation isn't suited for use with billboarded materials. For billboarded materials, use $(D QuadMesh) instead.
$(B Note:) When using a large textured $(D PlaneMesh) (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase $(D subdivideDepth) and $(D subdivideWidth) until you no longer notice UV jittering.
*/
@GodotBaseClass struct PlaneMesh
{
	package(godot) enum string _GODOT_internal_name = "PlaneMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("get_subdivide_depth") GodotMethod!(long) getSubdivideDepth;
		@GodotName("get_subdivide_width") GodotMethod!(long) getSubdivideWidth;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
		@GodotName("set_subdivide_depth") GodotMethod!(void, long) setSubdivideDepth;
		@GodotName("set_subdivide_width") GodotMethod!(void, long) setSubdivideWidth;
	}
	/// 
	pragma(inline, true) bool opEquals(in PlaneMesh other) const
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
	/// Construct a new instance of PlaneMesh.
	/// Note: use `memnew!PlaneMesh` instead.
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
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	
	*/
	long getSubdivideDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSubdivideDepth, _godot_object);
	}
	/**
	
	*/
	long getSubdivideWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSubdivideWidth, _godot_object);
	}
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	void setSubdivideDepth(in long subdivide)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSubdivideDepth, _godot_object, subdivide);
	}
	/**
	
	*/
	void setSubdivideWidth(in long subdivide)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSubdivideWidth, _godot_object, subdivide);
	}
	/**
	Size of the generated plane.
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
	Number of subdivision along the Z axis.
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
	/**
	Number of subdivision along the X axis.
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
}
