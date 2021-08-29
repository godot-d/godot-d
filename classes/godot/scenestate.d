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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.reference;
import godot.packedscene;
/**
A script interface to a scene file's data.

Maintains a list of resources, nodes, exported, and overridden properties, and built-in scripts associated with a scene.
This class cannot be instantiated directly, it is retrieved for a given scene as the result of $(D PackedScene.getState).
*/
@GodotBaseClass struct SceneState
{
	package(godot) enum string _GODOT_internal_name = "SceneState";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_connection_binds") GodotMethod!(Array, long) getConnectionBinds;
		@GodotName("get_connection_count") GodotMethod!(long) getConnectionCount;
		@GodotName("get_connection_flags") GodotMethod!(long, long) getConnectionFlags;
		@GodotName("get_connection_method") GodotMethod!(String, long) getConnectionMethod;
		@GodotName("get_connection_signal") GodotMethod!(String, long) getConnectionSignal;
		@GodotName("get_connection_source") GodotMethod!(NodePath, long) getConnectionSource;
		@GodotName("get_connection_target") GodotMethod!(NodePath, long) getConnectionTarget;
		@GodotName("get_node_count") GodotMethod!(long) getNodeCount;
		@GodotName("get_node_groups") GodotMethod!(PoolStringArray, long) getNodeGroups;
		@GodotName("get_node_index") GodotMethod!(long, long) getNodeIndex;
		@GodotName("get_node_instance") GodotMethod!(PackedScene, long) getNodeInstance;
		@GodotName("get_node_instance_placeholder") GodotMethod!(String, long) getNodeInstancePlaceholder;
		@GodotName("get_node_name") GodotMethod!(String, long) getNodeName;
		@GodotName("get_node_owner_path") GodotMethod!(NodePath, long) getNodeOwnerPath;
		@GodotName("get_node_path") GodotMethod!(NodePath, long, bool) getNodePath;
		@GodotName("get_node_property_count") GodotMethod!(long, long) getNodePropertyCount;
		@GodotName("get_node_property_name") GodotMethod!(String, long, long) getNodePropertyName;
		@GodotName("get_node_property_value") GodotMethod!(Variant, long, long) getNodePropertyValue;
		@GodotName("get_node_type") GodotMethod!(String, long) getNodeType;
		@GodotName("is_node_instance_placeholder") GodotMethod!(bool, long) isNodeInstancePlaceholder;
	}
	/// 
	pragma(inline, true) bool opEquals(in SceneState other) const
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
	/// Construct a new instance of SceneState.
	/// Note: use `memnew!SceneState` instead.
	static SceneState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SceneState");
		if(constructor is null) return typeof(this).init;
		return cast(SceneState)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum GenEditState : int
	{
		/**
		If passed to $(D PackedScene.instance), blocks edits to the scene state.
		*/
		genEditStateDisabled = 0,
		/**
		If passed to $(D PackedScene.instance), provides inherited scene resources to the local scene.
		$(B Note:) Only available in editor builds.
		*/
		genEditStateInstance = 1,
		/**
		If passed to $(D PackedScene.instance), provides local scene resources to the local scene. Only the main scene should receive the main edit state.
		$(B Note:) Only available in editor builds.
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
	/**
	Returns the list of bound parameters for the signal at `idx`.
	*/
	Array getConnectionBinds(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getConnectionBinds, _godot_object, idx);
	}
	/**
	Returns the number of signal connections in the scene.
	The `idx` argument used to query connection metadata in other `get_connection_*` methods in the interval `$(D 0, get_connection_count() - 1)`.
	*/
	long getConnectionCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectionCount, _godot_object);
	}
	/**
	Returns the connection flags for the signal at `idx`. See $(D GodotObject.connectflags) constants.
	*/
	long getConnectionFlags(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectionFlags, _godot_object, idx);
	}
	/**
	Returns the method connected to the signal at `idx`.
	*/
	String getConnectionMethod(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getConnectionMethod, _godot_object, idx);
	}
	/**
	Returns the name of the signal at `idx`.
	*/
	String getConnectionSignal(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getConnectionSignal, _godot_object, idx);
	}
	/**
	Returns the path to the node that owns the signal at `idx`, relative to the root node.
	*/
	NodePath getConnectionSource(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getConnectionSource, _godot_object, idx);
	}
	/**
	Returns the path to the node that owns the method connected to the signal at `idx`, relative to the root node.
	*/
	NodePath getConnectionTarget(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getConnectionTarget, _godot_object, idx);
	}
	/**
	Returns the number of nodes in the scene.
	The `idx` argument used to query node data in other `get_node_*` methods in the interval `$(D 0, get_node_count() - 1)`.
	*/
	long getNodeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNodeCount, _godot_object);
	}
	/**
	Returns the list of group names associated with the node at `idx`.
	*/
	PoolStringArray getNodeGroups(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getNodeGroups, _godot_object, idx);
	}
	/**
	Returns the node's index, which is its position relative to its siblings. This is only relevant and saved in scenes for cases where new nodes are added to an instanced or inherited scene among siblings from the base scene. Despite the name, this index is not related to the `idx` argument used here and in other methods.
	*/
	long getNodeIndex(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNodeIndex, _godot_object, idx);
	}
	/**
	Returns a $(D PackedScene) for the node at `idx` (i.e. the whole branch starting at this node, with its child nodes and resources), or `null` if the node is not an instance.
	*/
	Ref!PackedScene getNodeInstance(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PackedScene)(GDNativeClassBinding.getNodeInstance, _godot_object, idx);
	}
	/**
	Returns the path to the represented scene file if the node at `idx` is an $(D InstancePlaceholder).
	*/
	String getNodeInstancePlaceholder(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNodeInstancePlaceholder, _godot_object, idx);
	}
	/**
	Returns the name of the node at `idx`.
	*/
	String getNodeName(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNodeName, _godot_object, idx);
	}
	/**
	Returns the path to the owner of the node at `idx`, relative to the root node.
	*/
	NodePath getNodeOwnerPath(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getNodeOwnerPath, _godot_object, idx);
	}
	/**
	Returns the path to the node at `idx`.
	If `for_parent` is `true`, returns the path of the `idx` node's parent instead.
	*/
	NodePath getNodePath(in long idx, in bool for_parent = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getNodePath, _godot_object, idx, for_parent);
	}
	/**
	Returns the number of exported or overridden properties for the node at `idx`.
	The `prop_idx` argument used to query node property data in other `get_node_property_*` methods in the interval `$(D 0, get_node_property_count() - 1)`.
	*/
	long getNodePropertyCount(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNodePropertyCount, _godot_object, idx);
	}
	/**
	Returns the name of the property at `prop_idx` for the node at `idx`.
	*/
	String getNodePropertyName(in long idx, in long prop_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNodePropertyName, _godot_object, idx, prop_idx);
	}
	/**
	Returns the value of the property at `prop_idx` for the node at `idx`.
	*/
	Variant getNodePropertyValue(in long idx, in long prop_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getNodePropertyValue, _godot_object, idx, prop_idx);
	}
	/**
	Returns the type of the node at `idx`.
	*/
	String getNodeType(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNodeType, _godot_object, idx);
	}
	/**
	Returns `true` if the node at `idx` is an $(D InstancePlaceholder).
	*/
	bool isNodeInstancePlaceholder(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isNodeInstancePlaceholder, _godot_object, idx);
	}
}
