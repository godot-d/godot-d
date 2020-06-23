/**
Server for AR and VR features.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.arvrinterface;
import godot.arvrpositionaltracker;
/**
Server for AR and VR features.

The AR/VR server is the heart of our Advanced and Virtual Reality solution and handles all the processing.
*/
@GodotBaseClass struct ARVRServerSingleton
{
	package(godot) enum string _GODOT_internal_name = "ARVRServer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "ARVRServer";
		@GodotName("center_on_hmd") GodotMethod!(void, long, bool) centerOnHmd;
		@GodotName("find_interface") GodotMethod!(ARVRInterface, String) findInterface;
		@GodotName("get_hmd_transform") GodotMethod!(Transform) getHmdTransform;
		@GodotName("get_interface") GodotMethod!(ARVRInterface, long) getInterface;
		@GodotName("get_interface_count") GodotMethod!(long) getInterfaceCount;
		@GodotName("get_interfaces") GodotMethod!(Array) getInterfaces;
		@GodotName("get_last_commit_usec") GodotMethod!(long) getLastCommitUsec;
		@GodotName("get_last_frame_usec") GodotMethod!(long) getLastFrameUsec;
		@GodotName("get_last_process_usec") GodotMethod!(long) getLastProcessUsec;
		@GodotName("get_primary_interface") GodotMethod!(ARVRInterface) getPrimaryInterface;
		@GodotName("get_reference_frame") GodotMethod!(Transform) getReferenceFrame;
		@GodotName("get_tracker") GodotMethod!(ARVRPositionalTracker, long) getTracker;
		@GodotName("get_tracker_count") GodotMethod!(long) getTrackerCount;
		@GodotName("get_world_scale") GodotMethod!(double) getWorldScale;
		@GodotName("set_primary_interface") GodotMethod!(void, ARVRInterface) setPrimaryInterface;
		@GodotName("set_world_scale") GodotMethod!(void, double) setWorldScale;
	}
	/// 
	pragma(inline, true) bool opEquals(in ARVRServerSingleton other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) ARVRServerSingleton opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ARVRServerSingleton.
	/// Note: use `memnew!ARVRServerSingleton` instead.
	static ARVRServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVRServer");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRServerSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum RotationMode : int
	{
		/**
		Fully reset the orientation of the HMD. Regardless of what direction the user is looking to in the real world. The user will look dead ahead in the virtual world.
		*/
		resetFullRotation = 0,
		/**
		Resets the orientation but keeps the tilt of the device. So if we're looking down, we keep looking down but heading will be reset.
		*/
		resetButKeepTilt = 1,
		/**
		Does not reset the orientation of the HMD, only the position of the player gets centered.
		*/
		dontResetRotation = 2,
	}
	/// 
	enum TrackerType : int
	{
		/**
		The tracker tracks the location of a controller.
		*/
		trackerController = 1,
		/**
		The tracker tracks the location of a base station.
		*/
		trackerBasestation = 2,
		/**
		The tracker tracks the location and size of an AR anchor.
		*/
		trackerAnchor = 4,
		/**
		Used internally to filter trackers of any known type.
		*/
		trackerAnyKnown = 127,
		/**
		Used internally if we haven't set the tracker type yet.
		*/
		trackerUnknown = 128,
		/**
		Used internally to select all trackers.
		*/
		trackerAny = 255,
	}
	/// 
	enum Constants : int
	{
		resetFullRotation = 0,
		resetButKeepTilt = 1,
		trackerController = 1,
		dontResetRotation = 2,
		trackerBasestation = 2,
		trackerAnchor = 4,
		trackerAnyKnown = 127,
		trackerUnknown = 128,
		trackerAny = 255,
	}
	/**
	This is an important function to understand correctly. AR and VR platforms all handle positioning slightly differently.
	For platforms that do not offer spatial tracking, our origin point (0,0,0) is the location of our HMD, but you have little control over the direction the player is facing in the real world.
	For platforms that do offer spatial tracking, our origin point depends very much on the system. For OpenVR, our origin point is usually the center of the tracking space, on the ground. For other platforms, it's often the location of the tracking camera.
	This method allows you to center your tracker on the location of the HMD. It will take the current location of the HMD and use that to adjust all your tracking data; in essence, realigning the real world to your player's current position in the game world.
	For this method to produce usable results, tracking information must be available. This often takes a few frames after starting your game.
	You should call this method after a few seconds have passed. For instance, when the user requests a realignment of the display holding a designated button on a controller for a short period of time, or when implementing a teleport mechanism.
	*/
	void centerOnHmd(in long rotation_mode, in bool keep_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.centerOnHmd, _godot_object, rotation_mode, keep_height);
	}
	/**
	Finds an interface by its name. For instance, if your project uses capabilities of an AR/VR platform, you can find the interface for that platform by name and initialize it.
	*/
	Ref!ARVRInterface findInterface(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface)(GDNativeClassBinding.findInterface, _godot_object, name);
	}
	/**
	Returns the primary interface's transformation.
	*/
	Transform getHmdTransform()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getHmdTransform, _godot_object);
	}
	/**
	Returns the interface registered at a given index in our list of interfaces.
	*/
	Ref!ARVRInterface getInterface(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface)(GDNativeClassBinding.getInterface, _godot_object, idx);
	}
	/**
	Returns the number of interfaces currently registered with the AR/VR server. If your project supports multiple AR/VR platforms, you can look through the available interface, and either present the user with a selection or simply try to initialize each interface and use the first one that returns `true`.
	*/
	long getInterfaceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getInterfaceCount, _godot_object);
	}
	/**
	Returns a list of available interfaces the ID and name of each interface.
	*/
	Array getInterfaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getInterfaces, _godot_object);
	}
	/**
	Returns the absolute timestamp (in μs) of the last $(D ARVRServer) commit of the AR/VR eyes to $(D VisualServer). The value comes from an internal call to $(D OS.getTicksUsec).
	*/
	long getLastCommitUsec()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastCommitUsec, _godot_object);
	}
	/**
	Returns the duration (in μs) of the last frame. This is computed as the difference between $(D getLastCommitUsec) and $(D getLastProcessUsec) when committing.
	*/
	long getLastFrameUsec()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastFrameUsec, _godot_object);
	}
	/**
	Returns the absolute timestamp (in μs) of the last $(D ARVRServer) process callback. The value comes from an internal call to $(D OS.getTicksUsec).
	*/
	long getLastProcessUsec()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastProcessUsec, _godot_object);
	}
	/**
	
	*/
	Ref!ARVRInterface getPrimaryInterface() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface)(GDNativeClassBinding.getPrimaryInterface, _godot_object);
	}
	/**
	Returns the reference frame transform. Mostly used internally and exposed for GDNative build interfaces.
	*/
	Transform getReferenceFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getReferenceFrame, _godot_object);
	}
	/**
	Returns the positional tracker at the given ID.
	*/
	ARVRPositionalTracker getTracker(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRPositionalTracker)(GDNativeClassBinding.getTracker, _godot_object, idx);
	}
	/**
	Returns the number of trackers currently registered.
	*/
	long getTrackerCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTrackerCount, _godot_object);
	}
	/**
	
	*/
	double getWorldScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWorldScale, _godot_object);
	}
	/**
	
	*/
	void setPrimaryInterface(ARVRInterface _interface)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPrimaryInterface, _godot_object, _interface);
	}
	/**
	
	*/
	void setWorldScale(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWorldScale, _godot_object, arg0);
	}
	/**
	The primary $(D ARVRInterface) currently bound to the $(D ARVRServer).
	*/
	@property ARVRInterface primaryInterface()
	{
		return getPrimaryInterface();
	}
	/// ditto
	@property void primaryInterface(ARVRInterface v)
	{
		setPrimaryInterface(v);
	}
	/**
	Allows you to adjust the scale to your game's units. Most AR/VR platforms assume a scale of 1 game world unit = 1 real world meter.
	*/
	@property double worldScale()
	{
		return getWorldScale();
	}
	/// ditto
	@property void worldScale(double v)
	{
		setWorldScale(v);
	}
}
/// Returns: the ARVRServerSingleton
@property @nogc nothrow pragma(inline, true)
ARVRServerSingleton ARVRServer()
{
	checkClassBinding!ARVRServerSingleton();
	return ARVRServerSingleton(ARVRServerSingleton.GDNativeClassBinding._singleton);
}
