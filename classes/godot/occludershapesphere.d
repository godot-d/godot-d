/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.occludershapesphere;
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
import godot.occludershape;
import godot.resource;
/**

*/
@GodotBaseClass struct OccluderShapeSphere
{
	package(godot) enum string _GODOT_internal_name = "OccluderShapeSphere";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ OccluderShape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_spheres") GodotMethod!(Array) getSpheres;
		@GodotName("set_sphere_position") GodotMethod!(void, long, Vector3) setSpherePosition;
		@GodotName("set_sphere_radius") GodotMethod!(void, long, double) setSphereRadius;
		@GodotName("set_spheres") GodotMethod!(void, Array) setSpheres;
	}
	/// 
	pragma(inline, true) bool opEquals(in OccluderShapeSphere other) const
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
	/// Construct a new instance of OccluderShapeSphere.
	/// Note: use `memnew!OccluderShapeSphere` instead.
	static OccluderShapeSphere _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("OccluderShapeSphere");
		if(constructor is null) return typeof(this).init;
		return cast(OccluderShapeSphere)(constructor());
	}
	/**
	
	*/
	Array getSpheres() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getSpheres, _godot_object);
	}
	/**
	
	*/
	void setSpherePosition(in long index, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpherePosition, _godot_object, index, position);
	}
	/**
	
	*/
	void setSphereRadius(in long index, in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSphereRadius, _godot_object, index, radius);
	}
	/**
	
	*/
	void setSpheres(in Array spheres)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpheres, _godot_object, spheres);
	}
	/**
	
	*/
	@property Array spheres()
	{
		return getSpheres();
	}
	/// ditto
	@property void spheres(Array v)
	{
		setSpheres(v);
	}
}
