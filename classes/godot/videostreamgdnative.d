/**
$(D VideoStream) resource for for video formats implemented via GDNative.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.videostreamgdnative;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.videostream;
import godot.resource;
import godot.reference;
/**
$(D VideoStream) resource for for video formats implemented via GDNative.

It can be used via $(D url=https://github.com/KidRigger/godot-videodecoder)godot-videodecoder$(D /url) which uses the $(D url=https://ffmpeg.org)FFmpeg$(D /url) library.
*/
@GodotBaseClass struct VideoStreamGDNative
{
	enum string _GODOT_internal_name = "VideoStreamGDNative";
public:
@nogc nothrow:
	union { godot_object _godot_object; VideoStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_file") GodotMethod!(String) getFile;
		@GodotName("set_file") GodotMethod!(void, String) setFile;
	}
	bool opEquals(in VideoStreamGDNative other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VideoStreamGDNative opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VideoStreamGDNative _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VideoStreamGDNative");
		if(constructor is null) return typeof(this).init;
		return cast(VideoStreamGDNative)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the video file handled by this $(D VideoStreamGDNative).
	*/
	String getFile()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getFile, _godot_object);
	}
	/**
	Sets the video file that this $(D VideoStreamGDNative) resource handles. The supported extensions depend on the GDNative plugins used to expose video formats.
	*/
	void setFile(in String file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFile, _godot_object, file);
	}
	/**
	
	*/
	@property String file()
	{
		return getFile();
	}
	/// ditto
	@property void file(String v)
	{
		setFile(v);
	}
}
