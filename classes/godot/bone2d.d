/**
Joint used with $(D Skeleton2D) to control and animate other nodes.

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
/**
Joint used with $(D Skeleton2D) to control and animate other nodes.

Use a hierarchy of `Bone2D` bound to a $(D Skeleton2D) to control, and animate other $(D Node2D) nodes.
You can use `Bone2D` and `Skeleton2D` nodes to animate 2D meshes created with the Polygon 2D UV editor.
Each bone has a $(D rest) transform that you can reset to with $(D applyRest). These rest poses are relative to the bone's parent.
If in the editor, you can set the rest pose of an entire skeleton using a menu option, from the code, you need to iterate over the bones to set their individual rest poses.
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
	pragma(inline, true) Bone2D opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
	Stores the node's current transforms in $(D rest).
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
	Returns the node's index as part of the entire skeleton. See $(D Skeleton2D).
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
	Returns the node's $(D rest) `Transform2D` if it doesn't have a parent, or its rest pose relative to its parent.
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
	Length of the bone's representation drawn in the editor's viewport in pixels.
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
	Rest transform of the bone. You can reset the node's transforms to this value using $(D applyRest).
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
