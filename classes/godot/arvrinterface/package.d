/**
Base class for an AR/VR interface implementation.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**
Base class for an AR/VR interface implementation.

This class needs to be implemented to make an AR or VR platform available to Godot and these should be implemented as C++ modules or GDNative modules (note that for GDNative the subclass ARVRScriptInterface should be used). Part of the interface is exposed to GDScript so you can detect, enable and configure an AR or VR platform.
Interfaces should be written in such a way that simply enabling them will give us a working setup. You can query the available interfaces through $(D ARVRServer).
*/
@GodotBaseClass struct ARVRInterface
{
	enum string _GODOT_internal_name = "ARVRInterface";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
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
	bool opEquals(in ARVRInterface other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRInterface opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		Tracking is behaving as expected.
		*/
		arvrNormalTracking = 0,
		/**
		Tracking is hindered by excessive motion (the player is moving faster than tracking can keep up).
		*/
		arvrExcessiveMotion = 1,
		/**
		Tracking is hindered by insufficient features, it's too dark (for camera-based tracking), player is blocked, etc.
		*/
		arvrInsufficientFeatures = 2,
		/**
		We don't know the status of the tracking or this interface does not provide feedback.
		*/
		arvrUnknownTracking = 3,
		/**
		Tracking is not functional (camera not plugged in or obscured, lighthouses turned off, etc.).
		*/
		arvrNotTracking = 4,
	}
	/// 
	enum Eyes : int
	{
		/**
		Mono output, this is mostly used internally when retrieving positioning information for our camera node or when stereo scopic rendering is not supported.
		*/
		eyeMono = 0,
		/**
		Left eye output, this is mostly used internally when rendering the image for the left eye and obtaining positioning and projection information.
		*/
		eyeLeft = 1,
		/**
		Right eye output, this is mostly used internally when rendering the image for the right eye and obtaining positioning and projection information.
		*/
		eyeRight = 2,
	}
	/// 
	enum Capabilities : int
	{
		/**
		No ARVR capabilities.
		*/
		arvrNone = 0,
		/**
		This interface can work with normal rendering output (non-HMD based AR).
		*/
		arvrMono = 1,
		/**
		This interface supports stereoscopic rendering.
		*/
		arvrStereo = 2,
		/**
		This interface supports AR (video background and real world tracking).
		*/
		arvrAr = 4,
		/**
		This interface outputs to an external device. If the main viewport is used, the on screen output is an unmodified buffer of either the left or right eye (stretched if the viewport size is not changed to the same aspect ratio of $(D getRenderTargetsize)). Using a separate viewport node frees up the main viewport for other purposes.
		*/
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
		return ptrcall!(bool)(_classBinding.getAnchorDetectionIsEnabled, _godot_object);
	}
	/**
	If this is an AR interface that requires displaying a camera feed as the background, this method returns the feed ID in the $(D CameraServer) for this interface.
	*/
	long getCameraFeedId()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCameraFeedId, _godot_object);
	}
	/**
	Returns a combination of $(D capabilities) flags providing information about the capabilities of this interface.
	*/
	long getCapabilities() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCapabilities, _godot_object);
	}
	/**
	Returns the name of this interface (OpenVR, OpenHMD, ARKit, etc).
	*/
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getName, _godot_object);
	}
	/**
	Returns the resolution at which we should render our intermediate results before things like lens distortion are applied by the VR platform.
	*/
	Vector2 getRenderTargetsize()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getRenderTargetsize, _godot_object);
	}
	/**
	If supported, returns the status of our tracking. This will allow you to provide feedback to the user whether there are issues with positional tracking.
	*/
	ARVRInterface.Tracking_status getTrackingStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface.Tracking_status)(_classBinding.getTrackingStatus, _godot_object);
	}
	/**
	Call this to initialize this interface. The first interface that is initialized is identified as the primary interface and it will be used for rendering output.
	After initializing the interface you want to use you then need to enable the AR/VR mode of a viewport and rendering should commence.
	$(B Note:) You must enable the AR/VR mode on the main viewport for any device that uses the main output of Godot, such as for mobile VR.
	If you do this for a platform that handles its own output (such as OpenVR) Godot will show just one eye without distortion on screen. Alternatively, you can add a separate viewport node to your scene and enable AR/VR on that viewport. It will be used to output to the HMD, leaving you free to do anything you like in the main window, such as using a separate camera as a spectator camera or rendering something completely different.
	While currently not used, you can activate additional interfaces. You may wish to do this if you want to track controllers from other platforms. However, at this point in time only one interface can render to an HMD.
	*/
	bool initialize()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.initialize, _godot_object);
	}
	/**
	
	*/
	bool isInitialized() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInitialized, _godot_object);
	}
	/**
	
	*/
	bool isPrimary()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPrimary, _godot_object);
	}
	/**
	Returns `true` if the current output of this interface is in stereo.
	*/
	bool isStereo()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isStereo, _godot_object);
	}
	/**
	
	*/
	void setAnchorDetectionIsEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnchorDetectionIsEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setIsInitialized(in bool initialized)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIsInitialized, _godot_object, initialized);
	}
	/**
	
	*/
	void setIsPrimary(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIsPrimary, _godot_object, enable);
	}
	/**
	Turns the interface off.
	*/
	void uninitialize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.uninitialize, _godot_object);
	}
	/**
	On an AR interface, `true` if anchor detection is enabled.
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
	`true` if this interface been initialized.
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
	`true` if this is the primary interface.
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
