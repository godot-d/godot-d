/**


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
import godot.globalenums;
import godot.object;
import godot.arvrinterface;
import godot.reference;
import godot.arvrpositionaltracker;
/**

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
		@GodotName("get_controller_target_ray_mode") GodotMethod!(WebXRInterface.TargetRayMode, long) getControllerTargetRayMode;
		@GodotName("get_optional_features") GodotMethod!(String) getOptionalFeatures;
		@GodotName("get_reference_space_type") GodotMethod!(String) getReferenceSpaceType;
		@GodotName("get_requested_reference_space_types") GodotMethod!(String) getRequestedReferenceSpaceTypes;
		@GodotName("get_required_features") GodotMethod!(String) getRequiredFeatures;
		@GodotName("get_session_mode") GodotMethod!(String) getSessionMode;
		@GodotName("get_visibility_state") GodotMethod!(String) getVisibilityState;
		@GodotName("get_xr_standard_mapping") GodotMethod!(bool) getXrStandardMapping;
		@GodotName("is_session_supported") GodotMethod!(void, String) isSessionSupported;
		@GodotName("set_optional_features") GodotMethod!(void, String) setOptionalFeatures;
		@GodotName("set_requested_reference_space_types") GodotMethod!(void, String) setRequestedReferenceSpaceTypes;
		@GodotName("set_required_features") GodotMethod!(void, String) setRequiredFeatures;
		@GodotName("set_session_mode") GodotMethod!(void, String) setSessionMode;
		@GodotName("set_xr_standard_mapping") GodotMethod!(void, bool) setXrStandardMapping;
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
	/// 
	enum TargetRayMode : int
	{
		/** */
		targetRayModeUnknown = 0,
		/** */
		targetRayModeGaze = 1,
		/** */
		targetRayModeTrackedPointer = 2,
		/** */
		targetRayModeScreen = 3,
	}
	/// 
	enum Constants : int
	{
		targetRayModeUnknown = 0,
		targetRayModeGaze = 1,
		targetRayModeTrackedPointer = 2,
		targetRayModeScreen = 3,
	}
	/**
	
	*/
	PoolVector3Array getBoundsGeometry() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(GDNativeClassBinding.getBoundsGeometry, _godot_object);
	}
	/**
	
	*/
	Ref!ARVRPositionalTracker getController(in long controller_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRPositionalTracker)(GDNativeClassBinding.getController, _godot_object, controller_id);
	}
	/**
	
	*/
	WebXRInterface.TargetRayMode getControllerTargetRayMode(in long controller_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebXRInterface.TargetRayMode)(GDNativeClassBinding.getControllerTargetRayMode, _godot_object, controller_id);
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
	
	*/
	bool getXrStandardMapping() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getXrStandardMapping, _godot_object);
	}
	/**
	
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
	
	*/
	void setXrStandardMapping(in bool arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setXrStandardMapping, _godot_object, arg0);
	}
	/**
	
	*/
	@property PoolVector3Array boundsGeometry()
	{
		return getBoundsGeometry();
	}
	/**
	
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
	
	*/
	@property String referenceSpaceType()
	{
		return getReferenceSpaceType();
	}
	/**
	
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
	
	*/
	@property String visibilityState()
	{
		return getVisibilityState();
	}
	/**
	
	*/
	@property bool xrStandardMapping()
	{
		return getXrStandardMapping();
	}
	/// ditto
	@property void xrStandardMapping(bool v)
	{
		setXrStandardMapping(v);
	}
}
