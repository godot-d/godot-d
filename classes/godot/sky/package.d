/**
The base class for $(D PanoramaSky) and $(D ProceduralSky).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.sky;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
The base class for $(D PanoramaSky) and $(D ProceduralSky).


*/
@GodotBaseClass struct Sky
{
	static immutable string _GODOT_internal_name = "Sky";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Sky other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Sky opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Sky _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Sky");
		if(constructor is null) return typeof(this).init;
		return cast(Sky)(constructor());
	}
	/// 
	enum RadianceSize : int
	{
		/**
		Radiance texture size is 32x32 pixels.
		*/
		radianceSize32 = 0,
		/**
		Radiance texture size is 64x64 pixels.
		*/
		radianceSize64 = 1,
		/**
		Radiance texture size is 128x128 pixels.
		*/
		radianceSize128 = 2,
		/**
		Radiance texture size is 256x256 pixels.
		*/
		radianceSize256 = 3,
		/**
		Radiance texture size is 512x512 pixels.
		*/
		radianceSize512 = 4,
		/**
		Radiance texture size is 1024x1024 pixels.
		*/
		radianceSize1024 = 5,
		/**
		Radiance texture size is 2048x2048 pixels.
		*/
		radianceSize2048 = 6,
		/**
		Radiance texture size is the largest size it can be.
		*/
		radianceSizeMax = 7,
	}
	/// 
	enum Constants : int
	{
		radianceSize32 = 0,
		radianceSize64 = 1,
		radianceSize128 = 2,
		radianceSize256 = 3,
		radianceSize512 = 4,
		radianceSize1024 = 5,
		radianceSize2048 = 6,
		radianceSizeMax = 7,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_radiance_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_radiance_size") = _GODOT_set_radiance_size;
	/**
	
	*/
	void setRadianceSize(in long size)
	{
		_GODOT_set_radiance_size.bind("Sky", "set_radiance_size");
		ptrcall!(void)(_GODOT_set_radiance_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Sky.RadianceSize) _GODOT_get_radiance_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_radiance_size") = _GODOT_get_radiance_size;
	/**
	
	*/
	Sky.RadianceSize getRadianceSize() const
	{
		_GODOT_get_radiance_size.bind("Sky", "get_radiance_size");
		return ptrcall!(Sky.RadianceSize)(_GODOT_get_radiance_size, _godot_object);
	}
	/**
	The Sky's radiance map size.
	The higher the radiance map size, the more detailed the lighting from the Sky will be.
	See RADIANCE_SIZE_* constants for values. Default size is RADIANCE_SIZE_512.
	*/
	@property Sky.RadianceSize radianceSize()
	{
		return getRadianceSize();
	}
	/// ditto
	@property void radianceSize(long v)
	{
		setRadianceSize(v);
	}
}
