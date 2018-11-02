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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct Bone2D
{
	enum string _GODOT_internal_name = "Bone2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_rest") GodotMethod!(void, Transform2D) setRest;
		@GodotName("get_rest") GodotMethod!(Transform2D) getRest;
		@GodotName("apply_rest") GodotMethod!(void) applyRest;
		@GodotName("get_skeleton_rest") GodotMethod!(Transform2D) getSkeletonRest;
		@GodotName("get_index_in_skeleton") GodotMethod!(long) getIndexInSkeleton;
		@GodotName("set_default_length") GodotMethod!(void, double) setDefaultLength;
		@GodotName("get_default_length") GodotMethod!(double) getDefaultLength;
	}
	bool opEquals(in Bone2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Bone2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setRest(in Transform2D rest)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRest, _godot_object, rest);
	}
	/**
	
	*/
	Transform2D getRest() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getRest, _godot_object);
	}
	/**
	
	*/
	void applyRest()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyRest, _godot_object);
	}
	/**
	
	*/
	Transform2D getSkeletonRest() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getSkeletonRest, _godot_object);
	}
	/**
	
	*/
	long getIndexInSkeleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getIndexInSkeleton, _godot_object);
	}
	/**
	
	*/
	void setDefaultLength(in double default_length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultLength, _godot_object, default_length);
	}
	/**
	
	*/
	double getDefaultLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDefaultLength, _godot_object);
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
}
