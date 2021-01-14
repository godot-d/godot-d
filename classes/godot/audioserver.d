/**
Server interface for low-level audio access.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.audioeffect;
import godot.audiobuslayout;
import godot.audioeffectinstance;
/**
Server interface for low-level audio access.

$(D AudioServer) is a low-level server interface for audio access. It is in charge of creating sample data (playable audio) as well as its playback via a voice interface.
*/
@GodotBaseClass struct AudioServerSingleton
{
	package(godot) enum string _GODOT_internal_name = "AudioServer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "AudioServer";
		@GodotName("add_bus") GodotMethod!(void, long) addBus;
		@GodotName("add_bus_effect") GodotMethod!(void, long, AudioEffect, long) addBusEffect;
		@GodotName("capture_get_device") GodotMethod!(String) captureGetDevice;
		@GodotName("capture_get_device_list") GodotMethod!(Array) captureGetDeviceList;
		@GodotName("capture_set_device") GodotMethod!(void, String) captureSetDevice;
		@GodotName("generate_bus_layout") GodotMethod!(AudioBusLayout) generateBusLayout;
		@GodotName("get_bus_channels") GodotMethod!(long, long) getBusChannels;
		@GodotName("get_bus_count") GodotMethod!(long) getBusCount;
		@GodotName("get_bus_effect") GodotMethod!(AudioEffect, long, long) getBusEffect;
		@GodotName("get_bus_effect_count") GodotMethod!(long, long) getBusEffectCount;
		@GodotName("get_bus_effect_instance") GodotMethod!(AudioEffectInstance, long, long, long) getBusEffectInstance;
		@GodotName("get_bus_index") GodotMethod!(long, String) getBusIndex;
		@GodotName("get_bus_name") GodotMethod!(String, long) getBusName;
		@GodotName("get_bus_peak_volume_left_db") GodotMethod!(double, long, long) getBusPeakVolumeLeftDb;
		@GodotName("get_bus_peak_volume_right_db") GodotMethod!(double, long, long) getBusPeakVolumeRightDb;
		@GodotName("get_bus_send") GodotMethod!(String, long) getBusSend;
		@GodotName("get_bus_volume_db") GodotMethod!(double, long) getBusVolumeDb;
		@GodotName("get_device") GodotMethod!(String) getDevice;
		@GodotName("get_device_list") GodotMethod!(Array) getDeviceList;
		@GodotName("get_global_rate_scale") GodotMethod!(double) getGlobalRateScale;
		@GodotName("get_mix_rate") GodotMethod!(double) getMixRate;
		@GodotName("get_output_latency") GodotMethod!(double) getOutputLatency;
		@GodotName("get_speaker_mode") GodotMethod!(AudioServer.SpeakerMode) getSpeakerMode;
		@GodotName("get_time_since_last_mix") GodotMethod!(double) getTimeSinceLastMix;
		@GodotName("get_time_to_next_mix") GodotMethod!(double) getTimeToNextMix;
		@GodotName("is_bus_bypassing_effects") GodotMethod!(bool, long) isBusBypassingEffects;
		@GodotName("is_bus_effect_enabled") GodotMethod!(bool, long, long) isBusEffectEnabled;
		@GodotName("is_bus_mute") GodotMethod!(bool, long) isBusMute;
		@GodotName("is_bus_solo") GodotMethod!(bool, long) isBusSolo;
		@GodotName("lock") GodotMethod!(void) lock;
		@GodotName("move_bus") GodotMethod!(void, long, long) moveBus;
		@GodotName("remove_bus") GodotMethod!(void, long) removeBus;
		@GodotName("remove_bus_effect") GodotMethod!(void, long, long) removeBusEffect;
		@GodotName("set_bus_bypass_effects") GodotMethod!(void, long, bool) setBusBypassEffects;
		@GodotName("set_bus_count") GodotMethod!(void, long) setBusCount;
		@GodotName("set_bus_effect_enabled") GodotMethod!(void, long, long, bool) setBusEffectEnabled;
		@GodotName("set_bus_layout") GodotMethod!(void, AudioBusLayout) setBusLayout;
		@GodotName("set_bus_mute") GodotMethod!(void, long, bool) setBusMute;
		@GodotName("set_bus_name") GodotMethod!(void, long, String) setBusName;
		@GodotName("set_bus_send") GodotMethod!(void, long, String) setBusSend;
		@GodotName("set_bus_solo") GodotMethod!(void, long, bool) setBusSolo;
		@GodotName("set_bus_volume_db") GodotMethod!(void, long, double) setBusVolumeDb;
		@GodotName("set_device") GodotMethod!(void, String) setDevice;
		@GodotName("set_global_rate_scale") GodotMethod!(void, double) setGlobalRateScale;
		@GodotName("swap_bus_effects") GodotMethod!(void, long, long, long) swapBusEffects;
		@GodotName("unlock") GodotMethod!(void) unlock;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioServerSingleton other) const
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
	/// Construct a new instance of AudioServerSingleton.
	/// Note: use `memnew!AudioServerSingleton` instead.
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
		Two or fewer speakers were detected.
		*/
		speakerModeStereo = 0,
		/**
		A 3.1 channel surround setup was detected.
		*/
		speakerSurround31 = 1,
		/**
		A 5.1 channel surround setup was detected.
		*/
		speakerSurround51 = 2,
		/**
		A 7.1 channel surround setup was detected.
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
	Adds a bus at `at_position`.
	*/
	void addBus(in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBus, _godot_object, at_position);
	}
	/**
	Adds an $(D AudioEffect) effect to the bus `bus_idx` at `at_position`.
	*/
	void addBusEffect(in long bus_idx, AudioEffect effect, in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBusEffect, _godot_object, bus_idx, effect, at_position);
	}
	/**
	Name of the current device for audio input (see $(D captureGetDeviceList)).
	*/
	String captureGetDevice()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.captureGetDevice, _godot_object);
	}
	/**
	Returns the names of all audio input devices detected on the system.
	*/
	Array captureGetDeviceList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.captureGetDeviceList, _godot_object);
	}
	/**
	Sets which audio input device is used for audio capture.
	*/
	void captureSetDevice(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.captureSetDevice, _godot_object, name);
	}
	/**
	Generates an $(D AudioBusLayout) using the available buses and effects.
	*/
	Ref!AudioBusLayout generateBusLayout() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioBusLayout)(GDNativeClassBinding.generateBusLayout, _godot_object);
	}
	/**
	Returns the amount of channels of the bus at index `bus_idx`.
	*/
	long getBusChannels(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBusChannels, _godot_object, bus_idx);
	}
	/**
	
	*/
	long getBusCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBusCount, _godot_object);
	}
	/**
	Returns the $(D AudioEffect) at position `effect_idx` in bus `bus_idx`.
	*/
	Ref!AudioEffect getBusEffect(in long bus_idx, in long effect_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffect)(GDNativeClassBinding.getBusEffect, _godot_object, bus_idx, effect_idx);
	}
	/**
	Returns the number of effects on the bus at `bus_idx`.
	*/
	long getBusEffectCount(in long bus_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBusEffectCount, _godot_object, bus_idx);
	}
	/**
	Returns the $(D AudioEffectInstance) assigned to the given bus and effect indices (and optionally channel).
	*/
	Ref!AudioEffectInstance getBusEffectInstance(in long bus_idx, in long effect_idx, in long channel = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffectInstance)(GDNativeClassBinding.getBusEffectInstance, _godot_object, bus_idx, effect_idx, channel);
	}
	/**
	Returns the index of the bus with the name `bus_name`.
	*/
	long getBusIndex(in String bus_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBusIndex, _godot_object, bus_name);
	}
	/**
	Returns the name of the bus with the index `bus_idx`.
	*/
	String getBusName(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBusName, _godot_object, bus_idx);
	}
	/**
	Returns the peak volume of the left speaker at bus index `bus_idx` and channel index `channel`.
	*/
	double getBusPeakVolumeLeftDb(in long bus_idx, in long channel) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBusPeakVolumeLeftDb, _godot_object, bus_idx, channel);
	}
	/**
	Returns the peak volume of the right speaker at bus index `bus_idx` and channel index `channel`.
	*/
	double getBusPeakVolumeRightDb(in long bus_idx, in long channel) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBusPeakVolumeRightDb, _godot_object, bus_idx, channel);
	}
	/**
	Returns the name of the bus that the bus at index `bus_idx` sends to.
	*/
	String getBusSend(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBusSend, _godot_object, bus_idx);
	}
	/**
	Returns the volume of the bus at index `bus_idx` in dB.
	*/
	double getBusVolumeDb(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBusVolumeDb, _godot_object, bus_idx);
	}
	/**
	
	*/
	String getDevice()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDevice, _godot_object);
	}
	/**
	Returns the names of all audio devices detected on the system.
	*/
	Array getDeviceList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getDeviceList, _godot_object);
	}
	/**
	
	*/
	double getGlobalRateScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGlobalRateScale, _godot_object);
	}
	/**
	Returns the sample rate at the output of the $(D AudioServer).
	*/
	double getMixRate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMixRate, _godot_object);
	}
	/**
	Returns the audio driver's output latency.
	*/
	double getOutputLatency() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOutputLatency, _godot_object);
	}
	/**
	Returns the speaker configuration.
	*/
	AudioServer.SpeakerMode getSpeakerMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioServer.SpeakerMode)(GDNativeClassBinding.getSpeakerMode, _godot_object);
	}
	/**
	Returns the relative time since the last mix occurred.
	*/
	double getTimeSinceLastMix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimeSinceLastMix, _godot_object);
	}
	/**
	Returns the relative time until the next mix occurs.
	*/
	double getTimeToNextMix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimeToNextMix, _godot_object);
	}
	/**
	If `true`, the bus at index `bus_idx` is bypassing effects.
	*/
	bool isBusBypassingEffects(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBusBypassingEffects, _godot_object, bus_idx);
	}
	/**
	If `true`, the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.
	*/
	bool isBusEffectEnabled(in long bus_idx, in long effect_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBusEffectEnabled, _godot_object, bus_idx, effect_idx);
	}
	/**
	If `true`, the bus at index `bus_idx` is muted.
	*/
	bool isBusMute(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBusMute, _godot_object, bus_idx);
	}
	/**
	If `true`, the bus at index `bus_idx` is in solo mode.
	*/
	bool isBusSolo(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBusSolo, _godot_object, bus_idx);
	}
	/**
	Locks the audio driver's main loop.
	$(B Note:) Remember to unlock it afterwards.
	*/
	void lock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lock, _godot_object);
	}
	/**
	Moves the bus from index `index` to index `to_index`.
	*/
	void moveBus(in long index, in long to_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveBus, _godot_object, index, to_index);
	}
	/**
	Removes the bus at index `index`.
	*/
	void removeBus(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeBus, _godot_object, index);
	}
	/**
	Removes the effect at index `effect_idx` from the bus at index `bus_idx`.
	*/
	void removeBusEffect(in long bus_idx, in long effect_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeBusEffect, _godot_object, bus_idx, effect_idx);
	}
	/**
	If `true`, the bus at index `bus_idx` is bypassing effects.
	*/
	void setBusBypassEffects(in long bus_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusBypassEffects, _godot_object, bus_idx, enable);
	}
	/**
	
	*/
	void setBusCount(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusCount, _godot_object, amount);
	}
	/**
	If `true`, the effect at index `effect_idx` on the bus at index `bus_idx` is enabled.
	*/
	void setBusEffectEnabled(in long bus_idx, in long effect_idx, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusEffectEnabled, _godot_object, bus_idx, effect_idx, enabled);
	}
	/**
	Overwrites the currently used $(D AudioBusLayout).
	*/
	void setBusLayout(AudioBusLayout bus_layout)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusLayout, _godot_object, bus_layout);
	}
	/**
	If `true`, the bus at index `bus_idx` is muted.
	*/
	void setBusMute(in long bus_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusMute, _godot_object, bus_idx, enable);
	}
	/**
	Sets the name of the bus at index `bus_idx` to `name`.
	*/
	void setBusName(in long bus_idx, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusName, _godot_object, bus_idx, name);
	}
	/**
	Connects the output of the bus at `bus_idx` to the bus named `send`.
	*/
	void setBusSend(in long bus_idx, in String send)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusSend, _godot_object, bus_idx, send);
	}
	/**
	If `true`, the bus at index `bus_idx` is in solo mode.
	*/
	void setBusSolo(in long bus_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusSolo, _godot_object, bus_idx, enable);
	}
	/**
	Sets the volume of the bus at index `bus_idx` to `volume_db`.
	*/
	void setBusVolumeDb(in long bus_idx, in double volume_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusVolumeDb, _godot_object, bus_idx, volume_db);
	}
	/**
	
	*/
	void setDevice(in String device)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDevice, _godot_object, device);
	}
	/**
	
	*/
	void setGlobalRateScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalRateScale, _godot_object, scale);
	}
	/**
	Swaps the position of two effects in bus `bus_idx`.
	*/
	void swapBusEffects(in long bus_idx, in long effect_idx, in long by_effect_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.swapBusEffects, _godot_object, bus_idx, effect_idx, by_effect_idx);
	}
	/**
	Unlocks the audio driver's main loop. (After locking it, you should always unlock it.)
	*/
	void unlock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unlock, _godot_object);
	}
	/**
	Number of available audio buses.
	*/
	@property long busCount()
	{
		return getBusCount();
	}
	/// ditto
	@property void busCount(long v)
	{
		setBusCount(v);
	}
	/**
	Name of the current device for audio output (see $(D getDeviceList)).
	*/
	@property String device()
	{
		return getDevice();
	}
	/// ditto
	@property void device(String v)
	{
		setDevice(v);
	}
	/**
	Scales the rate at which audio is played (i.e. setting it to `0.5` will make the audio be played twice as fast).
	*/
	@property double globalRateScale()
	{
		return getGlobalRateScale();
	}
	/// ditto
	@property void globalRateScale(double v)
	{
		setGlobalRateScale(v);
	}
}
/// Returns: the AudioServerSingleton
@property @nogc nothrow pragma(inline, true)
AudioServerSingleton AudioServer()
{
	checkClassBinding!AudioServerSingleton();
	return AudioServerSingleton(AudioServerSingleton.GDNativeClassBinding._singleton);
}
