/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.skeletonik;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.skeleton;
/**

*/
@GodotBaseClass struct SkeletonIK
{
	enum string _GODOT_internal_name = "SkeletonIK";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_root_bone") GodotMethod!(void, String) setRootBone;
		@GodotName("get_root_bone") GodotMethod!(String) getRootBone;
		@GodotName("set_tip_bone") GodotMethod!(void, String) setTipBone;
		@GodotName("get_tip_bone") GodotMethod!(String) getTipBone;
		@GodotName("set_interpolation") GodotMethod!(void, double) setInterpolation;
		@GodotName("get_interpolation") GodotMethod!(double) getInterpolation;
		@GodotName("set_target_transform") GodotMethod!(void, Transform) setTargetTransform;
		@GodotName("get_target_transform") GodotMethod!(Transform) getTargetTransform;
		@GodotName("set_target_node") GodotMethod!(void, NodePath) setTargetNode;
		@GodotName("get_target_node") GodotMethod!(NodePath) getTargetNode;
		@GodotName("set_use_magnet") GodotMethod!(void, bool) setUseMagnet;
		@GodotName("is_using_magnet") GodotMethod!(bool) isUsingMagnet;
		@GodotName("set_magnet_position") GodotMethod!(void, Vector3) setMagnetPosition;
		@GodotName("get_magnet_position") GodotMethod!(Vector3) getMagnetPosition;
		@GodotName("get_parent_skeleton") GodotMethod!(Skeleton) getParentSkeleton;
		@GodotName("is_running") GodotMethod!(bool) isRunning;
		@GodotName("set_min_distance") GodotMethod!(void, double) setMinDistance;
		@GodotName("get_min_distance") GodotMethod!(double) getMinDistance;
		@GodotName("set_max_iterations") GodotMethod!(void, long) setMaxIterations;
		@GodotName("get_max_iterations") GodotMethod!(long) getMaxIterations;
		@GodotName("start") GodotMethod!(void, bool) start;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	bool opEquals(in SkeletonIK other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SkeletonIK opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setRootBone(in String root_bone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRootBone, _godot_object, root_bone);
	}
	/**
	
	*/
	String getRootBone() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getRootBone, _godot_object);
	}
	/**
	
	*/
	void setTipBone(in String tip_bone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTipBone, _godot_object, tip_bone);
	}
	/**
	
	*/
	String getTipBone() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTipBone, _godot_object);
	}
	/**
	
	*/
	void setInterpolation(in double interpolation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInterpolation, _godot_object, interpolation);
	}
	/**
	
	*/
	double getInterpolation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getInterpolation, _godot_object);
	}
	/**
	
	*/
	void setTargetTransform(in Transform target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTargetTransform, _godot_object, target);
	}
	/**
	
	*/
	Transform getTargetTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getTargetTransform, _godot_object);
	}
	/**
	
	*/
	void setTargetNode(NodePathArg0)(in NodePathArg0 node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTargetNode, _godot_object, node);
	}
	/**
	
	*/
	NodePath getTargetNode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getTargetNode, _godot_object);
	}
	/**
	
	*/
	void setUseMagnet(in bool use)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseMagnet, _godot_object, use);
	}
	/**
	
	*/
	bool isUsingMagnet() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingMagnet, _godot_object);
	}
	/**
	
	*/
	void setMagnetPosition(in Vector3 local_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMagnetPosition, _godot_object, local_position);
	}
	/**
	
	*/
	Vector3 getMagnetPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getMagnetPosition, _godot_object);
	}
	/**
	
	*/
	Skeleton getParentSkeleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Skeleton)(_classBinding.getParentSkeleton, _godot_object);
	}
	/**
	
	*/
	bool isRunning()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRunning, _godot_object);
	}
	/**
	
	*/
	void setMinDistance(in double min_distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMinDistance, _godot_object, min_distance);
	}
	/**
	
	*/
	double getMinDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMinDistance, _godot_object);
	}
	/**
	
	*/
	void setMaxIterations(in long iterations)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxIterations, _godot_object, iterations);
	}
	/**
	
	*/
	long getMaxIterations() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMaxIterations, _godot_object);
	}
	/**
	
	*/
	void start(in bool one_time = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.start, _godot_object, one_time);
	}
	/**
	
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
	/**
	
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
	/**
	
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
}
