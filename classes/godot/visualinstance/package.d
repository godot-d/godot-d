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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.cullinstance;
import godot.spatial;
import godot.node;
/**

*/
@GodotBaseClass struct VisualInstance
{
	package(godot) enum string _GODOT_internal_name = "VisualInstance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CullInstance _GODOT_base; }
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
		@GodotName("get_sorting_offset") GodotMethod!(double) getSortingOffset;
		@GodotName("get_transformed_aabb") GodotMethod!(AABB) getTransformedAabb;
		@GodotName("is_sorting_use_aabb_center") GodotMethod!(bool) isSortingUseAabbCenter;
		@GodotName("set_base") GodotMethod!(void, RID) setBase;
		@GodotName("set_layer_mask") GodotMethod!(void, long) setLayerMask;
		@GodotName("set_layer_mask_bit") GodotMethod!(void, long, bool) setLayerMaskBit;
		@GodotName("set_sorting_offset") GodotMethod!(void, double) setSortingOffset;
		@GodotName("set_sorting_use_aabb_center") GodotMethod!(void, bool) setSortingUseAabbCenter;
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
	/**
	
	*/
	RID _getVisualInstanceRid() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_visual_instance_rid");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!RID);
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
	RID getBase() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getBase, _godot_object);
	}
	/**
	
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
	
	*/
	bool getLayerMaskBit(in long layer) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getLayerMaskBit, _godot_object, layer);
	}
	/**
	
	*/
	double getSortingOffset()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSortingOffset, _godot_object);
	}
	/**
	
	*/
	AABB getTransformedAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getTransformedAabb, _godot_object);
	}
	/**
	
	*/
	bool isSortingUseAabbCenter()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSortingUseAabbCenter, _godot_object);
	}
	/**
	
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
	
	*/
	void setLayerMaskBit(in long layer, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLayerMaskBit, _godot_object, layer, enabled);
	}
	/**
	
	*/
	void setSortingOffset(in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSortingOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setSortingUseAabbCenter(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSortingUseAabbCenter, _godot_object, enabled);
	}
	/**
	
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
	/**
	
	*/
	@property double sortingOffset()
	{
		return getSortingOffset();
	}
	/// ditto
	@property void sortingOffset(double v)
	{
		setSortingOffset(v);
	}
	/**
	
	*/
	@property bool sortingUseAabbCenter()
	{
		return isSortingUseAabbCenter();
	}
	/// ditto
	@property void sortingUseAabbCenter(bool v)
	{
		setSortingUseAabbCenter(v);
	}
}
