/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrserver;
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
import godot.arvrpositionaltracker;
/**

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
		@GodotName("add_interface") GodotMethod!(void, ARVRInterface) addInterface;
		@GodotName("add_tracker") GodotMethod!(void, ARVRPositionalTracker) addTracker;
		@GodotName("center_on_hmd") GodotMethod!(void, long, bool) centerOnHmd;
		@GodotName("clear_primary_interface_if") GodotMethod!(void, ARVRInterface) clearPrimaryInterfaceIf;
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
		@GodotName("remove_interface") GodotMethod!(void, ARVRInterface) removeInterface;
		@GodotName("remove_tracker") GodotMethod!(void, ARVRPositionalTracker) removeTracker;
		@GodotName("set_primary_interface") GodotMethod!(void, ARVRInterface) setPrimaryInterface;
		@GodotName("set_world_scale") GodotMethod!(void, double) setWorldScale;
	}
	/// 
	pragma(inline, true) bool opEquals(in ARVRServerSingleton other) const
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
	/// Construct a new instance of ARVRServerSingleton.
	/// Note: use `memnew!ARVRServerSingleton` instead.
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
		/** */
		resetFullRotation = 0,
		/** */
		resetButKeepTilt = 1,
		/** */
		dontResetRotation = 2,
	}
	/// 
	enum TrackerType : int
	{
		/** */
		trackerController = 1,
		/** */
		trackerBasestation = 2,
		/** */
		trackerAnchor = 4,
		/** */
		trackerAnyKnown = 127,
		/** */
		trackerUnknown = 128,
		/** */
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
	void addInterface(ARVRInterface _interface)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addInterface, _godot_object, _interface);
	}
	/**
	
	*/
	void addTracker(ARVRPositionalTracker tracker)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTracker, _godot_object, tracker);
	}
	/**
	
	*/
	void centerOnHmd(in long rotation_mode, in bool keep_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.centerOnHmd, _godot_object, rotation_mode, keep_height);
	}
	/**
	
	*/
	void clearPrimaryInterfaceIf(ARVRInterface _interface)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearPrimaryInterfaceIf, _godot_object, _interface);
	}
	/**
	
	*/
	Ref!ARVRInterface findInterface(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface)(GDNativeClassBinding.findInterface, _godot_object, name);
	}
	/**
	
	*/
	Transform getHmdTransform()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getHmdTransform, _godot_object);
	}
	/**
	
	*/
	Ref!ARVRInterface getInterface(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRInterface)(GDNativeClassBinding.getInterface, _godot_object, idx);
	}
	/**
	
	*/
	long getInterfaceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getInterfaceCount, _godot_object);
	}
	/**
	
	*/
	Array getInterfaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getInterfaces, _godot_object);
	}
	/**
	
	*/
	long getLastCommitUsec()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastCommitUsec, _godot_object);
	}
	/**
	
	*/
	long getLastFrameUsec()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastFrameUsec, _godot_object);
	}
	/**
	
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
	
	*/
	Transform getReferenceFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getReferenceFrame, _godot_object);
	}
	/**
	
	*/
	Ref!ARVRPositionalTracker getTracker(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ARVRPositionalTracker)(GDNativeClassBinding.getTracker, _godot_object, idx);
	}
	/**
	
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
	void removeInterface(ARVRInterface _interface)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeInterface, _godot_object, _interface);
	}
	/**
	
	*/
	void removeTracker(ARVRPositionalTracker tracker)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeTracker, _godot_object, tracker);
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
	void setWorldScale(in double world_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWorldScale, _godot_object, world_scale);
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
	/**
	
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
