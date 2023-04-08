/**


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
	/**
	
	*/
	long getControllerId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getControllerId, _godot_object);
	}
	/**
	
	*/
	String getControllerName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getControllerName, _godot_object);
	}
	/**
	
	*/
	ARVRPositionalTracker.TrackerHand getHand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRPositionalTracker.TrackerHand)(GDNativeClassBinding.getHand, _godot_object);
	}
	/**
	
	*/
	bool getIsActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getIsActive, _godot_object);
	}
	/**
	
	*/
	double getJoystickAxis(in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getJoystickAxis, _godot_object, axis);
	}
	/**
	
	*/
	long getJoystickId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getJoystickId, _godot_object);
	}
	/**
	
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
