/**
Result of a 2D shape query in $(D Physics2DServer).

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
Result of a 2D shape query in $(D Physics2DServer).

The result of a 2D shape query in $(D Physics2DServer). See also $(D Physics2DShapeQueryParameters).
*/
@GodotBaseClass struct Physics2DShapeQueryResult
{
	enum string _GODOT_internal_name = "Physics2DShapeQueryResult";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_result_count") GodotMethod!(long) getResultCount;
		@GodotName("get_result_object") GodotMethod!(GodotObject, long) getResultObject;
		@GodotName("get_result_object_id") GodotMethod!(long, long) getResultObjectId;
		@GodotName("get_result_object_shape") GodotMethod!(long, long) getResultObjectShape;
		@GodotName("get_result_rid") GodotMethod!(RID, long) getResultRid;
	}
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
	/**
	Returns the number of objects that intersected with the shape.
	*/
	long getResultCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getResultCount, _godot_object);
	}
	/**
	Returns the $(D GodotObject) that intersected with the shape at index `idx`.
	*/
	GodotObject getResultObject(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(_classBinding.getResultObject, _godot_object, idx);
	}
	/**
	Returns the instance ID of the $(D GodotObject) that intersected with the shape at index `idx`.
	*/
	long getResultObjectId(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getResultObjectId, _godot_object, idx);
	}
	/**
	Returns the child index of the object's $(D Shape) that intersected with the shape at index `idx`.
	*/
	long getResultObjectShape(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getResultObjectShape, _godot_object, idx);
	}
	/**
	Returns the $(D RID) of the object that intersected with the shape at index `idx`.
	*/
	RID getResultRid(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getResultRid, _godot_object, idx);
	}
}
