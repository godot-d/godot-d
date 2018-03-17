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
	static immutable string _GODOT_internal_name = "ARVRServer";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "ARVRServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		trackerController = 1,
		resetButKeepTilt = 1,
		trackerBasestation = 2,
		dontResetRotation = 2,
		trackerAnchor = 4,
		trackerAnyKnown = 127,
		trackerUnknown = 128,
		trackerAny = 255,
	}
	package(godot) static GodotMethod!(double) _GODOT_get_world_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_scale") = _GODOT_get_world_scale;
	/**
	
	*/
	double getWorldScale() const
	{
		_GODOT_get_world_scale.bind("ARVRServer", "get_world_scale");
		return ptrcall!(double)(_GODOT_get_world_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_world_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_world_scale") = _GODOT_set_world_scale;
	/**
	
	*/
	void setWorldScale(in double arg0)
	{
		_GODOT_set_world_scale.bind("ARVRServer", "set_world_scale");
		ptrcall!(void)(_GODOT_set_world_scale, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_reference_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_reference_frame") = _GODOT_get_reference_frame;
	/**
	Gets our reference frame transform, mostly used internally and exposed for GDNative build interfaces.
	*/
	Transform getReferenceFrame() const
	{
		_GODOT_get_reference_frame.bind("ARVRServer", "get_reference_frame");
		return ptrcall!(Transform)(_GODOT_get_reference_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_center_on_hmd;
	package(godot) alias _GODOT_methodBindInfo(string name : "center_on_hmd") = _GODOT_center_on_hmd;
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
		_GODOT_center_on_hmd.bind("ARVRServer", "center_on_hmd");
		ptrcall!(void)(_GODOT_center_on_hmd, _godot_object, rotation_mode, keep_height);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_interface_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_interface_count") = _GODOT_get_interface_count;
	/**
	Get the number of interfaces currently registered with the AR/VR server. If you're game supports multiple AR/VR platforms you can look through the available interface and either present the user with a selection or simply try an initialize each interface and use the first one that returns true.
	*/
	long getInterfaceCount() const
	{
		_GODOT_get_interface_count.bind("ARVRServer", "get_interface_count");
		return ptrcall!(long)(_GODOT_get_interface_count, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRInterface, long) _GODOT_get_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_interface") = _GODOT_get_interface;
	/**
	Get the interface registered at a given index in our list of interfaces.
	*/
	Ref!ARVRInterface getInterface(in long idx) const
	{
		_GODOT_get_interface.bind("ARVRServer", "get_interface");
		return ptrcall!(ARVRInterface)(_GODOT_get_interface, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_interfaces;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_interfaces") = _GODOT_get_interfaces;
	/**
	Returns a list of available interfaces with both id and name of the interface.
	*/
	Array getInterfaces() const
	{
		_GODOT_get_interfaces.bind("ARVRServer", "get_interfaces");
		return ptrcall!(Array)(_GODOT_get_interfaces, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRInterface, String) _GODOT_find_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_interface") = _GODOT_find_interface;
	/**
	Find an interface by its name. Say that you're making a game that uses specific capabilities of an AR/VR platform you can find the interface for that platform by name and initialize it.
	*/
	Ref!ARVRInterface findInterface(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_interface.bind("ARVRServer", "find_interface");
		return ptrcall!(ARVRInterface)(_GODOT_find_interface, _godot_object, name);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_tracker_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracker_count") = _GODOT_get_tracker_count;
	/**
	Get the number of trackers currently registered.
	*/
	long getTrackerCount() const
	{
		_GODOT_get_tracker_count.bind("ARVRServer", "get_tracker_count");
		return ptrcall!(long)(_GODOT_get_tracker_count, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRPositionalTracker, long) _GODOT_get_tracker;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracker") = _GODOT_get_tracker;
	/**
	Get the positional tracker at the given ID.
	*/
	ARVRPositionalTracker getTracker(in long idx) const
	{
		_GODOT_get_tracker.bind("ARVRServer", "get_tracker");
		return ptrcall!(ARVRPositionalTracker)(_GODOT_get_tracker, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, ARVRInterface) _GODOT_set_primary_interface;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_primary_interface") = _GODOT_set_primary_interface;
	/**
	Changes the primary interface to the specified interface. Again mostly exposed for GDNative interfaces.
	*/
	void setPrimaryInterface(ARVRInterface _interface)
	{
		_GODOT_set_primary_interface.bind("ARVRServer", "set_primary_interface");
		ptrcall!(void)(_GODOT_set_primary_interface, _godot_object, _interface);
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
}
/// Returns: the ARVRServerSingleton
@property @nogc nothrow pragma(inline, true)
ARVRServerSingleton ARVRServer()
{
	return ARVRServerSingleton._GODOT_singleton();
}
