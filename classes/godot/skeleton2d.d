/**
Skeleton for 2D characters and animated objects.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.skeleton2d;
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
import godot.canvasitem;
import godot.node;
import godot.bone2d;
/**
Skeleton for 2D characters and animated objects.

Skeleton2D parents a hierarchy of $(D Bone2D) objects. It is a requirement of $(D Bone2D). Skeleton2D holds a reference to the rest pose of its children and acts as a single point of access to its bones.
*/
@GodotBaseClass struct Skeleton2D
{
	package(godot) enum string _GODOT_internal_name = "Skeleton2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_update_bone_setup") GodotMethod!(void) _updateBoneSetup;
		@GodotName("_update_transform") GodotMethod!(void) _updateTransform;
		@GodotName("get_bone") GodotMethod!(Bone2D, long) getBone;
		@GodotName("get_bone_count") GodotMethod!(long) getBoneCount;
		@GodotName("get_skeleton") GodotMethod!(RID) getSkeleton;
	}
	/// 
	pragma(inline, true) bool opEquals(in Skeleton2D other) const
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
	/// Construct a new instance of Skeleton2D.
	/// Note: use `memnew!Skeleton2D` instead.
	static Skeleton2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Skeleton2D");
		if(constructor is null) return typeof(this).init;
		return cast(Skeleton2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _updateBoneSetup()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_bone_setup");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateTransform()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_transform");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns a $(D Bone2D) from the node hierarchy parented by Skeleton2D. The object to return is identified by the parameter `idx`. Bones are indexed by descending the node hierarchy from top to bottom, adding the children of each branch before moving to the next sibling.
	*/
	Bone2D getBone(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Bone2D)(GDNativeClassBinding.getBone, _godot_object, idx);
	}
	/**
	Returns the number of $(D Bone2D) nodes in the node hierarchy parented by Skeleton2D.
	*/
	long getBoneCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBoneCount, _godot_object);
	}
	/**
	Returns the $(D RID) of a Skeleton2D instance.
	*/
	RID getSkeleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getSkeleton, _godot_object);
	}
}
