/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2dshapequeryresult;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**

*/
@GodotBaseClass struct Physics2DShapeQueryResult
{
	static immutable string _GODOT_internal_name = "Physics2DShapeQueryResult";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Physics2DShapeQueryResult other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DShapeQueryResult opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DShapeQueryResult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DShapeQueryResult");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DShapeQueryResult)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(long) _GODOT_get_result_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_count") = _GODOT_get_result_count;
	/**
	
	*/
	long getResultCount() const
	{
		_GODOT_get_result_count.bind("Physics2DShapeQueryResult", "get_result_count");
		return ptrcall!(long)(_GODOT_get_result_count, _godot_object);
	}
	package(godot) static GodotMethod!(RID, long) _GODOT_get_result_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_rid") = _GODOT_get_result_rid;
	/**
	
	*/
	RID getResultRid(in long idx) const
	{
		_GODOT_get_result_rid.bind("Physics2DShapeQueryResult", "get_result_rid");
		return ptrcall!(RID)(_GODOT_get_result_rid, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_result_object_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_object_id") = _GODOT_get_result_object_id;
	/**
	
	*/
	long getResultObjectId(in long idx) const
	{
		_GODOT_get_result_object_id.bind("Physics2DShapeQueryResult", "get_result_object_id");
		return ptrcall!(long)(_GODOT_get_result_object_id, _godot_object, idx);
	}
	package(godot) static GodotMethod!(GodotObject, long) _GODOT_get_result_object;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_object") = _GODOT_get_result_object;
	/**
	
	*/
	GodotObject getResultObject(in long idx) const
	{
		_GODOT_get_result_object.bind("Physics2DShapeQueryResult", "get_result_object");
		return ptrcall!(GodotObject)(_GODOT_get_result_object, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_result_object_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result_object_shape") = _GODOT_get_result_object_shape;
	/**
	
	*/
	long getResultObjectShape(in long idx) const
	{
		_GODOT_get_result_object_shape.bind("Physics2DShapeQueryResult", "get_result_object_shape");
		return ptrcall!(long)(_GODOT_get_result_object_shape, _godot_object, idx);
	}
}
