/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectspectrumanalyzerinstance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.audioeffectinstance;
import godot.reference;
/**

*/
@GodotBaseClass struct AudioEffectSpectrumAnalyzerInstance
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectSpectrumAnalyzerInstance";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffectInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_magnitude_for_frequency_range") GodotMethod!(Vector2, double, double, long) getMagnitudeForFrequencyRange;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectSpectrumAnalyzerInstance other) const
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
	/// Construct a new instance of AudioEffectSpectrumAnalyzerInstance.
	/// Note: use `memnew!AudioEffectSpectrumAnalyzerInstance` instead.
	static AudioEffectSpectrumAnalyzerInstance _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectSpectrumAnalyzerInstance");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectSpectrumAnalyzerInstance)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum MagnitudeMode : int
	{
		/**
		Use the average value as magnitude.
		*/
		magnitudeAverage = 0,
		/**
		Use the maximum value as magnitude.
		*/
		magnitudeMax = 1,
	}
	/// 
	enum Constants : int
	{
		magnitudeAverage = 0,
		magnitudeMax = 1,
	}
	/**
	
	*/
	Vector2 getMagnitudeForFrequencyRange(in double from_hz, in double to_hz, in long mode = 1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMagnitudeForFrequencyRange, _godot_object, from_hz, to_hz, mode);
	}
}
