/**
Adds an amplifying audio effect to an audio bus.
Increases or decreases the volume of the selected audio bus.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectamplify;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audioeffect;
import godot.resource;
/**
Adds an amplifying audio effect to an audio bus.
Increases or decreases the volume of the selected audio bus.

Increases or decreases the volume being routed through the audio bus.
*/
@GodotBaseClass struct AudioEffectAmplify
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectAmplify";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_volume_db") GodotMethod!(double) getVolumeDb;
		@GodotName("set_volume_db") GodotMethod!(void, double) setVolumeDb;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectAmplify other) const
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
	/// Construct a new instance of AudioEffectAmplify.
	/// Note: use `memnew!AudioEffectAmplify` instead.
	static AudioEffectAmplify _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectAmplify");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectAmplify)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getVolumeDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVolumeDb, _godot_object);
	}
	/**
	
	*/
	void setVolumeDb(in double volume)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVolumeDb, _godot_object, volume);
	}
	/**
	Amount of amplification in decibels. Positive values make the sound louder, negative values make it quieter. Value can range from -80 to 24.
	*/
	@property double volumeDb()
	{
		return getVolumeDb();
	}
	/// ditto
	@property void volumeDb(double v)
	{
		setVolumeDb(v);
	}
}
