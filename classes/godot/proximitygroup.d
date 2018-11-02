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
import godot.node;
/**
General purpose proximity-detection node.


*/
@GodotBaseClass struct ProximityGroup
{
	enum string _GODOT_internal_name = "ProximityGroup";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_group_name") GodotMethod!(void, String) setGroupName;
		@GodotName("get_group_name") GodotMethod!(String) getGroupName;
		@GodotName("set_dispatch_mode") GodotMethod!(void, long) setDispatchMode;
		@GodotName("get_dispatch_mode") GodotMethod!(ProximityGroup.DispatchMode) getDispatchMode;
		@GodotName("set_grid_radius") GodotMethod!(void, Vector3) setGridRadius;
		@GodotName("get_grid_radius") GodotMethod!(Vector3) getGridRadius;
		@GodotName("broadcast") GodotMethod!(void, String, Variant) broadcast;
		@GodotName("_proximity_group_broadcast") GodotMethod!(void, String, Variant) _proximityGroupBroadcast;
	}
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
	/**
	
	*/
	void setGroupName(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGroupName, _godot_object, name);
	}
	/**
	
	*/
	String getGroupName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getGroupName, _godot_object);
	}
	/**
	
	*/
	void setDispatchMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDispatchMode, _godot_object, mode);
	}
	/**
	
	*/
	ProximityGroup.DispatchMode getDispatchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ProximityGroup.DispatchMode)(_classBinding.getDispatchMode, _godot_object);
	}
	/**
	
	*/
	void setGridRadius(in Vector3 radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGridRadius, _godot_object, radius);
	}
	/**
	
	*/
	Vector3 getGridRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getGridRadius, _godot_object);
	}
	/**
	
	*/
	void broadcast(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 parameters)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.broadcast, _godot_object, name, parameters);
	}
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
