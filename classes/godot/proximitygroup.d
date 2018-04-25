/**
General purpose proximity-detection node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.proximitygroup;
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
/**
General purpose proximity-detection node.


*/
@GodotBaseClass struct ProximityGroup
{
	static immutable string _GODOT_internal_name = "ProximityGroup";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ProximityGroup other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ProximityGroup opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ProximityGroup _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ProximityGroup");
		if(constructor is null) return typeof(this).init;
		return cast(ProximityGroup)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum DispatchMode : int
	{
		/**
		
		*/
		modeProxy = 0,
		/**
		
		*/
		modeSignal = 1,
	}
	/// 
	enum Constants : int
	{
		modeProxy = 0,
		modeSignal = 1,
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_group_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_group_name") = _GODOT_set_group_name;
	/**
	
	*/
	void setGroupName(StringArg0)(in StringArg0 name)
	{
		_GODOT_set_group_name.bind("ProximityGroup", "set_group_name");
		ptrcall!(void)(_GODOT_set_group_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_group_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_group_name") = _GODOT_get_group_name;
	/**
	
	*/
	String getGroupName() const
	{
		_GODOT_get_group_name.bind("ProximityGroup", "get_group_name");
		return ptrcall!(String)(_GODOT_get_group_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_dispatch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dispatch_mode") = _GODOT_set_dispatch_mode;
	/**
	
	*/
	void setDispatchMode(in long mode)
	{
		_GODOT_set_dispatch_mode.bind("ProximityGroup", "set_dispatch_mode");
		ptrcall!(void)(_GODOT_set_dispatch_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(ProximityGroup.DispatchMode) _GODOT_get_dispatch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dispatch_mode") = _GODOT_get_dispatch_mode;
	/**
	
	*/
	ProximityGroup.DispatchMode getDispatchMode() const
	{
		_GODOT_get_dispatch_mode.bind("ProximityGroup", "get_dispatch_mode");
		return ptrcall!(ProximityGroup.DispatchMode)(_GODOT_get_dispatch_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_grid_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_grid_radius") = _GODOT_set_grid_radius;
	/**
	
	*/
	void setGridRadius(in Vector3 radius)
	{
		_GODOT_set_grid_radius.bind("ProximityGroup", "set_grid_radius");
		ptrcall!(void)(_GODOT_set_grid_radius, _godot_object, radius);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_grid_radius;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_grid_radius") = _GODOT_get_grid_radius;
	/**
	
	*/
	Vector3 getGridRadius() const
	{
		_GODOT_get_grid_radius.bind("ProximityGroup", "get_grid_radius");
		return ptrcall!(Vector3)(_GODOT_get_grid_radius, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_broadcast;
	package(godot) alias _GODOT_methodBindInfo(string name : "broadcast") = _GODOT_broadcast;
	/**
	
	*/
	void broadcast(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 parameters)
	{
		_GODOT_broadcast.bind("ProximityGroup", "broadcast");
		ptrcall!(void)(_GODOT_broadcast, _godot_object, name, parameters);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT__proximity_group_broadcast;
	package(godot) alias _GODOT_methodBindInfo(string name : "_proximity_group_broadcast") = _GODOT__proximity_group_broadcast;
	/**
	
	*/
	void _proximityGroupBroadcast(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 params)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(name);
		_GODOT_args.append(params);
		String _GODOT_method_name = String("_proximity_group_broadcast");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property String groupName()
	{
		return getGroupName();
	}
	/// ditto
	@property void groupName(String v)
	{
		setGroupName(v);
	}
	/**
	
	*/
	@property ProximityGroup.DispatchMode dispatchMode()
	{
		return getDispatchMode();
	}
	/// ditto
	@property void dispatchMode(long v)
	{
		setDispatchMode(v);
	}
	/**
	
	*/
	@property Vector3 gridRadius()
	{
		return getGridRadius();
	}
	/// ditto
	@property void gridRadius(Vector3 v)
	{
		setGridRadius(v);
	}
}
