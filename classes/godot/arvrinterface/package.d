/**
Base class for ARVR interface implementation.

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
Base class for ARVR interface implementation.

This class needs to be implemented to make an AR or VR platform available to Godot and these should be implemented as C++ modules or GDNative modules (note that for GDNative the subclass ARVRScriptInterface should be used). Part of the interface is exposed to GDScript so you can detect, enable and configure an AR or VR platform.
Interfaces should be written in such a way that simply enabling them will give us a working setup. You can query the available interfaces through ARVRServer.
*/
@GodotBaseClass struct ARVRInterface
{
	static immutable string _GODOT_internal_name = "ARVRInterface";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	/// 
	enum Tracking_status : int
	{
		/**
		Tracking is behaving as expected.
		*/
		arvrNormalTracking = 0,
		/**
		Tracking is hindered by excessive motion, player is moving faster then tracking can keep up.
		*/
		arvrExcessiveMotion = 1,
		/**
		Tracking is hindered by insufficient features, it's too dark (for camera based tracking), player is blocked, etc.
		*/
		arvrInsufficientFeatures = 2,
		/**
		We don't know the status of the tracking or this interface does not provide feedback.
		*/
		arvrUnknownTracking = 3,
		/**
		Tracking is not functional (camera not plugged in or obscured, lighthouses turned off, etc.)
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
		This interface support AR (video background and real world tracking).
		*/
		arvrAr = 4,
		/**
		This interface outputs to an external device, if the main viewport is used the on screen output is an unmodified buffer of either the left or right eye (stretched if the viewport size is not changed to the same aspect ratio of get_render_targetsize. Using a separate viewport node frees up the main viewport for other purposes.
		*/
		arvrExternal = 8,
	}
	/// 
	enum Constants : int
	{
		arvrNone = 0,
		eyeMono = 0,
		arvrNormalTracking = 0,
		arvrMono = 1,
		arvrExcessiveMotion = 1,
		eyeLeft = 1,
		arvrInsufficientFeatures = 2,
		arvrStereo = 2,
		eyeRight = 2,
		arvrUnknownTracking = 3,
		arvrAr = 4,
		arvrNotTracking = 4,
		arvrExternal = 8,
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	/**
	Returns the name of this interface (OpenVR, OpenHMD, ARKit, etc).
	*/
	String getName() const
	{
		_GODOT_get_name.bind("ARVRInterface", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_capabilities;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_capabilities") = _GODOT_get_capabilities;
	/**
	Returns a combination of flags providing information about the capabilities of this interface.
	*/
	long getCapabilities() const
	{
		_GODOT_get_capabilities.bind("ARVRInterface", "get_capabilities");
		return ptrcall!(long)(_GODOT_get_capabilities, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_primary;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_primary") = _GODOT_is_primary;
	/**
	
	*/
	bool isPrimary()
	{
		_GODOT_is_primary.bind("ARVRInterface", "is_primary");
		return ptrcall!(bool)(_GODOT_is_primary, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_is_primary;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_is_primary") = _GODOT_set_is_primary;
	/**
	
	*/
	void setIsPrimary(in bool enable)
	{
		_GODOT_set_is_primary.bind("ARVRInterface", "set_is_primary");
		ptrcall!(void)(_GODOT_set_is_primary, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_initialized;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_initialized") = _GODOT_is_initialized;
	/**
	
	*/
	bool isInitialized()
	{
		_GODOT_is_initialized.bind("ARVRInterface", "is_initialized");
		return ptrcall!(bool)(_GODOT_is_initialized, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_is_initialized;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_is_initialized") = _GODOT_set_is_initialized;
	/**
	
	*/
	void setIsInitialized(in bool initialized)
	{
		_GODOT_set_is_initialized.bind("ARVRInterface", "set_is_initialized");
		ptrcall!(void)(_GODOT_set_is_initialized, _godot_object, initialized);
	}
	package(godot) static GodotMethod!(bool) _GODOT_initialize;
	package(godot) alias _GODOT_methodBindInfo(string name : "initialize") = _GODOT_initialize;
	/**
	Call this to initialize this interface. The first interface that is initialized is identified as the primary interface and it will be used for rendering output.
	After initializing the interface you want to use you then need to enable the AR/VR mode of a viewport and rendering should commence. 
	Note that you must enable the AR/VR mode on the main viewport for any device that uses the main output of Godot such as for mobile VR. 
	If you do this for a platform that handles its own output (such as OpenVR) Godot will show just one eye without distortion on screen. Alternatively you can add a separate viewport node to your scene and enable AR/VR on that viewport and it will be used to output to the HMD leaving you free to do anything you like in the main window such as using a separate camera as a spectator camera or render out something completely different.
	While currently not used you can activate additional interfaces, you may wish to do this if you want to track controllers from other platforms. However at this point in time only one interface can render to an HMD.
	*/
	bool initialize()
	{
		_GODOT_initialize.bind("ARVRInterface", "initialize");
		return ptrcall!(bool)(_GODOT_initialize, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_uninitialize;
	package(godot) alias _GODOT_methodBindInfo(string name : "uninitialize") = _GODOT_uninitialize;
	/**
	Turns the interface off.
	*/
	void uninitialize()
	{
		_GODOT_uninitialize.bind("ARVRInterface", "uninitialize");
		ptrcall!(void)(_GODOT_uninitialize, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRInterface.Tracking_status) _GODOT_get_tracking_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracking_status") = _GODOT_get_tracking_status;
	/**
	If supported, returns the status of our tracking. This will allow you to provide feedback to the user whether there are issues with positional tracking.
	*/
	ARVRInterface.Tracking_status getTrackingStatus() const
	{
		_GODOT_get_tracking_status.bind("ARVRInterface", "get_tracking_status");
		return ptrcall!(ARVRInterface.Tracking_status)(_GODOT_get_tracking_status, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_render_targetsize;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_render_targetsize") = _GODOT_get_render_targetsize;
	/**
	Returns the resolution at which we should render our intermediate results before things like lens distortion are applied by the VR platform.
	*/
	Vector2 getRenderTargetsize()
	{
		_GODOT_get_render_targetsize.bind("ARVRInterface", "get_render_targetsize");
		return ptrcall!(Vector2)(_GODOT_get_render_targetsize, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stereo;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stereo") = _GODOT_is_stereo;
	/**
	Returns true if the current output of this interface is in stereo.
	*/
	bool isStereo()
	{
		_GODOT_is_stereo.bind("ARVRInterface", "is_stereo");
		return ptrcall!(bool)(_GODOT_is_stereo, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_anchor_detection_is_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anchor_detection_is_enabled") = _GODOT_get_anchor_detection_is_enabled;
	/**
	
	*/
	bool getAnchorDetectionIsEnabled() const
	{
		_GODOT_get_anchor_detection_is_enabled.bind("ARVRInterface", "get_anchor_detection_is_enabled");
		return ptrcall!(bool)(_GODOT_get_anchor_detection_is_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_anchor_detection_is_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchor_detection_is_enabled") = _GODOT_set_anchor_detection_is_enabled;
	/**
	
	*/
	void setAnchorDetectionIsEnabled(in bool enable)
	{
		_GODOT_set_anchor_detection_is_enabled.bind("ARVRInterface", "set_anchor_detection_is_enabled");
		ptrcall!(void)(_GODOT_set_anchor_detection_is_enabled, _godot_object, enable);
	}
	/**
	Is this our primary interface?
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
	/**
	Has this interface been initialized?
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
	On an AR interface, is our anchor detection enabled?
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
}
