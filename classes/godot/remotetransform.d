/**
RemoteTransform leads the $(D Transform) of another $(D Spatial) derived Node in the scene.

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
/**
RemoteTransform leads the $(D Transform) of another $(D Spatial) derived Node in the scene.

RemoteTransform leads the $(D Transform) of another $(D Spatial) derived Node (called the remote node) in the scene.
It can be set to track another Node's position, rotation and/or scale. It can update using either global or local coordinates.
*/
@GodotBaseClass struct RemoteTransform
{
	static immutable string _GODOT_internal_name = "RemoteTransform";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_remote_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_remote_node") = _GODOT_set_remote_node;
	/**
	
	*/
	void setRemoteNode(NodePathArg0)(in NodePathArg0 path)
	{
		_GODOT_set_remote_node.bind("RemoteTransform", "set_remote_node");
		ptrcall!(void)(_GODOT_set_remote_node, _godot_object, path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_remote_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_remote_node") = _GODOT_get_remote_node;
	/**
	
	*/
	NodePath getRemoteNode() const
	{
		_GODOT_get_remote_node.bind("RemoteTransform", "get_remote_node");
		return ptrcall!(NodePath)(_GODOT_get_remote_node, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_global_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_global_coordinates") = _GODOT_set_use_global_coordinates;
	/**
	
	*/
	void setUseGlobalCoordinates(in bool use_global_coordinates)
	{
		_GODOT_set_use_global_coordinates.bind("RemoteTransform", "set_use_global_coordinates");
		ptrcall!(void)(_GODOT_set_use_global_coordinates, _godot_object, use_global_coordinates);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_global_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_global_coordinates") = _GODOT_get_use_global_coordinates;
	/**
	
	*/
	bool getUseGlobalCoordinates() const
	{
		_GODOT_get_use_global_coordinates.bind("RemoteTransform", "get_use_global_coordinates");
		return ptrcall!(bool)(_GODOT_get_use_global_coordinates, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_update_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_update_position") = _GODOT_set_update_position;
	/**
	
	*/
	void setUpdatePosition(in bool update_remote_position)
	{
		_GODOT_set_update_position.bind("RemoteTransform", "set_update_position");
		ptrcall!(void)(_GODOT_set_update_position, _godot_object, update_remote_position);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_update_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_update_position") = _GODOT_get_update_position;
	/**
	
	*/
	bool getUpdatePosition() const
	{
		_GODOT_get_update_position.bind("RemoteTransform", "get_update_position");
		return ptrcall!(bool)(_GODOT_get_update_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_update_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_update_rotation") = _GODOT_set_update_rotation;
	/**
	
	*/
	void setUpdateRotation(in bool update_remote_rotation)
	{
		_GODOT_set_update_rotation.bind("RemoteTransform", "set_update_rotation");
		ptrcall!(void)(_GODOT_set_update_rotation, _godot_object, update_remote_rotation);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_update_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_update_rotation") = _GODOT_get_update_rotation;
	/**
	
	*/
	bool getUpdateRotation() const
	{
		_GODOT_get_update_rotation.bind("RemoteTransform", "get_update_rotation");
		return ptrcall!(bool)(_GODOT_get_update_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_update_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_update_scale") = _GODOT_set_update_scale;
	/**
	
	*/
	void setUpdateScale(in bool update_remote_scale)
	{
		_GODOT_set_update_scale.bind("RemoteTransform", "set_update_scale");
		ptrcall!(void)(_GODOT_set_update_scale, _godot_object, update_remote_scale);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_update_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_update_scale") = _GODOT_get_update_scale;
	/**
	
	*/
	bool getUpdateScale() const
	{
		_GODOT_get_update_scale.bind("RemoteTransform", "get_update_scale");
		return ptrcall!(bool)(_GODOT_get_update_scale, _godot_object);
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
	If `true` global coordinates are used. If `false` local coordinates are used. Default value: `true`.
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
	If `true` the remote node's position is tracked. Default value: `true`.
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
	If `true` the remote node's rotation is tracked. Default value: `true`.
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
	If `true` the remote node's scale is tracked. Default value: `true`.
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
