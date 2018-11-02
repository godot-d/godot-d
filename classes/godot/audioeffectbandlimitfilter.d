/**
Adds a band limit filter to the Audio Bus.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectbandlimitfilter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffectfilter;
import godot.audioeffect;
import godot.resource;
import godot.reference;
/**
Adds a band limit filter to the Audio Bus.

Limits the frequencies in a range around the $(D AudioEffectFilter.cutoffHz) and allows frequencies outside of this range to pass.
*/
@GodotBaseClass struct AudioEffectBandLimitFilter
{
	enum string _GODOT_internal_name = "AudioEffectBandLimitFilter";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffectFilter _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
	}
	bool opEquals(in AudioEffectBandLimitFilter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectBandLimitFilter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectBandLimitFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectBandLimitFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectBandLimitFilter)(constructor());
	}
	@disable new(size_t s);
}
