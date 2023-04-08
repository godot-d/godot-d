/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arraymesh;
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
import godot.mesh;
/**

*/
@GodotBaseClass struct ArrayMesh
{
	package(godot) enum string _GODOT_internal_name = "ArrayMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Mesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_blend_shape") GodotMethod!(void, String) addBlendShape;
		@GodotName("add_surface_from_arrays") GodotMethod!(void, long, Array, Array, long) addSurfaceFromArrays;
		@GodotName("clear_blend_shapes") GodotMethod!(void) clearBlendShapes;
		@GodotName("clear_surfaces") GodotMethod!(void) clearSurfaces;
		@GodotName("get_blend_shape_count") GodotMethod!(long) getBlendShapeCount;
		@GodotName("get_blend_shape_mode") GodotMethod!(Mesh.BlendShapeMode) getBlendShapeMode;
		@GodotName("get_blend_shape_name") GodotMethod!(String, long) getBlendShapeName;
		@GodotName("get_custom_aabb") GodotMethod!(AABB) getCustomAabb;
		@GodotName("lightmap_unwrap") GodotMethod!(GodotError, Transform, double) lightmapUnwrap;
		@GodotName("regen_normalmaps") GodotMethod!(void) regenNormalmaps;
		@GodotName("set_blend_shape_mode") GodotMethod!(void, long) setBlendShapeMode;
		@GodotName("set_blend_shape_name") GodotMethod!(void, long, String) setBlendShapeName;
		@GodotName("set_custom_aabb") GodotMethod!(void, AABB) setCustomAabb;
		@GodotName("surface_find_by_name") GodotMethod!(long, String) surfaceFindByName;
		@GodotName("surface_get_array_index_len") GodotMethod!(long, long) surfaceGetArrayIndexLen;
		@GodotName("surface_get_array_len") GodotMethod!(long, long) surfaceGetArrayLen;
		@GodotName("surface_get_format") GodotMethod!(long, long) surfaceGetFormat;
		@GodotName("surface_get_name") GodotMethod!(String, long) surfaceGetName;
		@GodotName("surface_get_primitive_type") GodotMethod!(Mesh.PrimitiveType, long) surfaceGetPrimitiveType;
		@GodotName("surface_remove") GodotMethod!(void, long) surfaceRemove;
		@GodotName("surface_set_name") GodotMethod!(void, long, String) surfaceSetName;
		@GodotName("surface_update_region") GodotMethod!(void, long, long, PoolByteArray) surfaceUpdateRegion;
	}
	/// 
	pragma(inline, true) bool opEquals(in ArrayMesh other) const
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
	/// Construct a new instance of ArrayMesh.
	/// Note: use `memnew!ArrayMesh` instead.
	static ArrayMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ArrayMesh");
		if(constructor is null) return typeof(this).init;
		return cast(ArrayMesh)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ArrayFormat : int
	{
		/** */
		arrayFormatVertex = 1,
		/** */
		arrayFormatNormal = 2,
		/** */
		arrayFormatTangent = 4,
		/** */
		arrayFormatColor = 8,
		/** */
		arrayFormatTexUv = 16,
		/** */
		arrayFormatTexUv2 = 32,
		/** */
		arrayFormatBones = 64,
		/** */
		arrayFormatWeights = 128,
		/** */
		arrayFormatIndex = 256,
	}
	/// 
	enum ArrayType : int
	{
		/** */
		arrayVertex = 0,
		/** */
		arrayNormal = 1,
		/** */
		arrayTangent = 2,
		/** */
		arrayColor = 3,
		/** */
		arrayTexUv = 4,
		/** */
		arrayTexUv2 = 5,
		/** */
		arrayBones = 6,
		/** */
		arrayWeights = 7,
		/** */
		arrayIndex = 8,
		/** */
		arrayMax = 9,
	}
	/// 
	enum Constants : int
	{
		/** */
		noIndexArray = -1,
		arrayVertex = 0,
		arrayNormal = 1,
		arrayFormatVertex = 1,
		arrayFormatNormal = 2,
		arrayTangent = 2,
		arrayColor = 3,
		/** */
		arrayWeightsSize = 4,
		arrayFormatTangent = 4,
		arrayTexUv = 4,
		arrayTexUv2 = 5,
		arrayBones = 6,
		arrayWeights = 7,
		arrayIndex = 8,
		arrayFormatColor = 8,
		arrayMax = 9,
		arrayFormatTexUv = 16,
		arrayFormatTexUv2 = 32,
		arrayFormatBones = 64,
		arrayFormatWeights = 128,
		arrayFormatIndex = 256,
	}
	/**
	
	*/
	void addBlendShape(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBlendShape, _godot_object, name);
	}
	/**
	
	*/
	void addSurfaceFromArrays(in long primitive, in Array arrays, in Array blend_shapes = Array.make(), in long compress_flags = 2194432)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSurfaceFromArrays, _godot_object, primitive, arrays, blend_shapes, compress_flags);
	}
	/**
	
	*/
	void clearBlendShapes()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearBlendShapes, _godot_object);
	}
	/**
	
	*/
	void clearSurfaces()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearSurfaces, _godot_object);
	}
	/**
	
	*/
	long getBlendShapeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBlendShapeCount, _godot_object);
	}
	/**
	
	*/
	Mesh.BlendShapeMode getBlendShapeMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh.BlendShapeMode)(GDNativeClassBinding.getBlendShapeMode, _godot_object);
	}
	/**
	
	*/
	String getBlendShapeName(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBlendShapeName, _godot_object, index);
	}
	/**
	
	*/
	AABB getCustomAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getCustomAabb, _godot_object);
	}
	/**
	
	*/
	GodotError lightmapUnwrap(in Transform transform, in double texel_size)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.lightmapUnwrap, _godot_object, transform, texel_size);
	}
	/**
	
	*/
	void regenNormalmaps()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.regenNormalmaps, _godot_object);
	}
	/**
	
	*/
	void setBlendShapeMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendShapeMode, _godot_object, mode);
	}
	/**
	
	*/
	void setBlendShapeName(in long index, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendShapeName, _godot_object, index, name);
	}
	/**
	
	*/
	void setCustomAabb(in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomAabb, _godot_object, aabb);
	}
	/**
	
	*/
	long surfaceFindByName(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.surfaceFindByName, _godot_object, name);
	}
	/**
	
	*/
	long surfaceGetArrayIndexLen(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.surfaceGetArrayIndexLen, _godot_object, surf_idx);
	}
	/**
	
	*/
	long surfaceGetArrayLen(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.surfaceGetArrayLen, _godot_object, surf_idx);
	}
	/**
	
	*/
	long surfaceGetFormat(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.surfaceGetFormat, _godot_object, surf_idx);
	}
	/**
	
	*/
	String surfaceGetName(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.surfaceGetName, _godot_object, surf_idx);
	}
	/**
	
	*/
	Mesh.PrimitiveType surfaceGetPrimitiveType(in long surf_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh.PrimitiveType)(GDNativeClassBinding.surfaceGetPrimitiveType, _godot_object, surf_idx);
	}
	/**
	
	*/
	void surfaceRemove(in long surf_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.surfaceRemove, _godot_object, surf_idx);
	}
	/**
	
	*/
	void surfaceSetName(in long surf_idx, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.surfaceSetName, _godot_object, surf_idx, name);
	}
	/**
	
	*/
	void surfaceUpdateRegion(in long surf_idx, in long offset, in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.surfaceUpdateRegion, _godot_object, surf_idx, offset, data);
	}
	/**
	
	*/
	@property Mesh.BlendShapeMode blendShapeMode()
	{
		return getBlendShapeMode();
	}
	/// ditto
	@property void blendShapeMode(long v)
	{
		setBlendShapeMode(v);
	}
	/**
	
	*/
	@property AABB customAabb()
	{
		return getCustomAabb();
	}
	/// ditto
	@property void customAabb(AABB v)
	{
		setCustomAabb(v);
	}
}
