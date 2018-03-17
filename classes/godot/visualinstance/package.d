/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.spatial;
/**

*/
@GodotBaseClass struct VisualInstance
{
	static immutable string _GODOT_internal_name = "VisualInstance";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualInstance");
		if(constructor is null) return typeof(this).init;
		return cast(VisualInstance)(constructor());
	}
	package(godot) static GodotMethod!(RID) _GODOT__get_visual_instance_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_visual_instance_rid") = _GODOT__get_visual_instance_rid;
	/**
	
	*/
	RID _getVisualInstanceRid() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_visual_instance_rid");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!RID);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_set_base;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base") = _GODOT_set_base;
	/**
	Sets the base of the VisualInstance, which changes how the engine handles the VisualInstance under the hood.
	It is recommended to only use set_base if you know what you're doing.
	*/
	void setBase(in RID base)
	{
		_GODOT_set_base.bind("VisualInstance", "set_base");
		ptrcall!(void)(_GODOT_set_base, _godot_object, base);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_layer_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_layer_mask") = _GODOT_set_layer_mask;
	/**
	
	*/
	void setLayerMask(in long mask)
	{
		_GODOT_set_layer_mask.bind("VisualInstance", "set_layer_mask");
		ptrcall!(void)(_GODOT_set_layer_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_layer_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_layer_mask") = _GODOT_get_layer_mask;
	/**
	
	*/
	long getLayerMask() const
	{
		_GODOT_get_layer_mask.bind("VisualInstance", "get_layer_mask");
		return ptrcall!(long)(_GODOT_get_layer_mask, _godot_object);
	}
	package(godot) static GodotMethod!(AABB) _GODOT_get_transformed_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transformed_aabb") = _GODOT_get_transformed_aabb;
	/**
	Returns the transformed $(D AABB) (also known as the bounding box) for this VisualInstance.
	Transformed in this case means the $(D AABB) plus the position, rotation, and scale of the $(D Spatial)s $(D Transform)
	*/
	AABB getTransformedAabb() const
	{
		_GODOT_get_transformed_aabb.bind("VisualInstance", "get_transformed_aabb");
		return ptrcall!(AABB)(_GODOT_get_transformed_aabb, _godot_object);
	}
	package(godot) static GodotMethod!(AABB) _GODOT_get_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_aabb") = _GODOT_get_aabb;
	/**
	Returns the $(D AABB) (also known as the bounding box) for this VisualInstance.
	*/
	AABB getAabb() const
	{
		_GODOT_get_aabb.bind("VisualInstance", "get_aabb");
		return ptrcall!(AABB)(_GODOT_get_aabb, _godot_object);
	}
	/**
	The render layer(s) this VisualInstance is drawn on.
	This object will only be visible for $(D Camera)s whose cull mask includes the render object this VisualInstance is set to.
	*/
	@property long layers()
	{
		return getLayerMask();
	}
	/// ditto
	@property void layers(long v)
	{
		setLayerMask(v);
	}
}
