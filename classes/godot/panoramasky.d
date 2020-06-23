/**
A type of $(D Sky) used to draw a background texture.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.panoramasky;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.sky;
import godot.texture;
/**
A type of $(D Sky) used to draw a background texture.

A resource referenced in an $(D Environment) that is used to draw a background. The Panorama sky functions similar to skyboxes in other engines, except it uses an equirectangular sky map instead of a cube map.
Using an HDR panorama is strongly recommended for accurate, high-quality reflections. Godot supports the Radiance HDR (`.hdr`) and OpenEXR (`.exr`) image formats for this purpose.
You can use $(D url=https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html)this tool$(D /url) to convert a cube map to an equirectangular sky map.
*/
@GodotBaseClass struct PanoramaSky
{
	package(godot) enum string _GODOT_internal_name = "PanoramaSky";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Sky _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_panorama") GodotMethod!(Texture) getPanorama;
		@GodotName("set_panorama") GodotMethod!(void, Texture) setPanorama;
	}
	/// 
	pragma(inline, true) bool opEquals(in PanoramaSky other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) PanoramaSky opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of PanoramaSky.
	/// Note: use `memnew!PanoramaSky` instead.
	static PanoramaSky _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PanoramaSky");
		if(constructor is null) return typeof(this).init;
		return cast(PanoramaSky)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!Texture getPanorama() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getPanorama, _godot_object);
	}
	/**
	
	*/
	void setPanorama(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPanorama, _godot_object, texture);
	}
	/**
	$(D Texture) to be applied to the PanoramaSky.
	*/
	@property Texture panorama()
	{
		return getPanorama();
	}
	/// ditto
	@property void panorama(Texture v)
	{
		setPanorama(v);
	}
}