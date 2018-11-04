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
	enum string _GODOT_internal_name = "ARVRPositionalTracker";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_type") GodotMethod!(ARVRServer.TrackerType) getType;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_joy_id") GodotMethod!(long) getJoyId;
		@GodotName("get_tracks_orientation") GodotMethod!(bool) getTracksOrientation;
		@GodotName("get_orientation") GodotMethod!(Basis) getOrientation;
		@GodotName("get_tracks_position") GodotMethod!(bool) getTracksPosition;
		@GodotName("get_position") GodotMethod!(Vector3) getPosition;
		@GodotName("get_hand") GodotMethod!(ARVRPositionalTracker.TrackerHand) getHand;
		@GodotName("get_transform") GodotMethod!(Transform, bool) getTransform;
		@GodotName("_set_type") GodotMethod!(void, long) _setType;
		@GodotName("_set_name") GodotMethod!(void, String) _setName;
		@GodotName("_set_joy_id") GodotMethod!(void, long) _setJoyId;
		@GodotName("_set_orientation") GodotMethod!(void, Basis) _setOrientation;
		@GodotName("_set_rw_position") GodotMethod!(void, Vector3) _setRwPosition;
		@GodotName("get_rumble") GodotMethod!(double) getRumble;
		@GodotName("set_rumble") GodotMethod!(void, double) setRumble;
	}
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
	@disable new(size_t s);
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
	/**
	Returns the tracker's type.
	*/
	ARVRServer.TrackerType getType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRServer.TrackerType)(_classBinding.getType, _godot_object);
	}
	/**
	Returns the controller or anchor point's name if available.
	*/
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getName, _godot_object);
	}
	/**
	If this is a controller that is being tracked the controller will also be represented by a joystick entry with this id.
	*/
	long getJoyId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getJoyId, _godot_object);
	}
	/**
	Returns `true` if this device tracks orientation.
	*/
	bool getTracksOrientation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getTracksOrientation, _godot_object);
	}
	/**
	Returns the controller's orientation matrix.
	*/
	Basis getOrientation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Basis)(_classBinding.getOrientation, _godot_object);
	}
	/**
	Returns `true` if this device tracks position.
	*/
	bool getTracksPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getTracksPosition, _godot_object);
	}
	/**
	Returns the world-space controller position.
	*/
	Vector3 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getPosition, _godot_object);
	}
	/**
	Returns the hand holding this tracker, if known. See TRACKER_* constants.
	*/
	ARVRPositionalTracker.TrackerHand getHand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRPositionalTracker.TrackerHand)(_classBinding.getHand, _godot_object);
	}
	/**
	Returns the transform combining this device's orientation and position.
	*/
	Transform getTransform(in bool adjust_by_reference_frame) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getTransform, _godot_object, adjust_by_reference_frame);
	}
	/**
	
	*/
	void _setType(in long type)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(type);
		String _GODOT_method_name = String("_set_type");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setName(in String name)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(name);
		String _GODOT_method_name = String("_set_name");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setJoyId(in long joy_id)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(joy_id);
		String _GODOT_method_name = String("_set_joy_id");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setOrientation(in Basis orientation)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(orientation);
		String _GODOT_method_name = String("_set_orientation");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setRwPosition(in Vector3 rw_position)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(rw_position);
		String _GODOT_method_name = String("_set_rw_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getRumble() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRumble, _godot_object);
	}
	/**
	
	*/
	void setRumble(in double rumble)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRumble, _godot_object, rumble);
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
