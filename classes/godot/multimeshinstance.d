/**
Node that instances a $(D MultiMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.multimeshinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.multimesh;
/**
Node that instances a $(D MultiMesh).

`MultiMeshInstance` is a specialized node to instance $(D GeometryInstance)s based on a $(D MultiMesh) resource.
This is useful to optimize the rendering of a high amount of instances of a given mesh (for example tree in a forest or grass strands).
*/
@GodotBaseClass struct MultiMeshInstance
{
	static immutable string _GODOT_internal_name = "MultiMeshInstance";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in MultiMeshInstance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MultiMeshInstance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MultiMeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MultiMeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMeshInstance)(constructor());
	}
	package(godot) static GodotMethod!(void, MultiMesh) _GODOT_set_multimesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_multimesh") = _GODOT_set_multimesh;
	/**
	
	*/
	void setMultimesh(MultiMesh multimesh)
	{
		_GODOT_set_multimesh.bind("MultiMeshInstance", "set_multimesh");
		ptrcall!(void)(_GODOT_set_multimesh, _godot_object, multimesh);
	}
	package(godot) static GodotMethod!(MultiMesh) _GODOT_get_multimesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_multimesh") = _GODOT_get_multimesh;
	/**
	
	*/
	Ref!MultiMesh getMultimesh() const
	{
		_GODOT_get_multimesh.bind("MultiMeshInstance", "get_multimesh");
		return ptrcall!(MultiMesh)(_GODOT_get_multimesh, _godot_object);
	}
	/**
	The $(D MultiMesh) resource that will be used and shared among all instances of the `MultiMeshInstance`.
	*/
	@property MultiMesh multimesh()
	{
		return getMultimesh();
	}
	/// ditto
	@property void multimesh(MultiMesh v)
	{
		setMultimesh(v);
	}
}
