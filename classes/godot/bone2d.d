/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.bone2d;
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
import godot.node2d;
/**

*/
@GodotBaseClass struct Bone2D
{
	package(godot) enum string _GODOT_internal_name = "Bone2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("apply_rest") GodotMethod!(void) applyRest;
		@GodotName("get_default_length") GodotMethod!(double) getDefaultLength;
		@GodotName("get_index_in_skeleton") GodotMethod!(long) getIndexInSkeleton;
		@GodotName("get_rest") GodotMethod!(Transform2D) getRest;
		@GodotName("get_skeleton_rest") GodotMethod!(Transform2D) getSkeletonRest;
		@GodotName("set_default_length") GodotMethod!(void, double) setDefaultLength;
		@GodotName("set_rest") GodotMethod!(void, Transform2D) setRest;
	}
	/// 
	pragma(inline, true) bool opEquals(in Bone2D other) const
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
	/// Construct a new instance of Bone2D.
	/// Note: use `memnew!Bone2D` instead.
	static Bone2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Bone2D");
		if(constructor is null) return typeof(this).init;
		return cast(Bone2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void applyRest()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyRest, _godot_object);
	}
	/**
	
	*/
	double getDefaultLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDefaultLength, _godot_object);
	}
	/**
	
	*/
	long getIndexInSkeleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getIndexInSkeleton, _godot_object);
	}
	/**
	
	*/
	Transform2D getRest() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getRest, _godot_object);
	}
	/**
	
	*/
	Transform2D getSkeletonRest() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getSkeletonRest, _godot_object);
	}
	/**
	
	*/
	void setDefaultLength(in double default_length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultLength, _godot_object, default_length);
	}
	/**
	
	*/
	void setRest(in Transform2D rest)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRest, _godot_object, rest);
	}
	/**
	
	*/
	@property double defaultLength()
	{
		return getDefaultLength();
	}
	/// ditto
	@property void defaultLength(double v)
	{
		setDefaultLength(v);
	}
	/**
	
	*/
	@property Transform2D rest()
	{
		return getRest();
	}
	/// ditto
	@property void rest(Transform2D v)
	{
		setRest(v);
	}
}
