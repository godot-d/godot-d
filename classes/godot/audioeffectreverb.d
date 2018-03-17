/**
Adds a Reverb audio effect to an Audio bus.
Simulates the sound of acoustic environments such as rooms, concert halls, caverns, or an open spaces.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectreverb;
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
/**
Adds a Reverb audio effect to an Audio bus.
Simulates the sound of acoustic environments such as rooms, concert halls, caverns, or an open spaces.

Simulates rooms of different sizes. Its parameters can be adjusted to simulate the sound of a specific room.
*/
@GodotBaseClass struct AudioEffectReverb
{
	static immutable string _GODOT_internal_name = "AudioEffectReverb";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectReverb other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectReverb opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectReverb _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectReverb");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectReverb)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_predelay_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_predelay_msec") = _GODOT_set_predelay_msec;
	/**
	
	*/
	void setPredelayMsec(in double msec)
	{
		_GODOT_set_predelay_msec.bind("AudioEffectReverb", "set_predelay_msec");
		ptrcall!(void)(_GODOT_set_predelay_msec, _godot_object, msec);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_predelay_msec;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_predelay_msec") = _GODOT_get_predelay_msec;
	/**
	
	*/
	double getPredelayMsec() const
	{
		_GODOT_get_predelay_msec.bind("AudioEffectReverb", "get_predelay_msec");
		return ptrcall!(double)(_GODOT_get_predelay_msec, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_predelay_feedback;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_predelay_feedback") = _GODOT_set_predelay_feedback;
	/**
	
	*/
	void setPredelayFeedback(in double feedback)
	{
		_GODOT_set_predelay_feedback.bind("AudioEffectReverb", "set_predelay_feedback");
		ptrcall!(void)(_GODOT_set_predelay_feedback, _godot_object, feedback);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_predelay_feedback;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_predelay_feedback") = _GODOT_get_predelay_feedback;
	/**
	
	*/
	double getPredelayFeedback() const
	{
		_GODOT_get_predelay_feedback.bind("AudioEffectReverb", "get_predelay_feedback");
		return ptrcall!(double)(_GODOT_get_predelay_feedback, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_room_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_room_size") = _GODOT_set_room_size;
	/**
	
	*/
	void setRoomSize(in double size)
	{
		_GODOT_set_room_size.bind("AudioEffectReverb", "set_room_size");
		ptrcall!(void)(_GODOT_set_room_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_room_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_room_size") = _GODOT_get_room_size;
	/**
	
	*/
	double getRoomSize() const
	{
		_GODOT_get_room_size.bind("AudioEffectReverb", "get_room_size");
		return ptrcall!(double)(_GODOT_get_room_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_damping;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_damping") = _GODOT_set_damping;
	/**
	
	*/
	void setDamping(in double amount)
	{
		_GODOT_set_damping.bind("AudioEffectReverb", "set_damping");
		ptrcall!(void)(_GODOT_set_damping, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_damping;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_damping") = _GODOT_get_damping;
	/**
	
	*/
	double getDamping() const
	{
		_GODOT_get_damping.bind("AudioEffectReverb", "get_damping");
		return ptrcall!(double)(_GODOT_get_damping, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_spread;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_spread") = _GODOT_set_spread;
	/**
	
	*/
	void setSpread(in double amount)
	{
		_GODOT_set_spread.bind("AudioEffectReverb", "set_spread");
		ptrcall!(void)(_GODOT_set_spread, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_spread;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_spread") = _GODOT_get_spread;
	/**
	
	*/
	double getSpread() const
	{
		_GODOT_get_spread.bind("AudioEffectReverb", "get_spread");
		return ptrcall!(double)(_GODOT_get_spread, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dry") = _GODOT_set_dry;
	/**
	
	*/
	void setDry(in double amount)
	{
		_GODOT_set_dry.bind("AudioEffectReverb", "set_dry");
		ptrcall!(void)(_GODOT_set_dry, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_dry;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dry") = _GODOT_get_dry;
	/**
	
	*/
	double getDry() const
	{
		_GODOT_get_dry.bind("AudioEffectReverb", "get_dry");
		return ptrcall!(double)(_GODOT_get_dry, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_wet;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_wet") = _GODOT_set_wet;
	/**
	
	*/
	void setWet(in double amount)
	{
		_GODOT_set_wet.bind("AudioEffectReverb", "set_wet");
		ptrcall!(void)(_GODOT_set_wet, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_wet;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_wet") = _GODOT_get_wet;
	/**
	
	*/
	double getWet() const
	{
		_GODOT_get_wet.bind("AudioEffectReverb", "get_wet");
		return ptrcall!(double)(_GODOT_get_wet, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_hpf;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hpf") = _GODOT_set_hpf;
	/**
	
	*/
	void setHpf(in double amount)
	{
		_GODOT_set_hpf.bind("AudioEffectReverb", "set_hpf");
		ptrcall!(void)(_GODOT_set_hpf, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_hpf;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hpf") = _GODOT_get_hpf;
	/**
	
	*/
	double getHpf() const
	{
		_GODOT_get_hpf.bind("AudioEffectReverb", "get_hpf");
		return ptrcall!(double)(_GODOT_get_hpf, _godot_object);
	}
	/**
	Time between the original signal and the early reflections of the reverb signal. Default value: `150ms`.
	*/
	@property double predelayMsec()
	{
		return getPredelayMsec();
	}
	/// ditto
	@property void predelayMsec(double v)
	{
		setPredelayMsec(v);
	}
	/**
	Output percent of predelay. Value can range from 0 to 1. Default value: `1`.
	*/
	@property double predelayFeedback()
	{
		return getPredelayFeedback();
	}
	/// ditto
	@property void predelayFeedback(double v)
	{
		setPredelayFeedback(v);
	}
	/**
	Dimensions of simulated room. Bigger means more echoes. Value can range from 0 to 1. Default value: `0.8`.
	*/
	@property double roomSize()
	{
		return getRoomSize();
	}
	/// ditto
	@property void roomSize(double v)
	{
		setRoomSize(v);
	}
	/**
	Widens or narrows the stereo image of the reverb tail. 1 means fully widens. Value can range from 0 to 1. Default value: `1`.
	*/
	@property double damping()
	{
		return getDamping();
	}
	/// ditto
	@property void damping(double v)
	{
		setDamping(v);
	}
	/**
	Defines how reflective the imaginary room's walls are. Value can range from 0 to 1. Default value: `1`.
	*/
	@property double spread()
	{
		return getSpread();
	}
	/// ditto
	@property void spread(double v)
	{
		setSpread(v);
	}
	/**
	High-pass filter passes signals with a frequency higher than a certain cutoff frequency and attenuates signals with frequencies lower than the cutoff frequency. Value can range from 0 to 1. Default value: `0`.
	*/
	@property double hipass()
	{
		return getHpf();
	}
	/// ditto
	@property void hipass(double v)
	{
		setHpf(v);
	}
	/**
	Output percent of original sound. At 0, only modified sound is outputted. Value can range from 0 to 1. Default value: `1`.
	*/
	@property double dry()
	{
		return getDry();
	}
	/// ditto
	@property void dry(double v)
	{
		setDry(v);
	}
	/**
	Output percent of modified sound. At 0, only original sound is outputted. Value can range from 0 to 1. Default value: `0.5`.
	*/
	@property double wet()
	{
		return getWet();
	}
	/// ditto
	@property void wet(double v)
	{
		setWet(v);
	}
}
