/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.planeshape;
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
import godot.shape;
/**

*/
@GodotBaseClass struct PlaneShape
{
	package(godot) enum string _GODOT_internal_name = "PlaneShape";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_plane") GodotMethod!(Plane) getPlane;
		@GodotName("set_plane") GodotMethod!(void, Plane) setPlane;
	}
	/// 
	pragma(inline, true) bool opEquals(in PlaneShape other) const
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
	/// Construct a new instance of PlaneShape.
	/// Note: use `memnew!PlaneShape` instead.
	static PlaneShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PlaneShape");
		if(constructor is null) return typeof(this).init;
		return cast(PlaneShape)(constructor());
	}
	/**
	
	*/
	Plane getPlane() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Plane)(GDNativeClassBinding.getPlane, _godot_object);
	}
	/**
	
	*/
	void setPlane(in Plane plane)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPlane, _godot_object, plane);
	}
	/**
	
	*/
	@property Plane plane()
	{
		return getPlane();
	}
	/// ditto
	@property void plane(Plane v)
	{
		setPlane(v);
	}
}
