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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape;
/**

*/
@GodotBaseClass struct PlaneShape
{
	static immutable string _GODOT_internal_name = "PlaneShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PlaneShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PlaneShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PlaneShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PlaneShape");
		if(constructor is null) return typeof(this).init;
		return cast(PlaneShape)(constructor());
	}
	package(godot) static GodotMethod!(void, Plane) _GODOT_set_plane;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_plane") = _GODOT_set_plane;
	/**
	
	*/
	void setPlane(in Plane plane)
	{
		_GODOT_set_plane.bind("PlaneShape", "set_plane");
		ptrcall!(void)(_GODOT_set_plane, _godot_object, plane);
	}
	package(godot) static GodotMethod!(Plane) _GODOT_get_plane;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_plane") = _GODOT_get_plane;
	/**
	
	*/
	Plane getPlane() const
	{
		_GODOT_get_plane.bind("PlaneShape", "get_plane");
		return ptrcall!(Plane)(_GODOT_get_plane, _godot_object);
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
