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
import godot.visualinstance;
import godot.multimesh;
/**
Node that instances a $(D MultiMesh).

$(D MultiMeshInstance) is a specialized node to instance $(D GeometryInstance)s based on a $(D MultiMesh) resource.
This is useful to optimize the rendering of a high amount of instances of a given mesh (for example trees in a forest or grass strands).
*/
@GodotBaseClass struct MultiMeshInstance
{
	enum string _GODOT_internal_name = "MultiMeshInstance";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_multimesh") GodotMethod!(MultiMesh) getMultimesh;
		@GodotName("set_multimesh") GodotMethod!(void, MultiMesh) setMultimesh;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	Ref!MultiMesh getMultimesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh)(_classBinding.getMultimesh, _godot_object);
	}
	/**
	
	*/
	void setMultimesh(MultiMesh multimesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMultimesh, _godot_object, multimesh);
	}
	/**
	The $(D MultiMesh) resource that will be used and shared among all instances of the $(D MultiMeshInstance).
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
