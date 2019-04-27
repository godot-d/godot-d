/**
This is our AR/VR Server.

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
This is our AR/VR Server.

The AR/VR Server is the heart of our AR/VR solution and handles all the processing.
*/
@GodotBaseClass struct ARVRServerSingleton
{
	enum string _GODOT_internal_name = "ARVRServer";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "ARVRServer";
		@GodotName("get_world_scale") GodotMethod!(double) getWorldScale;
		@GodotName("set_world_scale") GodotMethod!(void, double) setWorldScale;
		@GodotName("get_reference_frame") GodotMethod!(Transform) getReferenceFrame;
		@GodotName("center_on_hmd") GodotMethod!(void, long, bool) centerOnHmd;
		@GodotName("get_hmd_transform") GodotMethod!(Transform) getHmdTransform;
		@GodotName("get_interface_count") GodotMethod!(long) getInterfaceCount;
		@GodotName("get_interface") GodotMethod!(ARVRInterface, long) getInterface;
		@GodotName("get_interfaces") GodotMethod!(Array) getInterfaces;
		@GodotName("find_interface") GodotMethod!(ARVRInterface, String) findInterface;
		@GodotName("get_tracker_count") GodotMethod!(long) getTrackerCount;
		@GodotName("get_tracker") GodotMethod!(ARVRPositionalTracker, long) getTracker;
		@GodotName("get_primary_interface") GodotMethod!(ARVRInterface) getPrimaryInterface;
		@GodotName("set_primary_interface") GodotMethod!(void, ARVRInterface) setPrimaryInterface;
		@GodotName("get_last_process_usec") GodotMethod!(long) getLastProcessUsec;
		@GodotName("get_last_commit_usec") GodotMethod!(long) getLastCommitUsec;
		@GodotName("get_last_frame_usec") GodotMethod!(long) getLastFrameUsec;
	}
	bool opEquals(in ARVRServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Our tracker tracks the location of a controller.
		*/
		trackerController = 1,
		/**
		Our tracker tracks the location of a base station.
		*/
		trackerBasestation = 2,
		/**
		Our tracker tracks the location and size of an AR anchor.
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
	
	*/
	double getWorldScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getWorldScale, _godot_object);
	}
	/**
	
	*/
	void setWorldScale(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWorldScale, _godot_object, arg0);
	}
	/**
	Gets our reference frame transform, mostly used internally and exposed for GDNative build interfaces.
	*/
	Transform getReferenceFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getReferenceFrame, _godot_object);
	}
	/**
	This is a really important function to understand correctly. AR and VR platforms all handle positioning slightly differently.
	For platforms that do not offer spatial tracking our origin point (0,0,0) is the location of our HMD but you have little control over the direction the player is facing in the real world.
	For platforms that do offer spatial tracking our origin point depends very much on the system. For OpenVR our origin point is usually the center of the tracking space, on the ground. For other platforms its often the location of the tracking camera.
	This method allows you to center our tracker on the location of the HMD, it will take the current location of the HMD and use that to adjust all our tracking data in essence realigning the real world to your players current position in your game world.
	For this method to produce usable results tracking information should be available and this often takes a few frames after starting your game.
	You should call this method after a few seconds have passed, when the user requests a realignment of the display holding a designated button on a controller for a short period of time, and when implementing a teleport mechanism.
	*/
	void centerOnHmd(in long rotation_mode, in bool keep_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.centerOnHmd, _godot_object, rotation_mode, keep_height);
	}
	/**
	Returns the primary interface's transformation.
	*/
	Transform getHmdTransform()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getHmdTransform, _godot_object);
	}
	/**
	Get the number of interfaces currently registered with the AR/VR server. If your game supports multiple AR/VR platforms, you can look through the available interface, and either present the user with a selection or simply try an initialize each interface and use the first one that returns `true`.
	*/
	long getInterfaceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getInterfaceCount, _godot_object);
	}
	/**
	Get the interface registered at a given index in our list of interfaces.
	*/
	Ref!ARVRInterface getInterface(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface)(_classBinding.getInterface, _godot_object, idx);
	}
	/**
	Returns a list of available interfaces with both id and name of the interface.
	*/
	Array getInterfaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getInterfaces, _godot_object);
	}
	/**
	Find an interface by its name. Say that you're making a game that uses specific capabilities of an AR/VR platform you can find the interface for that platform by name and initialize it.
	*/
	Ref!ARVRInterface findInterface(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface)(_classBinding.findInterface, _godot_object, name);
	}
	/**
	Get the number of trackers currently registered.
	*/
	long getTrackerCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTrackerCount, _godot_object);
	}
	/**
	Get the positional tracker at the given ID.
	*/
	ARVRPositionalTracker getTracker(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRPositionalTracker)(_classBinding.getTracker, _godot_object, idx);
	}
	/**
	
	*/
	Ref!ARVRInterface getPrimaryInterface() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface)(_classBinding.getPrimaryInterface, _godot_object);
	}
	/**
	
	*/
	void setPrimaryInterface(ARVRInterface _interface)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPrimaryInterface, _godot_object, _interface);
	}
	/**
	
	*/
	long getLastProcessUsec()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLastProcessUsec, _godot_object);
	}
	/**
	
	*/
	long getLastCommitUsec()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLastCommitUsec, _godot_object);
	}
	/**
	
	*/
	long getLastFrameUsec()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLastFrameUsec, _godot_object);
	}
	/**
	Allows you to adjust the scale to your game's units. Most AR/VR platforms assume a scale of 1 game world unit = 1 meter in the real world.
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
	/**
	
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
}
/// Returns: the ARVRServerSingleton
@property @nogc nothrow pragma(inline, true)
ARVRServerSingleton ARVRServer()
{
	checkClassBinding!ARVRServerSingleton();
	return ARVRServerSingleton(ARVRServerSingleton._classBinding._singleton);
}
