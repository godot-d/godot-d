/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectrecord;
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
import godot.audiostreamsample;
/**

*/
@GodotBaseClass struct AudioEffectRecord
{
	enum string _GODOT_internal_name = "AudioEffectRecord";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_format") GodotMethod!(AudioStreamSample.Format) getFormat;
		@GodotName("get_recording") GodotMethod!(AudioStreamSample) getRecording;
		@GodotName("is_recording_active") GodotMethod!(bool) isRecordingActive;
		@GodotName("set_format") GodotMethod!(void, long) setFormat;
		@GodotName("set_recording_active") GodotMethod!(void, bool) setRecordingActive;
	}
	bool opEquals(in AudioEffectRecord other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioEffectRecord opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioEffectRecord _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectRecord");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectRecord)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	AudioStreamSample.Format getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamSample.Format)(_classBinding.getFormat, _godot_object);
	}
	/**
	
	*/
	Ref!AudioStreamSample getRecording() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStreamSample)(_classBinding.getRecording, _godot_object);
	}
	/**
	
	*/
	bool isRecordingActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRecordingActive, _godot_object);
	}
	/**
	
	*/
	void setFormat(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFormat, _godot_object, format);
	}
	/**
	
	*/
	void setRecordingActive(in bool record)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRecordingActive, _godot_object, record);
	}
	/**
	
	*/
	@property AudioStreamSample.Format format()
	{
		return getFormat();
	}
	/// ditto
	@property void format(long v)
	{
		setFormat(v);
	}
}
