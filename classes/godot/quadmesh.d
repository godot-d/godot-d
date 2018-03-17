/**
Class representing a square mesh.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.quadmesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
/**
Class representing a square mesh.

Class representing a square mesh with size (2,2,0). Consider using a $(D PlaneMesh) if you require a differently sized plane.
*/
@GodotBaseClass struct QuadMesh
{
	static immutable string _GODOT_internal_name = "QuadMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in QuadMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	QuadMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static QuadMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("QuadMesh");
		if(constructor is null) return typeof(this).init;
		return cast(QuadMesh)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		_GODOT_set_size.bind("QuadMesh", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	
	*/
	Vector2 getSize() const
	{
		_GODOT_get_size.bind("QuadMesh", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	/**
	
	*/
	@property Vector2 size()
	{
		return getSize();
	}
	/// ditto
	@property void size(Vector2 v)
	{
		setSize(v);
	}
}
