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
*/
@GodotBaseClass struct PanoramaSky
{
	enum string _GODOT_internal_name = "PanoramaSky";
public:
@nogc nothrow:
	union { godot_object _godot_object; Sky _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_panorama") GodotMethod!(Texture) getPanorama;
		@GodotName("set_panorama") GodotMethod!(void, Texture) setPanorama;
	}
	bool opEquals(in PanoramaSky other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PanoramaSky opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		return ptrcall!(Texture)(_classBinding.getPanorama, _godot_object);
	}
	/**
	
	*/
	void setPanorama(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPanorama, _godot_object, texture);
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
