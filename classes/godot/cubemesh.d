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
Generate an axis-aligned cuboid $(D PrimitiveMesh).

The cube's UV layout is arranged in a 3×2 layout that allows texturing each face individually. To apply the same texture on all faces, change the material's UV property to `Vector3(3, 2, 1)`.
$(B Note:) When using a large textured $(D CubeMesh) (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase $(D subdivideDepth), $(D subdivideHeight) and $(D subdivideWidth) until you no longer notice UV jittering.
*/
@GodotBaseClass struct CubeMesh
{
	package(godot) enum string _GODOT_internal_name = "CubeMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_size") GodotMethod!(Vector3) getSize;
		@GodotName("get_subdivide_depth") GodotMethod!(long) getSubdivideDepth;
		@GodotName("get_subdivide_height") GodotMethod!(long) getSubdivideHeight;
		@GodotName("get_subdivide_width") GodotMethod!(long) getSubdivideWidth;
		@GodotName("set_size") GodotMethod!(void, Vector3) setSize;
		@GodotName("set_subdivide_depth") GodotMethod!(void, long) setSubdivideDepth;
		@GodotName("set_subdivide_height") GodotMethod!(void, long) setSubdivideHeight;
		@GodotName("set_subdivide_width") GodotMethod!(void, long) setSubdivideWidth;
	}
	/// 
	pragma(inline, true) bool opEquals(in CubeMesh other) const
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
	/// Construct a new instance of CubeMesh.
	/// Note: use `memnew!CubeMesh` instead.
	static CubeMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CubeMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CubeMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Vector3 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getSize, _godot_object);
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
	long getSubdivideHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSubdivideHeight, _godot_object);
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
	void setSize(in Vector3 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	void setSubdivideDepth(in long divisions)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSubdivideDepth, _godot_object, divisions);
	}
	/**
	
	*/
	void setSubdivideHeight(in long divisions)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSubdivideHeight, _godot_object, divisions);
	}
	/**
	
	*/
	void setSubdivideWidth(in long subdivide)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSubdivideWidth, _godot_object, subdivide);
	}
	/**
	Size of the cuboid mesh.
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
	Number of extra edge loops inserted along the Z axis.
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
	Number of extra edge loops inserted along the Y axis.
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
	Number of extra edge loops inserted along the X axis.
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
