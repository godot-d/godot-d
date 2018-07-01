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
/**
Plays 3D sound in 3D space.

Plays a sound effect with directed sound effects, dampens with distance if needed, generates effect of hearable position in space.
*/
@GodotBaseClass struct AudioStreamPlayer3D
{
	static immutable string _GODOT_internal_name = "AudioStreamPlayer3D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		attenuationInverseDistance = 0,
		outOfRangeMix = 0,
		dopplerTrackingDisabled = 0,
		attenuationInverseSquareDistance = 1,
		dopplerTrackingIdleStep = 1,
		outOfRangePause = 1,
		attenuationLogarithmic = 2,
		dopplerTrackingPhysicsStep = 2,
	}
	package(godot) static GodotMethod!(void, AudioStream) _GODOT_set_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stream") = _GODOT_set_stream;
	/**
	
	*/
	void setStream(AudioStream stream)
	{
		_GODOT_set_stream.bind("AudioStreamPlayer3D", "set_stream");
		ptrcall!(void)(_GODOT_set_stream, _godot_object, stream);
	}
	package(godot) static GodotMethod!(AudioStream) _GODOT_get_stream;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stream") = _GODOT_get_stream;
	/**
	
	*/
	Ref!AudioStream getStream() const
	{
		_GODOT_get_stream.bind("AudioStreamPlayer3D", "get_stream");
		return ptrcall!(AudioStream)(_GODOT_get_stream, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_unit_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unit_db") = _GODOT_set_unit_db;
	/**
	
	*/
	void setUnitDb(in double unit_db)
	{
		_GODOT_set_unit_db.bind("AudioStreamPlayer3D", "set_unit_db");
		ptrcall!(void)(_GODOT_set_unit_db, _godot_object, unit_db);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_unit_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unit_db") = _GODOT_get_unit_db;
	/**
	
	*/
	double getUnitDb() const
	{
		_GODOT_get_unit_db.bind("AudioStreamPlayer3D", "get_unit_db");
		return ptrcall!(double)(_GODOT_get_unit_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_unit_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_unit_size") = _GODOT_set_unit_size;
	/**
	
	*/
	void setUnitSize(in double unit_size)
	{
		_GODOT_set_unit_size.bind("AudioStreamPlayer3D", "set_unit_size");
		ptrcall!(void)(_GODOT_set_unit_size, _godot_object, unit_size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_unit_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_unit_size") = _GODOT_get_unit_size;
	/**
	
	*/
	double getUnitSize() const
	{
		_GODOT_get_unit_size.bind("AudioStreamPlayer3D", "get_unit_size");
		return ptrcall!(double)(_GODOT_get_unit_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_max_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_db") = _GODOT_set_max_db;
	/**
	
	*/
	void setMaxDb(in double max_db)
	{
		_GODOT_set_max_db.bind("AudioStreamPlayer3D", "set_max_db");
		ptrcall!(void)(_GODOT_set_max_db, _godot_object, max_db);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_max_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_db") = _GODOT_get_max_db;
	/**
	
	*/
	double getMaxDb() const
	{
		_GODOT_get_max_db.bind("AudioStreamPlayer3D", "get_max_db");
		return ptrcall!(double)(_GODOT_get_max_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pitch_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pitch_scale") = _GODOT_set_pitch_scale;
	/**
	
	*/
	void setPitchScale(in double pitch_scale)
	{
		_GODOT_set_pitch_scale.bind("AudioStreamPlayer3D", "set_pitch_scale");
		ptrcall!(void)(_GODOT_set_pitch_scale, _godot_object, pitch_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pitch_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pitch_scale") = _GODOT_get_pitch_scale;
	/**
	
	*/
	double getPitchScale() const
	{
		_GODOT_get_pitch_scale.bind("AudioStreamPlayer3D", "get_pitch_scale");
		return ptrcall!(double)(_GODOT_get_pitch_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_play;
	package(godot) alias _GODOT_methodBindInfo(string name : "play") = _GODOT_play;
	/**
	Plays the audio from the given position 'from_position', in seconds.
	*/
	void play(in double from_position = 0)
	{
		_GODOT_play.bind("AudioStreamPlayer3D", "play");
		ptrcall!(void)(_GODOT_play, _godot_object, from_position);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	/**
	Sets the position from which audio will be played, in seconds.
	*/
	void seek(in double to_position)
	{
		_GODOT_seek.bind("AudioStreamPlayer3D", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(void) _GODOT_stop;
	package(godot) alias _GODOT_methodBindInfo(string name : "stop") = _GODOT_stop;
	/**
	Stops the audio.
	*/
	void stop()
	{
		_GODOT_stop.bind("AudioStreamPlayer3D", "stop");
		ptrcall!(void)(_GODOT_stop, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_playing") = _GODOT_is_playing;
	/**
	
	*/
	bool isPlaying() const
	{
		_GODOT_is_playing.bind("AudioStreamPlayer3D", "is_playing");
		return ptrcall!(bool)(_GODOT_is_playing, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_playback_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_playback_position") = _GODOT_get_playback_position;
	/**
	Returns the position in the $(D AudioStream).
	*/
	double getPlaybackPosition()
	{
		_GODOT_get_playback_position.bind("AudioStreamPlayer3D", "get_playback_position");
		return ptrcall!(double)(_GODOT_get_playback_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bus") = _GODOT_set_bus;
	/**
	
	*/
	void setBus(StringArg0)(in StringArg0 bus)
	{
		_GODOT_set_bus.bind("AudioStreamPlayer3D", "set_bus");
		ptrcall!(void)(_GODOT_set_bus, _godot_object, bus);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bus;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bus") = _GODOT_get_bus;
	/**
	
	*/
	String getBus() const
	{
		_GODOT_get_bus.bind("AudioStreamPlayer3D", "get_bus");
		return ptrcall!(String)(_GODOT_get_bus, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autoplay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autoplay") = _GODOT_set_autoplay;
	/**
	
	*/
	void setAutoplay(in bool enable)
	{
		_GODOT_set_autoplay.bind("AudioStreamPlayer3D", "set_autoplay");
		ptrcall!(void)(_GODOT_set_autoplay, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_autoplay_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_autoplay_enabled") = _GODOT_is_autoplay_enabled;
	/**
	
	*/
	bool isAutoplayEnabled()
	{
		_GODOT_is_autoplay_enabled.bind("AudioStreamPlayer3D", "is_autoplay_enabled");
		return ptrcall!(bool)(_GODOT_is_autoplay_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_playing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_playing") = _GODOT__set_playing;
	/**
	
	*/
	void _setPlaying(in bool enable)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(enable);
		String _GODOT_method_name = String("_set_playing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT__is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_active") = _GODOT__is_active;
	/**
	
	*/
	bool _isActive() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_active");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_distance") = _GODOT_set_max_distance;
	/**
	
	*/
	void setMaxDistance(in double metres)
	{
		_GODOT_set_max_distance.bind("AudioStreamPlayer3D", "set_max_distance");
		ptrcall!(void)(_GODOT_set_max_distance, _godot_object, metres);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_distance") = _GODOT_get_max_distance;
	/**
	
	*/
	double getMaxDistance() const
	{
		_GODOT_get_max_distance.bind("AudioStreamPlayer3D", "get_max_distance");
		return ptrcall!(double)(_GODOT_get_max_distance, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_area_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_area_mask") = _GODOT_set_area_mask;
	/**
	
	*/
	void setAreaMask(in long mask)
	{
		_GODOT_set_area_mask.bind("AudioStreamPlayer3D", "set_area_mask");
		ptrcall!(void)(_GODOT_set_area_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_area_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_area_mask") = _GODOT_get_area_mask;
	/**
	
	*/
	long getAreaMask() const
	{
		_GODOT_get_area_mask.bind("AudioStreamPlayer3D", "get_area_mask");
		return ptrcall!(long)(_GODOT_get_area_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_emission_angle;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_angle") = _GODOT_set_emission_angle;
	/**
	
	*/
	void setEmissionAngle(in double degrees)
	{
		_GODOT_set_emission_angle.bind("AudioStreamPlayer3D", "set_emission_angle");
		ptrcall!(void)(_GODOT_set_emission_angle, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_emission_angle;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_angle") = _GODOT_get_emission_angle;
	/**
	
	*/
	double getEmissionAngle() const
	{
		_GODOT_get_emission_angle.bind("AudioStreamPlayer3D", "get_emission_angle");
		return ptrcall!(double)(_GODOT_get_emission_angle, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_emission_angle_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_angle_enabled") = _GODOT_set_emission_angle_enabled;
	/**
	
	*/
	void setEmissionAngleEnabled(in bool enabled)
	{
		_GODOT_set_emission_angle_enabled.bind("AudioStreamPlayer3D", "set_emission_angle_enabled");
		ptrcall!(void)(_GODOT_set_emission_angle_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_emission_angle_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_emission_angle_enabled") = _GODOT_is_emission_angle_enabled;
	/**
	
	*/
	bool isEmissionAngleEnabled() const
	{
		_GODOT_is_emission_angle_enabled.bind("AudioStreamPlayer3D", "is_emission_angle_enabled");
		return ptrcall!(bool)(_GODOT_is_emission_angle_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_emission_angle_filter_attenuation_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_emission_angle_filter_attenuation_db") = _GODOT_set_emission_angle_filter_attenuation_db;
	/**
	
	*/
	void setEmissionAngleFilterAttenuationDb(in double db)
	{
		_GODOT_set_emission_angle_filter_attenuation_db.bind("AudioStreamPlayer3D", "set_emission_angle_filter_attenuation_db");
		ptrcall!(void)(_GODOT_set_emission_angle_filter_attenuation_db, _godot_object, db);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_emission_angle_filter_attenuation_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_emission_angle_filter_attenuation_db") = _GODOT_get_emission_angle_filter_attenuation_db;
	/**
	
	*/
	double getEmissionAngleFilterAttenuationDb() const
	{
		_GODOT_get_emission_angle_filter_attenuation_db.bind("AudioStreamPlayer3D", "get_emission_angle_filter_attenuation_db");
		return ptrcall!(double)(_GODOT_get_emission_angle_filter_attenuation_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_attenuation_filter_cutoff_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attenuation_filter_cutoff_hz") = _GODOT_set_attenuation_filter_cutoff_hz;
	/**
	
	*/
	void setAttenuationFilterCutoffHz(in double degrees)
	{
		_GODOT_set_attenuation_filter_cutoff_hz.bind("AudioStreamPlayer3D", "set_attenuation_filter_cutoff_hz");
		ptrcall!(void)(_GODOT_set_attenuation_filter_cutoff_hz, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_attenuation_filter_cutoff_hz;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attenuation_filter_cutoff_hz") = _GODOT_get_attenuation_filter_cutoff_hz;
	/**
	
	*/
	double getAttenuationFilterCutoffHz() const
	{
		_GODOT_get_attenuation_filter_cutoff_hz.bind("AudioStreamPlayer3D", "get_attenuation_filter_cutoff_hz");
		return ptrcall!(double)(_GODOT_get_attenuation_filter_cutoff_hz, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_attenuation_filter_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attenuation_filter_db") = _GODOT_set_attenuation_filter_db;
	/**
	
	*/
	void setAttenuationFilterDb(in double db)
	{
		_GODOT_set_attenuation_filter_db.bind("AudioStreamPlayer3D", "set_attenuation_filter_db");
		ptrcall!(void)(_GODOT_set_attenuation_filter_db, _godot_object, db);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_attenuation_filter_db;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attenuation_filter_db") = _GODOT_get_attenuation_filter_db;
	/**
	
	*/
	double getAttenuationFilterDb() const
	{
		_GODOT_get_attenuation_filter_db.bind("AudioStreamPlayer3D", "get_attenuation_filter_db");
		return ptrcall!(double)(_GODOT_get_attenuation_filter_db, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_attenuation_model;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attenuation_model") = _GODOT_set_attenuation_model;
	/**
	
	*/
	void setAttenuationModel(in long model)
	{
		_GODOT_set_attenuation_model.bind("AudioStreamPlayer3D", "set_attenuation_model");
		ptrcall!(void)(_GODOT_set_attenuation_model, _godot_object, model);
	}
	package(godot) static GodotMethod!(AudioStreamPlayer3D.AttenuationModel) _GODOT_get_attenuation_model;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attenuation_model") = _GODOT_get_attenuation_model;
	/**
	
	*/
	AudioStreamPlayer3D.AttenuationModel getAttenuationModel() const
	{
		_GODOT_get_attenuation_model.bind("AudioStreamPlayer3D", "get_attenuation_model");
		return ptrcall!(AudioStreamPlayer3D.AttenuationModel)(_GODOT_get_attenuation_model, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_out_of_range_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_out_of_range_mode") = _GODOT_set_out_of_range_mode;
	/**
	
	*/
	void setOutOfRangeMode(in long mode)
	{
		_GODOT_set_out_of_range_mode.bind("AudioStreamPlayer3D", "set_out_of_range_mode");
		ptrcall!(void)(_GODOT_set_out_of_range_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AudioStreamPlayer3D.OutOfRangeMode) _GODOT_get_out_of_range_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_out_of_range_mode") = _GODOT_get_out_of_range_mode;
	/**
	
	*/
	AudioStreamPlayer3D.OutOfRangeMode getOutOfRangeMode() const
	{
		_GODOT_get_out_of_range_mode.bind("AudioStreamPlayer3D", "get_out_of_range_mode");
		return ptrcall!(AudioStreamPlayer3D.OutOfRangeMode)(_GODOT_get_out_of_range_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_doppler_tracking;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_doppler_tracking") = _GODOT_set_doppler_tracking;
	/**
	
	*/
	void setDopplerTracking(in long mode)
	{
		_GODOT_set_doppler_tracking.bind("AudioStreamPlayer3D", "set_doppler_tracking");
		ptrcall!(void)(_GODOT_set_doppler_tracking, _godot_object, mode);
	}
	package(godot) static GodotMethod!(AudioStreamPlayer3D.DopplerTracking) _GODOT_get_doppler_tracking;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_doppler_tracking") = _GODOT_get_doppler_tracking;
	/**
	
	*/
	AudioStreamPlayer3D.DopplerTracking getDopplerTracking() const
	{
		_GODOT_get_doppler_tracking.bind("AudioStreamPlayer3D", "get_doppler_tracking");
		return ptrcall!(AudioStreamPlayer3D.DopplerTracking)(_GODOT_get_doppler_tracking, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__bus_layout_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_bus_layout_changed") = _GODOT__bus_layout_changed;
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
	Decides if audio should get quieter with distance linearly, quadratically or logarithmically.
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
	If `true` audio plays when added to scene tree. Default value: `false`.
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
	If `true` the audio should be dampened according to the direction of the sound.
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
