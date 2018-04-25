/**
A texture that shows a curve.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.curvetexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.curve;
/**
A texture that shows a curve.

Renders a given $(D Curve) provided to it. Simplifies the task of drawing curves and/or saving them as image files.
*/
@GodotBaseClass struct CurveTexture
{
	static immutable string _GODOT_internal_name = "CurveTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CurveTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CurveTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CurveTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CurveTexture");
		if(constructor is null) return typeof(this).init;
		return cast(CurveTexture)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_set_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_width") = _GODOT_set_width;
	/**
	
	*/
	void setWidth(in long width)
	{
		_GODOT_set_width.bind("CurveTexture", "set_width");
		ptrcall!(void)(_GODOT_set_width, _godot_object, width);
	}
	package(godot) static GodotMethod!(void, Curve) _GODOT_set_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_curve") = _GODOT_set_curve;
	/**
	
	*/
	void setCurve(Curve curve)
	{
		_GODOT_set_curve.bind("CurveTexture", "set_curve");
		ptrcall!(void)(_GODOT_set_curve, _godot_object, curve);
	}
	package(godot) static GodotMethod!(Curve) _GODOT_get_curve;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_curve") = _GODOT_get_curve;
	/**
	
	*/
	Ref!Curve getCurve() const
	{
		_GODOT_get_curve.bind("CurveTexture", "get_curve");
		return ptrcall!(Curve)(_GODOT_get_curve, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__update;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update") = _GODOT__update;
	/**
	
	*/
	void _update()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The width of the texture.
	*/
	@property long width()
	{
		return getWidth();
	}
	/// ditto
	@property void width(long v)
	{
		setWidth(v);
	}
	/**
	The `curve` rendered onto the texture.
	*/
	@property Curve curve()
	{
		return getCurve();
	}
	/// ditto
	@property void curve(Curve v)
	{
		setCurve(v);
	}
}
