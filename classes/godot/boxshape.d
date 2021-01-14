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
import godot.d.traits;
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
	package(godot) enum string _GODOT_internal_name = "BoxShape";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_extents") GodotMethod!(Vector3) getExtents;
		@GodotName("set_extents") GodotMethod!(void, Vector3) setExtents;
	}
	/// 
	pragma(inline, true) bool opEquals(in BoxShape other) const
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
	/// Construct a new instance of BoxShape.
	/// Note: use `memnew!BoxShape` instead.
	static BoxShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BoxShape");
		if(constructor is null) return typeof(this).init;
		return cast(BoxShape)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Vector3 getExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getExtents, _godot_object);
	}
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExtents, _godot_object, extents);
	}
	/**
	The box's half extents. The width, height and depth of this shape is twice the half extents.
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
