/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.sky;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct Sky
{
	package(godot) enum string _GODOT_internal_name = "Sky";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_radiance_size") GodotMethod!(Sky.RadianceSize) getRadianceSize;
		@GodotName("set_radiance_size") GodotMethod!(void, long) setRadianceSize;
	}
	/// 
	pragma(inline, true) bool opEquals(in Sky other) const
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
	/// Construct a new instance of Sky.
	/// Note: use `memnew!Sky` instead.
	static Sky _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Sky");
		if(constructor is null) return typeof(this).init;
		return cast(Sky)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum RadianceSize : int
	{
		/** */
		radianceSize32 = 0,
		/** */
		radianceSize64 = 1,
		/** */
		radianceSize128 = 2,
		/** */
		radianceSize256 = 3,
		/** */
		radianceSize512 = 4,
		/** */
		radianceSize1024 = 5,
		/** */
		radianceSize2048 = 6,
		/** */
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
	/**
	
	*/
	Sky.RadianceSize getRadianceSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Sky.RadianceSize)(GDNativeClassBinding.getRadianceSize, _godot_object);
	}
	/**
	
	*/
	void setRadianceSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadianceSize, _godot_object, size);
	}
	/**
	
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
