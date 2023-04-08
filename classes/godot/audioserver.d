/**


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
import godot.globalenums;
import godot.object;
import godot.audioeffect;
import godot.audiobuslayout;
import godot.audioeffectinstance;
/**

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
		/** */
		speakerModeStereo = 0,
		/** */
		speakerSurround31 = 1,
		/** */
		speakerSurround51 = 2,
		/** */
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
	
	*/
	void addBus(in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBus, _godot_object, at_position);
	}
	/**
	
	*/
	void addBusEffect(in long bus_idx, AudioEffect effect, in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBusEffect, _godot_object, bus_idx, effect, at_position);
	}
	/**
	
	*/
	String captureGetDevice()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.captureGetDevice, _godot_object);
	}
	/**
	
	*/
	Array captureGetDeviceList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.captureGetDeviceList, _godot_object);
	}
	/**
	
	*/
	void captureSetDevice(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.captureSetDevice, _godot_object, name);
	}
	/**
	
	*/
	Ref!AudioBusLayout generateBusLayout() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioBusLayout)(GDNativeClassBinding.generateBusLayout, _godot_object);
	}
	/**
	
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
	
	*/
	Ref!AudioEffect getBusEffect(in long bus_idx, in long effect_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffect)(GDNativeClassBinding.getBusEffect, _godot_object, bus_idx, effect_idx);
	}
	/**
	
	*/
	long getBusEffectCount(in long bus_idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBusEffectCount, _godot_object, bus_idx);
	}
	/**
	
	*/
	Ref!AudioEffectInstance getBusEffectInstance(in long bus_idx, in long effect_idx, in long channel = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioEffectInstance)(GDNativeClassBinding.getBusEffectInstance, _godot_object, bus_idx, effect_idx, channel);
	}
	/**
	
	*/
	long getBusIndex(in String bus_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBusIndex, _godot_object, bus_name);
	}
	/**
	
	*/
	String getBusName(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBusName, _godot_object, bus_idx);
	}
	/**
	
	*/
	double getBusPeakVolumeLeftDb(in long bus_idx, in long channel) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBusPeakVolumeLeftDb, _godot_object, bus_idx, channel);
	}
	/**
	
	*/
	double getBusPeakVolumeRightDb(in long bus_idx, in long channel) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBusPeakVolumeRightDb, _godot_object, bus_idx, channel);
	}
	/**
	
	*/
	String getBusSend(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBusSend, _godot_object, bus_idx);
	}
	/**
	
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
	
	*/
	double getMixRate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMixRate, _godot_object);
	}
	/**
	
	*/
	double getOutputLatency() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOutputLatency, _godot_object);
	}
	/**
	
	*/
	AudioServer.SpeakerMode getSpeakerMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioServer.SpeakerMode)(GDNativeClassBinding.getSpeakerMode, _godot_object);
	}
	/**
	
	*/
	double getTimeSinceLastMix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimeSinceLastMix, _godot_object);
	}
	/**
	
	*/
	double getTimeToNextMix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimeToNextMix, _godot_object);
	}
	/**
	
	*/
	bool isBusBypassingEffects(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBusBypassingEffects, _godot_object, bus_idx);
	}
	/**
	
	*/
	bool isBusEffectEnabled(in long bus_idx, in long effect_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBusEffectEnabled, _godot_object, bus_idx, effect_idx);
	}
	/**
	
	*/
	bool isBusMute(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBusMute, _godot_object, bus_idx);
	}
	/**
	
	*/
	bool isBusSolo(in long bus_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBusSolo, _godot_object, bus_idx);
	}
	/**
	
	*/
	void lock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lock, _godot_object);
	}
	/**
	
	*/
	void moveBus(in long index, in long to_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveBus, _godot_object, index, to_index);
	}
	/**
	
	*/
	void removeBus(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeBus, _godot_object, index);
	}
	/**
	
	*/
	void removeBusEffect(in long bus_idx, in long effect_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeBusEffect, _godot_object, bus_idx, effect_idx);
	}
	/**
	
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
	
	*/
	void setBusEffectEnabled(in long bus_idx, in long effect_idx, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusEffectEnabled, _godot_object, bus_idx, effect_idx, enabled);
	}
	/**
	
	*/
	void setBusLayout(AudioBusLayout bus_layout)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusLayout, _godot_object, bus_layout);
	}
	/**
	
	*/
	void setBusMute(in long bus_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusMute, _godot_object, bus_idx, enable);
	}
	/**
	
	*/
	void setBusName(in long bus_idx, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusName, _godot_object, bus_idx, name);
	}
	/**
	
	*/
	void setBusSend(in long bus_idx, in String send)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusSend, _godot_object, bus_idx, send);
	}
	/**
	
	*/
	void setBusSolo(in long bus_idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBusSolo, _godot_object, bus_idx, enable);
	}
	/**
	
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
	
	*/
	void swapBusEffects(in long bus_idx, in long effect_idx, in long by_effect_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.swapBusEffects, _godot_object, bus_idx, effect_idx, by_effect_idx);
	}
	/**
	
	*/
	void unlock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unlock, _godot_object);
	}
	/**
	
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
	
	*/
	@property String captureDevice()
	{
		return captureGetDevice();
	}
	/// ditto
	@property void captureDevice(String v)
	{
		captureSetDevice(v);
	}
	/**
	
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
