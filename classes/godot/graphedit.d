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
import godot.node;
import godot.inputevent;
import godot.hboxcontainer;
import godot.canvasitem;
/**
GraphEdit is an area capable of showing various GraphNodes. It manages connection events between them.

GraphEdit manages the showing of GraphNodes it contains, as well as connections and disconnections between them. Signals are sent for each of these two events. Disconnection between GraphNodes slots is disabled by default.
It is greatly advised to enable low processor usage mode (see $(D OS.lowProcessorUsageMode)) when using GraphEdits.
*/
@GodotBaseClass struct GraphEdit
{
	enum string _GODOT_internal_name = "GraphEdit";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("connect_node") GodotMethod!(GodotError, String, long, String, long) connectNode;
		@GodotName("is_node_connected") GodotMethod!(bool, String, long, String, long) isNodeConnected;
		@GodotName("disconnect_node") GodotMethod!(void, String, long, String, long) disconnectNode;
		@GodotName("set_connection_activity") GodotMethod!(void, String, long, String, long, double) setConnectionActivity;
		@GodotName("get_connection_list") GodotMethod!(Array) getConnectionList;
		@GodotName("clear_connections") GodotMethod!(void) clearConnections;
		@GodotName("get_scroll_ofs") GodotMethod!(Vector2) getScrollOfs;
		@GodotName("set_scroll_ofs") GodotMethod!(void, Vector2) setScrollOfs;
		@GodotName("add_valid_right_disconnect_type") GodotMethod!(void, long) addValidRightDisconnectType;
		@GodotName("remove_valid_right_disconnect_type") GodotMethod!(void, long) removeValidRightDisconnectType;
		@GodotName("add_valid_left_disconnect_type") GodotMethod!(void, long) addValidLeftDisconnectType;
		@GodotName("remove_valid_left_disconnect_type") GodotMethod!(void, long) removeValidLeftDisconnectType;
		@GodotName("add_valid_connection_type") GodotMethod!(void, long, long) addValidConnectionType;
		@GodotName("remove_valid_connection_type") GodotMethod!(void, long, long) removeValidConnectionType;
		@GodotName("is_valid_connection_type") GodotMethod!(bool, long, long) isValidConnectionType;
		@GodotName("set_zoom") GodotMethod!(void, double) setZoom;
		@GodotName("get_zoom") GodotMethod!(double) getZoom;
		@GodotName("set_snap") GodotMethod!(void, long) setSnap;
		@GodotName("get_snap") GodotMethod!(long) getSnap;
		@GodotName("set_use_snap") GodotMethod!(void, bool) setUseSnap;
		@GodotName("is_using_snap") GodotMethod!(bool) isUsingSnap;
		@GodotName("set_right_disconnects") GodotMethod!(void, bool) setRightDisconnects;
		@GodotName("is_right_disconnects_enabled") GodotMethod!(bool) isRightDisconnectsEnabled;
		@GodotName("_graph_node_moved") GodotMethod!(void, Node) _graphNodeMoved;
		@GodotName("_graph_node_raised") GodotMethod!(void, Node) _graphNodeRaised;
		@GodotName("_top_layer_input") GodotMethod!(void, InputEvent) _topLayerInput;
		@GodotName("_top_layer_draw") GodotMethod!(void) _topLayerDraw;
		@GodotName("_scroll_moved") GodotMethod!(void, double) _scrollMoved;
		@GodotName("_zoom_minus") GodotMethod!(void) _zoomMinus;
		@GodotName("_zoom_reset") GodotMethod!(void) _zoomReset;
		@GodotName("_zoom_plus") GodotMethod!(void) _zoomPlus;
		@GodotName("_snap_toggled") GodotMethod!(void) _snapToggled;
		@GodotName("_snap_value_changed") GodotMethod!(void, double) _snapValueChanged;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_update_scroll_offset") GodotMethod!(void) _updateScrollOffset;
		@GodotName("_connections_layer_draw") GodotMethod!(void) _connectionsLayerDraw;
		@GodotName("get_zoom_hbox") GodotMethod!(HBoxContainer) getZoomHbox;
		@GodotName("set_selected") GodotMethod!(void, Node) setSelected;
	}
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
	/**
	Create a connection between 'from_port' slot of 'from' GraphNode and 'to_port' slot of 'to' GraphNode. If the connection already exists, no connection is created.
	*/
	GodotError connectNode(in String from, in long from_port, in String to, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.connectNode, _godot_object, from, from_port, to, to_port);
	}
	/**
	Return `true` if the 'from_port' slot of 'from' GraphNode is connected to the 'to_port' slot of 'to' GraphNode.
	*/
	bool isNodeConnected(in String from, in long from_port, in String to, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isNodeConnected, _godot_object, from, from_port, to, to_port);
	}
	/**
	Remove the connection between 'from_port' slot of 'from' GraphNode and 'to_port' slot of 'to' GraphNode, if connection exists.
	*/
	void disconnectNode(in String from, in long from_port, in String to, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectNode, _godot_object, from, from_port, to, to_port);
	}
	/**
	
	*/
	void setConnectionActivity(in String from, in long from_port, in String to, in long to_port, in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConnectionActivity, _godot_object, from, from_port, to, to_port, amount);
	}
	/**
	Return an Array containing the list of connections. A connection consists in a structure of the form {from_port: 0, from: "GraphNode name 0", to_port: 1, to: "GraphNode name 1" }
	*/
	Array getConnectionList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getConnectionList, _godot_object);
	}
	/**
	Remove all connections between nodes.
	*/
	void clearConnections()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearConnections, _godot_object);
	}
	/**
	
	*/
	Vector2 getScrollOfs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScrollOfs, _godot_object);
	}
	/**
	
	*/
	void setScrollOfs(in Vector2 ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScrollOfs, _godot_object, ofs);
	}
	/**
	Makes possible to disconnect nodes when dragging from the slot at the right if it has the specified type.
	*/
	void addValidRightDisconnectType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addValidRightDisconnectType, _godot_object, type);
	}
	/**
	Removes the possibility to disconnect nodes when dragging from the slot at the right if it has the specified type.
	*/
	void removeValidRightDisconnectType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeValidRightDisconnectType, _godot_object, type);
	}
	/**
	Makes possible to disconnect nodes when dragging from the slot at the left if it has the specified type.
	*/
	void addValidLeftDisconnectType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addValidLeftDisconnectType, _godot_object, type);
	}
	/**
	Removes the possibility to disconnect nodes when dragging from the slot at the left if it has the specified type.
	*/
	void removeValidLeftDisconnectType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeValidLeftDisconnectType, _godot_object, type);
	}
	/**
	Makes possible the connection between two different slot types. The type is defined with the $(D GraphNode.setSlot) method.
	*/
	void addValidConnectionType(in long from_type, in long to_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addValidConnectionType, _godot_object, from_type, to_type);
	}
	/**
	Makes it not possible to connect between two different slot types. The type is defined with the $(D GraphNode.setSlot) method.
	*/
	void removeValidConnectionType(in long from_type, in long to_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeValidConnectionType, _godot_object, from_type, to_type);
	}
	/**
	Returns whether it's possible to connect slots of the specified types.
	*/
	bool isValidConnectionType(in long from_type, in long to_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isValidConnectionType, _godot_object, from_type, to_type);
	}
	/**
	
	*/
	void setZoom(in double p_zoom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setZoom, _godot_object, p_zoom);
	}
	/**
	
	*/
	double getZoom() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getZoom, _godot_object);
	}
	/**
	
	*/
	void setSnap(in long pixels)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSnap, _godot_object, pixels);
	}
	/**
	
	*/
	long getSnap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSnap, _godot_object);
	}
	/**
	
	*/
	void setUseSnap(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseSnap, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsingSnap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingSnap, _godot_object);
	}
	/**
	
	*/
	void setRightDisconnects(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRightDisconnects, _godot_object, enable);
	}
	/**
	
	*/
	bool isRightDisconnectsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRightDisconnectsEnabled, _godot_object);
	}
	/**
	
	*/
	void _graphNodeMoved(Node arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_graph_node_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _graphNodeRaised(Node arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_graph_node_raised");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _topLayerInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_top_layer_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _topLayerDraw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_top_layer_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scrollMoved(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _zoomMinus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_minus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _zoomReset()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_reset");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _zoomPlus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_zoom_plus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _snapToggled()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_snap_toggled");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _snapValueChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_snap_value_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateScrollOffset()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scroll_offset");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _connectionsLayerDraw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_connections_layer_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	HBoxContainer getZoomHbox()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(HBoxContainer)(_classBinding.getZoomHbox, _godot_object);
	}
	/**
	Sets the specified `node` as the one selected.
	*/
	void setSelected(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSelected, _godot_object, node);
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
