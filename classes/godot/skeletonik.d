/**
SkeletonIK is used to place the end bone of a $(D Skeleton) bone chain at a certain point in 3D by rotating all bones in the chain accordingly.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.skeletonik;
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
import godot.node;
import godot.skeleton;
/**
SkeletonIK is used to place the end bone of a $(D Skeleton) bone chain at a certain point in 3D by rotating all bones in the chain accordingly.

A typical scenario for IK in games is to place a characters feet on the ground or a characters hands on a currently hold object. SkeletonIK uses FabrikInverseKinematic internally to solve the bone chain and applies the results to the $(D Skeleton) `bones_global_pose_override` property for all affected bones in the chain. If fully applied this overwrites any bone transform from $(D Animation)s or bone custom poses set by users. The applied amount can be controlled with the `interpolation` property.


# Apply IK effect automatically on every new frame (not the current)
skeleton_ik_node.start()

# Apply IK effect only on the current frame
skeleton_ik_node.start(true)

# Stop IK effect and reset bones_global_pose_override on Skeleton
skeleton_ik_node.stop()

# Apply full IK effect
skeleton_ik_node.set_interpolation(1.0)

# Apply half IK effect
skeleton_ik_node.set_interpolation(0.5)

# Apply zero IK effect (a value at or below 0.01 also removes bones_global_pose_override on Skeleton)
skeleton_ik_node.set_interpolation(0.0)


*/
@GodotBaseClass struct SkeletonIK
{
	package(godot) enum string _GODOT_internal_name = "SkeletonIK";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_interpolation") GodotMethod!(double) getInterpolation;
		@GodotName("get_magnet_position") GodotMethod!(Vector3) getMagnetPosition;
		@GodotName("get_max_iterations") GodotMethod!(long) getMaxIterations;
		@GodotName("get_min_distance") GodotMethod!(double) getMinDistance;
		@GodotName("get_parent_skeleton") GodotMethod!(Skeleton) getParentSkeleton;
		@GodotName("get_root_bone") GodotMethod!(String) getRootBone;
		@GodotName("get_target_node") GodotMethod!(NodePath) getTargetNode;
		@GodotName("get_target_transform") GodotMethod!(Transform) getTargetTransform;
		@GodotName("get_tip_bone") GodotMethod!(String) getTipBone;
		@GodotName("is_override_tip_basis") GodotMethod!(bool) isOverrideTipBasis;
		@GodotName("is_running") GodotMethod!(bool) isRunning;
		@GodotName("is_using_magnet") GodotMethod!(bool) isUsingMagnet;
		@GodotName("set_interpolation") GodotMethod!(void, double) setInterpolation;
		@GodotName("set_magnet_position") GodotMethod!(void, Vector3) setMagnetPosition;
		@GodotName("set_max_iterations") GodotMethod!(void, long) setMaxIterations;
		@GodotName("set_min_distance") GodotMethod!(void, double) setMinDistance;
		@GodotName("set_override_tip_basis") GodotMethod!(void, bool) setOverrideTipBasis;
		@GodotName("set_root_bone") GodotMethod!(void, String) setRootBone;
		@GodotName("set_target_node") GodotMethod!(void, NodePath) setTargetNode;
		@GodotName("set_target_transform") GodotMethod!(void, Transform) setTargetTransform;
		@GodotName("set_tip_bone") GodotMethod!(void, String) setTipBone;
		@GodotName("set_use_magnet") GodotMethod!(void, bool) setUseMagnet;
		@GodotName("start") GodotMethod!(void, bool) start;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	/// 
	pragma(inline, true) bool opEquals(in SkeletonIK other) const
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
	/// Construct a new instance of SkeletonIK.
	/// Note: use `memnew!SkeletonIK` instead.
	static SkeletonIK _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SkeletonIK");
		if(constructor is null) return typeof(this).init;
		return cast(SkeletonIK)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getInterpolation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInterpolation, _godot_object);
	}
	/**
	
	*/
	Vector3 getMagnetPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getMagnetPosition, _godot_object);
	}
	/**
	
	*/
	long getMaxIterations() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxIterations, _godot_object);
	}
	/**
	
	*/
	double getMinDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMinDistance, _godot_object);
	}
	/**
	Returns the parent $(D Skeleton) Node that was present when SkeletonIK entered the $(D SceneTree). Returns null if the parent node was not a $(D Skeleton) Node when SkeletonIK entered the $(D SceneTree).
	*/
	Skeleton getParentSkeleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Skeleton)(GDNativeClassBinding.getParentSkeleton, _godot_object);
	}
	/**
	
	*/
	String getRootBone() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getRootBone, _godot_object);
	}
	/**
	
	*/
	NodePath getTargetNode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getTargetNode, _godot_object);
	}
	/**
	
	*/
	Transform getTargetTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getTargetTransform, _godot_object);
	}
	/**
	
	*/
	String getTipBone() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTipBone, _godot_object);
	}
	/**
	
	*/
	bool isOverrideTipBasis() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOverrideTipBasis, _godot_object);
	}
	/**
	Returns `true` if SkeletonIK is applying IK effects on continues frames to the $(D Skeleton) bones. Returns `false` if SkeletonIK is stopped or $(D start) was used with the `one_time` parameter set to `true`.
	*/
	bool isRunning()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRunning, _godot_object);
	}
	/**
	
	*/
	bool isUsingMagnet() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingMagnet, _godot_object);
	}
	/**
	
	*/
	void setInterpolation(in double interpolation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInterpolation, _godot_object, interpolation);
	}
	/**
	
	*/
	void setMagnetPosition(in Vector3 local_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMagnetPosition, _godot_object, local_position);
	}
	/**
	
	*/
	void setMaxIterations(in long iterations)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxIterations, _godot_object, iterations);
	}
	/**
	
	*/
	void setMinDistance(in double min_distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMinDistance, _godot_object, min_distance);
	}
	/**
	
	*/
	void setOverrideTipBasis(in bool _override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOverrideTipBasis, _godot_object, _override);
	}
	/**
	
	*/
	void setRootBone(in String root_bone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRootBone, _godot_object, root_bone);
	}
	/**
	
	*/
	void setTargetNode(NodePathArg0)(in NodePathArg0 node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTargetNode, _godot_object, node);
	}
	/**
	
	*/
	void setTargetTransform(in Transform target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTargetTransform, _godot_object, target);
	}
	/**
	
	*/
	void setTipBone(in String tip_bone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTipBone, _godot_object, tip_bone);
	}
	/**
	
	*/
	void setUseMagnet(in bool use)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseMagnet, _godot_object, use);
	}
	/**
	Starts applying IK effects on each frame to the $(D Skeleton) bones but will only take effect starting on the next frame. If `one_time` is `true`, this will take effect immediately but also reset on the next frame.
	*/
	void start(in bool one_time = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.start, _godot_object, one_time);
	}
	/**
	Stops applying IK effects on each frame to the $(D Skeleton) bones and also calls $(D Skeleton.clearBonesGlobalPoseOverride) to remove existing overrides on all bones.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	Interpolation value for how much the IK results are applied to the current skeleton bone chain. A value of `1.0` will overwrite all skeleton bone transforms completely while a value of `0.0` will visually disable the SkeletonIK. A value at or below `0.01` also calls $(D Skeleton.clearBonesGlobalPoseOverride).
	*/
	@property double interpolation()
	{
		return getInterpolation();
	}
	/// ditto
	@property void interpolation(double v)
	{
		setInterpolation(v);
	}
	/**
	Secondary target position (first is $(D target) property or $(D targetNode)) for the IK chain. Use magnet position (pole target) to control the bending of the IK chain. Only works if the bone chain has more than 2 bones. The middle chain bone position will be linearly interpolated with the magnet position.
	*/
	@property Vector3 magnet()
	{
		return getMagnetPosition();
	}
	/// ditto
	@property void magnet(Vector3 v)
	{
		setMagnetPosition(v);
	}
	/**
	Number of iteration loops used by the IK solver to produce more accurate (and elegant) bone chain results.
	*/
	@property long maxIterations()
	{
		return getMaxIterations();
	}
	/// ditto
	@property void maxIterations(long v)
	{
		setMaxIterations(v);
	}
	/**
	The minimum distance between bone and goal target. If the distance is below this value, the IK solver stops further iterations.
	*/
	@property double minDistance()
	{
		return getMinDistance();
	}
	/// ditto
	@property void minDistance(double v)
	{
		setMinDistance(v);
	}
	/**
	If `true` overwrites the rotation of the tip bone with the rotation of the $(D target) (or $(D targetNode) if defined).
	*/
	@property bool overrideTipBasis()
	{
		return isOverrideTipBasis();
	}
	/// ditto
	@property void overrideTipBasis(bool v)
	{
		setOverrideTipBasis(v);
	}
	/**
	The name of the current root bone, the first bone in the IK chain.
	*/
	@property String rootBone()
	{
		return getRootBone();
	}
	/// ditto
	@property void rootBone(String v)
	{
		setRootBone(v);
	}
	/**
	First target of the IK chain where the tip bone is placed and, if $(D overrideTipBasis) is `true`, how the tip bone is rotated. If a $(D targetNode) path is available the nodes transform is used instead and this property is ignored.
	*/
	@property Transform target()
	{
		return getTargetTransform();
	}
	/// ditto
	@property void target(Transform v)
	{
		setTargetTransform(v);
	}
	/**
	Target node $(D NodePath) for the IK chain. If available, the node's current $(D Transform) is used instead of the $(D target) property.
	*/
	@property NodePath targetNode()
	{
		return getTargetNode();
	}
	/// ditto
	@property void targetNode(NodePath v)
	{
		setTargetNode(v);
	}
	/**
	The name of the current tip bone, the last bone in the IK chain placed at the $(D target) transform (or $(D targetNode) if defined).
	*/
	@property String tipBone()
	{
		return getTipBone();
	}
	/// ditto
	@property void tipBone(String v)
	{
		setTipBone(v);
	}
	/**
	If `true`, instructs the IK solver to consider the secondary magnet target (pole target) when calculating the bone chain. Use the magnet position (pole target) to control the bending of the IK chain.
	*/
	@property bool useMagnet()
	{
		return isUsingMagnet();
	}
	/// ditto
	@property void useMagnet(bool v)
	{
		setUseMagnet(v);
	}
}
