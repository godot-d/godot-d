/**
GraphEdit is an area capable of showing various GraphNodes. It manages connection events between them.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.graphedit;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.inputevent;
/**
GraphEdit is an area capable of showing various GraphNodes. It manages connection events between them.

GraphEdit manages the showing of GraphNodes it contains, as well as connections and disconnections between them. Signals are sent for each of these two events. Disconnection between GraphNodes slots is disabled by default.
It is greatly advised to enable low processor usage mode (see $(D OS.setLowProcessorUsageMode)) when using GraphEdits.
*/
@GodotBaseClass struct GraphEdit
{
	static immutable string _GODOT_internal_name = "GraphEdit";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in GraphEdit other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GraphEdit opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GraphEdit _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GraphEdit");
		if(constructor is null) return typeof(this).init;
		return cast(GraphEdit)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(GodotError, String, long, String, long) _GODOT_connect_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect_node") = _GODOT_connect_node;
	/**
	Create a connection between 'from_port' slot of 'from' GraphNode and 'to_port' slot of 'to' GraphNode. If the connection already exists, no connection is created.
	*/
	GodotError connectNode(StringArg0, StringArg2)(in StringArg0 from, in long from_port, in StringArg2 to, in long to_port)
	{
		_GODOT_connect_node.bind("GraphEdit", "connect_node");
		return ptrcall!(GodotError)(_GODOT_connect_node, _godot_object, from, from_port, to, to_port);
	}
	package(godot) static GodotMethod!(bool, String, long, String, long) _GODOT_is_node_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_node_connected") = _GODOT_is_node_connected;
	/**
	Return true if the 'from_port' slot of 'from' GraphNode is connected to the 'to_port' slot of 'to' GraphNode.
	*/
	bool isNodeConnected(StringArg0, StringArg2)(in StringArg0 from, in long from_port, in StringArg2 to, in long to_port)
	{
		_GODOT_is_node_connected.bind("GraphEdit", "is_node_connected");
		return ptrcall!(bool)(_GODOT_is_node_connected, _godot_object, from, from_port, to, to_port);
	}
	package(godot) static GodotMethod!(void, String, long, String, long) _GODOT_disconnect_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect_node") = _GODOT_disconnect_node;
	/**
	Remove the connection between 'from_port' slot of 'from' GraphNode and 'to_port' slot of 'to' GraphNode, if connection exists.
	*/
	void disconnectNode(StringArg0, StringArg2)(in StringArg0 from, in long from_port, in StringArg2 to, in long to_port)
	{
		_GODOT_disconnect_node.bind("GraphEdit", "disconnect_node");
		ptrcall!(void)(_GODOT_disconnect_node, _godot_object, from, from_port, to, to_port);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_connection_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_list") = _GODOT_get_connection_list;
	/**
	Return an Array containing the list of connections. A connection consists in a structure of the form {from_slot: 0, from: "GraphNode name 0", to_slot: 1, to: "GraphNode name 1" }
	*/
	Array getConnectionList() const
	{
		_GODOT_get_connection_list.bind("GraphEdit", "get_connection_list");
		return ptrcall!(Array)(_GODOT_get_connection_list, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_connections") = _GODOT_clear_connections;
	/**
	Remove all connections between nodes.
	*/
	void clearConnections()
	{
		_GODOT_clear_connections.bind("GraphEdit", "clear_connections");
		ptrcall!(void)(_GODOT_clear_connections, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll_ofs;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll_ofs") = _GODOT_get_scroll_ofs;
	/**
	
	*/
	Vector2 getScrollOfs() const
	{
		_GODOT_get_scroll_ofs.bind("GraphEdit", "get_scroll_ofs");
		return ptrcall!(Vector2)(_GODOT_get_scroll_ofs, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scroll_ofs;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_ofs") = _GODOT_set_scroll_ofs;
	/**
	
	*/
	void setScrollOfs(in Vector2 ofs)
	{
		_GODOT_set_scroll_ofs.bind("GraphEdit", "set_scroll_ofs");
		ptrcall!(void)(_GODOT_set_scroll_ofs, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_add_valid_right_disconnect_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_valid_right_disconnect_type") = _GODOT_add_valid_right_disconnect_type;
	/**
	Makes possible to disconnect nodes when dragging from the slot at the right if it has the specified type.
	*/
	void addValidRightDisconnectType(in long type)
	{
		_GODOT_add_valid_right_disconnect_type.bind("GraphEdit", "add_valid_right_disconnect_type");
		ptrcall!(void)(_GODOT_add_valid_right_disconnect_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_valid_right_disconnect_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_valid_right_disconnect_type") = _GODOT_remove_valid_right_disconnect_type;
	/**
	Removes the possibility to disconnect nodes when dragging from the slot at the right if it has the specified type.
	*/
	void removeValidRightDisconnectType(in long type)
	{
		_GODOT_remove_valid_right_disconnect_type.bind("GraphEdit", "remove_valid_right_disconnect_type");
		ptrcall!(void)(_GODOT_remove_valid_right_disconnect_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_add_valid_left_disconnect_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_valid_left_disconnect_type") = _GODOT_add_valid_left_disconnect_type;
	/**
	Makes possible to disconnect nodes when dragging from the slot at the left if it has the specified type.
	*/
	void addValidLeftDisconnectType(in long type)
	{
		_GODOT_add_valid_left_disconnect_type.bind("GraphEdit", "add_valid_left_disconnect_type");
		ptrcall!(void)(_GODOT_add_valid_left_disconnect_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_valid_left_disconnect_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_valid_left_disconnect_type") = _GODOT_remove_valid_left_disconnect_type;
	/**
	Removes the possibility to disconnect nodes when dragging from the slot at the left if it has the specified type.
	*/
	void removeValidLeftDisconnectType(in long type)
	{
		_GODOT_remove_valid_left_disconnect_type.bind("GraphEdit", "remove_valid_left_disconnect_type");
		ptrcall!(void)(_GODOT_remove_valid_left_disconnect_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_add_valid_connection_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_valid_connection_type") = _GODOT_add_valid_connection_type;
	/**
	Makes possible the connection between two different slot types. The type is defined with the $(D GraphNode.setSlot) method.
	*/
	void addValidConnectionType(in long from_type, in long to_type)
	{
		_GODOT_add_valid_connection_type.bind("GraphEdit", "add_valid_connection_type");
		ptrcall!(void)(_GODOT_add_valid_connection_type, _godot_object, from_type, to_type);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_remove_valid_connection_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_valid_connection_type") = _GODOT_remove_valid_connection_type;
	/**
	Makes it not possible to connect between two different slot types. The type is defined with the $(D GraphNode.setSlot) method.
	*/
	void removeValidConnectionType(in long from_type, in long to_type)
	{
		_GODOT_remove_valid_connection_type.bind("GraphEdit", "remove_valid_connection_type");
		ptrcall!(void)(_GODOT_remove_valid_connection_type, _godot_object, from_type, to_type);
	}
	package(godot) static GodotMethod!(bool, long, long) _GODOT_is_valid_connection_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_valid_connection_type") = _GODOT_is_valid_connection_type;
	/**
	Returns whether it's possible to connect slots of the specified types.
	*/
	bool isValidConnectionType(in long from_type, in long to_type) const
	{
		_GODOT_is_valid_connection_type.bind("GraphEdit", "is_valid_connection_type");
		return ptrcall!(bool)(_GODOT_is_valid_connection_type, _godot_object, from_type, to_type);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_zoom") = _GODOT_set_zoom;
	/**
	
	*/
	void setZoom(in double p_zoom)
	{
		_GODOT_set_zoom.bind("GraphEdit", "set_zoom");
		ptrcall!(void)(_GODOT_set_zoom, _godot_object, p_zoom);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_zoom") = _GODOT_get_zoom;
	/**
	
	*/
	double getZoom() const
	{
		_GODOT_get_zoom.bind("GraphEdit", "get_zoom");
		return ptrcall!(double)(_GODOT_get_zoom, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_snap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_snap") = _GODOT_set_snap;
	/**
	
	*/
	void setSnap(in long pixels)
	{
		_GODOT_set_snap.bind("GraphEdit", "set_snap");
		ptrcall!(void)(_GODOT_set_snap, _godot_object, pixels);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_snap;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_snap") = _GODOT_get_snap;
	/**
	
	*/
	long getSnap() const
	{
		_GODOT_get_snap.bind("GraphEdit", "get_snap");
		return ptrcall!(long)(_GODOT_get_snap, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_snap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_snap") = _GODOT_set_use_snap;
	/**
	
	*/
	void setUseSnap(in bool enable)
	{
		_GODOT_set_use_snap.bind("GraphEdit", "set_use_snap");
		ptrcall!(void)(_GODOT_set_use_snap, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_snap;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_snap") = _GODOT_is_using_snap;
	/**
	
	*/
	bool isUsingSnap() const
	{
		_GODOT_is_using_snap.bind("GraphEdit", "is_using_snap");
		return ptrcall!(bool)(_GODOT_is_using_snap, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_right_disconnects;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_right_disconnects") = _GODOT_set_right_disconnects;
	/**
	
	*/
	void setRightDisconnects(in bool enable)
	{
		_GODOT_set_right_disconnects.bind("GraphEdit", "set_right_disconnects");
		ptrcall!(void)(_GODOT_set_right_disconnects, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_right_disconnects_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_right_disconnects_enabled") = _GODOT_is_right_disconnects_enabled;
	/**
	
	*/
	bool isRightDisconnectsEnabled() const
	{
		_GODOT_is_right_disconnects_enabled.bind("GraphEdit", "is_right_disconnects_enabled");
		return ptrcall!(bool)(_GODOT_is_right_disconnects_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__graph_node_moved;
	package(godot) alias _GODOT_methodBindInfo(string name : "_graph_node_moved") = _GODOT__graph_node_moved;
	/**
	
	*/
	void _graphNodeMoved(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_graph_node_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__graph_node_raised;
	package(godot) alias _GODOT_methodBindInfo(string name : "_graph_node_raised") = _GODOT__graph_node_raised;
	/**
	
	*/
	void _graphNodeRaised(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_graph_node_raised");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__top_layer_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_top_layer_input") = _GODOT__top_layer_input;
	/**
	
	*/
	void _topLayerInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_top_layer_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__top_layer_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_top_layer_draw") = _GODOT__top_layer_draw;
	/**
	
	*/
	void _topLayerDraw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_top_layer_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__scroll_moved;
	package(godot) alias _GODOT_methodBindInfo(string name : "_scroll_moved") = _GODOT__scroll_moved;
	/**
	
	*/
	void _scrollMoved(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__zoom_minus;
	package(godot) alias _GODOT_methodBindInfo(string name : "_zoom_minus") = _GODOT__zoom_minus;
	/**
	
	*/
	void _zoomMinus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_minus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__zoom_reset;
	package(godot) alias _GODOT_methodBindInfo(string name : "_zoom_reset") = _GODOT__zoom_reset;
	/**
	
	*/
	void _zoomReset()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_reset");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__zoom_plus;
	package(godot) alias _GODOT_methodBindInfo(string name : "_zoom_plus") = _GODOT__zoom_plus;
	/**
	
	*/
	void _zoomPlus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_plus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__snap_toggled;
	package(godot) alias _GODOT_methodBindInfo(string name : "_snap_toggled") = _GODOT__snap_toggled;
	/**
	
	*/
	void _snapToggled()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_snap_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__snap_value_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_snap_value_changed") = _GODOT__snap_value_changed;
	/**
	
	*/
	void _snapValueChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_snap_value_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_scroll_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_scroll_offset") = _GODOT__update_scroll_offset;
	/**
	
	*/
	void _updateScrollOffset()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scroll_offset");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__connections_layer_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_connections_layer_draw") = _GODOT__connections_layer_draw;
	/**
	
	*/
	void _connectionsLayerDraw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connections_layer_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_selected") = _GODOT_set_selected;
	/**
	Sets the specified `node` as the one selected.
	*/
	void setSelected(GodotObject node)
	{
		_GODOT_set_selected.bind("GraphEdit", "set_selected");
		ptrcall!(void)(_GODOT_set_selected, _godot_object, node);
	}
	/**
	If `true`, enables disconnection of existing connections in the GraphEdit by dragging the right end.
	*/
	@property bool rightDisconnects()
	{
		return isRightDisconnectsEnabled();
	}
	/// ditto
	@property void rightDisconnects(bool v)
	{
		setRightDisconnects(v);
	}
	/**
	The scroll offset.
	*/
	@property Vector2 scrollOffset()
	{
		return getScrollOfs();
	}
	/// ditto
	@property void scrollOffset(Vector2 v)
	{
		setScrollOfs(v);
	}
	/**
	The snapping distance in pixels.
	*/
	@property long snapDistance()
	{
		return getSnap();
	}
	/// ditto
	@property void snapDistance(long v)
	{
		setSnap(v);
	}
	/**
	If `true`, enables snapping.
	*/
	@property bool useSnap()
	{
		return isUsingSnap();
	}
	/// ditto
	@property void useSnap(bool v)
	{
		setUseSnap(v);
	}
	/**
	The current zoom value.
	*/
	@property double zoom()
	{
		return getZoom();
	}
	/// ditto
	@property void zoom(double v)
	{
		setZoom(v);
	}
}
