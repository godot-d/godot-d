/**
A spatial node representing a spatially-tracked controller.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrcontroller;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.arvrpositionaltracker;
import godot.mesh;
/**
A spatial node representing a spatially-tracked controller.

This is a helper spatial node that is linked to the tracking of controllers. It also offers several handy passthroughs to the state of buttons and such on the controllers.
Controllers are linked by their ID. You can create controller nodes before the controllers are available. If your game always uses two controllers (one for each hand), you can predefine the controllers with ID 1 and 2; they will become active as soon as the controllers are identified. If you expect additional controllers to be used, you should react to the signals and add ARVRController nodes to your scene.
The position of the controller node is automatically updated by the $(D ARVRServer). This makes this node ideal to add child nodes to visualize the controller.
*/
@GodotBaseClass struct ARVRController
{
	package(godot) enum string _GODOT_internal_name = "ARVRController";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_controller_id") GodotMethod!(long) getControllerId;
		@GodotName("get_controller_name") GodotMethod!(String) getControllerName;
		@GodotName("get_hand") GodotMethod!(ARVRPositionalTracker.TrackerHand) getHand;
		@GodotName("get_is_active") GodotMethod!(bool) getIsActive;
		@GodotName("get_joystick_axis") GodotMethod!(double, long) getJoystickAxis;
		@GodotName("get_joystick_id") GodotMethod!(long) getJoystickId;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("get_rumble") GodotMethod!(double) getRumble;
		@GodotName("is_button_pressed") GodotMethod!(long, long) isButtonPressed;
		@GodotName("set_controller_id") GodotMethod!(void, long) setControllerId;
		@GodotName("set_rumble") GodotMethod!(void, double) setRumble;
	}
	/// 
	pragma(inline, true) bool opEquals(in ARVRController other) const
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
	/// Construct a new instance of ARVRController.
	/// Note: use `memnew!ARVRController` instead.
	static ARVRController _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVRController");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRController)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getControllerId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getControllerId, _godot_object);
	}
	/**
	If active, returns the name of the associated controller if provided by the AR/VR SDK used.
	*/
	String getControllerName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getControllerName, _godot_object);
	}
	/**
	Returns the hand holding this controller, if known. See $(D ARVRPositionalTracker.trackerhand).
	*/
	ARVRPositionalTracker.TrackerHand getHand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRPositionalTracker.TrackerHand)(GDNativeClassBinding.getHand, _godot_object);
	}
	/**
	Returns `true` if the bound controller is active. ARVR systems attempt to track active controllers.
	*/
	bool getIsActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getIsActive, _godot_object);
	}
	/**
	Returns the value of the given axis for things like triggers, touchpads, etc. that are embedded into the controller.
	*/
	double getJoystickAxis(in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getJoystickAxis, _godot_object, axis);
	}
	/**
	Returns the ID of the joystick object bound to this. Every controller tracked by the $(D ARVRServer) that has buttons and axis will also be registered as a joystick within Godot. This means that all the normal joystick tracking and input mapping will work for buttons and axis found on the AR/VR controllers. This ID is purely offered as information so you can link up the controller with its joystick entry.
	*/
	long getJoystickId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getJoystickId, _godot_object);
	}
	/**
	If provided by the $(D ARVRInterface), this returns a mesh associated with the controller. This can be used to visualize the controller.
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	double getRumble() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRumble, _godot_object);
	}
	/**
	Returns `true` if the button at index `button` is pressed. See $(D joysticklist), in particular the `JOY_VR_*` constants.
	*/
	long isButtonPressed(in long button) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.isButtonPressed, _godot_object, button);
	}
	/**
	
	*/
	void setControllerId(in long controller_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setControllerId, _godot_object, controller_id);
	}
	/**
	
	*/
	void setRumble(in double rumble)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRumble, _godot_object, rumble);
	}
	/**
	The controller's ID.
	A controller ID of 0 is unbound and will always result in an inactive node. Controller ID 1 is reserved for the first controller that identifies itself as the left-hand controller and ID 2 is reserved for the first controller that identifies itself as the right-hand controller.
	For any other controller that the $(D ARVRServer) detects, we continue with controller ID 3.
	When a controller is turned off, its slot is freed. This ensures controllers will keep the same ID even when controllers with lower IDs are turned off.
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
	The degree to which the controller vibrates. Ranges from `0.0` to `1.0` with precision `.01`. If changed, updates $(D ARVRPositionalTracker.rumble) accordingly.
	This is a useful property to animate if you want the controller to vibrate for a limited duration.
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
