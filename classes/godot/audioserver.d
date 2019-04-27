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
import godot.audioeffectinstance;
import godot.audiobuslayout;
/**
Server interface for low level audio access.

AudioServer is a low level server interface for audio access. It is in charge of creating sample data (playable audio) as well as its playback via a voice interface.
*/
@GodotBaseClass struct AudioServerSingleton
{
	enum string _GODOT_internal_name = "AudioServer";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "AudioServer";
		@GodotName("set_bus_count") GodotMethod!(void, long) setBusCount;
		@GodotName("get_bus_count") GodotMethod!(long) getBusCount;
		@GodotName("remove_bus") GodotMethod!(void, long) removeBus;
		@GodotName("add_bus") GodotMethod!(void, long) addBus;
		@GodotName("move_bus") GodotMethod!(void, long, long) moveBus;
		@GodotName("set_bus_name") GodotMethod!(void, long, String) setBusName;
		@GodotName("get_bus_name") GodotMethod!(String, long) getBusName;
		@GodotName("get_bus_index") GodotMethod!(long, String) getBusIndex;
		@GodotName("get_bus_channels") GodotMethod!(long, long) getBusChannels;
		@GodotName("set_bus_volume_db") GodotMethod!(void, long, double) setBusVolumeDb;
		@GodotName("get_bus_volume_db") GodotMethod!(double, long) getBusVolumeDb;
		@GodotName("set_bus_send") GodotMethod!(void, long, String) setBusSend;
		@GodotName("get_bus_send") GodotMethod!(String, long) getBusSend;
		@GodotName("set_bus_solo") GodotMethod!(void, long, bool) setBusSolo;
		@GodotName("is_bus_solo") GodotMethod!(bool, long) isBusSolo;
		@GodotName("set_bus_mute") GodotMethod!(void, long, bool) setBusMute;
		@GodotName("is_bus_mute") GodotMethod!(bool, long) isBusMute;
		@GodotName("set_bus_bypass_effects") GodotMethod!(void, long, bool) setBusBypassEffects;
		@GodotName("is_bus_bypassing_effects") GodotMethod!(bool, long) isBusBypassingEffects;
		@GodotName("add_bus_effect") GodotMethod!(void, long, AudioEffect, long) addBusEffect;
		@GodotName("remove_bus_effect") GodotMethod!(void, long, long) removeBusEffect;
		@GodotName("get_bus_effect_count") GodotMethod!(long, long) getBusEffectCount;
		@GodotName("get_bus_effect") GodotMethod!(AudioEffect, long, long) getBusEffect;
		@GodotName("get_bus_effect_instance") GodotMethod!(AudioEffectInstance, long, long, long) getBusEffectInstance;
		@GodotName("swap_bus_effects") GodotMethod!(void, long, long, long) swapBusEffects;
		@GodotName("set_bus_effect_enabled") GodotMethod!(void, long, long, bool) setBusEffectEnabled;
		@GodotName("is_bus_effect_enabled") GodotMethod!(bool, long, long) isBusEffectEnabled;
		@GodotName("get_bus_peak_volume_left_db") GodotMethod!(double, long, long) getBusPeakVolumeLeftDb;
		@GodotName("get_bus_peak_volume_right_db") GodotMethod!(double, long, long) getBusPeakVolumeRightDb;
		@GodotName("lock") GodotMethod!(void) lock;
		@GodotName("unlock") GodotMethod!(void) unlock;
		@GodotName("get_speaker_mode") GodotMethod!(AudioServer.SpeakerMode) getSpeakerMode;
		@GodotName("get_mix_rate") GodotMethod!(double) getMixRate;
		@GodotName("get_device_list") GodotMethod!(Array) getDeviceList;
		@GodotName("get_device") GodotMethod!(String) getDevice;
		@GodotName("set_device") GodotMethod!(void, String) setDevice;
		@GodotName("capture_get_device_list") GodotMethod!(Array) captureGetDeviceList;
		@GodotName("capture_get_device") GodotMethod!(String) captureGetDevice;
		@GodotName("capture_set_device") GodotMethod!(void, String) captureSetDevice;
		@GodotName("set_bus_layout") GodotMethod!(void, AudioBusLayout) setBusLayout;
		@GodotName("generate_bus_layout") GodotMethod!(AudioBusLayout) generateBusLayout;
	}
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
	@disable new(size_t s);
	/// 
	enum SpeakerMode : int
	{
		/**
		Two or fewer speakers are detected.
		*/
		speakerModeStereo = 0,
		/**
		
		*/
		speakerSurround31 = 1,
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
		speakerSurround31 = 1,
		speakerSurround51 = 2,
		speakerSurround71 = 3,
	}
	/**
	Adds and removes buses to make the number of buses match `amount`.
	*/
	void setBusCount(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBusCount, _godot_object, amount);
	}
	/**
	Returns the number of available buses.
	*/
	long getBusCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBusCount, _godot_object);
	}
	/**
	Removes the bus at index `index`.
	*/
	void removeBus(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeBus, _godot_object, index);
	}
	/**
	Adds a bus at `at_position`.
	*/
	void addBus(in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addBus, _godot_object, at_position);
	}
	/**
	Moves the bus from index `index` to index `to_index`.
	*/
	void moveBus(in long index, in long to_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.moveBus, _godot_object, index, to_index);
	}
	/**
	Sets the name of the bus at index `bus_idx` to `name`.
	*/
	void setBusName(in long bus_idx, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBusName, _godot_object, bus_idx, name);
	}
	/**
	Returns the name of the bus with the index `bus_idx`.
	*/
	String getBusName(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBusName, _godot_object, bus_idx);
	}
	/**
	Returns the index of the bus with the name `bus_name`.
	*/
	long getBusIndex(in String bus_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBusIndex, _godot_object, bus_name);
	}
	/**
	Returns the amount of channels of the bus at index `bus_idx`.
	*/
	long getBusChannels(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBusChannels, _godot_object, bus_idx);
	}
	/**
	Sets the volume of the bus at index `bus_idx` to `volume_db`.
	*/
	void setBusVolumeDb(in long bus_idx, in double volume_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBusVolumeDb, _godot_object, bus_idx, volume_db);
	}
	/**
	Returns the volume of the bus at index `bus_idx` in dB.
	*/
	double getBusVolumeDb(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBusVolumeDb, _godot_object, bus_idx);
	}
	/**
	Connects the output of the bus at `bus_idx` to the bus named `send`.
	*/
	void setBusSend(in long bus_idx, in String send)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBusSend, _godot_object, bus_idx, send);
	}
	/**
	Returns the name of the bus that the bus at index `bus_idx` sends to.
	*/
	String getBusSend(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBusSend, _godot_object, bus_idx);
	}
	/**
	If `true`, the bus at index `bus_idx` is in solo mode.
	*/
	void setBusSolo(in long bus_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBusSolo, _godot_object, bus_idx, enable);
	}
	/**
	If `true`, the bus at index `bus_idx` is in solo mode.
	*/
	bool isBusSolo(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBusSolo, _godot_object, bus_idx);
	}
	/**
	If `true`, the bus at index `bus_idx` is muted.
	*/
	void setBusMute(in long bus_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBusMute, _godot_object, bus_idx, enable);
	}
	/**
	If `true`, the bus at index `bus_idx` is muted.
	*/
	bool isBusMute(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBusMute, _godot_object, bus_idx);
	}
	/**
	If `true`, the bus at index `bus_idx` is bypassing effects.
	*/
	void setBusBypassEffects(in long bus_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBusBypassEffects, _godot_object, bus_idx, enable);
	}
	/**
	If `true`, the bus at index `bus_idx` is bypassing effects.
	*/
	bool isBusBypassingEffects(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBusBypassingEffects, _godot_object, bus_idx);
	}
	/**
	Adds an $(D AudioEffect) effect to the bus `bus_idx` at `at_position`.
	*/
	void addBusEffect(in long bus_idx, AudioEffect effect, in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addBusEffect, _godot_object, bus_idx, effect, at_position);
	}
	/**
	Removes the effect at index `effect_idx` from the bus at index `bus_idx`.
	*/
	void removeBusEffect(in long bus_idx, in long effect_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeBusEffect, _godot_object, bus_idx, effect_idx);
	}
	/**
	Returns the number of effects on the bus at `bus_idx`.
	*/
	long getBusEffectCount(in long bus_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBusEffectCount, _godot_object, bus_idx);
	}
	/**
	Returns the $(D AudioEffect) at position `effect_idx` in bus `bus_idx`.
	*/
	Ref!AudioEffect getBusEffect(in long bus_idx, in long effect_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffect)(_classBinding.getBusEffect, _godot_object, bus_idx, effect_idx);
	}
	/**
	
	*/
	Ref!AudioEffectInstance getBusEffectInstance(in long bus_idx, in long effect_idx, in long channel = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffectInstance)(_classBinding.getBusEffectInstance, _godot_object, bus_idx, effect_idx, channel);
	}
	/**
	Swaps the position of two effects in bus `bus_idx`.
	*/
	void swapBusEffects(in long bus_idx, in long effect_idx, in long by_effect_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.swapBusEffects, _godot_object, bus_idx, effect_idx, by_effect_idx);
	}
	/**
	If `true`, the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.
	*/
	void setBusEffectEnabled(in long bus_idx, in long effect_idx, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBusEffectEnabled, _godot_object, bus_idx, effect_idx, enabled);
	}
	/**
	If `true`, the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.
	*/
	bool isBusEffectEnabled(in long bus_idx, in long effect_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBusEffectEnabled, _godot_object, bus_idx, effect_idx);
	}
	/**
	Returns the peak volume of the left speaker at bus index `bus_idx` and channel index `channel`.
	*/
	double getBusPeakVolumeLeftDb(in long bus_idx, in long channel) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBusPeakVolumeLeftDb, _godot_object, bus_idx, channel);
	}
	/**
	Returns the peak volume of the right speaker at bus index `bus_idx` and channel index `channel`.
	*/
	double getBusPeakVolumeRightDb(in long bus_idx, in long channel) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBusPeakVolumeRightDb, _godot_object, bus_idx, channel);
	}
	/**
	Locks the audio drivers mainloop. Remember to unlock it afterwards.
	*/
	void lock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lock, _godot_object);
	}
	/**
	Unlocks the audiodriver's main loop. After locking it always unlock it.
	*/
	void unlock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unlock, _godot_object);
	}
	/**
	Returns the speaker configuration.
	*/
	AudioServer.SpeakerMode getSpeakerMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioServer.SpeakerMode)(_classBinding.getSpeakerMode, _godot_object);
	}
	/**
	Returns the sample rate at the output of the audioserver.
	*/
	double getMixRate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMixRate, _godot_object);
	}
	/**
	
	*/
	Array getDeviceList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getDeviceList, _godot_object);
	}
	/**
	
	*/
	String getDevice()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getDevice, _godot_object);
	}
	/**
	
	*/
	void setDevice(in String device)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDevice, _godot_object, device);
	}
	/**
	
	*/
	Array captureGetDeviceList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.captureGetDeviceList, _godot_object);
	}
	/**
	
	*/
	String captureGetDevice()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.captureGetDevice, _godot_object);
	}
	/**
	
	*/
	void captureSetDevice(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.captureSetDevice, _godot_object, name);
	}
	/**
	Overwrites the currently used $(D AudioBusLayout).
	*/
	void setBusLayout(AudioBusLayout bus_layout)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBusLayout, _godot_object, bus_layout);
	}
	/**
	Generates an $(D AudioBusLayout) using the available buses and effects.
	*/
	Ref!AudioBusLayout generateBusLayout() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioBusLayout)(_classBinding.generateBusLayout, _godot_object);
	}
}
/// Returns: the AudioServerSingleton
@property @nogc nothrow pragma(inline, true)
AudioServerSingleton AudioServer()
{
	checkClassBinding!AudioServerSingleton();
	return AudioServerSingleton(AudioServerSingleton._classBinding._singleton);
}
