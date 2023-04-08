/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.skeleton;
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
import godot.spatial;
import godot.node;
import godot.skinreference;
import godot.skin;
/**

*/
@GodotBaseClass struct Skeleton
{
	package(godot) enum string _GODOT_internal_name = "Skeleton";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_bone") GodotMethod!(void, String) addBone;
		@GodotName("bind_child_node_to_bone") GodotMethod!(void, long, Node) bindChildNodeToBone;
		@GodotName("clear_bones") GodotMethod!(void) clearBones;
		@GodotName("clear_bones_global_pose_override") GodotMethod!(void) clearBonesGlobalPoseOverride;
		@GodotName("find_bone") GodotMethod!(long, String) findBone;
		@GodotName("get_bone_count") GodotMethod!(long) getBoneCount;
		@GodotName("get_bone_custom_pose") GodotMethod!(Transform, long) getBoneCustomPose;
		@GodotName("get_bone_global_pose") GodotMethod!(Transform, long) getBoneGlobalPose;
		@GodotName("get_bone_global_pose_no_override") GodotMethod!(Transform, long) getBoneGlobalPoseNoOverride;
		@GodotName("get_bone_name") GodotMethod!(String, long) getBoneName;
		@GodotName("get_bone_parent") GodotMethod!(long, long) getBoneParent;
		@GodotName("get_bone_pose") GodotMethod!(Transform, long) getBonePose;
		@GodotName("get_bone_rest") GodotMethod!(Transform, long) getBoneRest;
		@GodotName("get_bound_child_nodes_to_bone") GodotMethod!(Array, long) getBoundChildNodesToBone;
		@GodotName("is_bone_rest_disabled") GodotMethod!(bool, long) isBoneRestDisabled;
		@GodotName("localize_rests") GodotMethod!(void) localizeRests;
		@GodotName("physical_bones_add_collision_exception") GodotMethod!(void, RID) physicalBonesAddCollisionException;
		@GodotName("physical_bones_remove_collision_exception") GodotMethod!(void, RID) physicalBonesRemoveCollisionException;
		@GodotName("physical_bones_start_simulation") GodotMethod!(void, Array) physicalBonesStartSimulation;
		@GodotName("physical_bones_stop_simulation") GodotMethod!(void) physicalBonesStopSimulation;
		@GodotName("register_skin") GodotMethod!(SkinReference, Skin) registerSkin;
		@GodotName("set_bone_custom_pose") GodotMethod!(void, long, Transform) setBoneCustomPose;
		@GodotName("set_bone_disable_rest") GodotMethod!(void, long, bool) setBoneDisableRest;
		@GodotName("set_bone_global_pose_override") GodotMethod!(void, long, Transform, double, bool) setBoneGlobalPoseOverride;
		@GodotName("set_bone_name") GodotMethod!(void, long, String) setBoneName;
		@GodotName("set_bone_parent") GodotMethod!(void, long, long) setBoneParent;
		@GodotName("set_bone_pose") GodotMethod!(void, long, Transform) setBonePose;
		@GodotName("set_bone_rest") GodotMethod!(void, long, Transform) setBoneRest;
		@GodotName("unbind_child_node_from_bone") GodotMethod!(void, long, Node) unbindChildNodeFromBone;
		@GodotName("unparent_bone_and_rest") GodotMethod!(void, long) unparentBoneAndRest;
	}
	/// 
	pragma(inline, true) bool opEquals(in Skeleton other) const
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
	/// Construct a new instance of Skeleton.
	/// Note: use `memnew!Skeleton` instead.
	static Skeleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Skeleton");
		if(constructor is null) return typeof(this).init;
		return cast(Skeleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/** */
		notificationUpdateSkeleton = 50,
	}
	/**
	
	*/
	void addBone(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBone, _godot_object, name);
	}
	/**
	
	*/
	void bindChildNodeToBone(in long bone_idx, Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bindChildNodeToBone, _godot_object, bone_idx, node);
	}
	/**
	
	*/
	void clearBones()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearBones, _godot_object);
	}
	/**
	
	*/
	void clearBonesGlobalPoseOverride()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearBonesGlobalPoseOverride, _godot_object);
	}
	/**
	
	*/
	long findBone(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.findBone, _godot_object, name);
	}
	/**
	
	*/
	long getBoneCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBoneCount, _godot_object);
	}
	/**
	
	*/
	Transform getBoneCustomPose(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getBoneCustomPose, _godot_object, bone_idx);
	}
	/**
	
	*/
	Transform getBoneGlobalPose(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getBoneGlobalPose, _godot_object, bone_idx);
	}
	/**
	
	*/
	Transform getBoneGlobalPoseNoOverride(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getBoneGlobalPoseNoOverride, _godot_object, bone_idx);
	}
	/**
	
	*/
	String getBoneName(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBoneName, _godot_object, bone_idx);
	}
	/**
	
	*/
	long getBoneParent(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBoneParent, _godot_object, bone_idx);
	}
	/**
	
	*/
	Transform getBonePose(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getBonePose, _godot_object, bone_idx);
	}
	/**
	
	*/
	Transform getBoneRest(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getBoneRest, _godot_object, bone_idx);
	}
	/**
	
	*/
	Array getBoundChildNodesToBone(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getBoundChildNodesToBone, _godot_object, bone_idx);
	}
	/**
	
	*/
	bool isBoneRestDisabled(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBoneRestDisabled, _godot_object, bone_idx);
	}
	/**
	
	*/
	void localizeRests()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.localizeRests, _godot_object);
	}
	/**
	
	*/
	void physicalBonesAddCollisionException(in RID exception)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.physicalBonesAddCollisionException, _godot_object, exception);
	}
	/**
	
	*/
	void physicalBonesRemoveCollisionException(in RID exception)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.physicalBonesRemoveCollisionException, _godot_object, exception);
	}
	/**
	
	*/
	void physicalBonesStartSimulation(in Array bones = Array.make())
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.physicalBonesStartSimulation, _godot_object, bones);
	}
	/**
	
	*/
	void physicalBonesStopSimulation()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.physicalBonesStopSimulation, _godot_object);
	}
	/**
	
	*/
	Ref!SkinReference registerSkin(Skin skin)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SkinReference)(GDNativeClassBinding.registerSkin, _godot_object, skin);
	}
	/**
	
	*/
	void setBoneCustomPose(in long bone_idx, in Transform custom_pose)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBoneCustomPose, _godot_object, bone_idx, custom_pose);
	}
	/**
	
	*/
	void setBoneDisableRest(in long bone_idx, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBoneDisableRest, _godot_object, bone_idx, disable);
	}
	/**
	
	*/
	void setBoneGlobalPoseOverride(in long bone_idx, in Transform pose, in double amount, in bool persistent = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBoneGlobalPoseOverride, _godot_object, bone_idx, pose, amount, persistent);
	}
	/**
	
	*/
	void setBoneName(in long bone_idx, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBoneName, _godot_object, bone_idx, name);
	}
	/**
	
	*/
	void setBoneParent(in long bone_idx, in long parent_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBoneParent, _godot_object, bone_idx, parent_idx);
	}
	/**
	
	*/
	void setBonePose(in long bone_idx, in Transform pose)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBonePose, _godot_object, bone_idx, pose);
	}
	/**
	
	*/
	void setBoneRest(in long bone_idx, in Transform rest)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBoneRest, _godot_object, bone_idx, rest);
	}
	/**
	
	*/
	void unbindChildNodeFromBone(in long bone_idx, Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unbindChildNodeFromBone, _godot_object, bone_idx, node);
	}
	/**
	
	*/
	void unparentBoneAndRest(in long bone_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unparentBoneAndRest, _godot_object, bone_idx);
	}
}
