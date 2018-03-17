/**
Line shape for 2D collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.lineshape2d;
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
Line shape for 2D collisions.

It works like a 2D plane and will not allow any body to go to the negative side. Not recommended for rigid bodies, and usually not recommended for static bodies either because it forces checks against it on every frame.
*/
@GodotBaseClass struct LineShape2D
{
	static immutable string _GODOT_internal_name = "LineShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in LineShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LineShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static LineShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("LineShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(LineShape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal") = _GODOT_set_normal;
	/**
	
	*/
	void setNormal(in Vector2 normal)
	{
		_GODOT_set_normal.bind("LineShape2D", "set_normal");
		ptrcall!(void)(_GODOT_set_normal, _godot_object, normal);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal") = _GODOT_get_normal;
	/**
	
	*/
	Vector2 getNormal() const
	{
		_GODOT_get_normal.bind("LineShape2D", "get_normal");
		return ptrcall!(Vector2)(_GODOT_get_normal, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_d;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_d") = _GODOT_set_d;
	/**
	
	*/
	void setD(in double d)
	{
		_GODOT_set_d.bind("LineShape2D", "set_d");
		ptrcall!(void)(_GODOT_set_d, _godot_object, d);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_d") = _GODOT_get_d;
	/**
	
	*/
	double getD() const
	{
		_GODOT_get_d.bind("LineShape2D", "get_d");
		return ptrcall!(double)(_GODOT_get_d, _godot_object);
	}
	/**
	The line's normal.
	*/
	@property Vector2 normal()
	{
		return getNormal();
	}
	/// ditto
	@property void normal(Vector2 v)
	{
		setNormal(v);
	}
	/**
	The line's distance from the origin.
	*/
	@property double d()
	{
		return getD();
	}
	/// ditto
	@property void d(double v)
	{
		setD(v);
	}
}
