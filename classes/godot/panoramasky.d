/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.panoramasky;
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
import godot.sky;
import godot.texture;
/**

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
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
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
