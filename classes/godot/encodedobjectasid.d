/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.encodedobjectasid;
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
import godot.reference;
/**

*/
@GodotBaseClass struct EncodedObjectAsID
{
	package(godot) enum string _GODOT_internal_name = "EncodedObjectAsID";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_object_id") GodotMethod!(long) getObjectId;
		@GodotName("set_object_id") GodotMethod!(void, long) setObjectId;
	}
	/// 
	pragma(inline, true) bool opEquals(in EncodedObjectAsID other) const
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
	/// Construct a new instance of EncodedObjectAsID.
	/// Note: use `memnew!EncodedObjectAsID` instead.
	static EncodedObjectAsID _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EncodedObjectAsID");
		if(constructor is null) return typeof(this).init;
		return cast(EncodedObjectAsID)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getObjectId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getObjectId, _godot_object);
	}
	/**
	
	*/
	void setObjectId(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setObjectId, _godot_object, id);
	}
	/**
	
	*/
	@property long objectId()
	{
		return getObjectId();
	}
	/// ditto
	@property void objectId(long v)
	{
		setObjectId(v);
	}
}
