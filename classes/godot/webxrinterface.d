/**
AR/VR interface using WebXR.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.webxrinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.arvrinterface;
import godot.reference;
import godot.arvrpositionaltracker;
/**
AR/VR interface using WebXR.

WebXR is an open standard that allows creating VR and AR applications that run in the web browser.
As such, this interface is only available when running in an HTML5 export.
WebXR supports a wide range of devices, from the very capable (like Valve Index, HTC Vive, Oculus Rift and Quest) down to the much less capable (like Google Cardboard, Oculus Go, GearVR, or plain smartphones).
Since WebXR is based on Javascript, it makes extensive use of callbacks, which means that $(D WebXRInterface) is forced to use signals, where other AR/VR interfaces would instead use functions that return a result immediately. This makes $(D WebXRInterface) quite a bit more complicated to initialize than other AR/VR interfaces.
Here's the minimum code required to start an immersive VR session:


extends Spatial

var webxr_interface
var vr_supported = false

func _ready():
    # We assume this node has a button as a child.
    # This button is for the user to consent to entering immersive VR mode.
    $Button.connect("pressed", self, "_on_Button_pressed")

    webxr_interface = ARVRServer.find_interface("WebXR")
    if webxr_interface:
        # WebXR uses a lot of asynchronous callbacks, so we connect to various
        # signals in order to receive them.
        webxr_interface.connect("session_supported", self, "_webxr_session_supported")
        webxr_interface.connect("session_started", self, "_webxr_session_started")
        webxr_interface.connect("session_ended", self, "_webxr_session_ended")
        webxr_interface.connect("session_failed", self, "_webxr_session_failed")

        # This returns immediately - our _webxr_session_supported() method
        # (which we connected to the "session_supported" signal above) will
        # be called sometime later to let us know if it's supported or not.
        webxr_interface.is_session_supported("immersive-vr")

func _webxr_session_supported(session_mode, supported):
    if session_mode == 'immersive-vr':
        vr_supported = supported

func _on_Button_pressed():
    if not vr_supported:
        OS.alert("Your browser doesn't support VR")
        return

    # We want an immersive VR session, as opposed to AR ('immersive-ar') or a
    # simple 3DoF viewer ('viewer').
    webxr_interface.session_mode = 'immersive-vr'
    # 'bounded-floor' is room scale, 'local-floor' is a standing or sitting
    # experience (it puts you 1.6m above the ground if you have 3DoF headset),
    # whereas as 'local' puts you down at the ARVROrigin.
    # This list means it'll first try to request 'bounded-floor', then
    # fallback on 'local-floor' and ultimately 'local', if nothing else is
    # supported.
    webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
    # In order to use 'local-floor' or 'bounded-floor' we must also
    # mark the features as required or optional.
    webxr_interface.required_features = 'local-floor'
    webxr_interface.optional_features = 'bounded-floor'

    # This will return false if we're unable to even request the session,
    # however, it can still fail asynchronously later in the process, so we
    # only know if it's really succeeded or failed when our
    # _webxr_session_started() or _webxr_session_failed() methods are called.
    if not webxr_interface.initialize():
        OS.alert("Failed to initialize")
        return

func _webxr_session_started():
    $Button.visible = false
    # This tells Godot to start rendering to the headset.
    get_viewport().arvr = true
    # This will be the reference space type you ultimately got, out of the
    # types that you requested above. This is useful if you want the game to
    # work a little differently in 'bounded-floor' versus 'local-floor'.
    print ("Reference space type: " + webxr_interface.reference_space_type)

func _webxr_session_ended():
    $Button.visible = true
    # If the user exits immersive mode, then we tell Godot to render to the web
    # page again.
    get_viewport().arvr = false

func _webxr_session_failed(message):
    OS.alert("Failed to initialize: " + message)


There are several ways to handle "controller" input:
- Using $(D ARVRController) nodes and their $(D ARVRController.buttonPressed) and $(D ARVRController.buttonRelease) signals. This is how controllers are typically handled in AR/VR apps in Godot, however, this will only work with advanced VR controllers like the Oculus Touch or Index controllers, for example. The buttons codes are defined by $(D url=https://immersive-web.github.io/webxr-gamepads-module/#xr-standard-gamepad-mapping)Section 3.3 of the WebXR Gamepads Module$(D /url).
- Using $(D Node._unhandledInput) and $(D InputEventJoypadButton) or $(D InputEventJoypadMotion). This works the same as normal joypads, except the $(D InputEvent.device) starts at 100, so the left controller is 100 and the right controller is 101, and the button codes are also defined by $(D url=https://immersive-web.github.io/webxr-gamepads-module/#xr-standard-gamepad-mapping)Section 3.3 of the WebXR Gamepads Module$(D /url).
- Using the $(D select), $(D squeeze) and related signals. This method will work for both advanced VR controllers, and non-traditional "controllers" like a tap on the screen, a spoken voice command or a button press on the device itself. The `controller_id` passed to these signals is the same id as used in $(D ARVRController.controllerId).
You can use one or all of these methods to allow your game or app to support a wider or narrower set of devices and input methods, or to allow more advanced interations with more advanced devices.
*/
@GodotBaseClass struct WebXRInterface
{
	package(godot) enum string _GODOT_internal_name = "WebXRInterface";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ ARVRInterface _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_bounds_geometry") GodotMethod!(PoolVector3Array) getBoundsGeometry;
		@GodotName("get_controller") GodotMethod!(ARVRPositionalTracker, long) getController;
		@GodotName("get_optional_features") GodotMethod!(String) getOptionalFeatures;
		@GodotName("get_reference_space_type") GodotMethod!(String) getReferenceSpaceType;
		@GodotName("get_requested_reference_space_types") GodotMethod!(String) getRequestedReferenceSpaceTypes;
		@GodotName("get_required_features") GodotMethod!(String) getRequiredFeatures;
		@GodotName("get_session_mode") GodotMethod!(String) getSessionMode;
		@GodotName("get_visibility_state") GodotMethod!(String) getVisibilityState;
		@GodotName("is_session_supported") GodotMethod!(void, String) isSessionSupported;
		@GodotName("set_optional_features") GodotMethod!(void, String) setOptionalFeatures;
		@GodotName("set_requested_reference_space_types") GodotMethod!(void, String) setRequestedReferenceSpaceTypes;
		@GodotName("set_required_features") GodotMethod!(void, String) setRequiredFeatures;
		@GodotName("set_session_mode") GodotMethod!(void, String) setSessionMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in WebXRInterface other) const
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
	/// Construct a new instance of WebXRInterface.
	/// Note: use `memnew!WebXRInterface` instead.
	static WebXRInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebXRInterface");
		if(constructor is null) return typeof(this).init;
		return cast(WebXRInterface)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	PoolVector3Array getBoundsGeometry() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getBoundsGeometry, _godot_object);
	}
	/**
	Gets an $(D ARVRPositionalTracker) for the given `controller_id`.
	In the context of WebXR, a "controller" can be an advanced VR controller like the Oculus Touch or Index controllers, or even a tap on the screen, a spoken voice command or a button press on the device itself. When a non-traditional controller is used, interpret the position and orientation of the $(D ARVRPositionalTracker) as a ray pointing at the object the user wishes to interact with.
	Use this method to get information about the controller that triggered one of these signals:
	- $(D selectstart)
	- $(D select)
	- $(D selectend)
	- $(D squeezestart)
	- $(D squeeze)
	- $(D squeezestart)
	*/
	ARVRPositionalTracker getController(in long controller_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRPositionalTracker)(GDNativeClassBinding.getController, _godot_object, controller_id);
	}
	/**
	
	*/
	String getOptionalFeatures() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getOptionalFeatures, _godot_object);
	}
	/**
	
	*/
	String getReferenceSpaceType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getReferenceSpaceType, _godot_object);
	}
	/**
	
	*/
	String getRequestedReferenceSpaceTypes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getRequestedReferenceSpaceTypes, _godot_object);
	}
	/**
	
	*/
	String getRequiredFeatures() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getRequiredFeatures, _godot_object);
	}
	/**
	
	*/
	String getSessionMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSessionMode, _godot_object);
	}
	/**
	
	*/
	String getVisibilityState() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVisibilityState, _godot_object);
	}
	/**
	Checks if the given `session_mode` is supported by the user's browser.
	Possible values come from $(D url=https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode)WebXR's XRSessionMode$(D /url), including: `"immersive-vr"`, `"immersive-ar"`, and `"inline"`.
	This method returns nothing, instead it emits the $(D sessionSupported) signal with the result.
	*/
	void isSessionSupported(in String session_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.isSessionSupported, _godot_object, session_mode);
	}
	/**
	
	*/
	void setOptionalFeatures(in String optional_features)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOptionalFeatures, _godot_object, optional_features);
	}
	/**
	
	*/
	void setRequestedReferenceSpaceTypes(in String requested_reference_space_types)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRequestedReferenceSpaceTypes, _godot_object, requested_reference_space_types);
	}
	/**
	
	*/
	void setRequiredFeatures(in String required_features)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRequiredFeatures, _godot_object, required_features);
	}
	/**
	
	*/
	void setSessionMode(in String session_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSessionMode, _godot_object, session_mode);
	}
	/**
	The vertices of a polygon which defines the boundaries of the user's play area.
	This will only be available if $(D referenceSpaceType) is `"bounded-floor"` and only on certain browsers and devices that support it.
	The $(D referenceSpaceReset) signal may indicate when this changes.
	*/
	@property PoolVector3Array boundsGeometry()
	{
		return getBoundsGeometry();
	}
	/**
	A comma-seperated list of optional features used by $(D ARVRInterface.initialize) when setting up the WebXR session.
	If a user's browser or device doesn't support one of the given features, initialization will continue, but you won't be able to use the requested feature.
	This doesn't have any effect on the interface when already initialized.
	Possible values come from $(D url=https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType)WebXR's XRReferenceSpaceType$(D /url). If you want to use a particular reference space type, it must be listed in either $(D requiredFeatures) or $(D optionalFeatures).
	*/
	@property String optionalFeatures()
	{
		return getOptionalFeatures();
	}
	/// ditto
	@property void optionalFeatures(String v)
	{
		setOptionalFeatures(v);
	}
	/**
	The reference space type (from the list of requested types set in the $(D requestedReferenceSpaceTypes) property), that was ultimately used by $(D ARVRInterface.initialize) when setting up the WebXR session.
	Possible values come from $(D url=https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType)WebXR's XRReferenceSpaceType$(D /url). If you want to use a particular reference space type, it must be listed in either $(D requiredFeatures) or $(D optionalFeatures).
	*/
	@property String referenceSpaceType()
	{
		return getReferenceSpaceType();
	}
	/**
	A comma-seperated list of reference space types used by $(D ARVRInterface.initialize) when setting up the WebXR session.
	The reference space types are requested in order, and the first on supported by the users device or browser will be used. The $(D referenceSpaceType) property contains the reference space type that was ultimately used.
	This doesn't have any effect on the interface when already initialized.
	Possible values come from $(D url=https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType)WebXR's XRReferenceSpaceType$(D /url). If you want to use a particular reference space type, it must be listed in either $(D requiredFeatures) or $(D optionalFeatures).
	*/
	@property String requestedReferenceSpaceTypes()
	{
		return getRequestedReferenceSpaceTypes();
	}
	/// ditto
	@property void requestedReferenceSpaceTypes(String v)
	{
		setRequestedReferenceSpaceTypes(v);
	}
	/**
	A comma-seperated list of required features used by $(D ARVRInterface.initialize) when setting up the WebXR session.
	If a user's browser or device doesn't support one of the given features, initialization will fail and $(D sessionFailed) will be emitted.
	This doesn't have any effect on the interface when already initialized.
	Possible values come from $(D url=https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType)WebXR's XRReferenceSpaceType$(D /url). If you want to use a particular reference space type, it must be listed in either $(D requiredFeatures) or $(D optionalFeatures).
	*/
	@property String requiredFeatures()
	{
		return getRequiredFeatures();
	}
	/// ditto
	@property void requiredFeatures(String v)
	{
		setRequiredFeatures(v);
	}
	/**
	The session mode used by $(D ARVRInterface.initialize) when setting up the WebXR session.
	This doesn't have any effect on the interface when already initialized.
	Possible values come from $(D url=https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode)WebXR's XRSessionMode$(D /url), including: `"immersive-vr"`, `"immersive-ar"`, and `"inline"`.
	*/
	@property String sessionMode()
	{
		return getSessionMode();
	}
	/// ditto
	@property void sessionMode(String v)
	{
		setSessionMode(v);
	}
	/**
	Indicates if the WebXR session's imagery is visible to the user.
	Possible values come from $(D url=https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState)WebXR's XRVisibilityState$(D /url), including `"hidden"`, `"visible"`, and `"visible-blurred"`.
	*/
	@property String visibilityState()
	{
		return getVisibilityState();
	}
}
