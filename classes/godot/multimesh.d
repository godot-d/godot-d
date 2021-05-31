/**
Provides high-performance mesh instancing.

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
import godot.object;
import godot.classdb;
import godot.resource;
import godot.mesh;
/**
Provides high-performance mesh instancing.

MultiMesh provides low-level mesh instancing. Drawing thousands of $(D MeshInstance) nodes can be slow, since each object is submitted to the GPU then drawn individually.
MultiMesh is much faster as it can draw thousands of instances with a single draw call, resulting in less API overhead.
As a drawback, if the instances are too far away of each other, performance may be reduced as every single instance will always render (they are spatially indexed as one, for the whole object).
Since instances may have any behavior, the AABB used for visibility must be provided by the user.
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
		@GodotName("get_transform_format") GodotMethod!(MultiMesh.TransformFormat) getTransformFormat;
		@GodotName("get_visible_instance_count") GodotMethod!(long) getVisibleInstanceCount;
		@GodotName("set_as_bulk_array") GodotMethod!(void, PoolRealArray) setAsBulkArray;
		@GodotName("set_color_format") GodotMethod!(void, long) setColorFormat;
		@GodotName("set_custom_data_format") GodotMethod!(void, long) setCustomDataFormat;
		@GodotName("set_instance_color") GodotMethod!(void, long, Color) setInstanceColor;
		@GodotName("set_instance_count") GodotMethod!(void, long) setInstanceCount;
		@GodotName("set_instance_custom_data") GodotMethod!(void, long, Color) setInstanceCustomData;
		@GodotName("set_instance_transform") GodotMethod!(void, long, Transform) setInstanceTransform;
		@GodotName("set_instance_transform_2d") GodotMethod!(void, long, Transform2D) setInstanceTransform2d;
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
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
	@disable new(size_t s);
	/// 
	enum TransformFormat : int
	{
		/**
		Use this when using 2D transforms.
		*/
		transform2d = 0,
		/**
		Use this when using 3D transforms.
		*/
		transform3d = 1,
	}
	/// 
	enum CustomDataFormat : int
	{
		/**
		Use when you are not using per-instance custom data.
		*/
		customDataNone = 0,
		/**
		Compress custom_data into 8 bits when passing to shader. This uses less memory and can be faster, but loses precision and range. Floats packed into 8 bits can only represent values between 0 and 1, numbers outside that range will be clamped.
		*/
		customData8bit = 1,
		/**
		The $(D Color) passed into $(D setInstanceCustomData) will use 4 floats. Use this for highest precision.
		*/
		customDataFloat = 2,
	}
	/// 
	enum ColorFormat : int
	{
		/**
		Use when you are not using per-instance $(D Color)s.
		*/
		colorNone = 0,
		/**
		Compress $(D Color) data into 8 bits when passing to shader. This uses less memory and can be faster, but the $(D Color) loses precision.
		*/
		color8bit = 1,
		/**
		The $(D Color) passed into $(D setInstanceColor) will use 4 floats. Use this for highest precision $(D Color).
		*/
		colorFloat = 2,
	}
	/// 
	enum Constants : int
	{
		colorNone = 0,
		transform2d = 0,
		customDataNone = 0,
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
	Returns the visibility axis-aligned bounding box in local space. See also $(D VisualInstance.getTransformedAabb).
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
	Gets a specific instance's color.
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
	Returns the custom data that has been set for a specific instance.
	*/
	Color getInstanceCustomData(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getInstanceCustomData, _godot_object, instance);
	}
	/**
	Returns the $(D Transform) of a specific instance.
	*/
	Transform getInstanceTransform(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getInstanceTransform, _godot_object, instance);
	}
	/**
	Returns the $(D Transform2D) of a specific instance.
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
	Sets all data related to the instances in one go. This is especially useful when loading the data from disk or preparing the data from GDNative.
	All data is packed in one large float array. An array may look like this: Transform for instance 1, color data for instance 1, custom data for instance 1, transform for instance 2, color data for instance 2, etc...
	$(D Transform) is stored as 12 floats, $(D Transform2D) is stored as 8 floats, `COLOR_8BIT` / `CUSTOM_DATA_8BIT` is stored as 1 float (4 bytes as is) and `COLOR_FLOAT` / `CUSTOM_DATA_FLOAT` is stored as 4 floats.
	*/
	void setAsBulkArray(in PoolRealArray array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsBulkArray, _godot_object, array);
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
	Sets the color of a specific instance by $(I multiplying) the mesh's existing vertex colors.
	For the color to take effect, ensure that $(D colorFormat) is non-`null` on the $(D MultiMesh) and $(D SpatialMaterial.vertexColorUseAsAlbedo) is `true` on the material.
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
	Sets custom data for a specific instance. Although $(D Color) is used, it is just a container for 4 floating point numbers. The format of the number can change depending on the $(D customdataformat) used.
	*/
	void setInstanceCustomData(in long instance, in Color custom_data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInstanceCustomData, _godot_object, instance, custom_data);
	}
	/**
	Sets the $(D Transform) for a specific instance.
	*/
	void setInstanceTransform(in long instance, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInstanceTransform, _godot_object, instance, transform);
	}
	/**
	Sets the $(D Transform2D) for a specific instance.
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
	Format of colors in color array that gets passed to shader.
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
	Format of custom data in custom data array that gets passed to shader.
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
	Number of instances that will get drawn. This clears and (re)sizes the buffers. By default, all instances are drawn but you can limit this with $(D visibleInstanceCount).
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
	Mesh to be drawn.
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
	Format of transform used to transform mesh, either 2D or 3D.
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
	Limits the number of instances drawn, -1 draws all instances. Changing this does not change the sizes of the buffers.
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
