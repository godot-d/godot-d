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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
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
	package(godot) enum string _GODOT_internal_name = "CurveTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_update") GodotMethod!(void) _update;
		@GodotName("get_curve") GodotMethod!(Curve) getCurve;
		@GodotName("set_curve") GodotMethod!(void, Curve) setCurve;
		@GodotName("set_width") GodotMethod!(void, long) setWidth;
	}
	/// 
	pragma(inline, true) bool opEquals(in CurveTexture other) const
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
	/// Construct a new instance of CurveTexture.
	/// Note: use `memnew!CurveTexture` instead.
	static CurveTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CurveTexture");
		if(constructor is null) return typeof(this).init;
		return cast(CurveTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _update()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!Curve getCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve)(GDNativeClassBinding.getCurve, _godot_object);
	}
	/**
	
	*/
	void setCurve(Curve curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurve, _godot_object, curve);
	}
	/**
	
	*/
	void setWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWidth, _godot_object, width);
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
}
