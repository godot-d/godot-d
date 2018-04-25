/**
A spatial node representing a spatially tracked controller.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrcontroller;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.arvrpositionaltracker;
/**
A spatial node representing a spatially tracked controller.

This is a helper spatial node that is linked to the tracking of controllers. It also offers several handy pass throughs to the state of buttons and such on the controllers.
Controllers are linked by their id. You can create controller nodes before the controllers are available. Say your game always uses two controllers (one for each hand) you can predefine the controllers with id 1 and 2 and they will become active as soon as the controllers are identified. If you expect additional controllers to be used you should react to the signals and add ARVRController nodes to your scene.
The position of the controller node is automatically updated by the ARVR Server. This makes this node ideal to add child  nodes to visualise the controller.
*/
@GodotBaseClass struct ARVRController
{
	static immutable string _GODOT_internal_name = "ARVRController";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ARVRController other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRController opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRController _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVRController");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRController)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_set_controller_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_controller_id") = _GODOT_set_controller_id;
	/**
	
	*/
	void setControllerId(in long controller_id)
	{
		_GODOT_set_controller_id.bind("ARVRController", "set_controller_id");
		ptrcall!(void)(_GODOT_set_controller_id, _godot_object, controller_id);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_controller_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_controller_id") = _GODOT_get_controller_id;
	/**
	
	*/
	long getControllerId() const
	{
		_GODOT_get_controller_id.bind("ARVRController", "get_controller_id");
		return ptrcall!(long)(_GODOT_get_controller_id, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_controller_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_controller_name") = _GODOT_get_controller_name;
	/**
	If active, returns the name of the associated controller if provided by the AR/VR SDK used.
	*/
	String getControllerName() const
	{
		_GODOT_get_controller_name.bind("ARVRController", "get_controller_name");
		return ptrcall!(String)(_GODOT_get_controller_name, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_joystick_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joystick_id") = _GODOT_get_joystick_id;
	/**
	Returns the ID of the joystick object bound to this. Every controller tracked by the ARVR Server that has buttons and axis will also be registered as a joystick within Godot. This means that all the normal joystick tracking and input mapping will work for buttons and axis found on the AR/VR controllers. This ID is purely offered as information so you can link up the controller with its joystick entry.
	*/
	long getJoystickId() const
	{
		_GODOT_get_joystick_id.bind("ARVRController", "get_joystick_id");
		return ptrcall!(long)(_GODOT_get_joystick_id, _godot_object);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_is_button_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_button_pressed") = _GODOT_is_button_pressed;
	/**
	Returns `true` if the button at index `button` is pressed.
	*/
	long isButtonPressed(in long button) const
	{
		_GODOT_is_button_pressed.bind("ARVRController", "is_button_pressed");
		return ptrcall!(long)(_GODOT_is_button_pressed, _godot_object, button);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_joystick_axis;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_joystick_axis") = _GODOT_get_joystick_axis;
	/**
	Returns the value of the given axis for things like triggers, touchpads, etc. that are embedded into the controller.
	*/
	double getJoystickAxis(in long axis) const
	{
		_GODOT_get_joystick_axis.bind("ARVRController", "get_joystick_axis");
		return ptrcall!(double)(_GODOT_get_joystick_axis, _godot_object, axis);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_is_active") = _GODOT_get_is_active;
	/**
	Returns `true` if the bound controller is active. ARVR systems attempt to track active controllers.
	*/
	bool getIsActive() const
	{
		_GODOT_get_is_active.bind("ARVRController", "get_is_active");
		return ptrcall!(bool)(_GODOT_get_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(ARVRPositionalTracker.TrackerHand) _GODOT_get_hand;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hand") = _GODOT_get_hand;
	/**
	Returns the hand holding this controller, if known. See TRACKER_* constants in $(D ARVRPositionalTracker).
	*/
	ARVRPositionalTracker.TrackerHand getHand() const
	{
		_GODOT_get_hand.bind("ARVRController", "get_hand");
		return ptrcall!(ARVRPositionalTracker.TrackerHand)(_GODOT_get_hand, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rumble;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rumble") = _GODOT_get_rumble;
	/**
	
	*/
	double getRumble() const
	{
		_GODOT_get_rumble.bind("ARVRController", "get_rumble");
		return ptrcall!(double)(_GODOT_get_rumble, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rumble;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rumble") = _GODOT_set_rumble;
	/**
	
	*/
	void setRumble(in double rumble)
	{
		_GODOT_set_rumble.bind("ARVRController", "set_rumble");
		ptrcall!(void)(_GODOT_set_rumble, _godot_object, rumble);
	}
	/**
	The controller's id.
	A controller id of 0 is unbound and will always result in an inactive node. Controller id 1 is reserved for the first controller that identifies itself as the left hand controller and id 2 is reserved for the first controller that identifies itself as the right hand controller.
	For any other controller that the $(D ARVRServer) detects we continue with controller id 3.
	When a controller is turned off, its slot is freed. This ensures controllers will keep the same id even when controllers with lower ids are turned off.
	*/
	@property long controllerId()
	{
		return getControllerId();
	}
	/// ditto
	@property void controllerId(long v)
	{
		setControllerId(v);
	}
	/**
	The degree to which the tracker rumbles. Ranges from `0.0` to `1.0` with precision `.01`. If changed, updates $(D ARVRPositionalTracker.rumble) accordingly.
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
