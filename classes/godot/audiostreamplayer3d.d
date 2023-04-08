/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamplayer3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.audiostream;
import godot.audiostreamplayback;
/**

*/
@GodotBaseClass struct AudioStreamPlayer3D
{
	package(godot) enum string _GODOT_internal_name = "AudioStreamPlayer3D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_bus_layout_changed") GodotMethod!(void) _busLayoutChanged;
		@GodotName("_is_active") GodotMethod!(bool) _isActive;
		@GodotName("_set_playing") GodotMethod!(void, bool) _setPlaying;
		@GodotName("get_area_mask") GodotMethod!(long) getAreaMask;
		@GodotName("get_attenuation_filter_cutoff_hz") GodotMethod!(double) getAttenuationFilterCutoffHz;
		@GodotName("get_attenuation_filter_db") GodotMethod!(double) getAttenuationFilterDb;
		@GodotName("get_attenuation_model") GodotMethod!(AudioStreamPlayer3D.AttenuationModel) getAttenuationModel;
		@GodotName("get_bus") GodotMethod!(String) getBus;
		@GodotName("get_doppler_tracking") GodotMethod!(AudioStreamPlayer3D.DopplerTracking) getDopplerTracking;
		@GodotName("get_emission_angle") GodotMethod!(double) getEmissionAngle;
		@GodotName("get_emission_angle_filter_attenuation_db") GodotMethod!(double) getEmissionAngleFilterAttenuationDb;
		@GodotName("get_max_db") GodotMethod!(double) getMaxDb;
		@GodotName("get_max_distance") GodotMethod!(double) getMaxDistance;
		@GodotName("get_out_of_range_mode") GodotMethod!(AudioStreamPlayer3D.OutOfRangeMode) getOutOfRangeMode;
		@GodotName("get_pitch_scale") GodotMethod!(double) getPitchScale;
		@GodotName("get_playback_position") GodotMethod!(double) getPlaybackPosition;
		@GodotName("get_stream") GodotMethod!(AudioStream) getStream;
		@GodotName("get_stream_paused") GodotMethod!(bool) getStreamPaused;
		@GodotName("get_stream_playback") GodotMethod!(AudioStreamPlayback) getStreamPlayback;
		@GodotName("get_unit_db") GodotMethod!(double) getUnitDb;
		@GodotName("get_unit_size") GodotMethod!(double) getUnitSize;
		@GodotName("is_autoplay_enabled") GodotMethod!(bool) isAutoplayEnabled;
		@GodotName("is_emission_angle_enabled") GodotMethod!(bool) isEmissionAngleEnabled;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("play") GodotMethod!(void, double) play;
		@GodotName("seek") GodotMethod!(void, double) seek;
		@GodotName("set_area_mask") GodotMethod!(void, long) setAreaMask;
		@GodotName("set_attenuation_filter_cutoff_hz") GodotMethod!(void, double) setAttenuationFilterCutoffHz;
		@GodotName("set_attenuation_filter_db") GodotMethod!(void, double) setAttenuationFilterDb;
		@GodotName("set_attenuation_model") GodotMethod!(void, long) setAttenuationModel;
		@GodotName("set_autoplay") GodotMethod!(void, bool) setAutoplay;
		@GodotName("set_bus") GodotMethod!(void, String) setBus;
		@GodotName("set_doppler_tracking") GodotMethod!(void, long) setDopplerTracking;
		@GodotName("set_emission_angle") GodotMethod!(void, double) setEmissionAngle;
		@GodotName("set_emission_angle_enabled") GodotMethod!(void, bool) setEmissionAngleEnabled;
		@GodotName("set_emission_angle_filter_attenuation_db") GodotMethod!(void, double) setEmissionAngleFilterAttenuationDb;
		@GodotName("set_max_db") GodotMethod!(void, double) setMaxDb;
		@GodotName("set_max_distance") GodotMethod!(void, double) setMaxDistance;
		@GodotName("set_out_of_range_mode") GodotMethod!(void, long) setOutOfRangeMode;
		@GodotName("set_pitch_scale") GodotMethod!(void, double) setPitchScale;
		@GodotName("set_stream") GodotMethod!(void, AudioStream) setStream;
		@GodotName("set_stream_paused") GodotMethod!(void, bool) setStreamPaused;
		@GodotName("set_unit_db") GodotMethod!(void, double) setUnitDb;
		@GodotName("set_unit_size") GodotMethod!(void, double) setUnitSize;
		@GodotName("stop") GodotMethod!(void) stop;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioStreamPlayer3D other) const
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
	/// Construct a new instance of AudioStreamPlayer3D.
	/// Note: use `memnew!AudioStreamPlayer3D` instead.
	static AudioStreamPlayer3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamPlayer3D");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamPlayer3D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum AttenuationModel : int
	{
		/** */
		attenuationInverseDistance = 0,
		/** */
		attenuationInverseSquareDistance = 1,
		/** */
		attenuationLogarithmic = 2,
		/** */
		attenuationDisabled = 3,
	}
	/// 
	enum OutOfRangeMode : int
	{
		/** */
		outOfRangeMix = 0,
		/** */
		outOfRangePause = 1,
	}
	/// 
	enum DopplerTracking : int
	{
		/** */
		dopplerTrackingDisabled = 0,
		/** */
		dopplerTrackingIdleStep = 1,
		/** */
		dopplerTrackingPhysicsStep = 2,
	}
	/// 
	enum Constants : int
	{
		outOfRangeMix = 0,
		dopplerTrackingDisabled = 0,
		attenuationInverseDistance = 0,
		dopplerTrackingIdleStep = 1,
		attenuationInverseSquareDistance = 1,
		outOfRangePause = 1,
		attenuationLogarithmic = 2,
		dopplerTrackingPhysicsStep = 2,
		attenuationDisabled = 3,
	}
	/**
	
	*/
	void _busLayoutChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_bus_layout_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool _isActive() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_is_active");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _setPlaying(in bool enable)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(enable);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long getAreaMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAreaMask, _godot_object);
	}
	/**
	
	*/
	double getAttenuationFilterCutoffHz() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAttenuationFilterCutoffHz, _godot_object);
	}
	/**
	
	*/
	double getAttenuationFilterDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAttenuationFilterDb, _godot_object);
	}
	/**
	
	*/
	AudioStreamPlayer3D.AttenuationModel getAttenuationModel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayer3D.AttenuationModel)(GDNativeClassBinding.getAttenuationModel, _godot_object);
	}
	/**
	
	*/
	String getBus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBus, _godot_object);
	}
	/**
	
	*/
	AudioStreamPlayer3D.DopplerTracking getDopplerTracking() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayer3D.DopplerTracking)(GDNativeClassBinding.getDopplerTracking, _godot_object);
	}
	/**
	
	*/
	double getEmissionAngle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEmissionAngle, _godot_object);
	}
	/**
	
	*/
	double getEmissionAngleFilterAttenuationDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEmissionAngleFilterAttenuationDb, _godot_object);
	}
	/**
	
	*/
	double getMaxDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMaxDb, _godot_object);
	}
	/**
	
	*/
	double getMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMaxDistance, _godot_object);
	}
	/**
	
	*/
	AudioStreamPlayer3D.OutOfRangeMode getOutOfRangeMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayer3D.OutOfRangeMode)(GDNativeClassBinding.getOutOfRangeMode, _godot_object);
	}
	/**
	
	*/
	double getPitchScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPitchScale, _godot_object);
	}
	/**
	
	*/
	double getPlaybackPosition()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPlaybackPosition, _godot_object);
	}
	/**
	
	*/
	Ref!AudioStream getStream() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStream)(GDNativeClassBinding.getStream, _godot_object);
	}
	/**
	
	*/
	bool getStreamPaused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getStreamPaused, _godot_object);
	}
	/**
	
	*/
	Ref!AudioStreamPlayback getStreamPlayback()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayback)(GDNativeClassBinding.getStreamPlayback, _godot_object);
	}
	/**
	
	*/
	double getUnitDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getUnitDb, _godot_object);
	}
	/**
	
	*/
	double getUnitSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getUnitSize, _godot_object);
	}
	/**
	
	*/
	bool isAutoplayEnabled()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAutoplayEnabled, _godot_object);
	}
	/**
	
	*/
	bool isEmissionAngleEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEmissionAngleEnabled, _godot_object);
	}
	/**
	
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPlaying, _godot_object);
	}
	/**
	
	*/
	void play(in double from_position = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.play, _godot_object, from_position);
	}
	/**
	
	*/
	void seek(in double to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.seek, _godot_object, to_position);
	}
	/**
	
	*/
	void setAreaMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAreaMask, _godot_object, mask);
	}
	/**
	
	*/
	void setAttenuationFilterCutoffHz(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAttenuationFilterCutoffHz, _godot_object, degrees);
	}
	/**
	
	*/
	void setAttenuationFilterDb(in double db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAttenuationFilterDb, _godot_object, db);
	}
	/**
	
	*/
	void setAttenuationModel(in long model)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAttenuationModel, _godot_object, model);
	}
	/**
	
	*/
	void setAutoplay(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutoplay, _godot_object, enable);
	}
	/**
	
	*/
	void setBus(in String bus)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBus, _godot_object, bus);
	}
	/**
	
	*/
	void setDopplerTracking(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDopplerTracking, _godot_object, mode);
	}
	/**
	
	*/
	void setEmissionAngle(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionAngle, _godot_object, degrees);
	}
	/**
	
	*/
	void setEmissionAngleEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionAngleEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setEmissionAngleFilterAttenuationDb(in double db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEmissionAngleFilterAttenuationDb, _godot_object, db);
	}
	/**
	
	*/
	void setMaxDb(in double max_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxDb, _godot_object, max_db);
	}
	/**
	
	*/
	void setMaxDistance(in double metres)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxDistance, _godot_object, metres);
	}
	/**
	
	*/
	void setOutOfRangeMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutOfRangeMode, _godot_object, mode);
	}
	/**
	
	*/
	void setPitchScale(in double pitch_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPitchScale, _godot_object, pitch_scale);
	}
	/**
	
	*/
	void setStream(AudioStream stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStream, _godot_object, stream);
	}
	/**
	
	*/
	void setStreamPaused(in bool pause)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStreamPaused, _godot_object, pause);
	}
	/**
	
	*/
	void setUnitDb(in double unit_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUnitDb, _godot_object, unit_db);
	}
	/**
	
	*/
	void setUnitSize(in double unit_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUnitSize, _godot_object, unit_size);
	}
	/**
	
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	
	*/
	@property long areaMask()
	{
		return getAreaMask();
	}
	/// ditto
	@property void areaMask(long v)
	{
		setAreaMask(v);
	}
	/**
	
	*/
	@property double attenuationFilterCutoffHz()
	{
		return getAttenuationFilterCutoffHz();
	}
	/// ditto
	@property void attenuationFilterCutoffHz(double v)
	{
		setAttenuationFilterCutoffHz(v);
	}
	/**
	
	*/
	@property double attenuationFilterDb()
	{
		return getAttenuationFilterDb();
	}
	/// ditto
	@property void attenuationFilterDb(double v)
	{
		setAttenuationFilterDb(v);
	}
	/**
	
	*/
	@property AudioStreamPlayer3D.AttenuationModel attenuationModel()
	{
		return getAttenuationModel();
	}
	/// ditto
	@property void attenuationModel(long v)
	{
		setAttenuationModel(v);
	}
	/**
	
	*/
	@property bool autoplay()
	{
		return isAutoplayEnabled();
	}
	/// ditto
	@property void autoplay(bool v)
	{
		setAutoplay(v);
	}
	/**
	
	*/
	@property String bus()
	{
		return getBus();
	}
	/// ditto
	@property void bus(String v)
	{
		setBus(v);
	}
	/**
	
	*/
	@property AudioStreamPlayer3D.DopplerTracking dopplerTracking()
	{
		return getDopplerTracking();
	}
	/// ditto
	@property void dopplerTracking(long v)
	{
		setDopplerTracking(v);
	}
	/**
	
	*/
	@property double emissionAngleDegrees()
	{
		return getEmissionAngle();
	}
	/// ditto
	@property void emissionAngleDegrees(double v)
	{
		setEmissionAngle(v);
	}
	/**
	
	*/
	@property bool emissionAngleEnabled()
	{
		return isEmissionAngleEnabled();
	}
	/// ditto
	@property void emissionAngleEnabled(bool v)
	{
		setEmissionAngleEnabled(v);
	}
	/**
	
	*/
	@property double emissionAngleFilterAttenuationDb()
	{
		return getEmissionAngleFilterAttenuationDb();
	}
	/// ditto
	@property void emissionAngleFilterAttenuationDb(double v)
	{
		setEmissionAngleFilterAttenuationDb(v);
	}
	/**
	
	*/
	@property double maxDb()
	{
		return getMaxDb();
	}
	/// ditto
	@property void maxDb(double v)
	{
		setMaxDb(v);
	}
	/**
	
	*/
	@property double maxDistance()
	{
		return getMaxDistance();
	}
	/// ditto
	@property void maxDistance(double v)
	{
		setMaxDistance(v);
	}
	/**
	
	*/
	@property AudioStreamPlayer3D.OutOfRangeMode outOfRangeMode()
	{
		return getOutOfRangeMode();
	}
	/// ditto
	@property void outOfRangeMode(long v)
	{
		setOutOfRangeMode(v);
	}
	/**
	
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
	/**
	
	*/
	@property bool playing()
	{
		return isPlaying();
	}
	/// ditto
	@property void playing(bool v)
	{
		_setPlaying(v);
	}
	/**
	
	*/
	@property AudioStream stream()
	{
		return getStream();
	}
	/// ditto
	@property void stream(AudioStream v)
	{
		setStream(v);
	}
	/**
	
	*/
	@property bool streamPaused()
	{
		return getStreamPaused();
	}
	/// ditto
	@property void streamPaused(bool v)
	{
		setStreamPaused(v);
	}
	/**
	
	*/
	@property double unitDb()
	{
		return getUnitDb();
	}
	/// ditto
	@property void unitDb(double v)
	{
		setUnitDb(v);
	}
	/**
	
	*/
	@property double unitSize()
	{
		return getUnitSize();
	}
	/// ditto
	@property void unitSize(double v)
	{
		setUnitSize(v);
	}
}
