/**
Adds a 21-band equalizer audio effect to an Audio bus. Gives you control over frequencies from 22 Hz to 22000 Hz.
Each frequency can be modulated between -60/+24 dB.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffecteq21;
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
/**
Adds a 21-band equalizer audio effect to an Audio bus. Gives you control over frequencies from 22 Hz to 22000 Hz.
Each frequency can be modulated between -60/+24 dB.

Frequency bands :
Band 1 : 22 Hz
Band 2 : 32 Hz
Band 3 : 44 Hz
Band 4 : 63 Hz
Band 5 : 90 Hz
Band 6 : 125 Hz
Band 7 : 175 Hz
Band 8 : 250 Hz
Band 9 : 350 Hz
Band 10 : 500 Hz
Band 11 : 700 Hz
Band 12 : 1000 Hz
Band 13 : 1400 Hz
Band 14 : 2000 Hz
Band 15 : 2800 Hz
Band 16 : 4000 Hz
Band 17 : 5600 Hz
Band 18 : 8000 Hz
Band 19 : 11000 Hz
Band 20 : 16000 Hz
Band 21 : 22000 Hz

See also $(D AudioEffectEQ), $(D AudioEffectEQ6), $(D AudioEffectEQ10).
*/
@GodotBaseClass struct AudioEffectEQ21
{
	static immutable string _GODOT_internal_name = "AudioEffectEQ21";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffectEQ _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectEQ21 other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectEQ21 opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectEQ21 _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectEQ21");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectEQ21)(constructor());
	}
	@disable new(size_t s);
}
