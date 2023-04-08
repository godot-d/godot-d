/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.remotetransform2d;
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
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct RemoteTransform2D
{
	package(godot) enum string _GODOT_internal_name = "RemoteTransform2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("force_update_cache") GodotMethod!(void) forceUpdateCache;
		@GodotName("get_remote_node") GodotMethod!(NodePath) getRemoteNode;
		@GodotName("get_update_position") GodotMethod!(bool) getUpdatePosition;
		@GodotName("get_update_rotation") GodotMethod!(bool) getUpdateRotation;
		@GodotName("get_update_scale") GodotMethod!(bool) getUpdateScale;
		@GodotName("get_use_global_coordinates") GodotMethod!(bool) getUseGlobalCoordinates;
		@GodotName("set_remote_node") GodotMethod!(void, NodePath) setRemoteNode;
		@GodotName("set_update_position") GodotMethod!(void, bool) setUpdatePosition;
		@GodotName("set_update_rotation") GodotMethod!(void, bool) setUpdateRotation;
		@GodotName("set_update_scale") GodotMethod!(void, bool) setUpdateScale;
		@GodotName("set_use_global_coordinates") GodotMethod!(void, bool) setUseGlobalCoordinates;
	}
	/// 
	pragma(inline, true) bool opEquals(in RemoteTransform2D other) const
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
	/// Construct a new instance of RemoteTransform2D.
	/// Note: use `memnew!RemoteTransform2D` instead.
	static RemoteTransform2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RemoteTransform2D");
		if(constructor is null) return typeof(this).init;
		return cast(RemoteTransform2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void forceUpdateCache()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceUpdateCache, _godot_object);
	}
	/**
	
	*/
	NodePath getRemoteNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getRemoteNode, _godot_object);
	}
	/**
	
	*/
	bool getUpdatePosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUpdatePosition, _godot_object);
	}
	/**
	
	*/
	bool getUpdateRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUpdateRotation, _godot_object);
	}
	/**
	
	*/
	bool getUpdateScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUpdateScale, _godot_object);
	}
	/**
	
	*/
	bool getUseGlobalCoordinates() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseGlobalCoordinates, _godot_object);
	}
	/**
	
	*/
	void setRemoteNode(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRemoteNode, _godot_object, path);
	}
	/**
	
	*/
	void setUpdatePosition(in bool update_remote_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUpdatePosition, _godot_object, update_remote_position);
	}
	/**
	
	*/
	void setUpdateRotation(in bool update_remote_rotation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUpdateRotation, _godot_object, update_remote_rotation);
	}
	/**
	
	*/
	void setUpdateScale(in bool update_remote_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUpdateScale, _godot_object, update_remote_scale);
	}
	/**
	
	*/
	void setUseGlobalCoordinates(in bool use_global_coordinates)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseGlobalCoordinates, _godot_object, use_global_coordinates);
	}
	/**
	
	*/
	@property NodePath remotePath()
	{
		return getRemoteNode();
	}
	/// ditto
	@property void remotePath(NodePath v)
	{
		setRemoteNode(v);
	}
	/**
	
	*/
	@property bool updatePosition()
	{
		return getUpdatePosition();
	}
	/// ditto
	@property void updatePosition(bool v)
	{
		setUpdatePosition(v);
	}
	/**
	
	*/
	@property bool updateRotation()
	{
		return getUpdateRotation();
	}
	/// ditto
	@property void updateRotation(bool v)
	{
		setUpdateRotation(v);
	}
	/**
	
	*/
	@property bool updateScale()
	{
		return getUpdateScale();
	}
	/// ditto
	@property void updateScale(bool v)
	{
		setUpdateScale(v);
	}
	/**
	
	*/
	@property bool useGlobalCoordinates()
	{
		return getUseGlobalCoordinates();
	}
	/// ditto
	@property void useGlobalCoordinates(bool v)
	{
		setUseGlobalCoordinates(v);
	}
}
