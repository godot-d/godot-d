/**
Skeleton for characters and animated objects.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.skeleton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.node;
/**
Skeleton for characters and animated objects.

Skeleton provides a hierarchical interface for managing bones, including pose, rest and animation (see $(D Animation)). Skeleton will support rag doll dynamics in the future.
The overall transform of a bone with respect to the skeleton is determined by the following hierarchical order: rest pose, custom pose and pose.
Note that "global pose" below refers to the overall transform of the bone with respect to skeleton, so it not the actual global/world transform of the bone.
*/
@GodotBaseClass struct Skeleton
{
	enum string _GODOT_internal_name = "Skeleton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_bone") GodotMethod!(void, String) addBone;
		@GodotName("find_bone") GodotMethod!(long, String) findBone;
		@GodotName("get_bone_name") GodotMethod!(String, long) getBoneName;
		@GodotName("get_bone_parent") GodotMethod!(long, long) getBoneParent;
		@GodotName("set_bone_parent") GodotMethod!(void, long, long) setBoneParent;
		@GodotName("get_bone_count") GodotMethod!(long) getBoneCount;
		@GodotName("unparent_bone_and_rest") GodotMethod!(void, long) unparentBoneAndRest;
		@GodotName("get_bone_rest") GodotMethod!(Transform, long) getBoneRest;
		@GodotName("set_bone_rest") GodotMethod!(void, long, Transform) setBoneRest;
		@GodotName("set_bone_disable_rest") GodotMethod!(void, long, bool) setBoneDisableRest;
		@GodotName("is_bone_rest_disabled") GodotMethod!(bool, long) isBoneRestDisabled;
		@GodotName("bind_child_node_to_bone") GodotMethod!(void, long, GodotObject) bindChildNodeToBone;
		@GodotName("unbind_child_node_from_bone") GodotMethod!(void, long, GodotObject) unbindChildNodeFromBone;
		@GodotName("get_bound_child_nodes_to_bone") GodotMethod!(Array, long) getBoundChildNodesToBone;
		@GodotName("clear_bones") GodotMethod!(void) clearBones;
		@GodotName("get_bone_pose") GodotMethod!(Transform, long) getBonePose;
		@GodotName("set_bone_pose") GodotMethod!(void, long, Transform) setBonePose;
		@GodotName("set_bone_global_pose") GodotMethod!(void, long, Transform) setBoneGlobalPose;
		@GodotName("get_bone_global_pose") GodotMethod!(Transform, long) getBoneGlobalPose;
		@GodotName("get_bone_custom_pose") GodotMethod!(Transform, long) getBoneCustomPose;
		@GodotName("set_bone_custom_pose") GodotMethod!(void, long, Transform) setBoneCustomPose;
		@GodotName("get_bone_transform") GodotMethod!(Transform, long) getBoneTransform;
		@GodotName("physical_bones_stop_simulation") GodotMethod!(void) physicalBonesStopSimulation;
		@GodotName("physical_bones_start_simulation") GodotMethod!(void, Array) physicalBonesStartSimulation;
		@GodotName("physical_bones_add_collision_exception") GodotMethod!(void, RID) physicalBonesAddCollisionException;
		@GodotName("physical_bones_remove_collision_exception") GodotMethod!(void, RID) physicalBonesRemoveCollisionException;
		@GodotName("set_bone_ignore_animation") GodotMethod!(void, long, bool) setBoneIgnoreAnimation;
	}
	bool opEquals(in Skeleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Skeleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		
		*/
		notificationUpdateSkeleton = 50,
	}
	/**
	Add a bone, with name "name". $(D getBoneCount) will become the bone index.
	*/
	void addBone(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addBone, _godot_object, name);
	}
	/**
	Return the bone index that matches "name" as its name.
	*/
	long findBone(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.findBone, _godot_object, name);
	}
	/**
	Return the name of the bone at index "index".
	*/
	String getBoneName(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBoneName, _godot_object, bone_idx);
	}
	/**
	Return the bone index which is the parent of the bone at "bone_idx". If -1, then bone has no parent. Note that the parent bone returned will always be less than "bone_idx".
	*/
	long getBoneParent(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBoneParent, _godot_object, bone_idx);
	}
	/**
	Set the bone index "parent_idx" as the parent of the bone at "bone_idx". If -1, then bone has no parent. Note: "parent_idx" must be less than "bone_idx".
	*/
	void setBoneParent(in long bone_idx, in long parent_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBoneParent, _godot_object, bone_idx, parent_idx);
	}
	/**
	Return the amount of bones in the skeleton.
	*/
	long getBoneCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBoneCount, _godot_object);
	}
	/**
	
	*/
	void unparentBoneAndRest(in long bone_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unparentBoneAndRest, _godot_object, bone_idx);
	}
	/**
	Return the rest transform for a bone "bone_idx".
	*/
	Transform getBoneRest(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getBoneRest, _godot_object, bone_idx);
	}
	/**
	Set the rest transform for bone "bone_idx"
	*/
	void setBoneRest(in long bone_idx, in Transform rest)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBoneRest, _godot_object, bone_idx, rest);
	}
	/**
	
	*/
	void setBoneDisableRest(in long bone_idx, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBoneDisableRest, _godot_object, bone_idx, disable);
	}
	/**
	
	*/
	bool isBoneRestDisabled(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBoneRestDisabled, _godot_object, bone_idx);
	}
	/**
	Deprecated soon.
	*/
	void bindChildNodeToBone(in long bone_idx, GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bindChildNodeToBone, _godot_object, bone_idx, node);
	}
	/**
	Deprecated soon.
	*/
	void unbindChildNodeFromBone(in long bone_idx, GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unbindChildNodeFromBone, _godot_object, bone_idx, node);
	}
	/**
	Deprecated soon.
	*/
	Array getBoundChildNodesToBone(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getBoundChildNodesToBone, _godot_object, bone_idx);
	}
	/**
	Clear all the bones in this skeleton.
	*/
	void clearBones()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearBones, _godot_object);
	}
	/**
	Return the pose transform of the specified bone. Pose is applied on top of the custom pose, which is applied on top the rest pose.
	*/
	Transform getBonePose(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getBonePose, _godot_object, bone_idx);
	}
	/**
	Return the pose transform for bone "bone_idx".
	*/
	void setBonePose(in long bone_idx, in Transform pose)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBonePose, _godot_object, bone_idx, pose);
	}
	/**
	
	*/
	void setBoneGlobalPose(in long bone_idx, in Transform pose)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBoneGlobalPose, _godot_object, bone_idx, pose);
	}
	/**
	Return the overall transform of the specified bone, with respect to the skeleton. Being relative to the skeleton frame, this is not the actual "global" transform of the bone.
	*/
	Transform getBoneGlobalPose(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getBoneGlobalPose, _godot_object, bone_idx);
	}
	/**
	Return the custom pose of the specified bone. Custom pose is applied on top of the rest pose.
	*/
	Transform getBoneCustomPose(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getBoneCustomPose, _godot_object, bone_idx);
	}
	/**
	
	*/
	void setBoneCustomPose(in long bone_idx, in Transform custom_pose)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBoneCustomPose, _godot_object, bone_idx, custom_pose);
	}
	/**
	Return the combination of custom pose and pose. The returned transform is in skeleton's reference frame.
	*/
	Transform getBoneTransform(in long bone_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getBoneTransform, _godot_object, bone_idx);
	}
	/**
	
	*/
	void physicalBonesStopSimulation()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.physicalBonesStopSimulation, _godot_object);
	}
	/**
	
	*/
	void physicalBonesStartSimulation(in Array bones = Array.empty_array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.physicalBonesStartSimulation, _godot_object, bones);
	}
	/**
	
	*/
	void physicalBonesAddCollisionException(in RID exception)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.physicalBonesAddCollisionException, _godot_object, exception);
	}
	/**
	
	*/
	void physicalBonesRemoveCollisionException(in RID exception)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.physicalBonesRemoveCollisionException, _godot_object, exception);
	}
	/**
	
	*/
	void setBoneIgnoreAnimation(in long bone, in bool ignore)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBoneIgnoreAnimation, _godot_object, bone, ignore);
	}
}
