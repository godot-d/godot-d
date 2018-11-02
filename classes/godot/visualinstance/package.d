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
import godot.node;
/**

*/
@GodotBaseClass struct VisualInstance
{
	enum string _GODOT_internal_name = "VisualInstance";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_get_visual_instance_rid") GodotMethod!(RID) _getVisualInstanceRid;
		@GodotName("set_base") GodotMethod!(void, RID) setBase;
		@GodotName("set_layer_mask") GodotMethod!(void, long) setLayerMask;
		@GodotName("get_layer_mask") GodotMethod!(long) getLayerMask;
		@GodotName("set_layer_mask_bit") GodotMethod!(void, long, bool) setLayerMaskBit;
		@GodotName("get_layer_mask_bit") GodotMethod!(bool, long) getLayerMaskBit;
		@GodotName("get_transformed_aabb") GodotMethod!(AABB) getTransformedAabb;
		@GodotName("get_aabb") GodotMethod!(AABB) getAabb;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	RID _getVisualInstanceRid() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_visual_instance_rid");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!RID);
	}
	/**
	Sets the base of the VisualInstance, which changes how the engine handles the VisualInstance under the hood.
	It is recommended to only use set_base if you know what you're doing.
	*/
	void setBase(in RID base)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBase, _godot_object, base);
	}
	/**
	
	*/
	void setLayerMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLayerMask, _godot_object, mask);
	}
	/**
	
	*/
	long getLayerMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLayerMask, _godot_object);
	}
	/**
	
	*/
	void setLayerMaskBit(in long layer, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLayerMaskBit, _godot_object, layer, enabled);
	}
	/**
	
	*/
	bool getLayerMaskBit(in long layer) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getLayerMaskBit, _godot_object, layer);
	}
	/**
	Returns the transformed $(D AABB) (also known as the bounding box) for this VisualInstance.
	Transformed in this case means the $(D AABB) plus the position, rotation, and scale of the $(D Spatial)s $(D Transform)
	*/
	AABB getTransformedAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.getTransformedAabb, _godot_object);
	}
	/**
	Returns the $(D AABB) (also known as the bounding box) for this VisualInstance.
	*/
	AABB getAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.getAabb, _godot_object);
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
