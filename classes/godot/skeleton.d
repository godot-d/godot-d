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
/**
Skeleton for characters and animated objects.

Skeleton provides a hierarchical interface for managing bones, including pose, rest and animation (see $(D Animation)). Skeleton will support rag doll dynamics in the future.
*/
@GodotBaseClass struct Skeleton
{
	static immutable string _GODOT_internal_name = "Skeleton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, String) _GODOT_add_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_bone") = _GODOT_add_bone;
	/**
	Add a bone, with name "name". $(D getBoneCount) will become the bone index.
	*/
	void addBone(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_bone.bind("Skeleton", "add_bone");
		ptrcall!(void)(_GODOT_add_bone, _godot_object, name);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_find_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_bone") = _GODOT_find_bone;
	/**
	Return the bone index that matches "name" as its name.
	*/
	long findBone(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_bone.bind("Skeleton", "find_bone");
		return ptrcall!(long)(_GODOT_find_bone, _godot_object, name);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_bone_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_name") = _GODOT_get_bone_name;
	/**
	Return the name of the bone at index "index"
	*/
	String getBoneName(in long bone_idx) const
	{
		_GODOT_get_bone_name.bind("Skeleton", "get_bone_name");
		return ptrcall!(String)(_GODOT_get_bone_name, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_bone_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_parent") = _GODOT_get_bone_parent;
	/**
	Return the bone index which is the parent of the bone at "bone_idx". If -1, then bone has no parent. Note that the parent bone returned will always be less than "bone_idx".
	*/
	long getBoneParent(in long bone_idx) const
	{
		_GODOT_get_bone_parent.bind("Skeleton", "get_bone_parent");
		return ptrcall!(long)(_GODOT_get_bone_parent, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_bone_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_parent") = _GODOT_set_bone_parent;
	/**
	Set the bone index "parent_idx" as the parent of the bone at "bone_idx". If -1, then bone has no parent. Note: "parent_idx" must be less than "bone_idx".
	*/
	void setBoneParent(in long bone_idx, in long parent_idx)
	{
		_GODOT_set_bone_parent.bind("Skeleton", "set_bone_parent");
		ptrcall!(void)(_GODOT_set_bone_parent, _godot_object, bone_idx, parent_idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_bone_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_count") = _GODOT_get_bone_count;
	/**
	Return the amount of bones in the skeleton.
	*/
	long getBoneCount() const
	{
		_GODOT_get_bone_count.bind("Skeleton", "get_bone_count");
		return ptrcall!(long)(_GODOT_get_bone_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_unparent_bone_and_rest;
	package(godot) alias _GODOT_methodBindInfo(string name : "unparent_bone_and_rest") = _GODOT_unparent_bone_and_rest;
	/**
	
	*/
	void unparentBoneAndRest(in long bone_idx)
	{
		_GODOT_unparent_bone_and_rest.bind("Skeleton", "unparent_bone_and_rest");
		ptrcall!(void)(_GODOT_unparent_bone_and_rest, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(Transform, long) _GODOT_get_bone_rest;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_rest") = _GODOT_get_bone_rest;
	/**
	Return the rest transform for a bone "bone_idx".
	*/
	Transform getBoneRest(in long bone_idx) const
	{
		_GODOT_get_bone_rest.bind("Skeleton", "get_bone_rest");
		return ptrcall!(Transform)(_GODOT_get_bone_rest, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, long, Transform) _GODOT_set_bone_rest;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_rest") = _GODOT_set_bone_rest;
	/**
	Set the rest transform for bone "bone_idx"
	*/
	void setBoneRest(in long bone_idx, in Transform rest)
	{
		_GODOT_set_bone_rest.bind("Skeleton", "set_bone_rest");
		ptrcall!(void)(_GODOT_set_bone_rest, _godot_object, bone_idx, rest);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_bone_disable_rest;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_disable_rest") = _GODOT_set_bone_disable_rest;
	/**
	
	*/
	void setBoneDisableRest(in long bone_idx, in bool disable)
	{
		_GODOT_set_bone_disable_rest.bind("Skeleton", "set_bone_disable_rest");
		ptrcall!(void)(_GODOT_set_bone_disable_rest, _godot_object, bone_idx, disable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_bone_rest_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bone_rest_disabled") = _GODOT_is_bone_rest_disabled;
	/**
	
	*/
	bool isBoneRestDisabled(in long bone_idx) const
	{
		_GODOT_is_bone_rest_disabled.bind("Skeleton", "is_bone_rest_disabled");
		return ptrcall!(bool)(_GODOT_is_bone_rest_disabled, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, long, GodotObject) _GODOT_bind_child_node_to_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "bind_child_node_to_bone") = _GODOT_bind_child_node_to_bone;
	/**
	Deprecated soon.
	*/
	void bindChildNodeToBone(in long bone_idx, GodotObject node)
	{
		_GODOT_bind_child_node_to_bone.bind("Skeleton", "bind_child_node_to_bone");
		ptrcall!(void)(_GODOT_bind_child_node_to_bone, _godot_object, bone_idx, node);
	}
	package(godot) static GodotMethod!(void, long, GodotObject) _GODOT_unbind_child_node_from_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "unbind_child_node_from_bone") = _GODOT_unbind_child_node_from_bone;
	/**
	Deprecated soon.
	*/
	void unbindChildNodeFromBone(in long bone_idx, GodotObject node)
	{
		_GODOT_unbind_child_node_from_bone.bind("Skeleton", "unbind_child_node_from_bone");
		ptrcall!(void)(_GODOT_unbind_child_node_from_bone, _godot_object, bone_idx, node);
	}
	package(godot) static GodotMethod!(Array, long) _GODOT_get_bound_child_nodes_to_bone;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bound_child_nodes_to_bone") = _GODOT_get_bound_child_nodes_to_bone;
	/**
	Deprecated soon.
	*/
	Array getBoundChildNodesToBone(in long bone_idx) const
	{
		_GODOT_get_bound_child_nodes_to_bone.bind("Skeleton", "get_bound_child_nodes_to_bone");
		return ptrcall!(Array)(_GODOT_get_bound_child_nodes_to_bone, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_bones;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_bones") = _GODOT_clear_bones;
	/**
	Clear all the bones in this skeleton.
	*/
	void clearBones()
	{
		_GODOT_clear_bones.bind("Skeleton", "clear_bones");
		ptrcall!(void)(_GODOT_clear_bones, _godot_object);
	}
	package(godot) static GodotMethod!(Transform, long) _GODOT_get_bone_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_pose") = _GODOT_get_bone_pose;
	/**
	Return the pose transform for bone "bone_idx".
	*/
	Transform getBonePose(in long bone_idx) const
	{
		_GODOT_get_bone_pose.bind("Skeleton", "get_bone_pose");
		return ptrcall!(Transform)(_GODOT_get_bone_pose, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, long, Transform) _GODOT_set_bone_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_pose") = _GODOT_set_bone_pose;
	/**
	Return the pose transform for bone "bone_idx".
	*/
	void setBonePose(in long bone_idx, in Transform pose)
	{
		_GODOT_set_bone_pose.bind("Skeleton", "set_bone_pose");
		ptrcall!(void)(_GODOT_set_bone_pose, _godot_object, bone_idx, pose);
	}
	package(godot) static GodotMethod!(void, long, Transform) _GODOT_set_bone_global_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_global_pose") = _GODOT_set_bone_global_pose;
	/**
	
	*/
	void setBoneGlobalPose(in long bone_idx, in Transform pose)
	{
		_GODOT_set_bone_global_pose.bind("Skeleton", "set_bone_global_pose");
		ptrcall!(void)(_GODOT_set_bone_global_pose, _godot_object, bone_idx, pose);
	}
	package(godot) static GodotMethod!(Transform, long) _GODOT_get_bone_global_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_global_pose") = _GODOT_get_bone_global_pose;
	/**
	
	*/
	Transform getBoneGlobalPose(in long bone_idx) const
	{
		_GODOT_get_bone_global_pose.bind("Skeleton", "get_bone_global_pose");
		return ptrcall!(Transform)(_GODOT_get_bone_global_pose, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(Transform, long) _GODOT_get_bone_custom_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_custom_pose") = _GODOT_get_bone_custom_pose;
	/**
	
	*/
	Transform getBoneCustomPose(in long bone_idx) const
	{
		_GODOT_get_bone_custom_pose.bind("Skeleton", "get_bone_custom_pose");
		return ptrcall!(Transform)(_GODOT_get_bone_custom_pose, _godot_object, bone_idx);
	}
	package(godot) static GodotMethod!(void, long, Transform) _GODOT_set_bone_custom_pose;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_custom_pose") = _GODOT_set_bone_custom_pose;
	/**
	
	*/
	void setBoneCustomPose(in long bone_idx, in Transform custom_pose)
	{
		_GODOT_set_bone_custom_pose.bind("Skeleton", "set_bone_custom_pose");
		ptrcall!(void)(_GODOT_set_bone_custom_pose, _godot_object, bone_idx, custom_pose);
	}
	package(godot) static GodotMethod!(Transform, long) _GODOT_get_bone_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_transform") = _GODOT_get_bone_transform;
	/**
	
	*/
	Transform getBoneTransform(in long bone_idx) const
	{
		_GODOT_get_bone_transform.bind("Skeleton", "get_bone_transform");
		return ptrcall!(Transform)(_GODOT_get_bone_transform, _godot_object, bone_idx);
	}
}
