/**
Parent of all visual 3D nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.spatial;
import godot.node;
/**
Parent of all visual 3D nodes.

The $(D VisualInstance) is used to connect a resource to a visual representation. All visual 3D nodes inherit from the $(D VisualInstance). In general, you should not access the $(D VisualInstance) properties directly as they are accessed and managed by the nodes that inherit from $(D VisualInstance). $(D VisualInstance) is the node representation of the $(D VisualServer) instance.
*/
@GodotBaseClass struct VisualInstance
{
	package(godot) enum string _GODOT_internal_name = "VisualInstance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_visual_instance_rid") GodotMethod!(RID) _getVisualInstanceRid;
		@GodotName("get_aabb") GodotMethod!(AABB) getAabb;
		@GodotName("get_base") GodotMethod!(RID) getBase;
		@GodotName("get_instance") GodotMethod!(RID) getInstance;
		@GodotName("get_layer_mask") GodotMethod!(long) getLayerMask;
		@GodotName("get_layer_mask_bit") GodotMethod!(bool, long) getLayerMaskBit;
		@GodotName("get_transformed_aabb") GodotMethod!(AABB) getTransformedAabb;
		@GodotName("set_base") GodotMethod!(void, RID) setBase;
		@GodotName("set_layer_mask") GodotMethod!(void, long) setLayerMask;
		@GodotName("set_layer_mask_bit") GodotMethod!(void, long, bool) setLayerMaskBit;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualInstance other) const
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
	/// Construct a new instance of VisualInstance.
	/// Note: use `memnew!VisualInstance` instead.
	static VisualInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualInstance");
		if(constructor is null) return typeof(this).init;
		return cast(VisualInstance)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	RID _getVisualInstanceRid() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_visual_instance_rid");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!RID);
	}
	/**
	Returns the $(D AABB) (also known as the bounding box) for this $(D VisualInstance). See also $(D getTransformedAabb).
	*/
	AABB getAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getAabb, _godot_object);
	}
	/**
	Returns the RID of the resource associated with this $(D VisualInstance). For example, if the Node is a $(D MeshInstance), this will return the RID of the associated $(D Mesh).
	*/
	RID getBase() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getBase, _godot_object);
	}
	/**
	Returns the RID of this instance. This RID is the same as the RID returned by $(D VisualServer.instanceCreate). This RID is needed if you want to call $(D VisualServer) functions directly on this $(D VisualInstance).
	*/
	RID getInstance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getInstance, _godot_object);
	}
	/**
	
	*/
	long getLayerMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLayerMask, _godot_object);
	}
	/**
	Returns `true` when the specified layer is enabled in $(D layers) and `false` otherwise.
	*/
	bool getLayerMaskBit(in long layer) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getLayerMaskBit, _godot_object, layer);
	}
	/**
	Returns the transformed $(D AABB) (also known as the bounding box) for this $(D VisualInstance).
	Transformed in this case means the $(D AABB) plus the position, rotation, and scale of the $(D Spatial)'s $(D Transform). See also $(D getAabb).
	*/
	AABB getTransformedAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getTransformedAabb, _godot_object);
	}
	/**
	Sets the resource that is instantiated by this $(D VisualInstance), which changes how the engine handles the $(D VisualInstance) under the hood. Equivalent to $(D VisualServer.instanceSetBase).
	*/
	void setBase(in RID base)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBase, _godot_object, base);
	}
	/**
	
	*/
	void setLayerMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLayerMask, _godot_object, mask);
	}
	/**
	Enables a particular layer in $(D layers).
	*/
	void setLayerMaskBit(in long layer, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLayerMaskBit, _godot_object, layer, enabled);
	}
	/**
	The render layer(s) this $(D VisualInstance) is drawn on.
	This object will only be visible for $(D Camera)s whose cull mask includes the render object this $(D VisualInstance) is set to.
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
