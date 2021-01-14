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
import godot.d.traits;
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
	
	*/
	void start(in bool one_time = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.start, _godot_object, one_time);
	}
	/**
	
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
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
