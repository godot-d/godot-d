/**
Plays 3D sound in 3D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamplayer3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.audiostream;
import godot.audiostreamplayback;
import godot.node;
/**
Plays 3D sound in 3D space.

Plays a sound effect with directed sound effects, dampens with distance if needed, generates effect of hearable position in space.
*/
@GodotBaseClass struct AudioStreamPlayer3D
{
	enum string _GODOT_internal_name = "AudioStreamPlayer3D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_stream") GodotMethod!(void, AudioStream) setStream;
		@GodotName("get_stream") GodotMethod!(AudioStream) getStream;
		@GodotName("set_unit_db") GodotMethod!(void, double) setUnitDb;
		@GodotName("get_unit_db") GodotMethod!(double) getUnitDb;
		@GodotName("set_unit_size") GodotMethod!(void, double) setUnitSize;
		@GodotName("get_unit_size") GodotMethod!(double) getUnitSize;
		@GodotName("set_max_db") GodotMethod!(void, double) setMaxDb;
		@GodotName("get_max_db") GodotMethod!(double) getMaxDb;
		@GodotName("set_pitch_scale") GodotMethod!(void, double) setPitchScale;
		@GodotName("get_pitch_scale") GodotMethod!(double) getPitchScale;
		@GodotName("play") GodotMethod!(void, double) play;
		@GodotName("seek") GodotMethod!(void, double) seek;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("get_playback_position") GodotMethod!(double) getPlaybackPosition;
		@GodotName("set_bus") GodotMethod!(void, String) setBus;
		@GodotName("get_bus") GodotMethod!(String) getBus;
		@GodotName("set_autoplay") GodotMethod!(void, bool) setAutoplay;
		@GodotName("is_autoplay_enabled") GodotMethod!(bool) isAutoplayEnabled;
		@GodotName("_set_playing") GodotMethod!(void, bool) _setPlaying;
		@GodotName("_is_active") GodotMethod!(bool) _isActive;
		@GodotName("set_max_distance") GodotMethod!(void, double) setMaxDistance;
		@GodotName("get_max_distance") GodotMethod!(double) getMaxDistance;
		@GodotName("set_area_mask") GodotMethod!(void, long) setAreaMask;
		@GodotName("get_area_mask") GodotMethod!(long) getAreaMask;
		@GodotName("set_emission_angle") GodotMethod!(void, double) setEmissionAngle;
		@GodotName("get_emission_angle") GodotMethod!(double) getEmissionAngle;
		@GodotName("set_emission_angle_enabled") GodotMethod!(void, bool) setEmissionAngleEnabled;
		@GodotName("is_emission_angle_enabled") GodotMethod!(bool) isEmissionAngleEnabled;
		@GodotName("set_emission_angle_filter_attenuation_db") GodotMethod!(void, double) setEmissionAngleFilterAttenuationDb;
		@GodotName("get_emission_angle_filter_attenuation_db") GodotMethod!(double) getEmissionAngleFilterAttenuationDb;
		@GodotName("set_attenuation_filter_cutoff_hz") GodotMethod!(void, double) setAttenuationFilterCutoffHz;
		@GodotName("get_attenuation_filter_cutoff_hz") GodotMethod!(double) getAttenuationFilterCutoffHz;
		@GodotName("set_attenuation_filter_db") GodotMethod!(void, double) setAttenuationFilterDb;
		@GodotName("get_attenuation_filter_db") GodotMethod!(double) getAttenuationFilterDb;
		@GodotName("set_attenuation_model") GodotMethod!(void, long) setAttenuationModel;
		@GodotName("get_attenuation_model") GodotMethod!(AudioStreamPlayer3D.AttenuationModel) getAttenuationModel;
		@GodotName("set_out_of_range_mode") GodotMethod!(void, long) setOutOfRangeMode;
		@GodotName("get_out_of_range_mode") GodotMethod!(AudioStreamPlayer3D.OutOfRangeMode) getOutOfRangeMode;
		@GodotName("set_doppler_tracking") GodotMethod!(void, long) setDopplerTracking;
		@GodotName("get_doppler_tracking") GodotMethod!(AudioStreamPlayer3D.DopplerTracking) getDopplerTracking;
		@GodotName("set_stream_paused") GodotMethod!(void, bool) setStreamPaused;
		@GodotName("get_stream_paused") GodotMethod!(bool) getStreamPaused;
		@GodotName("get_stream_playback") GodotMethod!(AudioStreamPlayback) getStreamPlayback;
		@GodotName("_bus_layout_changed") GodotMethod!(void) _busLayoutChanged;
	}
	bool opEquals(in AudioStreamPlayer3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamPlayer3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		Linear dampening of loudness according to distance.
		*/
		attenuationInverseDistance = 0,
		/**
		Squared dampening of loudness according to distance.
		*/
		attenuationInverseSquareDistance = 1,
		/**
		Logarithmic dampening of loudness according to distance.
		*/
		attenuationLogarithmic = 2,
	}
	/// 
	enum OutOfRangeMode : int
	{
		/**
		Mix this audio in, even when it's out of range.
		*/
		outOfRangeMix = 0,
		/**
		Pause this audio when it gets out of range.
		*/
		outOfRangePause = 1,
	}
	/// 
	enum DopplerTracking : int
	{
		/**
		Disables doppler tracking.
		*/
		dopplerTrackingDisabled = 0,
		/**
		Executes doppler tracking in idle step.
		*/
		dopplerTrackingIdleStep = 1,
		/**
		Executes doppler tracking in physics step.
		*/
		dopplerTrackingPhysicsStep = 2,
	}
	/// 
	enum Constants : int
	{
		outOfRangeMix = 0,
		dopplerTrackingDisabled = 0,
		attenuationInverseDistance = 0,
		dopplerTrackingIdleStep = 1,
		outOfRangePause = 1,
		attenuationInverseSquareDistance = 1,
		attenuationLogarithmic = 2,
		dopplerTrackingPhysicsStep = 2,
	}
	/**
	
	*/
	void setStream(AudioStream stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStream, _godot_object, stream);
	}
	/**
	
	*/
	Ref!AudioStream getStream() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStream)(_classBinding.getStream, _godot_object);
	}
	/**
	
	*/
	void setUnitDb(in double unit_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUnitDb, _godot_object, unit_db);
	}
	/**
	
	*/
	double getUnitDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getUnitDb, _godot_object);
	}
	/**
	
	*/
	void setUnitSize(in double unit_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUnitSize, _godot_object, unit_size);
	}
	/**
	
	*/
	double getUnitSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getUnitSize, _godot_object);
	}
	/**
	
	*/
	void setMaxDb(in double max_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxDb, _godot_object, max_db);
	}
	/**
	
	*/
	double getMaxDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMaxDb, _godot_object);
	}
	/**
	
	*/
	void setPitchScale(in double pitch_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPitchScale, _godot_object, pitch_scale);
	}
	/**
	
	*/
	double getPitchScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPitchScale, _godot_object);
	}
	/**
	Plays the audio from the given position 'from_position', in seconds.
	*/
	void play(in double from_position = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.play, _godot_object, from_position);
	}
	/**
	Sets the position from which audio will be played, in seconds.
	*/
	void seek(in double to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.seek, _godot_object, to_position);
	}
	/**
	Stops the audio.
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
	/**
	
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPlaying, _godot_object);
	}
	/**
	Returns the position in the $(D AudioStream).
	*/
	double getPlaybackPosition()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPlaybackPosition, _godot_object);
	}
	/**
	
	*/
	void setBus(in String bus)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBus, _godot_object, bus);
	}
	/**
	
	*/
	String getBus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBus, _godot_object);
	}
	/**
	
	*/
	void setAutoplay(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutoplay, _godot_object, enable);
	}
	/**
	
	*/
	bool isAutoplayEnabled()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAutoplayEnabled, _godot_object);
	}
	/**
	
	*/
	void _setPlaying(in bool enable)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(enable);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool _isActive() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_active");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void setMaxDistance(in double metres)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxDistance, _godot_object, metres);
	}
	/**
	
	*/
	double getMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMaxDistance, _godot_object);
	}
	/**
	
	*/
	void setAreaMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAreaMask, _godot_object, mask);
	}
	/**
	
	*/
	long getAreaMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAreaMask, _godot_object);
	}
	/**
	
	*/
	void setEmissionAngle(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionAngle, _godot_object, degrees);
	}
	/**
	
	*/
	double getEmissionAngle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEmissionAngle, _godot_object);
	}
	/**
	
	*/
	void setEmissionAngleEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionAngleEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isEmissionAngleEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEmissionAngleEnabled, _godot_object);
	}
	/**
	
	*/
	void setEmissionAngleFilterAttenuationDb(in double db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionAngleFilterAttenuationDb, _godot_object, db);
	}
	/**
	
	*/
	double getEmissionAngleFilterAttenuationDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEmissionAngleFilterAttenuationDb, _godot_object);
	}
	/**
	
	*/
	void setAttenuationFilterCutoffHz(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAttenuationFilterCutoffHz, _godot_object, degrees);
	}
	/**
	
	*/
	double getAttenuationFilterCutoffHz() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAttenuationFilterCutoffHz, _godot_object);
	}
	/**
	
	*/
	void setAttenuationFilterDb(in double db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAttenuationFilterDb, _godot_object, db);
	}
	/**
	
	*/
	double getAttenuationFilterDb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAttenuationFilterDb, _godot_object);
	}
	/**
	
	*/
	void setAttenuationModel(in long model)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAttenuationModel, _godot_object, model);
	}
	/**
	
	*/
	AudioStreamPlayer3D.AttenuationModel getAttenuationModel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayer3D.AttenuationModel)(_classBinding.getAttenuationModel, _godot_object);
	}
	/**
	
	*/
	void setOutOfRangeMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOutOfRangeMode, _godot_object, mode);
	}
	/**
	
	*/
	AudioStreamPlayer3D.OutOfRangeMode getOutOfRangeMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayer3D.OutOfRangeMode)(_classBinding.getOutOfRangeMode, _godot_object);
	}
	/**
	
	*/
	void setDopplerTracking(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDopplerTracking, _godot_object, mode);
	}
	/**
	
	*/
	AudioStreamPlayer3D.DopplerTracking getDopplerTracking() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayer3D.DopplerTracking)(_classBinding.getDopplerTracking, _godot_object);
	}
	/**
	
	*/
	void setStreamPaused(in bool pause)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStreamPaused, _godot_object, pause);
	}
	/**
	
	*/
	bool getStreamPaused() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getStreamPaused, _godot_object);
	}
	/**
	
	*/
	Ref!AudioStreamPlayback getStreamPlayback()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamPlayback)(_classBinding.getStreamPlayback, _godot_object);
	}
	/**
	
	*/
	void _busLayoutChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_bus_layout_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The $(D AudioStream) object to be played.
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
	Decides if audio should get quieter with distance linearly, quadratically, logarithmically, or not be affected by distance, effectively disabling attenuation.
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
	Base sound level unaffected by dampening, in dB.
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
	Factor for the attenuation effect.
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
	/**
	Sets the absolute maximum of the soundlevel, in dB.
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
	Changes the pitch and the tempo of the audio.
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
	If `true`, audio is playing.
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
	If `true`, audio plays when added to scene tree. Default value: `false`.
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
	Sets the distance from which the 'out_of_range_mode' takes effect. Has no effect if set to 0.
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
	Decides if audio should pause when source is outside of 'max_distance' range.
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
	Bus on which this audio is playing.
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
	Areas in which this sound plays.
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
	If `true`, the audio should be dampened according to the direction of the sound.
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
	The angle in which the audio reaches cameras undampened.
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
	dampens audio if camera is outside of 'emission_angle_degrees' and 'emission_angle_enabled' is set by this factor, in dB.
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
	Dampens audio above this frequency, in Hz.
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
	Amount how much the filter affects the loudness, in dB.
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
	Decides in which step the Doppler effect should be calculated.
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
}
