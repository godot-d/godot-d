/**
Adds a 10-band equalizer audio effect to an Audio bus. Gives you control over frequencies from 31 Hz to 16000 Hz.
Each frequency can be modulated between -60/+24 dB.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffecteq10;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffecteq;
import godot.audioeffect;
import godot.resource;
/**
Adds a 10-band equalizer audio effect to an Audio bus. Gives you control over frequencies from 31 Hz to 16000 Hz.
Each frequency can be modulated between -60/+24 dB.

Frequency bands:
Band 1: 31 Hz
Band 2: 62 Hz
Band 3: 125 Hz
Band 4: 250 Hz
Band 5: 500 Hz
Band 6: 1000 Hz
Band 7: 2000 Hz
Band 8: 4000 Hz
Band 9: 8000 Hz
Band 10: 16000 Hz
See also $(D AudioEffectEQ), $(D AudioEffectEQ6), $(D AudioEffectEQ21).
*/
@GodotBaseClass struct AudioEffectEQ10
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectEQ10";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffectEQ _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectEQ10 other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) AudioEffectEQ10 opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of AudioEffectEQ10.
	/// Note: use `memnew!AudioEffectEQ10` instead.
	static AudioEffectEQ10 _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectEQ10");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectEQ10)(constructor());
	}
	@disable new(size_t s);
}
