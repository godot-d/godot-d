/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.multimesh;
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
import godot.resource;
import godot.mesh;
/**

*/
@GodotBaseClass struct MultiMesh
{
	package(godot) enum string _GODOT_internal_name = "MultiMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_color_array") GodotMethod!(PoolColorArray) _getColorArray;
		@GodotName("_get_custom_data_array") GodotMethod!(PoolColorArray) _getCustomDataArray;
		@GodotName("_get_transform_2d_array") GodotMethod!(PoolVector2Array) _getTransform2dArray;
		@GodotName("_get_transform_array") GodotMethod!(PoolVector3Array) _getTransformArray;
		@GodotName("_set_color_array") GodotMethod!(void, PoolColorArray) _setColorArray;
		@GodotName("_set_custom_data_array") GodotMethod!(void, PoolColorArray) _setCustomDataArray;
		@GodotName("_set_transform_2d_array") GodotMethod!(void, PoolVector2Array) _setTransform2dArray;
		@GodotName("_set_transform_array") GodotMethod!(void, PoolVector3Array) _setTransformArray;
		@GodotName("get_aabb") GodotMethod!(AABB) getAabb;
		@GodotName("get_color_format") GodotMethod!(MultiMesh.ColorFormat) getColorFormat;
		@GodotName("get_custom_data_format") GodotMethod!(MultiMesh.CustomDataFormat) getCustomDataFormat;
		@GodotName("get_instance_color") GodotMethod!(Color, long) getInstanceColor;
		@GodotName("get_instance_count") GodotMethod!(long) getInstanceCount;
		@GodotName("get_instance_custom_data") GodotMethod!(Color, long) getInstanceCustomData;
		@GodotName("get_instance_transform") GodotMethod!(Transform, long) getInstanceTransform;
		@GodotName("get_instance_transform_2d") GodotMethod!(Transform2D, long) getInstanceTransform2d;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("get_physics_interpolation_quality") GodotMethod!(MultiMesh.PhysicsInterpolationQuality) getPhysicsInterpolationQuality;
		@GodotName("get_transform_format") GodotMethod!(MultiMesh.TransformFormat) getTransformFormat;
		@GodotName("get_visible_instance_count") GodotMethod!(long) getVisibleInstanceCount;
		@GodotName("reset_instance_physics_interpolation") GodotMethod!(void, long) resetInstancePhysicsInterpolation;
		@GodotName("set_as_bulk_array") GodotMethod!(void, PoolRealArray) setAsBulkArray;
		@GodotName("set_as_bulk_array_interpolated") GodotMethod!(void, PoolRealArray, PoolRealArray) setAsBulkArrayInterpolated;
		@GodotName("set_color_format") GodotMethod!(void, long) setColorFormat;
		@GodotName("set_custom_data_format") GodotMethod!(void, long) setCustomDataFormat;
		@GodotName("set_instance_color") GodotMethod!(void, long, Color) setInstanceColor;
		@GodotName("set_instance_count") GodotMethod!(void, long) setInstanceCount;
		@GodotName("set_instance_custom_data") GodotMethod!(void, long, Color) setInstanceCustomData;
		@GodotName("set_instance_transform") GodotMethod!(void, long, Transform) setInstanceTransform;
		@GodotName("set_instance_transform_2d") GodotMethod!(void, long, Transform2D) setInstanceTransform2d;
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
		@GodotName("set_physics_interpolation_quality") GodotMethod!(void, long) setPhysicsInterpolationQuality;
		@GodotName("set_transform_format") GodotMethod!(void, long) setTransformFormat;
		@GodotName("set_visible_instance_count") GodotMethod!(void, long) setVisibleInstanceCount;
	}
	/// 
	pragma(inline, true) bool opEquals(in MultiMesh other) const
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
	/// Construct a new instance of MultiMesh.
	/// Note: use `memnew!MultiMesh` instead.
	static MultiMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MultiMesh");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMesh)(constructor());
	}
	/// 
	enum PhysicsInterpolationQuality : int
	{
		/** */
		interpQualityFast = 0,
		/** */
		interpQualityHigh = 1,
	}
	/// 
	enum TransformFormat : int
	{
		/** */
		transform2d = 0,
		/** */
		transform3d = 1,
	}
	/// 
	enum CustomDataFormat : int
	{
		/** */
		customDataNone = 0,
		/** */
		customData8bit = 1,
		/** */
		customDataFloat = 2,
	}
	/// 
	enum ColorFormat : int
	{
		/** */
		colorNone = 0,
		/** */
		color8bit = 1,
		/** */
		colorFloat = 2,
	}
	/// 
	enum Constants : int
	{
		colorNone = 0,
		interpQualityFast = 0,
		transform2d = 0,
		customDataNone = 0,
		interpQualityHigh = 1,
		customData8bit = 1,
		transform3d = 1,
		color8bit = 1,
		colorFloat = 2,
		customDataFloat = 2,
	}
	/**
	
	*/
	PoolColorArray _getColorArray() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_color_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolColorArray);
	}
	/**
	
	*/
	PoolColorArray _getCustomDataArray() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_custom_data_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolColorArray);
	}
	/**
	
	*/
	PoolVector2Array _getTransform2dArray() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_transform_2d_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolVector2Array);
	}
	/**
	
	*/
	PoolVector3Array _getTransformArray() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_transform_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolVector3Array);
	}
	/**
	
	*/
	void _setColorArray(in PoolColorArray arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_color_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setCustomDataArray(in PoolColorArray arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_custom_data_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setTransform2dArray(in PoolVector2Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_transform_2d_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setTransformArray(in PoolVector3Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_transform_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	AABB getAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getAabb, _godot_object);
	}
	/**
	
	*/
	MultiMesh.ColorFormat getColorFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh.ColorFormat)(GDNativeClassBinding.getColorFormat, _godot_object);
	}
	/**
	
	*/
	MultiMesh.CustomDataFormat getCustomDataFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh.CustomDataFormat)(GDNativeClassBinding.getCustomDataFormat, _godot_object);
	}
	/**
	
	*/
	Color getInstanceColor(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getInstanceColor, _godot_object, instance);
	}
	/**
	
	*/
	long getInstanceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getInstanceCount, _godot_object);
	}
	/**
	
	*/
	Color getInstanceCustomData(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getInstanceCustomData, _godot_object, instance);
	}
	/**
	
	*/
	Transform getInstanceTransform(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getInstanceTransform, _godot_object, instance);
	}
	/**
	
	*/
	Transform2D getInstanceTransform2d(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getInstanceTransform2d, _godot_object, instance);
	}
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	MultiMesh.PhysicsInterpolationQuality getPhysicsInterpolationQuality() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh.PhysicsInterpolationQuality)(GDNativeClassBinding.getPhysicsInterpolationQuality, _godot_object);
	}
	/**
	
	*/
	MultiMesh.TransformFormat getTransformFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh.TransformFormat)(GDNativeClassBinding.getTransformFormat, _godot_object);
	}
	/**
	
	*/
	long getVisibleInstanceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVisibleInstanceCount, _godot_object);
	}
	/**
	
	*/
	void resetInstancePhysicsInterpolation(in long instance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resetInstancePhysicsInterpolation, _godot_object, instance);
	}
	/**
	
	*/
	void setAsBulkArray(in PoolRealArray array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsBulkArray, _godot_object, array);
	}
	/**
	
	*/
	void setAsBulkArrayInterpolated(in PoolRealArray array_current, in PoolRealArray array_previous)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsBulkArrayInterpolated, _godot_object, array_current, array_previous);
	}
	/**
	
	*/
	void setColorFormat(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColorFormat, _godot_object, format);
	}
	/**
	
	*/
	void setCustomDataFormat(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomDataFormat, _godot_object, format);
	}
	/**
	
	*/
	void setInstanceColor(in long instance, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInstanceColor, _godot_object, instance, color);
	}
	/**
	
	*/
	void setInstanceCount(in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInstanceCount, _godot_object, count);
	}
	/**
	
	*/
	void setInstanceCustomData(in long instance, in Color custom_data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInstanceCustomData, _godot_object, instance, custom_data);
	}
	/**
	
	*/
	void setInstanceTransform(in long instance, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInstanceTransform, _godot_object, instance, transform);
	}
	/**
	
	*/
	void setInstanceTransform2d(in long instance, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInstanceTransform2d, _godot_object, instance, transform);
	}
	/**
	
	*/
	void setMesh(Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMesh, _godot_object, mesh);
	}
	/**
	
	*/
	void setPhysicsInterpolationQuality(in long quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsInterpolationQuality, _godot_object, quality);
	}
	/**
	
	*/
	void setTransformFormat(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransformFormat, _godot_object, format);
	}
	/**
	
	*/
	void setVisibleInstanceCount(in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVisibleInstanceCount, _godot_object, count);
	}
	/**
	
	*/
	@property PoolColorArray colorArray()
	{
		return _getColorArray();
	}
	/// ditto
	@property void colorArray(PoolColorArray v)
	{
		_setColorArray(v);
	}
	/**
	
	*/
	@property MultiMesh.ColorFormat colorFormat()
	{
		return getColorFormat();
	}
	/// ditto
	@property void colorFormat(long v)
	{
		setColorFormat(v);
	}
	/**
	
	*/
	@property PoolColorArray customDataArray()
	{
		return _getCustomDataArray();
	}
	/// ditto
	@property void customDataArray(PoolColorArray v)
	{
		_setCustomDataArray(v);
	}
	/**
	
	*/
	@property MultiMesh.CustomDataFormat customDataFormat()
	{
		return getCustomDataFormat();
	}
	/// ditto
	@property void customDataFormat(long v)
	{
		setCustomDataFormat(v);
	}
	/**
	
	*/
	@property long instanceCount()
	{
		return getInstanceCount();
	}
	/// ditto
	@property void instanceCount(long v)
	{
		setInstanceCount(v);
	}
	/**
	
	*/
	@property Mesh mesh()
	{
		return getMesh();
	}
	/// ditto
	@property void mesh(Mesh v)
	{
		setMesh(v);
	}
	/**
	
	*/
	@property MultiMesh.PhysicsInterpolationQuality physicsInterpolationQuality()
	{
		return getPhysicsInterpolationQuality();
	}
	/// ditto
	@property void physicsInterpolationQuality(long v)
	{
		setPhysicsInterpolationQuality(v);
	}
	/**
	
	*/
	@property PoolVector2Array transform2dArray()
	{
		return _getTransform2dArray();
	}
	/// ditto
	@property void transform2dArray(PoolVector2Array v)
	{
		_setTransform2dArray(v);
	}
	/**
	
	*/
	@property PoolVector3Array transformArray()
	{
		return _getTransformArray();
	}
	/// ditto
	@property void transformArray(PoolVector3Array v)
	{
		_setTransformArray(v);
	}
	/**
	
	*/
	@property MultiMesh.TransformFormat transformFormat()
	{
		return getTransformFormat();
	}
	/// ditto
	@property void transformFormat(long v)
	{
		setTransformFormat(v);
	}
	/**
	
	*/
	@property long visibleInstanceCount()
	{
		return getVisibleInstanceCount();
	}
	/// ditto
	@property void visibleInstanceCount(long v)
	{
		setVisibleInstanceCount(v);
	}
}
