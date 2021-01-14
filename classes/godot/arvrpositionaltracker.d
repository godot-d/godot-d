/**
A tracked object.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrpositionaltracker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.mesh;
import godot.arvrserver;
/**
A tracked object.

An instance of this object represents a device that is tracked, such as a controller or anchor point. HMDs aren't represented here as they are handled internally.
As controllers are turned on and the AR/VR interface detects them, instances of this object are automatically added to this list of active tracking objects accessible through the $(D ARVRServer).
The $(D ARVRController) and $(D ARVRAnchor) both consume objects of this type and should be used in your project. The positional trackers are just under-the-hood objects that make this all work. These are mostly exposed so that GDNative-based interfaces can interact with them.
*/
@GodotBaseClass struct ARVRPositionalTracker
{
	package(godot) enum string _GODOT_internal_name = "ARVRPositionalTracker";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_set_joy_id") GodotMethod!(void, long) _setJoyId;
		@GodotName("_set_mesh") GodotMethod!(void, Mesh) _setMesh;
		@GodotName("_set_name") GodotMethod!(void, String) _setName;
		@GodotName("_set_orientation") GodotMethod!(void, Basis) _setOrientation;
		@GodotName("_set_rw_position") GodotMethod!(void, Vector3) _setRwPosition;
		@GodotName("_set_type") GodotMethod!(void, long) _setType;
		@GodotName("get_hand") GodotMethod!(ARVRPositionalTracker.TrackerHand) getHand;
		@GodotName("get_joy_id") GodotMethod!(long) getJoyId;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_orientation") GodotMethod!(Basis) getOrientation;
		@GodotName("get_position") GodotMethod!(Vector3) getPosition;
		@GodotName("get_rumble") GodotMethod!(double) getRumble;
		@GodotName("get_tracker_id") GodotMethod!(long) getTrackerId;
		@GodotName("get_tracks_orientation") GodotMethod!(bool) getTracksOrientation;
		@GodotName("get_tracks_position") GodotMethod!(bool) getTracksPosition;
		@GodotName("get_transform") GodotMethod!(Transform, bool) getTransform;
		@GodotName("get_type") GodotMethod!(ARVRServer.TrackerType) getType;
		@GodotName("set_rumble") GodotMethod!(void, double) setRumble;
	}
	/// 
	pragma(inline, true) bool opEquals(in ARVRPositionalTracker other) const
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
	/// Construct a new instance of ARVRPositionalTracker.
	/// Note: use `memnew!ARVRPositionalTracker` instead.
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
	
	*/
	void _setJoyId(in long joy_id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(joy_id);
		String _GODOT_method_name = String("_set_joy_id");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setMesh(Mesh mesh)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(mesh);
		String _GODOT_method_name = String("_set_mesh");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setName(in String name)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(name);
		String _GODOT_method_name = String("_set_name");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setOrientation(in Basis orientation)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(orientation);
		String _GODOT_method_name = String("_set_orientation");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setRwPosition(in Vector3 rw_position)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(rw_position);
		String _GODOT_method_name = String("_set_rw_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setType(in long type)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(type);
		String _GODOT_method_name = String("_set_type");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the hand holding this tracker, if known. See $(D trackerhand) constants.
	*/
	ARVRPositionalTracker.TrackerHand getHand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRPositionalTracker.TrackerHand)(GDNativeClassBinding.getHand, _godot_object);
	}
	/**
	If this is a controller that is being tracked, the controller will also be represented by a joystick entry with this ID.
	*/
	long getJoyId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getJoyId, _godot_object);
	}
	/**
	Returns the mesh related to a controller or anchor point if one is available.
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	Returns the controller or anchor point's name if available.
	*/
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getName, _godot_object);
	}
	/**
	Returns the controller's orientation matrix.
	*/
	Basis getOrientation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Basis)(GDNativeClassBinding.getOrientation, _godot_object);
	}
	/**
	Returns the world-space controller position.
	*/
	Vector3 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	double getRumble() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRumble, _godot_object);
	}
	/**
	Returns the internal tracker ID. This uniquely identifies the tracker per tracker type and matches the ID you need to specify for nodes such as the $(D ARVRController) and $(D ARVRAnchor) nodes.
	*/
	long getTrackerId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTrackerId, _godot_object);
	}
	/**
	Returns `true` if this device tracks orientation.
	*/
	bool getTracksOrientation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getTracksOrientation, _godot_object);
	}
	/**
	Returns `true` if this device tracks position.
	*/
	bool getTracksPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getTracksPosition, _godot_object);
	}
	/**
	Returns the transform combining this device's orientation and position.
	*/
	Transform getTransform(in bool adjust_by_reference_frame) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getTransform, _godot_object, adjust_by_reference_frame);
	}
	/**
	Returns the tracker's type.
	*/
	ARVRServer.TrackerType getType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRServer.TrackerType)(GDNativeClassBinding.getType, _godot_object);
	}
	/**
	
	*/
	void setRumble(in double rumble)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRumble, _godot_object, rumble);
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
