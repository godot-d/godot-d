/**
Adds a Panner audio effect to an Audio bus. Pans sound left or right.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectpanner;
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
import godot.resource;
import godot.reference;
/**
Adds a Panner audio effect to an Audio bus. Pans sound left or right.

Determines how much of an audio signal is sent to the left and right buses.
*/
@GodotBaseClass struct AudioEffectPanner
{
	enum string _GODOT_internal_name = "AudioEffectPanner";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_pan") GodotMethod!(void, double) setPan;
		@GodotName("get_pan") GodotMethod!(double) getPan;
	}
	bool opEquals(in AudioEffectPanner other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectPanner opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectPanner _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectPanner");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectPanner)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setPan(in double cpanume)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPan, _godot_object, cpanume);
	}
	/**
	
	*/
	double getPan() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPan, _godot_object);
	}
	/**
	Pan position. Value can range from -1 (fully left) to 1 (fully right).
	*/
	@property double pan()
	{
		return getPan();
	}
	/// ditto
	@property void pan(double v)
	{
		setPan(v);
	}
}
