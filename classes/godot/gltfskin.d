/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfskin;
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
import godot.resource;
import godot.skin;
/**

*/
@GodotBaseClass struct GLTFSkin
{
	package(godot) enum string _GODOT_internal_name = "GLTFSkin";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_godot_skin") GodotMethod!(Skin) getGodotSkin;
		@GodotName("get_inverse_binds") GodotMethod!(Array) getInverseBinds;
		@GodotName("get_joint_i_to_bone_i") GodotMethod!(Dictionary) getJointIToBoneI;
		@GodotName("get_joint_i_to_name") GodotMethod!(Dictionary) getJointIToName;
		@GodotName("get_joints") GodotMethod!(PoolIntArray) getJoints;
		@GodotName("get_joints_original") GodotMethod!(PoolIntArray) getJointsOriginal;
		@GodotName("get_non_joints") GodotMethod!(PoolIntArray) getNonJoints;
		@GodotName("get_roots") GodotMethod!(PoolIntArray) getRoots;
		@GodotName("get_skeleton") GodotMethod!(long) getSkeleton;
		@GodotName("get_skin_root") GodotMethod!(long) getSkinRoot;
		@GodotName("set_godot_skin") GodotMethod!(void, Skin) setGodotSkin;
		@GodotName("set_inverse_binds") GodotMethod!(void, Array) setInverseBinds;
		@GodotName("set_joint_i_to_bone_i") GodotMethod!(void, Dictionary) setJointIToBoneI;
		@GodotName("set_joint_i_to_name") GodotMethod!(void, Dictionary) setJointIToName;
		@GodotName("set_joints") GodotMethod!(void, PoolIntArray) setJoints;
		@GodotName("set_joints_original") GodotMethod!(void, PoolIntArray) setJointsOriginal;
		@GodotName("set_non_joints") GodotMethod!(void, PoolIntArray) setNonJoints;
		@GodotName("set_roots") GodotMethod!(void, PoolIntArray) setRoots;
		@GodotName("set_skeleton") GodotMethod!(void, long) setSkeleton;
		@GodotName("set_skin_root") GodotMethod!(void, long) setSkinRoot;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFSkin other) const
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
	/// Construct a new instance of GLTFSkin.
	/// Note: use `memnew!GLTFSkin` instead.
	static GLTFSkin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFSkin");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFSkin)(constructor());
	}
	/**
	
	*/
	Ref!Skin getGodotSkin()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Skin)(GDNativeClassBinding.getGodotSkin, _godot_object);
	}
	/**
	
	*/
	Array getInverseBinds()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getInverseBinds, _godot_object);
	}
	/**
	
	*/
	Dictionary getJointIToBoneI()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getJointIToBoneI, _godot_object);
	}
	/**
	
	*/
	Dictionary getJointIToName()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getJointIToName, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getJoints()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getJoints, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getJointsOriginal()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getJointsOriginal, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getNonJoints()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getNonJoints, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getRoots()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getRoots, _godot_object);
	}
	/**
	
	*/
	long getSkeleton()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSkeleton, _godot_object);
	}
	/**
	
	*/
	long getSkinRoot()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSkinRoot, _godot_object);
	}
	/**
	
	*/
	void setGodotSkin(Skin godot_skin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGodotSkin, _godot_object, godot_skin);
	}
	/**
	
	*/
	void setInverseBinds(in Array inverse_binds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInverseBinds, _godot_object, inverse_binds);
	}
	/**
	
	*/
	void setJointIToBoneI(in Dictionary joint_i_to_bone_i)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setJointIToBoneI, _godot_object, joint_i_to_bone_i);
	}
	/**
	
	*/
	void setJointIToName(in Dictionary joint_i_to_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setJointIToName, _godot_object, joint_i_to_name);
	}
	/**
	
	*/
	void setJoints(in PoolIntArray joints)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setJoints, _godot_object, joints);
	}
	/**
	
	*/
	void setJointsOriginal(in PoolIntArray joints_original)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setJointsOriginal, _godot_object, joints_original);
	}
	/**
	
	*/
	void setNonJoints(in PoolIntArray non_joints)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNonJoints, _godot_object, non_joints);
	}
	/**
	
	*/
	void setRoots(in PoolIntArray roots)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoots, _godot_object, roots);
	}
	/**
	
	*/
	void setSkeleton(in long skeleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkeleton, _godot_object, skeleton);
	}
	/**
	
	*/
	void setSkinRoot(in long skin_root)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkinRoot, _godot_object, skin_root);
	}
	/**
	
	*/
	@property Skin godotSkin()
	{
		return getGodotSkin();
	}
	/// ditto
	@property void godotSkin(Skin v)
	{
		setGodotSkin(v);
	}
	/**
	
	*/
	@property Array inverseBinds()
	{
		return getInverseBinds();
	}
	/// ditto
	@property void inverseBinds(Array v)
	{
		setInverseBinds(v);
	}
	/**
	
	*/
	@property Dictionary jointIToBoneI()
	{
		return getJointIToBoneI();
	}
	/// ditto
	@property void jointIToBoneI(Dictionary v)
	{
		setJointIToBoneI(v);
	}
	/**
	
	*/
	@property Dictionary jointIToName()
	{
		return getJointIToName();
	}
	/// ditto
	@property void jointIToName(Dictionary v)
	{
		setJointIToName(v);
	}
	/**
	
	*/
	@property PoolIntArray joints()
	{
		return getJoints();
	}
	/// ditto
	@property void joints(PoolIntArray v)
	{
		setJoints(v);
	}
	/**
	
	*/
	@property PoolIntArray jointsOriginal()
	{
		return getJointsOriginal();
	}
	/// ditto
	@property void jointsOriginal(PoolIntArray v)
	{
		setJointsOriginal(v);
	}
	/**
	
	*/
	@property PoolIntArray nonJoints()
	{
		return getNonJoints();
	}
	/// ditto
	@property void nonJoints(PoolIntArray v)
	{
		setNonJoints(v);
	}
	/**
	
	*/
	@property PoolIntArray roots()
	{
		return getRoots();
	}
	/// ditto
	@property void roots(PoolIntArray v)
	{
		setRoots(v);
	}
	/**
	
	*/
	@property long skeleton()
	{
		return getSkeleton();
	}
	/// ditto
	@property void skeleton(long v)
	{
		setSkeleton(v);
	}
	/**
	
	*/
	@property long skinRoot()
	{
		return getSkinRoot();
	}
	/// ditto
	@property void skinRoot(long v)
	{
		setSkinRoot(v);
	}
}
