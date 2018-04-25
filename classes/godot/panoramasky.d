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

*/
@GodotBaseClass struct PanoramaSky
{
	static immutable string _GODOT_internal_name = "PanoramaSky";
public:
@nogc nothrow:
	union { godot_object _godot_object; Sky _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_panorama;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_panorama") = _GODOT_set_panorama;
	/**
	
	*/
	void setPanorama(Texture texture)
	{
		_GODOT_set_panorama.bind("PanoramaSky", "set_panorama");
		ptrcall!(void)(_GODOT_set_panorama, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_panorama;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_panorama") = _GODOT_get_panorama;
	/**
	
	*/
	Ref!Texture getPanorama() const
	{
		_GODOT_get_panorama.bind("PanoramaSky", "get_panorama");
		return ptrcall!(Texture)(_GODOT_get_panorama, _godot_object);
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
