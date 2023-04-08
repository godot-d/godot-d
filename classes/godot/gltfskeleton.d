/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfskeleton;
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
import godot.boneattachment;
import godot.skeleton;
/**

*/
@GodotBaseClass struct GLTFSkeleton
{
	package(godot) enum string _GODOT_internal_name = "GLTFSkeleton";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_bone_attachment") GodotMethod!(BoneAttachment, long) getBoneAttachment;
		@GodotName("get_bone_attachment_count") GodotMethod!(long) getBoneAttachmentCount;
		@GodotName("get_godot_bone_node") GodotMethod!(Dictionary) getGodotBoneNode;
		@GodotName("get_godot_skeleton") GodotMethod!(Skeleton) getGodotSkeleton;
		@GodotName("get_joints") GodotMethod!(PoolIntArray) getJoints;
		@GodotName("get_roots") GodotMethod!(PoolIntArray) getRoots;
		@GodotName("get_unique_names") GodotMethod!(Array) getUniqueNames;
		@GodotName("set_godot_bone_node") GodotMethod!(void, Dictionary) setGodotBoneNode;
		@GodotName("set_joints") GodotMethod!(void, PoolIntArray) setJoints;
		@GodotName("set_roots") GodotMethod!(void, PoolIntArray) setRoots;
		@GodotName("set_unique_names") GodotMethod!(void, Array) setUniqueNames;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFSkeleton other) const
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
	/// Construct a new instance of GLTFSkeleton.
	/// Note: use `memnew!GLTFSkeleton` instead.
	static GLTFSkeleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFSkeleton");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFSkeleton)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	BoneAttachment getBoneAttachment(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BoneAttachment)(GDNativeClassBinding.getBoneAttachment, _godot_object, idx);
	}
	/**
	
	*/
	long getBoneAttachmentCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBoneAttachmentCount, _godot_object);
	}
	/**
	
	*/
	Dictionary getGodotBoneNode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getGodotBoneNode, _godot_object);
	}
	/**
	
	*/
	Skeleton getGodotSkeleton()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Skeleton)(GDNativeClassBinding.getGodotSkeleton, _godot_object);
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
	PoolIntArray getRoots()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getRoots, _godot_object);
	}
	/**
	
	*/
	Array getUniqueNames()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getUniqueNames, _godot_object);
	}
	/**
	
	*/
	void setGodotBoneNode(in Dictionary godot_bone_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGodotBoneNode, _godot_object, godot_bone_node);
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
	void setRoots(in PoolIntArray roots)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoots, _godot_object, roots);
	}
	/**
	
	*/
	void setUniqueNames(in Array unique_names)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUniqueNames, _godot_object, unique_names);
	}
	/**
	
	*/
	@property Dictionary godotBoneNode()
	{
		return getGodotBoneNode();
	}
	/// ditto
	@property void godotBoneNode(Dictionary v)
	{
		setGodotBoneNode(v);
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
	@property Array uniqueNames()
	{
		return getUniqueNames();
	}
	/// ditto
	@property void uniqueNames(Array v)
	{
		setUniqueNames(v);
	}
}
