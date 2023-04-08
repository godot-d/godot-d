/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffecteq;
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
@GodotBaseClass struct AudioEffectEQ
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectEQ";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_band_count") GodotMethod!(long) getBandCount;
		@GodotName("get_band_gain_db") GodotMethod!(double, long) getBandGainDb;
		@GodotName("set_band_gain_db") GodotMethod!(void, long, double) setBandGainDb;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectEQ other) const
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
	/// Construct a new instance of AudioEffectEQ.
	/// Note: use `memnew!AudioEffectEQ` instead.
	static AudioEffectEQ _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectEQ");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectEQ)(constructor());
	}
	/**
	
	*/
	long getBandCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBandCount, _godot_object);
	}
	/**
	
	*/
	double getBandGainDb(in long band_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBandGainDb, _godot_object, band_idx);
	}
	/**
	
	*/
	void setBandGainDb(in long band_idx, in double volume_db)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBandGainDb, _godot_object, band_idx, volume_db);
	}
}
