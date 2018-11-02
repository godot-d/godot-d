/**
Adds a Pitch shift audio effect to an Audio bus.
Raises or lowers the pitch of original sound.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectpitchshift;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffect;
import godot.resource;
import godot.reference;
/**
Adds a Pitch shift audio effect to an Audio bus.
Raises or lowers the pitch of original sound.

Allows modulation of pitch independently of tempo. All frequencies can be increased/decreased with minimal effect on transients.
*/
@GodotBaseClass struct AudioEffectPitchShift
{
	enum string _GODOT_internal_name = "AudioEffectPitchShift";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_pitch_scale") GodotMethod!(void, double) setPitchScale;
		@GodotName("get_pitch_scale") GodotMethod!(double) getPitchScale;
	}
	bool opEquals(in AudioEffectPitchShift other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectPitchShift opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectPitchShift _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectPitchShift");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectPitchShift)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setPitchScale(in double rate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPitchScale, _godot_object, rate);
	}
	/**
	
	*/
	double getPitchScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPitchScale, _godot_object);
	}
	/**
	Pitch value. Can range from 0 (-1 octave) to 16 (+16 octaves).
	*/
	@property double pitchScale()
	{
		return getPitchScale();
	}
	/// ditto
	@property void pitchScale(double v)
	{
		setPitchScale(v);
	}
}
