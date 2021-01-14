/**
Adds a notch filter to the Audio bus.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectnotchfilter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffectfilter;
import godot.audioeffect;
import godot.resource;
/**
Adds a notch filter to the Audio bus.

Attenuates frequencies in a narrow band around the $(D AudioEffectFilter.cutoffHz) and cuts frequencies outside of this range.
*/
@GodotBaseClass struct AudioEffectNotchFilter
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectNotchFilter";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffectFilter _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectNotchFilter other) const
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
	/// Construct a new instance of AudioEffectNotchFilter.
	/// Note: use `memnew!AudioEffectNotchFilter` instead.
	static AudioEffectNotchFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectNotchFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectNotchFilter)(constructor());
	}
	@disable new(size_t s);
}
