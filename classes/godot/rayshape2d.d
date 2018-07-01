/**
Ray shape for 2D collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.rayshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape2d;
/**
Ray shape for 2D collisions.

A ray is not really a collision body, instead it tries to separate itself from whatever is touching its far endpoint. It's often useful for characters.
*/
@GodotBaseClass struct RayShape2D
{
	static immutable string _GODOT_internal_name = "RayShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in RayShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RayShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RayShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RayShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(RayShape2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, double) _GODOT_set_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_length") = _GODOT_set_length;
	/**
	
	*/
	void setLength(in double length)
	{
		_GODOT_set_length.bind("RayShape2D", "set_length");
		ptrcall!(void)(_GODOT_set_length, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	/**
	
	*/
	double getLength() const
	{
		_GODOT_get_length.bind("RayShape2D", "get_length");
		return ptrcall!(double)(_GODOT_get_length, _godot_object);
	}
	/**
	The ray's length.
	*/
	@property double length()
	{
		return getLength();
	}
	/// ditto
	@property void length(double v)
	{
		setLength(v);
	}
}
