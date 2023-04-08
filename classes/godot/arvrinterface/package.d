/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.reference;
/**

*/
@GodotBaseClass struct ARVRInterface
{
	package(godot) enum string _GODOT_internal_name = "ARVRInterface";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_anchor_detection_is_enabled") GodotMethod!(bool) getAnchorDetectionIsEnabled;
		@GodotName("get_camera_feed_id") GodotMethod!(long) getCameraFeedId;
		@GodotName("get_capabilities") GodotMethod!(long) getCapabilities;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_render_targetsize") GodotMethod!(Vector2) getRenderTargetsize;
		@GodotName("get_tracking_status") GodotMethod!(ARVRInterface.Tracking_status) getTrackingStatus;
		@GodotName("initialize") GodotMethod!(bool) initialize;
		@GodotName("is_initialized") GodotMethod!(bool) isInitialized;
		@GodotName("is_primary") GodotMethod!(bool) isPrimary;
		@GodotName("is_stereo") GodotMethod!(bool) isStereo;
		@GodotName("set_anchor_detection_is_enabled") GodotMethod!(void, bool) setAnchorDetectionIsEnabled;
		@GodotName("set_is_initialized") GodotMethod!(void, bool) setIsInitialized;
		@GodotName("set_is_primary") GodotMethod!(void, bool) setIsPrimary;
		@GodotName("uninitialize") GodotMethod!(void) uninitialize;
	}
	/// 
	pragma(inline, true) bool opEquals(in ARVRInterface other) const
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
	/// Construct a new instance of ARVRInterface.
	/// Note: use `memnew!ARVRInterface` instead.
	static ARVRInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVRInterface");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRInterface)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Tracking_status : int
	{
		/** */
		arvrNormalTracking = 0,
		/** */
		arvrExcessiveMotion = 1,
		/** */
		arvrInsufficientFeatures = 2,
		/** */
		arvrUnknownTracking = 3,
		/** */
		arvrNotTracking = 4,
	}
	/// 
	enum Eyes : int
	{
		/** */
		eyeMono = 0,
		/** */
		eyeLeft = 1,
		/** */
		eyeRight = 2,
	}
	/// 
	enum Capabilities : int
	{
		/** */
		arvrNone = 0,
		/** */
		arvrMono = 1,
		/** */
		arvrStereo = 2,
		/** */
		arvrAr = 4,
		/** */
		arvrExternal = 8,
	}
	/// 
	enum Constants : int
	{
		eyeMono = 0,
		arvrNone = 0,
		arvrNormalTracking = 0,
		eyeLeft = 1,
		arvrMono = 1,
		arvrExcessiveMotion = 1,
		arvrInsufficientFeatures = 2,
		eyeRight = 2,
		arvrStereo = 2,
		arvrUnknownTracking = 3,
		arvrAr = 4,
		arvrNotTracking = 4,
		arvrExternal = 8,
	}
	/**
	
	*/
	bool getAnchorDetectionIsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAnchorDetectionIsEnabled, _godot_object);
	}
	/**
	
	*/
	long getCameraFeedId()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCameraFeedId, _godot_object);
	}
	/**
	
	*/
	long getCapabilities() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCapabilities, _godot_object);
	}
	/**
	
	*/
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getName, _godot_object);
	}
	/**
	
	*/
	Vector2 getRenderTargetsize()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getRenderTargetsize, _godot_object);
	}
	/**
	
	*/
	ARVRInterface.Tracking_status getTrackingStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface.Tracking_status)(GDNativeClassBinding.getTrackingStatus, _godot_object);
	}
	/**
	
	*/
	bool initialize()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.initialize, _godot_object);
	}
	/**
	
	*/
	bool isInitialized() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInitialized, _godot_object);
	}
	/**
	
	*/
	bool isPrimary()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPrimary, _godot_object);
	}
	/**
	
	*/
	bool isStereo()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isStereo, _godot_object);
	}
	/**
	
	*/
	void setAnchorDetectionIsEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchorDetectionIsEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setIsInitialized(in bool initialized)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIsInitialized, _godot_object, initialized);
	}
	/**
	
	*/
	void setIsPrimary(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIsPrimary, _godot_object, enable);
	}
	/**
	
	*/
	void uninitialize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.uninitialize, _godot_object);
	}
	/**
	
	*/
	@property bool arIsAnchorDetectionEnabled()
	{
		return getAnchorDetectionIsEnabled();
	}
	/// ditto
	@property void arIsAnchorDetectionEnabled(bool v)
	{
		setAnchorDetectionIsEnabled(v);
	}
	/**
	
	*/
	@property bool interfaceIsInitialized()
	{
		return isInitialized();
	}
	/// ditto
	@property void interfaceIsInitialized(bool v)
	{
		setIsInitialized(v);
	}
	/**
	
	*/
	@property bool interfaceIsPrimary()
	{
		return isPrimary();
	}
	/// ditto
	@property void interfaceIsPrimary(bool v)
	{
		setIsPrimary(v);
	}
}
