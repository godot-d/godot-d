/**
Box shape resource.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.boxshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape;
/**
Box shape resource.

3D box shape that can be a child of a $(D PhysicsBody) or $(D Area).
*/
@GodotBaseClass struct BoxShape
{
	static immutable string _GODOT_internal_name = "BoxShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in BoxShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BoxShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BoxShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BoxShape");
		if(constructor is null) return typeof(this).init;
		return cast(BoxShape)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_extents") = _GODOT_set_extents;
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		_GODOT_set_extents.bind("BoxShape", "set_extents");
		ptrcall!(void)(_GODOT_set_extents, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_extents") = _GODOT_get_extents;
	/**
	
	*/
	Vector3 getExtents() const
	{
		_GODOT_get_extents.bind("BoxShape", "get_extents");
		return ptrcall!(Vector3)(_GODOT_get_extents, _godot_object);
	}
	/**
	The shape's half extents.
	*/
	@property Vector3 extents()
	{
		return getExtents();
	}
	/// ditto
	@property void extents(Vector3 v)
	{
		setExtents(v);
	}
}
