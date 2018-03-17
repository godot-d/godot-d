/**
A tracked object

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrpositionaltracker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.arvrserver;
/**
A tracked object

An instance of this object represents a device that is tracked such as a controller or anchor point. HMDs aren't represented here as they are fully handled internally.
As controllers are turned on and the AR/VR interface detects them instances of this object are automatically added to this list of active tracking objects accessible through the ARVRServer
The ARVRController and ARVRAnchor both consume objects of this type and should be the objects you use in game. The positional trackers are just the under the hood objects that make this all work and are mostly exposed so GDNative based interfaces can interact with them.
*/
@GodotBaseClass struct ARVRPositionalTracker
{
	static immutable string _GODOT_internal_name = "ARVRPositionalTracker";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ARVRPositionalTracker other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRPositionalTracker opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRPositionalTracker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVRPositionalTracker");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRPositionalTracker)(constructor());
	}
	/// 
	enum TrackerHand : int
	{
		/**
		The hand this tracker is held in is unknown or not applicable.
		*/
		trackerHandUnknown = 0,
		/**
		This tracker is the left hand controller.
		*/
		trackerLeftHand = 1,
		/**
		This tracker is the right hand controller.
		*/
		trackerRightHand = 2,
	}
	/// 
	enum Constants : int
	{
		trackerHandUnknown = 0,
		trackerLeftHand = 1,
		trackerRightHand = 2,
	}
	package(godot) static GodotMethod!(ARVRServer.TrackerType) _GODOT_get_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_type") = _GODOT_get_type;
	/**
	Returns the tracker's type.
	*/
	ARVRServer.TrackerType getType() const
	{
		_GODOT_get_type.bind("ARVRPositionalTracker", "get_type");
		return ptrcall!(ARVRServer.TrackerType)(_GODOT_get_type, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_name") = _GODOT_get_name;
	/**
	Returns the controller or anchor point's name if available.
	*/
	String getName() const
	{
		_GODOT_get_name.bind("ARVRPositionalTracker", "get_name");
		return ptrcall!(String)(_GODOT_get_name, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_joy_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joy_id") = _GODOT_get_joy_id;
	/**
	If this is a controller that is being tracked the controller will also be represented by a joystick entry with this id.
	*/
	long getJoyId() const
	{
		_GODOT_get_joy_id.bind("ARVRPositionalTracker", "get_joy_id");
		return ptrcall!(long)(_GODOT_get_joy_id, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_tracks_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracks_orientation") = _GODOT_get_tracks_orientation;
	/**
	Returns `true` if this device tracks orientation.
	*/
	bool getTracksOrientation() const
	{
		_GODOT_get_tracks_orientation.bind("ARVRPositionalTracker", "get_tracks_orientation");
		return ptrcall!(bool)(_GODOT_get_tracks_orientation, _godot_object);
	}
	package(godot) static GodotMethod!(Basis) _GODOT_get_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_orientation") = _GODOT_get_orientation;
	/**
	Returns the controller's orientation matrix.
	*/
	Basis getOrientation() const
	{
		_GODOT_get_orientation.bind("ARVRPositionalTracker", "get_orientation");
		return ptrcall!(Basis)(_GODOT_get_orientation, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_tracks_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tracks_position") = _GODOT_get_tracks_position;
	/**
	Returns `true` if this device tracks position.
	*/
	bool getTracksPosition() const
	{
		_GODOT_get_tracks_position.bind("ARVRPositionalTracker", "get_tracks_position");
		return ptrcall!(bool)(_GODOT_get_tracks_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	/**
	Returns the world-space controller position.
	*/
	Vector3 getPosition() const
	{
		_GODOT_get_position.bind("ARVRPositionalTracker", "get_position");
		return ptrcall!(Vector3)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRPositionalTracker.TrackerHand) _GODOT_get_hand;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hand") = _GODOT_get_hand;
	/**
	Returns the hand holding this tracker, if known. See TRACKER_* constants.
	*/
	ARVRPositionalTracker.TrackerHand getHand() const
	{
		_GODOT_get_hand.bind("ARVRPositionalTracker", "get_hand");
		return ptrcall!(ARVRPositionalTracker.TrackerHand)(_GODOT_get_hand, _godot_object);
	}
	package(godot) static GodotMethod!(Transform, bool) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	/**
	Returns the transform combining this device's orientation and position.
	*/
	Transform getTransform(in bool adjust_by_reference_frame) const
	{
		_GODOT_get_transform.bind("ARVRPositionalTracker", "get_transform");
		return ptrcall!(Transform)(_GODOT_get_transform, _godot_object, adjust_by_reference_frame);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__set_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_type") = _GODOT__set_type;
	/**
	
	*/
	void _setType(in long type)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(type);
		String _GODOT_method_name = String("_set_type");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__set_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_name") = _GODOT__set_name;
	/**
	
	*/
	void _setName(StringArg0)(in StringArg0 name)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(name);
		String _GODOT_method_name = String("_set_name");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__set_joy_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_joy_id") = _GODOT__set_joy_id;
	/**
	
	*/
	void _setJoyId(in long joy_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(joy_id);
		String _GODOT_method_name = String("_set_joy_id");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Basis) _GODOT__set_orientation;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_orientation") = _GODOT__set_orientation;
	/**
	
	*/
	void _setOrientation(in Basis orientation)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(orientation);
		String _GODOT_method_name = String("_set_orientation");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT__set_rw_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_rw_position") = _GODOT__set_rw_position;
	/**
	
	*/
	void _setRwPosition(in Vector3 rw_position)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(rw_position);
		String _GODOT_method_name = String("_set_rw_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rumble;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rumble") = _GODOT_get_rumble;
	/**
	
	*/
	double getRumble() const
	{
		_GODOT_get_rumble.bind("ARVRPositionalTracker", "get_rumble");
		return ptrcall!(double)(_GODOT_get_rumble, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rumble;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rumble") = _GODOT_set_rumble;
	/**
	
	*/
	void setRumble(in double rumble)
	{
		_GODOT_set_rumble.bind("ARVRPositionalTracker", "set_rumble");
		ptrcall!(void)(_GODOT_set_rumble, _godot_object, rumble);
	}
	/**
	The degree to which the tracker rumbles. Ranges from `0.0` to `1.0` with precision `.01`.
	*/
	@property double rumble()
	{
		return getRumble();
	}
	/// ditto
	@property void rumble(double v)
	{
		setRumble(v);
	}
}
