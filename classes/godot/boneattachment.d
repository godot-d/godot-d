/**
A node that will attach to a bone.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.boneattachment;
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
A node that will attach to a bone.

This node must be the child of a $(D Skeleton) node. You can then select a bone for this node to attach to. The BoneAttachment node will copy the transform of the selected bone.
*/
@GodotBaseClass struct BoneAttachment
{
	static immutable string _GODOT_internal_name = "BoneAttachment";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in BoneAttachment other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BoneAttachment opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BoneAttachment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BoneAttachment");
		if(constructor is null) return typeof(this).init;
		return cast(BoneAttachment)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, String) _GODOT_set_bone_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bone_name") = _GODOT_set_bone_name;
	/**
	
	*/
	void setBoneName(StringArg0)(in StringArg0 bone_name)
	{
		_GODOT_set_bone_name.bind("BoneAttachment", "set_bone_name");
		ptrcall!(void)(_GODOT_set_bone_name, _godot_object, bone_name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bone_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bone_name") = _GODOT_get_bone_name;
	/**
	
	*/
	String getBoneName() const
	{
		_GODOT_get_bone_name.bind("BoneAttachment", "get_bone_name");
		return ptrcall!(String)(_GODOT_get_bone_name, _godot_object);
	}
	/**
	The name of the attached bone.
	*/
	@property String boneName()
	{
		return getBoneName();
	}
	/// ditto
	@property void boneName(String v)
	{
		setBoneName(v);
	}
}
