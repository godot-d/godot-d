/**
RemoteTransform pushes its own $(D Transform) to another $(D Spatial) derived Node in the scene.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.remotetransform;
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
RemoteTransform pushes its own $(D Transform) to another $(D Spatial) derived Node in the scene.

RemoteTransform pushes its own $(D Transform) to another $(D Spatial) derived Node (called the remote node) in the scene.
It can be set to update another Node's position, rotation and/or scale. It can use either global or local coordinates.
*/
@GodotBaseClass struct RemoteTransform
{
	enum string _GODOT_internal_name = "RemoteTransform";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_remote_node") GodotMethod!(void, NodePath) setRemoteNode;
		@GodotName("get_remote_node") GodotMethod!(NodePath) getRemoteNode;
		@GodotName("set_use_global_coordinates") GodotMethod!(void, bool) setUseGlobalCoordinates;
		@GodotName("get_use_global_coordinates") GodotMethod!(bool) getUseGlobalCoordinates;
		@GodotName("set_update_position") GodotMethod!(void, bool) setUpdatePosition;
		@GodotName("get_update_position") GodotMethod!(bool) getUpdatePosition;
		@GodotName("set_update_rotation") GodotMethod!(void, bool) setUpdateRotation;
		@GodotName("get_update_rotation") GodotMethod!(bool) getUpdateRotation;
		@GodotName("set_update_scale") GodotMethod!(void, bool) setUpdateScale;
		@GodotName("get_update_scale") GodotMethod!(bool) getUpdateScale;
	}
	bool opEquals(in RemoteTransform other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RemoteTransform opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RemoteTransform _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RemoteTransform");
		if(constructor is null) return typeof(this).init;
		return cast(RemoteTransform)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setRemoteNode(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRemoteNode, _godot_object, path);
	}
	/**
	
	*/
	NodePath getRemoteNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getRemoteNode, _godot_object);
	}
	/**
	
	*/
	void setUseGlobalCoordinates(in bool use_global_coordinates)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseGlobalCoordinates, _godot_object, use_global_coordinates);
	}
	/**
	
	*/
	bool getUseGlobalCoordinates() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getUseGlobalCoordinates, _godot_object);
	}
	/**
	
	*/
	void setUpdatePosition(in bool update_remote_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUpdatePosition, _godot_object, update_remote_position);
	}
	/**
	
	*/
	bool getUpdatePosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getUpdatePosition, _godot_object);
	}
	/**
	
	*/
	void setUpdateRotation(in bool update_remote_rotation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUpdateRotation, _godot_object, update_remote_rotation);
	}
	/**
	
	*/
	bool getUpdateRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getUpdateRotation, _godot_object);
	}
	/**
	
	*/
	void setUpdateScale(in bool update_remote_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUpdateScale, _godot_object, update_remote_scale);
	}
	/**
	
	*/
	bool getUpdateScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getUpdateScale, _godot_object);
	}
	/**
	The $(D NodePath) to the remote node, relative to the RemoteTransform's position in the scene.
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
	If `true`, global coordinates are used. If `false`, local coordinates are used. Default value: `true`.
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
	/**
	If `true`, the remote node's position is updated. Default value: `true`.
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
	If `true`, the remote node's rotation is updated. Default value: `true`.
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
	If `true`, the remote node's scale is updated. Default value: `true`.
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
}
