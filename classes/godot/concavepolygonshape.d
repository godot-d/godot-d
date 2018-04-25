/**
Concave polygon shape.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.concavepolygonshape;
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
Concave polygon shape.

Concave polygon shape resource, which can be set into a $(D PhysicsBody) or area. This shape is created by feeding a list of triangles.
*/
@GodotBaseClass struct ConcavePolygonShape
{
	static immutable string _GODOT_internal_name = "ConcavePolygonShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ConcavePolygonShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ConcavePolygonShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ConcavePolygonShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConcavePolygonShape");
		if(constructor is null) return typeof(this).init;
		return cast(ConcavePolygonShape)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT_set_faces;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_faces") = _GODOT_set_faces;
	/**
	Set the faces (an array of triangles).
	*/
	void setFaces(in PoolVector3Array faces)
	{
		_GODOT_set_faces.bind("ConcavePolygonShape", "set_faces");
		ptrcall!(void)(_GODOT_set_faces, _godot_object, faces);
	}
	package(godot) static GodotMethod!(PoolVector3Array) _GODOT_get_faces;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_faces") = _GODOT_get_faces;
	/**
	Return the faces (an array of triangles).
	*/
	PoolVector3Array getFaces() const
	{
		_GODOT_get_faces.bind("ConcavePolygonShape", "get_faces");
		return ptrcall!(PoolVector3Array)(_GODOT_get_faces, _godot_object);
	}
	/**
	
	*/
	@property PoolVector3Array data()
	{
		return getFaces();
	}
	/// ditto
	@property void data(PoolVector3Array v)
	{
		setFaces(v);
	}
}
