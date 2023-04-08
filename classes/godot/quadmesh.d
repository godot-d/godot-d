/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.quadmesh;
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
import godot.primitivemesh;
import godot.mesh;
import godot.resource;
/**

*/
@GodotBaseClass struct QuadMesh
{
	package(godot) enum string _GODOT_internal_name = "QuadMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_center_offset") GodotMethod!(Vector3) getCenterOffset;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("set_center_offset") GodotMethod!(void, Vector3) setCenterOffset;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
	}
	/// 
	pragma(inline, true) bool opEquals(in QuadMesh other) const
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
	/// Construct a new instance of QuadMesh.
	/// Note: use `memnew!QuadMesh` instead.
	static QuadMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("QuadMesh");
		if(constructor is null) return typeof(this).init;
		return cast(QuadMesh)(constructor());
	}
	/**
	
	*/
	Vector3 getCenterOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getCenterOffset, _godot_object);
	}
	/**
	
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	
	*/
	void setCenterOffset(in Vector3 center_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCenterOffset, _godot_object, center_offset);
	}
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	@property Vector3 centerOffset()
	{
		return getCenterOffset();
	}
	/// ditto
	@property void centerOffset(Vector3 v)
	{
		setCenterOffset(v);
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
