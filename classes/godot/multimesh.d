/**
Provides high performance mesh instancing.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.multimesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.mesh;
/**
Provides high performance mesh instancing.

MultiMesh provides low level mesh instancing. If the amount of $(D Mesh) instances needed goes from hundreds to thousands (and most need to be visible at close proximity) creating such a large amount of $(D MeshInstance) nodes may affect performance by using too much CPU or video memory.
For this case a MultiMesh becomes very useful, as it can draw thousands of instances with little API overhead.
As a drawback, if the instances are too far away of each other, performance may be reduced as every single instance will always rendered (they are spatially indexed as one, for the whole object).
Since instances may have any behavior, the AABB used for visibility must be provided by the user.
*/
@GodotBaseClass struct MultiMesh
{
	static immutable string _GODOT_internal_name = "MultiMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in MultiMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MultiMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MultiMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MultiMesh");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMesh)(constructor());
	}
	/// 
	enum TransformFormat : int
	{
		/**
		
		*/
		transform2d = 0,
		/**
		
		*/
		transform3d = 1,
	}
	/// 
	enum ColorFormat : int
	{
		/**
		
		*/
		colorNone = 0,
		/**
		
		*/
		color8bit = 1,
		/**
		
		*/
		colorFloat = 2,
	}
	/// 
	enum Constants : int
	{
		colorNone = 0,
		transform2d = 0,
		color8bit = 1,
		transform3d = 1,
		colorFloat = 2,
	}
	package(godot) static GodotMethod!(void, Mesh) _GODOT_set_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mesh") = _GODOT_set_mesh;
	/**
	
	*/
	void setMesh(Mesh mesh)
	{
		_GODOT_set_mesh.bind("MultiMesh", "set_mesh");
		ptrcall!(void)(_GODOT_set_mesh, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(Mesh) _GODOT_get_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mesh") = _GODOT_get_mesh;
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		_GODOT_get_mesh.bind("MultiMesh", "get_mesh");
		return ptrcall!(Mesh)(_GODOT_get_mesh, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_color_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color_format") = _GODOT_set_color_format;
	/**
	
	*/
	void setColorFormat(in long format)
	{
		_GODOT_set_color_format.bind("MultiMesh", "set_color_format");
		ptrcall!(void)(_GODOT_set_color_format, _godot_object, format);
	}
	package(godot) static GodotMethod!(MultiMesh.ColorFormat) _GODOT_get_color_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color_format") = _GODOT_get_color_format;
	/**
	
	*/
	MultiMesh.ColorFormat getColorFormat() const
	{
		_GODOT_get_color_format.bind("MultiMesh", "get_color_format");
		return ptrcall!(MultiMesh.ColorFormat)(_GODOT_get_color_format, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_transform_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform_format") = _GODOT_set_transform_format;
	/**
	
	*/
	void setTransformFormat(in long format)
	{
		_GODOT_set_transform_format.bind("MultiMesh", "set_transform_format");
		ptrcall!(void)(_GODOT_set_transform_format, _godot_object, format);
	}
	package(godot) static GodotMethod!(MultiMesh.TransformFormat) _GODOT_get_transform_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform_format") = _GODOT_get_transform_format;
	/**
	
	*/
	MultiMesh.TransformFormat getTransformFormat() const
	{
		_GODOT_get_transform_format.bind("MultiMesh", "get_transform_format");
		return ptrcall!(MultiMesh.TransformFormat)(_GODOT_get_transform_format, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_instance_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_instance_count") = _GODOT_set_instance_count;
	/**
	
	*/
	void setInstanceCount(in long count)
	{
		_GODOT_set_instance_count.bind("MultiMesh", "set_instance_count");
		ptrcall!(void)(_GODOT_set_instance_count, _godot_object, count);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_instance_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_count") = _GODOT_get_instance_count;
	/**
	
	*/
	long getInstanceCount() const
	{
		_GODOT_get_instance_count.bind("MultiMesh", "get_instance_count");
		return ptrcall!(long)(_GODOT_get_instance_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Transform) _GODOT_set_instance_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_instance_transform") = _GODOT_set_instance_transform;
	/**
	Set the transform for a specific instance.
	*/
	void setInstanceTransform(in long instance, in Transform transform)
	{
		_GODOT_set_instance_transform.bind("MultiMesh", "set_instance_transform");
		ptrcall!(void)(_GODOT_set_instance_transform, _godot_object, instance, transform);
	}
	package(godot) static GodotMethod!(Transform, long) _GODOT_get_instance_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_transform") = _GODOT_get_instance_transform;
	/**
	Return the transform of a specific instance.
	*/
	Transform getInstanceTransform(in long instance) const
	{
		_GODOT_get_instance_transform.bind("MultiMesh", "get_instance_transform");
		return ptrcall!(Transform)(_GODOT_get_instance_transform, _godot_object, instance);
	}
	package(godot) static GodotMethod!(void, long, Color) _GODOT_set_instance_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_instance_color") = _GODOT_set_instance_color;
	/**
	Set the color of a specific instance.
	*/
	void setInstanceColor(in long instance, in Color color)
	{
		_GODOT_set_instance_color.bind("MultiMesh", "set_instance_color");
		ptrcall!(void)(_GODOT_set_instance_color, _godot_object, instance, color);
	}
	package(godot) static GodotMethod!(Color, long) _GODOT_get_instance_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_color") = _GODOT_get_instance_color;
	/**
	Get the color of a specific instance.
	*/
	Color getInstanceColor(in long instance) const
	{
		_GODOT_get_instance_color.bind("MultiMesh", "get_instance_color");
		return ptrcall!(Color)(_GODOT_get_instance_color, _godot_object, instance);
	}
	package(godot) static GodotMethod!(AABB) _GODOT_get_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_aabb") = _GODOT_get_aabb;
	/**
	Return the visibility AABB.
	*/
	AABB getAabb() const
	{
		_GODOT_get_aabb.bind("MultiMesh", "get_aabb");
		return ptrcall!(AABB)(_GODOT_get_aabb, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT__set_transform_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_transform_array") = _GODOT__set_transform_array;
	/**
	
	*/
	void _setTransformArray(in PoolVector3Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_transform_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT__get_transform_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_transform_array") = _GODOT__get_transform_array;
	/**
	
	*/
	PoolVector3Array _getTransformArray() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_transform_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolVector3Array);
	}
	package(godot) static GodotMethod!(void, PoolColorArray) _GODOT__set_color_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_color_array") = _GODOT__set_color_array;
	/**
	
	*/
	void _setColorArray(in PoolColorArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_color_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolColorArray) _GODOT__get_color_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_color_array") = _GODOT__get_color_array;
	/**
	
	*/
	PoolColorArray _getColorArray() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_color_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolColorArray);
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
	@property PoolColorArray colorArray()
	{
		return _getColorArray();
	}
	/// ditto
	@property void colorArray(PoolColorArray v)
	{
		_setColorArray(v);
	}
}
