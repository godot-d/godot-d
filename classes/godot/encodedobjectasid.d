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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**

*/
@GodotBaseClass struct EncodedObjectAsID
{
	static immutable string _GODOT_internal_name = "EncodedObjectAsID";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EncodedObjectAsID other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EncodedObjectAsID opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EncodedObjectAsID _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EncodedObjectAsID");
		if(constructor is null) return typeof(this).init;
		return cast(EncodedObjectAsID)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_object_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_object_id") = _GODOT_set_object_id;
	/**
	
	*/
	void setObjectId(in long id)
	{
		_GODOT_set_object_id.bind("EncodedObjectAsID", "set_object_id");
		ptrcall!(void)(_GODOT_set_object_id, _godot_object, id);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_object_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_object_id") = _GODOT_get_object_id;
	/**
	
	*/
	long getObjectId() const
	{
		_GODOT_get_object_id.bind("EncodedObjectAsID", "get_object_id");
		return ptrcall!(long)(_GODOT_get_object_id, _godot_object);
	}
}
