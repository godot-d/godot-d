/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.occluder;
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
import godot.spatial;
import godot.occludershape;
import godot.resource;
/**

*/
@GodotBaseClass struct Occluder
{
	package(godot) enum string _GODOT_internal_name = "Occluder";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_shape") GodotMethod!(OccluderShape) getShape;
		@GodotName("resource_changed") GodotMethod!(void, Resource) resourceChanged;
		@GodotName("set_shape") GodotMethod!(void, OccluderShape) setShape;
	}
	/// 
	pragma(inline, true) bool opEquals(in Occluder other) const
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
	/// Construct a new instance of Occluder.
	/// Note: use `memnew!Occluder` instead.
	static Occluder _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Occluder");
		if(constructor is null) return typeof(this).init;
		return cast(Occluder)(constructor());
	}
	/**
	
	*/
	Ref!OccluderShape getShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OccluderShape)(GDNativeClassBinding.getShape, _godot_object);
	}
	/**
	
	*/
	void resourceChanged(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resourceChanged, _godot_object, resource);
	}
	/**
	
	*/
	void setShape(OccluderShape shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShape, _godot_object, shape);
	}
	/**
	
	*/
	@property OccluderShape shape()
	{
		return getShape();
	}
	/// ditto
	@property void shape(OccluderShape v)
	{
		setShape(v);
	}
}
