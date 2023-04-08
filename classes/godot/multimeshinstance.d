/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.multimeshinstance;
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
import godot.geometryinstance;
import godot.visualinstance;
import godot.multimesh;
/**

*/
@GodotBaseClass struct MultiMeshInstance
{
	package(godot) enum string _GODOT_internal_name = "MultiMeshInstance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_multimesh") GodotMethod!(MultiMesh) getMultimesh;
		@GodotName("set_multimesh") GodotMethod!(void, MultiMesh) setMultimesh;
	}
	/// 
	pragma(inline, true) bool opEquals(in MultiMeshInstance other) const
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
	/// Construct a new instance of MultiMeshInstance.
	/// Note: use `memnew!MultiMeshInstance` instead.
	static MultiMeshInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MultiMeshInstance");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMeshInstance)(constructor());
	}
	/**
	
	*/
	Ref!MultiMesh getMultimesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh)(GDNativeClassBinding.getMultimesh, _godot_object);
	}
	/**
	
	*/
	void setMultimesh(MultiMesh multimesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMultimesh, _godot_object, multimesh);
	}
	/**
	
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
