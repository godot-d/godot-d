/**
A GraphNode is a container with several input and output slots allowing connections between GraphNodes. Slots can have different, incompatible types.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.graphnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.container;
import godot.inputevent;
import godot.texture;
/**
A GraphNode is a container with several input and output slots allowing connections between GraphNodes. Slots can have different, incompatible types.

A GraphNode is a container defined by a title. It can have 1 or more input and output slots, which can be enabled (shown) or disabled (not shown) and have different (incompatible) types. Colors can also be assigned to slots. A tuple of input and output slots is defined for each GUI element included in the GraphNode. Input and output connections are left and right slots, but only enabled slots are counted as connections.
*/
@GodotBaseClass struct GraphNode
{
	static immutable string _GODOT_internal_name = "GraphNode";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in GraphNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GraphNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GraphNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GraphNode");
		if(constructor is null) return typeof(this).init;
		return cast(GraphNode)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Overlay : int
	{
		/**
		
		*/
		overlayDisabled = 0,
		/**
		
		*/
		overlayBreakpoint = 1,
		/**
		
		*/
		overlayPosition = 2,
	}
	/// 
	enum Constants : int
	{
		overlayDisabled = 0,
		overlayBreakpoint = 1,
		overlayPosition = 2,
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_title") = _GODOT_set_title;
	/**
	
	*/
	void setTitle(StringArg0)(in StringArg0 title)
	{
		_GODOT_set_title.bind("GraphNode", "set_title");
		ptrcall!(void)(_GODOT_set_title, _godot_object, title);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_title") = _GODOT_get_title;
	/**
	
	*/
	String getTitle() const
	{
		_GODOT_get_title.bind("GraphNode", "get_title");
		return ptrcall!(String)(_GODOT_get_title, _godot_object);
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
	package(godot) static GodotMethod!(void, long, bool, long, Color, bool, long, Color, Texture, Texture) _GODOT_set_slot;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_slot") = _GODOT_set_slot;
	/**
	
	*/
	void setSlot(in long idx, in bool enable_left, in long type_left, in Color color_left, in bool enable_right, in long type_right, in Color color_right, Texture custom_left = Texture.init, Texture custom_right = Texture.init)
	{
		_GODOT_set_slot.bind("GraphNode", "set_slot");
		ptrcall!(void)(_GODOT_set_slot, _godot_object, idx, enable_left, type_left, color_left, enable_right, type_right, color_right, custom_left, custom_right);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_clear_slot;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_slot") = _GODOT_clear_slot;
	/**
	Disable input and output slot whose index is 'idx'.
	*/
	void clearSlot(in long idx)
	{
		_GODOT_clear_slot.bind("GraphNode", "clear_slot");
		ptrcall!(void)(_GODOT_clear_slot, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_all_slots;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_all_slots") = _GODOT_clear_all_slots;
	/**
	Disable all input and output slots of the GraphNode.
	*/
	void clearAllSlots()
	{
		_GODOT_clear_all_slots.bind("GraphNode", "clear_all_slots");
		ptrcall!(void)(_GODOT_clear_all_slots, _godot_object);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_slot_enabled_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_slot_enabled_left") = _GODOT_is_slot_enabled_left;
	/**
	Return true if left (input) slot 'idx' is enabled. False otherwise.
	*/
	bool isSlotEnabledLeft(in long idx) const
	{
		_GODOT_is_slot_enabled_left.bind("GraphNode", "is_slot_enabled_left");
		return ptrcall!(bool)(_GODOT_is_slot_enabled_left, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_slot_type_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slot_type_left") = _GODOT_get_slot_type_left;
	/**
	Return the (integer) type of left (input) 'idx' slot.
	*/
	long getSlotTypeLeft(in long idx) const
	{
		_GODOT_get_slot_type_left.bind("GraphNode", "get_slot_type_left");
		return ptrcall!(long)(_GODOT_get_slot_type_left, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Color, long) _GODOT_get_slot_color_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slot_color_left") = _GODOT_get_slot_color_left;
	/**
	Return the color set to 'idx' left (input) slot.
	*/
	Color getSlotColorLeft(in long idx) const
	{
		_GODOT_get_slot_color_left.bind("GraphNode", "get_slot_color_left");
		return ptrcall!(Color)(_GODOT_get_slot_color_left, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_is_slot_enabled_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_slot_enabled_right") = _GODOT_is_slot_enabled_right;
	/**
	Return true if right (output) slot 'idx' is enabled. False otherwise.
	*/
	bool isSlotEnabledRight(in long idx) const
	{
		_GODOT_is_slot_enabled_right.bind("GraphNode", "is_slot_enabled_right");
		return ptrcall!(bool)(_GODOT_is_slot_enabled_right, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_slot_type_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slot_type_right") = _GODOT_get_slot_type_right;
	/**
	Return the (integer) type of right (output) 'idx' slot.
	*/
	long getSlotTypeRight(in long idx) const
	{
		_GODOT_get_slot_type_right.bind("GraphNode", "get_slot_type_right");
		return ptrcall!(long)(_GODOT_get_slot_type_right, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Color, long) _GODOT_get_slot_color_right;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_slot_color_right") = _GODOT_get_slot_color_right;
	/**
	Return the color set to 'idx' right (output) slot.
	*/
	Color getSlotColorRight(in long idx) const
	{
		_GODOT_get_slot_color_right.bind("GraphNode", "get_slot_color_right");
		return ptrcall!(Color)(_GODOT_get_slot_color_right, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("GraphNode", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	
	*/
	Vector2 getOffset() const
	{
		_GODOT_get_offset.bind("GraphNode", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_comment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_comment") = _GODOT_set_comment;
	/**
	
	*/
	void setComment(in bool comment)
	{
		_GODOT_set_comment.bind("GraphNode", "set_comment");
		ptrcall!(void)(_GODOT_set_comment, _godot_object, comment);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_comment;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_comment") = _GODOT_is_comment;
	/**
	
	*/
	bool isComment() const
	{
		_GODOT_is_comment.bind("GraphNode", "is_comment");
		return ptrcall!(bool)(_GODOT_is_comment, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_resizable") = _GODOT_set_resizable;
	/**
	
	*/
	void setResizable(in bool resizable)
	{
		_GODOT_set_resizable.bind("GraphNode", "set_resizable");
		ptrcall!(void)(_GODOT_set_resizable, _godot_object, resizable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_resizable;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_resizable") = _GODOT_is_resizable;
	/**
	
	*/
	bool isResizable() const
	{
		_GODOT_is_resizable.bind("GraphNode", "is_resizable");
		return ptrcall!(bool)(_GODOT_is_resizable, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_selected") = _GODOT_set_selected;
	/**
	
	*/
	void setSelected(in bool selected)
	{
		_GODOT_set_selected.bind("GraphNode", "set_selected");
		ptrcall!(void)(_GODOT_set_selected, _godot_object, selected);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_selected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selected") = _GODOT_is_selected;
	/**
	
	*/
	bool isSelected()
	{
		_GODOT_is_selected.bind("GraphNode", "is_selected");
		return ptrcall!(bool)(_GODOT_is_selected, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_connection_output_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_output_count") = _GODOT_get_connection_output_count;
	/**
	Return the number of enabled output slots (connections) of the GraphNode.
	*/
	long getConnectionOutputCount()
	{
		_GODOT_get_connection_output_count.bind("GraphNode", "get_connection_output_count");
		return ptrcall!(long)(_GODOT_get_connection_output_count, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_connection_input_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_input_count") = _GODOT_get_connection_input_count;
	/**
	Return the number of enabled input slots (connections) to the GraphNode.
	*/
	long getConnectionInputCount()
	{
		_GODOT_get_connection_input_count.bind("GraphNode", "get_connection_input_count");
		return ptrcall!(long)(_GODOT_get_connection_input_count, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_connection_output_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_output_position") = _GODOT_get_connection_output_position;
	/**
	Return the position of the output connection 'idx'.
	*/
	Vector2 getConnectionOutputPosition(in long idx)
	{
		_GODOT_get_connection_output_position.bind("GraphNode", "get_connection_output_position");
		return ptrcall!(Vector2)(_GODOT_get_connection_output_position, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_connection_output_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_output_type") = _GODOT_get_connection_output_type;
	/**
	Return the type of the output connection 'idx'.
	*/
	long getConnectionOutputType(in long idx)
	{
		_GODOT_get_connection_output_type.bind("GraphNode", "get_connection_output_type");
		return ptrcall!(long)(_GODOT_get_connection_output_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Color, long) _GODOT_get_connection_output_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_output_color") = _GODOT_get_connection_output_color;
	/**
	Return the color of the output connection 'idx'.
	*/
	Color getConnectionOutputColor(in long idx)
	{
		_GODOT_get_connection_output_color.bind("GraphNode", "get_connection_output_color");
		return ptrcall!(Color)(_GODOT_get_connection_output_color, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_connection_input_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_input_position") = _GODOT_get_connection_input_position;
	/**
	Return the position of the input connection 'idx'.
	*/
	Vector2 getConnectionInputPosition(in long idx)
	{
		_GODOT_get_connection_input_position.bind("GraphNode", "get_connection_input_position");
		return ptrcall!(Vector2)(_GODOT_get_connection_input_position, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_connection_input_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_input_type") = _GODOT_get_connection_input_type;
	/**
	Return the type of the input connection 'idx'.
	*/
	long getConnectionInputType(in long idx)
	{
		_GODOT_get_connection_input_type.bind("GraphNode", "get_connection_input_type");
		return ptrcall!(long)(_GODOT_get_connection_input_type, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Color, long) _GODOT_get_connection_input_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_connection_input_color") = _GODOT_get_connection_input_color;
	/**
	Return the color of the input connection 'idx'.
	*/
	Color getConnectionInputColor(in long idx)
	{
		_GODOT_get_connection_input_color.bind("GraphNode", "get_connection_input_color");
		return ptrcall!(Color)(_GODOT_get_connection_input_color, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_show_close_button;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_show_close_button") = _GODOT_set_show_close_button;
	/**
	
	*/
	void setShowCloseButton(in bool show)
	{
		_GODOT_set_show_close_button.bind("GraphNode", "set_show_close_button");
		ptrcall!(void)(_GODOT_set_show_close_button, _godot_object, show);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_close_button_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_close_button_visible") = _GODOT_is_close_button_visible;
	/**
	
	*/
	bool isCloseButtonVisible() const
	{
		_GODOT_is_close_button_visible.bind("GraphNode", "is_close_button_visible");
		return ptrcall!(bool)(_GODOT_is_close_button_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_overlay;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_overlay") = _GODOT_set_overlay;
	/**
	
	*/
	void setOverlay(in long overlay)
	{
		_GODOT_set_overlay.bind("GraphNode", "set_overlay");
		ptrcall!(void)(_GODOT_set_overlay, _godot_object, overlay);
	}
	package(godot) static GodotMethod!(GraphNode.Overlay) _GODOT_get_overlay;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_overlay") = _GODOT_get_overlay;
	/**
	
	*/
	GraphNode.Overlay getOverlay() const
	{
		_GODOT_get_overlay.bind("GraphNode", "get_overlay");
		return ptrcall!(GraphNode.Overlay)(_GODOT_get_overlay, _godot_object);
	}
	/**
	
	*/
	@property String title()
	{
		return getTitle();
	}
	/// ditto
	@property void title(String v)
	{
		setTitle(v);
	}
	/**
	The offset of the GraphNode, relative to the scroll offset of the $(D GraphEdit). Note that you cannot use position directly, as $(D GraphEdit) is a $(D Container).
	*/
	@property Vector2 offset()
	{
		return getOffset();
	}
	/// ditto
	@property void offset(Vector2 v)
	{
		setOffset(v);
	}
	/**
	
	*/
	@property bool showClose()
	{
		return isCloseButtonVisible();
	}
	/// ditto
	@property void showClose(bool v)
	{
		setShowCloseButton(v);
	}
	/**
	
	*/
	@property bool resizable()
	{
		return isResizable();
	}
	/// ditto
	@property void resizable(bool v)
	{
		setResizable(v);
	}
	/**
	
	*/
	@property bool selected()
	{
		return isSelected();
	}
	/// ditto
	@property void selected(bool v)
	{
		setSelected(v);
	}
	/**
	
	*/
	@property bool comment()
	{
		return isComment();
	}
	/// ditto
	@property void comment(bool v)
	{
		setComment(v);
	}
	/**
	
	*/
	@property GraphNode.Overlay overlay()
	{
		return getOverlay();
	}
	/// ditto
	@property void overlay(long v)
	{
		setOverlay(v);
	}
}
