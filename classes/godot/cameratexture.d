/**
Texture provided by a $(D CameraFeed).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cameratexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.cameraserver;
/**
Texture provided by a $(D CameraFeed).

This texture gives access to the camera texture provided by a $(D CameraFeed).
$(B Note:) Many cameras supply YCbCr images which need to be converted in a shader.
*/
@GodotBaseClass struct CameraTexture
{
	package(godot) enum string _GODOT_internal_name = "CameraTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_camera_active") GodotMethod!(bool) getCameraActive;
		@GodotName("get_camera_feed_id") GodotMethod!(long) getCameraFeedId;
		@GodotName("get_which_feed") GodotMethod!(CameraServer.FeedImage) getWhichFeed;
		@GodotName("set_camera_active") GodotMethod!(void, bool) setCameraActive;
		@GodotName("set_camera_feed_id") GodotMethod!(void, long) setCameraFeedId;
		@GodotName("set_which_feed") GodotMethod!(void, long) setWhichFeed;
	}
	/// 
	pragma(inline, true) bool opEquals(in CameraTexture other) const
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
	/// Construct a new instance of CameraTexture.
	/// Note: use `memnew!CameraTexture` instead.
	static CameraTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CameraTexture");
		if(constructor is null) return typeof(this).init;
		return cast(CameraTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool getCameraActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCameraActive, _godot_object);
	}
	/**
	
	*/
	long getCameraFeedId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCameraFeedId, _godot_object);
	}
	/**
	
	*/
	CameraServer.FeedImage getWhichFeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CameraServer.FeedImage)(GDNativeClassBinding.getWhichFeed, _godot_object);
	}
	/**
	
	*/
	void setCameraActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCameraActive, _godot_object, active);
	}
	/**
	
	*/
	void setCameraFeedId(in long feed_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCameraFeedId, _godot_object, feed_id);
	}
	/**
	
	*/
	void setWhichFeed(in long which_feed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWhichFeed, _godot_object, which_feed);
	}
	/**
	The ID of the $(D CameraFeed) for which we want to display the image.
	*/
	@property long cameraFeedId()
	{
		return getCameraFeedId();
	}
	/// ditto
	@property void cameraFeedId(long v)
	{
		setCameraFeedId(v);
	}
	/**
	Convenience property that gives access to the active property of the $(D CameraFeed).
	*/
	@property bool cameraIsActive()
	{
		return getCameraActive();
	}
	/// ditto
	@property void cameraIsActive(bool v)
	{
		setCameraActive(v);
	}
	/**
	Which image within the $(D CameraFeed) we want access to, important if the camera image is split in a Y and CbCr component.
	*/
	@property CameraServer.FeedImage whichFeed()
	{
		return getWhichFeed();
	}
	/// ditto
	@property void whichFeed(long v)
	{
		setWhichFeed(v);
	}
}
