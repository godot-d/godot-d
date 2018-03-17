/**
Adds a 6-band equalizer audio effect to an Audio bus. Gives you control over frequencies from 32 Hz to 10000 Hz.
Each frequency can be modulated between -60/+24 dB.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffecteq6;
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
Adds a 6-band equalizer audio effect to an Audio bus. Gives you control over frequencies from 32 Hz to 10000 Hz.
Each frequency can be modulated between -60/+24 dB.

Frequency bands :
Band 1 : 32 Hz
Band 2 : 100 Hz
Band 3 : 320 Hz
Band 4 : 1000 Hz
Band 5 : 3200 Hz
Band 6 : 10000 Hz

See also $(D AudioEffectEQ), $(D AudioEffectEQ10), $(D AudioEffectEQ21).
*/
@GodotBaseClass struct AudioEffectEQ6
{
	static immutable string _GODOT_internal_name = "AudioEffectEQ6";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffectEQ _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectEQ6 other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectEQ6 opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectEQ6 _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectEQ6");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectEQ6)(constructor());
	}
}
