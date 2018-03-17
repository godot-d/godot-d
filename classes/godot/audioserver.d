/**
Server interface for low level audio access.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.audioeffect;
import godot.audiobuslayout;
/**
Server interface for low level audio access.

AudioServer is a low level server interface for audio access. It is in charge of creating sample data (playable audio) as well as its playback via a voice interface.
*/
@GodotBaseClass struct AudioServerSingleton
{
	static immutable string _GODOT_internal_name = "AudioServer";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "AudioServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioServer");
		if(constructor is null) return typeof(this).init;
		return cast(AudioServerSingleton)(constructor());
	}
	/// 
	enum SpeakerMode : int
	{
		/**
		Two or fewer speakers are detected.
		*/
		speakerModeStereo = 0,
		/**
		A 5.1 channel surround setup detected.
		*/
		speakerSurround51 = 2,
		/**
		A 7.1 channel surround setup detected.
		*/
		speakerSurround71 = 3,
	}
	/// 
	enum Constants : int
	{
		speakerModeStereo = 0,
		speakerSurround51 = 2,
		speakerSurround71 = 3,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_bus_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_count") = _GODOT_set_bus_count;
	/**
	Adds and removes busses to make the number of busses match `amount`.
	*/
	void setBusCount(in long amount)
	{
		_GODOT_set_bus_count.bind("AudioServer", "set_bus_count");
		ptrcall!(void)(_GODOT_set_bus_count, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_bus_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_count") = _GODOT_get_bus_count;
	/**
	Returns the number of available busses.
	*/
	long getBusCount() const
	{
		_GODOT_get_bus_count.bind("AudioServer", "get_bus_count");
		return ptrcall!(long)(_GODOT_get_bus_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_bus") = _GODOT_remove_bus;
	/**
	Removes the bus at index `index`.
	*/
	void removeBus(in long index)
	{
		_GODOT_remove_bus.bind("AudioServer", "remove_bus");
		ptrcall!(void)(_GODOT_remove_bus, _godot_object, index);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_add_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_bus") = _GODOT_add_bus;
	/**
	Adds a bus at `at_position`.
	*/
	void addBus(in long at_position = -1)
	{
		_GODOT_add_bus.bind("AudioServer", "add_bus");
		ptrcall!(void)(_GODOT_add_bus, _godot_object, at_position);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_move_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_bus") = _GODOT_move_bus;
	/**
	Moves the bus from index `index` to index `to_index`.
	*/
	void moveBus(in long index, in long to_index)
	{
		_GODOT_move_bus.bind("AudioServer", "move_bus");
		ptrcall!(void)(_GODOT_move_bus, _godot_object, index, to_index);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_bus_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_name") = _GODOT_set_bus_name;
	/**
	Sets the name of the bus at index `bus_idx` to `name`.
	*/
	void setBusName(StringArg1)(in long bus_idx, in StringArg1 name)
	{
		_GODOT_set_bus_name.bind("AudioServer", "set_bus_name");
		ptrcall!(void)(_GODOT_set_bus_name, _godot_object, bus_idx, name);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_bus_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_name") = _GODOT_get_bus_name;
	/**
	Returns the name of the bus with the index `bus_idx`.
	*/
	String getBusName(in long bus_idx) const
	{
		_GODOT_get_bus_name.bind("AudioServer", "get_bus_name");
		return ptrcall!(String)(_GODOT_get_bus_name, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_get_bus_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_index") = _GODOT_get_bus_index;
	/**
	Returns the index of the bus with the name `bus_name`.
	*/
	long getBusIndex(StringArg0)(in StringArg0 bus_name) const
	{
		_GODOT_get_bus_index.bind("AudioServer", "get_bus_index");
		return ptrcall!(long)(_GODOT_get_bus_index, _godot_object, bus_name);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_bus_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_volume_db") = _GODOT_set_bus_volume_db;
	/**
	Sets the volume of the bus at index `bus_idx` to `volume_db`.
	*/
	void setBusVolumeDb(in long bus_idx, in double volume_db)
	{
		_GODOT_set_bus_volume_db.bind("AudioServer", "set_bus_volume_db");
		ptrcall!(void)(_GODOT_set_bus_volume_db, _godot_object, bus_idx, volume_db);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_bus_volume_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_volume_db") = _GODOT_get_bus_volume_db;
	/**
	Returns the volume of the bus at index `bus_idx` in dB.
	*/
	double getBusVolumeDb(in long bus_idx) const
	{
		_GODOT_get_bus_volume_db.bind("AudioServer", "get_bus_volume_db");
		return ptrcall!(double)(_GODOT_get_bus_volume_db, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_bus_send;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_send") = _GODOT_set_bus_send;
	/**
	Connects the output of the bus at `bus_idx` to the bus named `send`.
	*/
	void setBusSend(StringArg1)(in long bus_idx, in StringArg1 send)
	{
		_GODOT_set_bus_send.bind("AudioServer", "set_bus_send");
		ptrcall!(void)(_GODOT_set_bus_send, _godot_object, bus_idx, send);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_bus_send;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_send") = _GODOT_get_bus_send;
	/**
	Returns the name of the bus that the bus at index `bus_idx` sends to.
	*/
	String getBusSend(in long bus_idx) const
	{
		_GODOT_get_bus_send.bind("AudioServer", "get_bus_send");
		return ptrcall!(String)(_GODOT_get_bus_send, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_bus_solo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_solo") = _GODOT_set_bus_solo;
	/**
	If `true` the bus at index `bus_idx` is in solo mode.
	*/
	void setBusSolo(in long bus_idx, in bool enable)
	{
		_GODOT_set_bus_solo.bind("AudioServer", "set_bus_solo");
		ptrcall!(void)(_GODOT_set_bus_solo, _godot_object, bus_idx, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_bus_solo;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bus_solo") = _GODOT_is_bus_solo;
	/**
	If `true` the bus at index `bus_idx` is in solo mode.
	*/
	bool isBusSolo(in long bus_idx) const
	{
		_GODOT_is_bus_solo.bind("AudioServer", "is_bus_solo");
		return ptrcall!(bool)(_GODOT_is_bus_solo, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_bus_mute;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_mute") = _GODOT_set_bus_mute;
	/**
	If `true` the bus at index `bus_idx` is muted.
	*/
	void setBusMute(in long bus_idx, in bool enable)
	{
		_GODOT_set_bus_mute.bind("AudioServer", "set_bus_mute");
		ptrcall!(void)(_GODOT_set_bus_mute, _godot_object, bus_idx, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_bus_mute;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bus_mute") = _GODOT_is_bus_mute;
	/**
	If `true` the bus at index `bus_idx` is muted.
	*/
	bool isBusMute(in long bus_idx) const
	{
		_GODOT_is_bus_mute.bind("AudioServer", "is_bus_mute");
		return ptrcall!(bool)(_GODOT_is_bus_mute, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_bus_bypass_effects;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_bypass_effects") = _GODOT_set_bus_bypass_effects;
	/**
	If `true` the bus at index `bus_idx` is bypassing effects.
	*/
	void setBusBypassEffects(in long bus_idx, in bool enable)
	{
		_GODOT_set_bus_bypass_effects.bind("AudioServer", "set_bus_bypass_effects");
		ptrcall!(void)(_GODOT_set_bus_bypass_effects, _godot_object, bus_idx, enable);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_bus_bypassing_effects;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bus_bypassing_effects") = _GODOT_is_bus_bypassing_effects;
	/**
	If `true` the bus at index `bus_idx` is bypassing effects.
	*/
	bool isBusBypassingEffects(in long bus_idx) const
	{
		_GODOT_is_bus_bypassing_effects.bind("AudioServer", "is_bus_bypassing_effects");
		return ptrcall!(bool)(_GODOT_is_bus_bypassing_effects, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(void, long, AudioEffect, long) _GODOT_add_bus_effect;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_bus_effect") = _GODOT_add_bus_effect;
	/**
	Adds an $(D AudioEffect) effect to the bus `bus_idx` at `at_position`.
	*/
	void addBusEffect(in long bus_idx, AudioEffect effect, in long at_position = -1)
	{
		_GODOT_add_bus_effect.bind("AudioServer", "add_bus_effect");
		ptrcall!(void)(_GODOT_add_bus_effect, _godot_object, bus_idx, effect, at_position);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_remove_bus_effect;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_bus_effect") = _GODOT_remove_bus_effect;
	/**
	Removes the effect at index `effect_idx` from the bus at index `bus_idx`.
	*/
	void removeBusEffect(in long bus_idx, in long effect_idx)
	{
		_GODOT_remove_bus_effect.bind("AudioServer", "remove_bus_effect");
		ptrcall!(void)(_GODOT_remove_bus_effect, _godot_object, bus_idx, effect_idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_bus_effect_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_effect_count") = _GODOT_get_bus_effect_count;
	/**
	Returns the number of effects on the bus at `bus_idx`.
	*/
	long getBusEffectCount(in long bus_idx)
	{
		_GODOT_get_bus_effect_count.bind("AudioServer", "get_bus_effect_count");
		return ptrcall!(long)(_GODOT_get_bus_effect_count, _godot_object, bus_idx);
	}
	package(godot) static GodotMethod!(AudioEffect, long, long) _GODOT_get_bus_effect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_effect") = _GODOT_get_bus_effect;
	/**
	Returns the $(D AudioEffect) at position `effect_idx` in bus `bus_idx`.
	*/
	Ref!AudioEffect getBusEffect(in long bus_idx, in long effect_idx)
	{
		_GODOT_get_bus_effect.bind("AudioServer", "get_bus_effect");
		return ptrcall!(AudioEffect)(_GODOT_get_bus_effect, _godot_object, bus_idx, effect_idx);
	}
	package(godot) static GodotMethod!(void, long, long, long) _GODOT_swap_bus_effects;
	package(godot) alias _GODOT_methodBindInfo(string name : "swap_bus_effects") = _GODOT_swap_bus_effects;
	/**
	Swaps the position of two effects in bus `bus_idx`.
	*/
	void swapBusEffects(in long bus_idx, in long effect_idx, in long by_effect_idx)
	{
		_GODOT_swap_bus_effects.bind("AudioServer", "swap_bus_effects");
		ptrcall!(void)(_GODOT_swap_bus_effects, _godot_object, bus_idx, effect_idx, by_effect_idx);
	}
	package(godot) static GodotMethod!(void, long, long, bool) _GODOT_set_bus_effect_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_effect_enabled") = _GODOT_set_bus_effect_enabled;
	/**
	If `true` the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.
	*/
	void setBusEffectEnabled(in long bus_idx, in long effect_idx, in bool enabled)
	{
		_GODOT_set_bus_effect_enabled.bind("AudioServer", "set_bus_effect_enabled");
		ptrcall!(void)(_GODOT_set_bus_effect_enabled, _godot_object, bus_idx, effect_idx, enabled);
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT_is_bus_effect_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_bus_effect_enabled") = _GODOT_is_bus_effect_enabled;
	/**
	If `true` the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.
	*/
	bool isBusEffectEnabled(in long bus_idx, in long effect_idx) const
	{
		_GODOT_is_bus_effect_enabled.bind("AudioServer", "is_bus_effect_enabled");
		return ptrcall!(bool)(_GODOT_is_bus_effect_enabled, _godot_object, bus_idx, effect_idx);
	}
	package(godot) static GodotMethod!(double, long, long) _GODOT_get_bus_peak_volume_left_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_peak_volume_left_db") = _GODOT_get_bus_peak_volume_left_db;
	/**
	Returns the peak volume of the left speaker at bus index `bus_idx` and channel index `channel`.
	*/
	double getBusPeakVolumeLeftDb(in long bus_idx, in long channel) const
	{
		_GODOT_get_bus_peak_volume_left_db.bind("AudioServer", "get_bus_peak_volume_left_db");
		return ptrcall!(double)(_GODOT_get_bus_peak_volume_left_db, _godot_object, bus_idx, channel);
	}
	package(godot) static GodotMethod!(double, long, long) _GODOT_get_bus_peak_volume_right_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus_peak_volume_right_db") = _GODOT_get_bus_peak_volume_right_db;
	/**
	Returns the peak volume of the right speaker at bus index `bus_idx` and channel index `channel`.
	*/
	double getBusPeakVolumeRightDb(in long bus_idx, in long channel) const
	{
		_GODOT_get_bus_peak_volume_right_db.bind("AudioServer", "get_bus_peak_volume_right_db");
		return ptrcall!(double)(_GODOT_get_bus_peak_volume_right_db, _godot_object, bus_idx, channel);
	}
	package(godot) static GodotMethod!(void) _GODOT_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "lock") = _GODOT_lock;
	/**
	Locks the audio drivers mainloop. Remember to unlock it afterwards.
	*/
	void lock()
	{
		_GODOT_lock.bind("AudioServer", "lock");
		ptrcall!(void)(_GODOT_lock, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_unlock;
	package(godot) alias _GODOT_methodBindInfo(string name : "unlock") = _GODOT_unlock;
	/**
	Unlocks the audiodriver's main loop. After locking it always unlock it.
	*/
	void unlock()
	{
		_GODOT_unlock.bind("AudioServer", "unlock");
		ptrcall!(void)(_GODOT_unlock, _godot_object);
	}
	package(godot) static GodotMethod!(AudioServer.SpeakerMode) _GODOT_get_speaker_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speaker_mode") = _GODOT_get_speaker_mode;
	/**
	Returns the speaker configuration.
	*/
	AudioServer.SpeakerMode getSpeakerMode() const
	{
		_GODOT_get_speaker_mode.bind("AudioServer", "get_speaker_mode");
		return ptrcall!(AudioServer.SpeakerMode)(_GODOT_get_speaker_mode, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_mix_rate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mix_rate") = _GODOT_get_mix_rate;
	/**
	Returns the sample rate at the output of the audioserver.
	*/
	double getMixRate() const
	{
		_GODOT_get_mix_rate.bind("AudioServer", "get_mix_rate");
		return ptrcall!(double)(_GODOT_get_mix_rate, _godot_object);
	}
	package(godot) static GodotMethod!(void, AudioBusLayout) _GODOT_set_bus_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus_layout") = _GODOT_set_bus_layout;
	/**
	Overwrites the currently used $(D AudioBusLayout).
	*/
	void setBusLayout(AudioBusLayout bus_layout)
	{
		_GODOT_set_bus_layout.bind("AudioServer", "set_bus_layout");
		ptrcall!(void)(_GODOT_set_bus_layout, _godot_object, bus_layout);
	}
	package(godot) static GodotMethod!(AudioBusLayout) _GODOT_generate_bus_layout;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_bus_layout") = _GODOT_generate_bus_layout;
	/**
	Generates an $(D AudioBusLayout) using the available busses and effects.
	*/
	Ref!AudioBusLayout generateBusLayout() const
	{
		_GODOT_generate_bus_layout.bind("AudioServer", "generate_bus_layout");
		return ptrcall!(AudioBusLayout)(_GODOT_generate_bus_layout, _godot_object);
	}
}
/// Returns: the AudioServerSingleton
@property @nogc nothrow pragma(inline, true)
AudioServerSingleton AudioServer()
{
	return AudioServerSingleton._GODOT_singleton();
}
