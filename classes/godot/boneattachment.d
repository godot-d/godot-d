/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.boneattachment;
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
/**

*/
@GodotBaseClass struct BoneAttachment
{
	package(godot) enum string _GODOT_internal_name = "BoneAttachment";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_bone_name") GodotMethod!(String) getBoneName;
		@GodotName("set_bone_name") GodotMethod!(void, String) setBoneName;
	}
	/// 
	pragma(inline, true) bool opEquals(in BoneAttachment other) const
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
	/// Construct a new instance of BoneAttachment.
	/// Note: use `memnew!BoneAttachment` instead.
	static BoneAttachment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BoneAttachment");
		if(constructor is null) return typeof(this).init;
		return cast(BoneAttachment)(constructor());
	}
	/**
	
	*/
	String getBoneName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBoneName, _godot_object);
	}
	/**
	
	*/
	void setBoneName(in String bone_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBoneName, _godot_object, bone_name);
	}
	/**
	
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
