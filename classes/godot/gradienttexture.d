/**
Gradient filled texture.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gradienttexture;
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
import godot.gradient;
/**
Gradient filled texture.

Uses a $(D Gradient) to fill the texture data, the gradient will be filled from left to right using colors obtained from the gradient, this means that the texture does not necessarily represent an exact copy of the gradient, but instead an interpolation of samples obtained from the gradient at fixed steps (see $(D setWidth)).
*/
@GodotBaseClass struct GradientTexture
{
	static immutable string _GODOT_internal_name = "GradientTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in GradientTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GradientTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GradientTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GradientTexture");
		if(constructor is null) return typeof(this).init;
		return cast(GradientTexture)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Gradient) _GODOT_set_gradient;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gradient") = _GODOT_set_gradient;
	/**
	
	*/
	void setGradient(Gradient gradient)
	{
		_GODOT_set_gradient.bind("GradientTexture", "set_gradient");
		ptrcall!(void)(_GODOT_set_gradient, _godot_object, gradient);
	}
	package(godot) static GodotMethod!(Gradient) _GODOT_get_gradient;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gradient") = _GODOT_get_gradient;
	/**
	
	*/
	Ref!Gradient getGradient() const
	{
		_GODOT_get_gradient.bind("GradientTexture", "get_gradient");
		return ptrcall!(Gradient)(_GODOT_get_gradient, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_width") = _GODOT_set_width;
	/**
	
	*/
	void setWidth(in long width)
	{
		_GODOT_set_width.bind("GradientTexture", "set_width");
		ptrcall!(void)(_GODOT_set_width, _godot_object, width);
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
	The $(D Gradient) that will be used to fill the texture.
	*/
	@property Gradient gradient()
	{
		return getGradient();
	}
	/// ditto
	@property void gradient(Gradient v)
	{
		setGradient(v);
	}
	/**
	The number of color samples that will be obtained from the $(D Gradient).
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
