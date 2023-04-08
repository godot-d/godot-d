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

*/
@GodotBaseClass struct AudioEffectStereoEnhance
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectStereoEnhance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_pan_pullout") GodotMethod!(double) getPanPullout;
		@GodotName("get_surround") GodotMethod!(double) getSurround;
		@GodotName("get_time_pullout") GodotMethod!(double) getTimePullout;
		@GodotName("set_pan_pullout") GodotMethod!(void, double) setPanPullout;
		@GodotName("set_surround") GodotMethod!(void, double) setSurround;
		@GodotName("set_time_pullout") GodotMethod!(void, double) setTimePullout;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectStereoEnhance other) const
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
	/// Construct a new instance of AudioEffectStereoEnhance.
	/// Note: use `memnew!AudioEffectStereoEnhance` instead.
	static AudioEffectStereoEnhance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectStereoEnhance");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectStereoEnhance)(constructor());
	}
	/**
	
	*/
	double getPanPullout() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPanPullout, _godot_object);
	}
	/**
	
	*/
	double getSurround() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSurround, _godot_object);
	}
	/**
	
	*/
	double getTimePullout() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimePullout, _godot_object);
	}
	/**
	
	*/
	void setPanPullout(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPanPullout, _godot_object, amount);
	}
	/**
	
	*/
	void setSurround(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSurround, _godot_object, amount);
	}
	/**
	
	*/
	void setTimePullout(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTimePullout, _godot_object, amount);
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
	@property double surround()
	{
		return getSurround();
	}
	/// ditto
	@property void surround(double v)
	{
		setSurround(v);
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
}
