/**
Gradient-filled texture.

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
Gradient-filled texture.

GradientTexture uses a $(D Gradient) to fill the texture data. The gradient will be filled from left to right using colors obtained from the gradient. This means the texture does not necessarily represent an exact copy of the gradient, but instead an interpolation of samples obtained from the gradient at fixed steps (see $(D width)).
*/
@GodotBaseClass struct GradientTexture
{
	enum string _GODOT_internal_name = "GradientTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_update") GodotMethod!(void) _update;
		@GodotName("get_gradient") GodotMethod!(Gradient) getGradient;
		@GodotName("set_gradient") GodotMethod!(void, Gradient) setGradient;
		@GodotName("set_width") GodotMethod!(void, long) setWidth;
	}
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
	Ref!Gradient getGradient() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Gradient)(_classBinding.getGradient, _godot_object);
	}
	/**
	
	*/
	void setGradient(Gradient gradient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGradient, _godot_object, gradient);
	}
	/**
	
	*/
	void setWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWidth, _godot_object, width);
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
