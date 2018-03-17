/**
Adds a high pass filter to the Audio Bus.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffecthighpassfilter;
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
/**
Adds a high pass filter to the Audio Bus.

Cuts frequencies lower than the $(D cutoffHz) and allows higher frequencies to pass.
*/
@GodotBaseClass struct AudioEffectHighPassFilter
{
	static immutable string _GODOT_internal_name = "AudioEffectHighPassFilter";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffectFilter _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectHighPassFilter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectHighPassFilter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectHighPassFilter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectHighPassFilter");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectHighPassFilter)(constructor());
	}
}
