/**
Container for a $(D Curve3D).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.path;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.curve3d;
/**
Container for a $(D Curve3D).

This class is a container/Node-ification of a $(D Curve3D), so it can have $(D Spatial) properties and $(D Node) info.
*/
@GodotBaseClass struct Path
{
	static immutable string _GODOT_internal_name = "Path";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Path other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Path opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Path _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Path");
		if(constructor is null) return typeof(this).init;
		return cast(Path)(constructor());
	}
	package(godot) static GodotMethod!(void, Curve3D) _GODOT_set_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_curve") = _GODOT_set_curve;
	/**
	
	*/
	void setCurve(Curve3D curve)
	{
		_GODOT_set_curve.bind("Path", "set_curve");
		ptrcall!(void)(_GODOT_set_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(Curve3D) _GODOT_get_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_curve") = _GODOT_get_curve;
	/**
	
	*/
	Ref!Curve3D getCurve() const
	{
		_GODOT_get_curve.bind("Path", "get_curve");
		return ptrcall!(Curve3D)(_GODOT_get_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__curve_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_curve_changed") = _GODOT__curve_changed;
	/**
	
	*/
	void _curveChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_curve_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property Curve3D curve()
	{
		return getCurve();
	}
	/// ditto
	@property void curve(Curve3D v)
	{
		setCurve(v);
	}
}
