/**
A script interface to a scene file's data.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scenestate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
import godot.packedscene;
/**
A script interface to a scene file's data.

Maintains a list of resources, nodes, exported and overridden properties, and built-in scripts associated with a scene.
*/
@GodotBaseClass struct SceneState
{
	static immutable string _GODOT_internal_name = "SceneState";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in SceneState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SceneState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SceneState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SceneState");
		if(constructor is null) return typeof(this).init;
		return cast(SceneState)(constructor());
	}
	/// 
	enum GenEditState : int
	{
		/**
		If passed to $(D PackedScene.instance), blocks edits to the scene state.
		*/
		genEditStateDisabled = 0,
		/**
		If passed to $(D PackedScene.instance), provides inherited scene resources to the local scene. Requires tools compiled.
		*/
		genEditStateInstance = 1,
		/**
		If passed to $(D PackedScene.instance), provides local scene resources to the local scene. Only the main scene should receive the main edit state. Requires tools compiled.
		*/
		genEditStateMain = 2,
	}
	/// 
	enum Constants : int
	{
		genEditStateDisabled = 0,
		genEditStateInstance = 1,
		genEditStateMain = 2,
	}
	package(godot) static GodotMethod!(long) _GODOT_get_node_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_count") = _GODOT_get_node_count;
	/**
	Returns the number of nodes in the scene.
	*/
	long getNodeCount() const
	{
		_GODOT_get_node_count.bind("SceneState", "get_node_count");
		return ptrcall!(long)(_GODOT_get_node_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_node_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_type") = _GODOT_get_node_type;
	/**
	Returns the type of the node at `idx`.
	*/
	String getNodeType(in long idx) const
	{
		_GODOT_get_node_type.bind("SceneState", "get_node_type");
		return ptrcall!(String)(_GODOT_get_node_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_node_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_name") = _GODOT_get_node_name;
	/**
	Returns the name of the node at `idx`.
	*/
	String getNodeName(in long idx) const
	{
		_GODOT_get_node_name.bind("SceneState", "get_node_name");
		return ptrcall!(String)(_GODOT_get_node_name, _godot_object, idx);
	}
	package(godot) static GodotMethod!(NodePath, long, bool) _GODOT_get_node_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_path") = _GODOT_get_node_path;
	/**
	Returns the path to the node at `idx`.
	*/
	NodePath getNodePath(in long idx, in bool for_parent = false) const
	{
		_GODOT_get_node_path.bind("SceneState", "get_node_path");
		return ptrcall!(NodePath)(_GODOT_get_node_path, _godot_object, idx, for_parent);
	}
	package(godot) static GodotMethod!(NodePath, long) _GODOT_get_node_owner_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_owner_path") = _GODOT_get_node_owner_path;
	/**
	Returns the path to the owner of the node at `idx`, relative to the root node.
	*/
	NodePath getNodeOwnerPath(in long idx) const
	{
		_GODOT_get_node_owner_path.bind("SceneState", "get_node_owner_path");
		return ptrcall!(NodePath)(_GODOT_get_node_owner_path, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_node_instance_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_node_instance_placeholder") = _GODOT_is_node_instance_placeholder;
	/**
	Returns `true` if the node at `idx` is an $(D InstancePlaceholder).
	*/
	bool isNodeInstancePlaceholder(in long idx) const
	{
		_GODOT_is_node_instance_placeholder.bind("SceneState", "is_node_instance_placeholder");
		return ptrcall!(bool)(_GODOT_is_node_instance_placeholder, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_node_instance_placeholder;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_instance_placeholder") = _GODOT_get_node_instance_placeholder;
	/**
	Returns the path to the represented scene file if the node at `idx` is an $(D InstancePlaceholder).
	*/
	String getNodeInstancePlaceholder(in long idx) const
	{
		_GODOT_get_node_instance_placeholder.bind("SceneState", "get_node_instance_placeholder");
		return ptrcall!(String)(_GODOT_get_node_instance_placeholder, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PackedScene, long) _GODOT_get_node_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_instance") = _GODOT_get_node_instance;
	/**
	Returns the scene for the node at `idx` or `null` if the node is not an instance.
	*/
	Ref!PackedScene getNodeInstance(in long idx) const
	{
		_GODOT_get_node_instance.bind("SceneState", "get_node_instance");
		return ptrcall!(PackedScene)(_GODOT_get_node_instance, _godot_object, idx);
	}
	package(godot) static GodotMethod!(PoolStringArray, long) _GODOT_get_node_groups;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_groups") = _GODOT_get_node_groups;
	/**
	Returns the list of group names associated with the node at `idx`.
	*/
	PoolStringArray getNodeGroups(in long idx) const
	{
		_GODOT_get_node_groups.bind("SceneState", "get_node_groups");
		return ptrcall!(PoolStringArray)(_GODOT_get_node_groups, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_node_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_index") = _GODOT_get_node_index;
	/**
	
	*/
	long getNodeIndex(in long idx) const
	{
		_GODOT_get_node_index.bind("SceneState", "get_node_index");
		return ptrcall!(long)(_GODOT_get_node_index, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_node_property_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_property_count") = _GODOT_get_node_property_count;
	/**
	Returns the number of exported or overridden properties for the node at `idx`.
	*/
	long getNodePropertyCount(in long idx) const
	{
		_GODOT_get_node_property_count.bind("SceneState", "get_node_property_count");
		return ptrcall!(long)(_GODOT_get_node_property_count, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long, long) _GODOT_get_node_property_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_property_name") = _GODOT_get_node_property_name;
	/**
	Returns the name of the property at `prop_idx` for the node at `idx`.
	*/
	String getNodePropertyName(in long idx, in long prop_idx) const
	{
		_GODOT_get_node_property_name.bind("SceneState", "get_node_property_name");
		return ptrcall!(String)(_GODOT_get_node_property_name, _godot_object, idx, prop_idx);
	}
	package(godot) static GodotMethod!(Variant, long, long) _GODOT_get_node_property_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_property_value") = _GODOT_get_node_property_value;
	/**
	Returns the value of the property at `prop_idx` for the node at `idx`.
	*/
	Variant getNodePropertyValue(in long idx, in long prop_idx) const
	{
		_GODOT_get_node_property_value.bind("SceneState", "get_node_property_value");
		return ptrcall!(Variant)(_GODOT_get_node_property_value, _godot_object, idx, prop_idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_connection_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_count") = _GODOT_get_connection_count;
	/**
	Returns the number of signal connections in the scene.
	*/
	long getConnectionCount() const
	{
		_GODOT_get_connection_count.bind("SceneState", "get_connection_count");
		return ptrcall!(long)(_GODOT_get_connection_count, _godot_object);
	}
	package(godot) static GodotMethod!(NodePath, long) _GODOT_get_connection_source;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_source") = _GODOT_get_connection_source;
	/**
	Returns the path to the node that owns the signal at `idx`, relative to the root node.
	*/
	NodePath getConnectionSource(in long idx) const
	{
		_GODOT_get_connection_source.bind("SceneState", "get_connection_source");
		return ptrcall!(NodePath)(_GODOT_get_connection_source, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_connection_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_signal") = _GODOT_get_connection_signal;
	/**
	Returns the name of the signal at `idx`.
	*/
	String getConnectionSignal(in long idx) const
	{
		_GODOT_get_connection_signal.bind("SceneState", "get_connection_signal");
		return ptrcall!(String)(_GODOT_get_connection_signal, _godot_object, idx);
	}
	package(godot) static GodotMethod!(NodePath, long) _GODOT_get_connection_target;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_target") = _GODOT_get_connection_target;
	/**
	Returns the path to the node that owns the method connected to the signal at `idx`, relative to the root node.
	*/
	NodePath getConnectionTarget(in long idx) const
	{
		_GODOT_get_connection_target.bind("SceneState", "get_connection_target");
		return ptrcall!(NodePath)(_GODOT_get_connection_target, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_connection_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_method") = _GODOT_get_connection_method;
	/**
	Returns the method connected to the signal at `idx`.
	*/
	String getConnectionMethod(in long idx) const
	{
		_GODOT_get_connection_method.bind("SceneState", "get_connection_method");
		return ptrcall!(String)(_GODOT_get_connection_method, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_connection_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_flags") = _GODOT_get_connection_flags;
	/**
	Returns the flags for the signal at `idx`. See $(D GodotObject)'s `CONNECT_*` flags.
	*/
	long getConnectionFlags(in long idx) const
	{
		_GODOT_get_connection_flags.bind("SceneState", "get_connection_flags");
		return ptrcall!(long)(_GODOT_get_connection_flags, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Array, long) _GODOT_get_connection_binds;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_binds") = _GODOT_get_connection_binds;
	/**
	Returns the list of bound parameters for the signal at `idx`.
	*/
	Array getConnectionBinds(in long idx) const
	{
		_GODOT_get_connection_binds.bind("SceneState", "get_connection_binds");
		return ptrcall!(Array)(_GODOT_get_connection_binds, _godot_object, idx);
	}
}
