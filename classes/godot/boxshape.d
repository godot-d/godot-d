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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape;
import godot.resource;
import godot.reference;
/**
Box shape resource.

3D box shape that can be a child of a $(D PhysicsBody) or $(D Area).
*/
@GodotBaseClass struct BoxShape
{
	enum string _GODOT_internal_name = "BoxShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_extents") GodotMethod!(void, Vector3) setExtents;
		@GodotName("get_extents") GodotMethod!(Vector3) getExtents;
	}
	bool opEquals(in BoxShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BoxShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExtents, _godot_object, extents);
	}
	/**
	
	*/
	Vector3 getExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getExtents, _godot_object);
	}
	/**
	The shape's half extents.
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
