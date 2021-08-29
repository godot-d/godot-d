/**
Adds a reverberation audio effect to an Audio bus.
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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.audioeffect;
import godot.resource;
/**
Adds a reverberation audio effect to an Audio bus.
Simulates the sound of acoustic environments such as rooms, concert halls, caverns, or an open spaces.

Simulates rooms of different sizes. Its parameters can be adjusted to simulate the sound of a specific room.
*/
@GodotBaseClass struct AudioEffectReverb
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectReverb";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_damping") GodotMethod!(double) getDamping;
		@GodotName("get_dry") GodotMethod!(double) getDry;
		@GodotName("get_hpf") GodotMethod!(double) getHpf;
		@GodotName("get_predelay_feedback") GodotMethod!(double) getPredelayFeedback;
		@GodotName("get_predelay_msec") GodotMethod!(double) getPredelayMsec;
		@GodotName("get_room_size") GodotMethod!(double) getRoomSize;
		@GodotName("get_spread") GodotMethod!(double) getSpread;
		@GodotName("get_wet") GodotMethod!(double) getWet;
		@GodotName("set_damping") GodotMethod!(void, double) setDamping;
		@GodotName("set_dry") GodotMethod!(void, double) setDry;
		@GodotName("set_hpf") GodotMethod!(void, double) setHpf;
		@GodotName("set_predelay_feedback") GodotMethod!(void, double) setPredelayFeedback;
		@GodotName("set_predelay_msec") GodotMethod!(void, double) setPredelayMsec;
		@GodotName("set_room_size") GodotMethod!(void, double) setRoomSize;
		@GodotName("set_spread") GodotMethod!(void, double) setSpread;
		@GodotName("set_wet") GodotMethod!(void, double) setWet;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectReverb other) const
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
	/// Construct a new instance of AudioEffectReverb.
	/// Note: use `memnew!AudioEffectReverb` instead.
	static AudioEffectReverb _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectReverb");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectReverb)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getDamping() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDamping, _godot_object);
	}
	/**
	
	*/
	double getDry() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDry, _godot_object);
	}
	/**
	
	*/
	double getHpf() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHpf, _godot_object);
	}
	/**
	
	*/
	double getPredelayFeedback() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPredelayFeedback, _godot_object);
	}
	/**
	
	*/
	double getPredelayMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPredelayMsec, _godot_object);
	}
	/**
	
	*/
	double getRoomSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRoomSize, _godot_object);
	}
	/**
	
	*/
	double getSpread() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSpread, _godot_object);
	}
	/**
	
	*/
	double getWet() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWet, _godot_object);
	}
	/**
	
	*/
	void setDamping(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDamping, _godot_object, amount);
	}
	/**
	
	*/
	void setDry(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDry, _godot_object, amount);
	}
	/**
	
	*/
	void setHpf(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHpf, _godot_object, amount);
	}
	/**
	
	*/
	void setPredelayFeedback(in double feedback)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPredelayFeedback, _godot_object, feedback);
	}
	/**
	
	*/
	void setPredelayMsec(in double msec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPredelayMsec, _godot_object, msec);
	}
	/**
	
	*/
	void setRoomSize(in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoomSize, _godot_object, size);
	}
	/**
	
	*/
	void setSpread(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpread, _godot_object, amount);
	}
	/**
	
	*/
	void setWet(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWet, _godot_object, amount);
	}
	/**
	Defines how reflective the imaginary room's walls are. Value can range from 0 to 1.
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
	Output percent of original sound. At 0, only modified sound is outputted. Value can range from 0 to 1.
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
	High-pass filter passes signals with a frequency higher than a certain cutoff frequency and attenuates signals with frequencies lower than the cutoff frequency. Value can range from 0 to 1.
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
	Output percent of predelay. Value can range from 0 to 1.
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
	Time between the original signal and the early reflections of the reverb signal, in milliseconds.
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
	Dimensions of simulated room. Bigger means more echoes. Value can range from 0 to 1.
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
	Widens or narrows the stereo image of the reverb tail. 1 means fully widens. Value can range from 0 to 1.
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
	Output percent of modified sound. At 0, only original sound is outputted. Value can range from 0 to 1.
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
