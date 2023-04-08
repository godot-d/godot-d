/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audioeffectcapture;
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
@GodotBaseClass struct AudioEffectCapture
{
	package(godot) enum string _GODOT_internal_name = "AudioEffectCapture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AudioEffect _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("can_get_buffer") GodotMethod!(bool, long) canGetBuffer;
		@GodotName("clear_buffer") GodotMethod!(void) clearBuffer;
		@GodotName("get_buffer") GodotMethod!(PoolVector2Array, long) getBuffer;
		@GodotName("get_buffer_length") GodotMethod!(double) getBufferLength;
		@GodotName("get_buffer_length_frames") GodotMethod!(long) getBufferLengthFrames;
		@GodotName("get_discarded_frames") GodotMethod!(long) getDiscardedFrames;
		@GodotName("get_frames_available") GodotMethod!(long) getFramesAvailable;
		@GodotName("get_pushed_frames") GodotMethod!(long) getPushedFrames;
		@GodotName("set_buffer_length") GodotMethod!(void, double) setBufferLength;
	}
	/// 
	pragma(inline, true) bool opEquals(in AudioEffectCapture other) const
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
	/// Construct a new instance of AudioEffectCapture.
	/// Note: use `memnew!AudioEffectCapture` instead.
	static AudioEffectCapture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioEffectCapture");
		if(constructor is null) return typeof(this).init;
		return cast(AudioEffectCapture)(constructor());
	}
	/**
	
	*/
	bool canGetBuffer(in long frames) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canGetBuffer, _godot_object, frames);
	}
	/**
	
	*/
	void clearBuffer()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearBuffer, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getBuffer(in long frames)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getBuffer, _godot_object, frames);
	}
	/**
	
	*/
	double getBufferLength()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBufferLength, _godot_object);
	}
	/**
	
	*/
	long getBufferLengthFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBufferLengthFrames, _godot_object);
	}
	/**
	
	*/
	long getDiscardedFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDiscardedFrames, _godot_object);
	}
	/**
	
	*/
	long getFramesAvailable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFramesAvailable, _godot_object);
	}
	/**
	
	*/
	long getPushedFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPushedFrames, _godot_object);
	}
	/**
	
	*/
	void setBufferLength(in double buffer_length_seconds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBufferLength, _godot_object, buffer_length_seconds);
	}
	/**
	
	*/
	@property double bufferLength()
	{
		return getBufferLength();
	}
	/// ditto
	@property void bufferLength(double v)
	{
		setBufferLength(v);
	}
}
