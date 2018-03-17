/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectstereoenhance;
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

*/
@GodotBaseClass struct AudioEffectStereoEnhance
{
	static immutable string _GODOT_internal_name = "AudioEffectStereoEnhance";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AudioEffectStereoEnhance other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectStereoEnhance opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectStereoEnhance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectStereoEnhance");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectStereoEnhance)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_pan_pullout;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pan_pullout") = _GODOT_set_pan_pullout;
	/**
	
	*/
	void setPanPullout(in double amount)
	{
		_GODOT_set_pan_pullout.bind("AudioEffectStereoEnhance", "set_pan_pullout");
		ptrcall!(void)(_GODOT_set_pan_pullout, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_pan_pullout;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pan_pullout") = _GODOT_get_pan_pullout;
	/**
	
	*/
	double getPanPullout() const
	{
		_GODOT_get_pan_pullout.bind("AudioEffectStereoEnhance", "get_pan_pullout");
		return ptrcall!(double)(_GODOT_get_pan_pullout, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_time_pullout;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_time_pullout") = _GODOT_set_time_pullout;
	/**
	
	*/
	void setTimePullout(in double amount)
	{
		_GODOT_set_time_pullout.bind("AudioEffectStereoEnhance", "set_time_pullout");
		ptrcall!(void)(_GODOT_set_time_pullout, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_time_pullout;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_pullout") = _GODOT_get_time_pullout;
	/**
	
	*/
	double getTimePullout() const
	{
		_GODOT_get_time_pullout.bind("AudioEffectStereoEnhance", "get_time_pullout");
		return ptrcall!(double)(_GODOT_get_time_pullout, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_surround;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_surround") = _GODOT_set_surround;
	/**
	
	*/
	void setSurround(in double amount)
	{
		_GODOT_set_surround.bind("AudioEffectStereoEnhance", "set_surround");
		ptrcall!(void)(_GODOT_set_surround, _godot_object, amount);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_surround;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_surround") = _GODOT_get_surround;
	/**
	
	*/
	double getSurround() const
	{
		_GODOT_get_surround.bind("AudioEffectStereoEnhance", "get_surround");
		return ptrcall!(double)(_GODOT_get_surround, _godot_object);
	}
	/**
	
	*/
	@property double panPullout()
	{
		return getPanPullout();
	}
	/// ditto
	@property void panPullout(double v)
	{
		setPanPullout(v);
	}
	/**
	
	*/
	@property double timePulloutMs()
	{
		return getTimePullout();
	}
	/// ditto
	@property void timePulloutMs(double v)
	{
		setTimePullout(v);
	}
	/**
	
	*/
	@property double surround()
	{
		return getSurround();
	}
	/// ditto
	@property void surround(double v)
	{
		setSurround(v);
	}
}
