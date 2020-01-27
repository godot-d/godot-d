/**
Base class for audio equalizers. Gives you control over frequencies.
Use it to create a custom equalizer if $(D AudioEffectEQ6), $(D AudioEffectEQ10) or $(D AudioEffectEQ21) don't fit your needs.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffecteq;
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
/**
Base class for audio equalizers. Gives you control over frequencies.
Use it to create a custom equalizer if $(D AudioEffectEQ6), $(D AudioEffectEQ10) or $(D AudioEffectEQ21) don't fit your needs.

AudioEffectEQ gives you control over frequencies. Use it to compensate for existing deficiencies in audio. AudioEffectEQs are useful on the Master bus to completely master a mix and give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be added but disabled when headphones are plugged).
*/
@GodotBaseClass struct AudioEffectEQ
{
	enum string _GODOT_internal_name = "AudioEffectEQ";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_band_count") GodotMethod!(long) getBandCount;
		@GodotName("get_band_gain_db") GodotMethod!(double, long) getBandGainDb;
		@GodotName("set_band_gain_db") GodotMethod!(void, long, double) setBandGainDb;
	}
	bool opEquals(in AudioEffectEQ other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectEQ opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectEQ _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectEQ");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectEQ)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the number of bands of the equalizer.
	*/
	long getBandCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBandCount, _godot_object);
	}
	/**
	Returns the band's gain at the specified index, in dB.
	*/
	double getBandGainDb(in long band_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBandGainDb, _godot_object, band_idx);
	}
	/**
	Sets band's gain at the specified index, in dB.
	*/
	void setBandGainDb(in long band_idx, in double volume_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBandGainDb, _godot_object, band_idx, volume_db);
	}
}
