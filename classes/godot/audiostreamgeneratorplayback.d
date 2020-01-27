/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamgeneratorplayback;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.audiostreamplaybackresampled;
/**

*/
@GodotBaseClass struct AudioStreamGeneratorPlayback
{
	enum string _GODOT_internal_name = "AudioStreamGeneratorPlayback";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioStreamPlaybackResampled _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("can_push_buffer") GodotMethod!(bool, long) canPushBuffer;
		@GodotName("clear_buffer") GodotMethod!(void) clearBuffer;
		@GodotName("get_frames_available") GodotMethod!(long) getFramesAvailable;
		@GodotName("get_skips") GodotMethod!(long) getSkips;
		@GodotName("push_buffer") GodotMethod!(bool, PoolVector2Array) pushBuffer;
		@GodotName("push_frame") GodotMethod!(bool, Vector2) pushFrame;
	}
	bool opEquals(in AudioStreamGeneratorPlayback other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamGeneratorPlayback opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamGeneratorPlayback _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamGeneratorPlayback");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamGeneratorPlayback)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool canPushBuffer(in long amount) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canPushBuffer, _godot_object, amount);
	}
	/**
	
	*/
	void clearBuffer()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearBuffer, _godot_object);
	}
	/**
	
	*/
	long getFramesAvailable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFramesAvailable, _godot_object);
	}
	/**
	
	*/
	long getSkips() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSkips, _godot_object);
	}
	/**
	
	*/
	bool pushBuffer(in PoolVector2Array frames)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.pushBuffer, _godot_object, frames);
	}
	/**
	
	*/
	bool pushFrame(in Vector2 frame)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.pushFrame, _godot_object, frame);
	}
}
