/**
A GraphNode is a container with potentially several input and output slots allowing connections between GraphNodes. Slots can have different, incompatible types.

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
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.texture;
/**
A GraphNode is a container with potentially several input and output slots allowing connections between GraphNodes. Slots can have different, incompatible types.

A GraphNode is a container. Each GraphNode can have several input and output slots, sometimes refered to as ports, allowing connections between GraphNodes. To add a slot to GraphNode, add any $(D Control)-derived child node to it.
After adding at least one child to GraphNode new sections will be automatically created in the Inspector called 'Slot'. When 'Slot' is expanded you will see list with index number for each slot. You can click on each of them to expand further.
In the Inspector you can enable (show) or disable (hide) slots. By default all slots are disabled so you may not see any slots on your GraphNode initially. You can assign a type to each slot. Only slots of the same type will be able to connect to each other. You can also assign colors to slots. A tuple of input and output slots is defined for each GUI element included in the GraphNode. Input connections are on the left and output connections are on the right side of GraphNode. Only enabled slots are counted as connections.
*/
@GodotBaseClass struct GraphNode
{
	enum string _GODOT_internal_name = "GraphNode";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("clear_all_slots") GodotMethod!(void) clearAllSlots;
		@GodotName("clear_slot") GodotMethod!(void, long) clearSlot;
		@GodotName("get_connection_input_color") GodotMethod!(Color, long) getConnectionInputColor;
		@GodotName("get_connection_input_count") GodotMethod!(long) getConnectionInputCount;
		@GodotName("get_connection_input_position") GodotMethod!(Vector2, long) getConnectionInputPosition;
		@GodotName("get_connection_input_type") GodotMethod!(long, long) getConnectionInputType;
		@GodotName("get_connection_output_color") GodotMethod!(Color, long) getConnectionOutputColor;
		@GodotName("get_connection_output_count") GodotMethod!(long) getConnectionOutputCount;
		@GodotName("get_connection_output_position") GodotMethod!(Vector2, long) getConnectionOutputPosition;
		@GodotName("get_connection_output_type") GodotMethod!(long, long) getConnectionOutputType;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("get_overlay") GodotMethod!(GraphNode.Overlay) getOverlay;
		@GodotName("get_slot_color_left") GodotMethod!(Color, long) getSlotColorLeft;
		@GodotName("get_slot_color_right") GodotMethod!(Color, long) getSlotColorRight;
		@GodotName("get_slot_type_left") GodotMethod!(long, long) getSlotTypeLeft;
		@GodotName("get_slot_type_right") GodotMethod!(long, long) getSlotTypeRight;
		@GodotName("get_title") GodotMethod!(String) getTitle;
		@GodotName("is_close_button_visible") GodotMethod!(bool) isCloseButtonVisible;
		@GodotName("is_comment") GodotMethod!(bool) isComment;
		@GodotName("is_resizable") GodotMethod!(bool) isResizable;
		@GodotName("is_selected") GodotMethod!(bool) isSelected;
		@GodotName("is_slot_enabled_left") GodotMethod!(bool, long) isSlotEnabledLeft;
		@GodotName("is_slot_enabled_right") GodotMethod!(bool, long) isSlotEnabledRight;
		@GodotName("set_comment") GodotMethod!(void, bool) setComment;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("set_overlay") GodotMethod!(void, long) setOverlay;
		@GodotName("set_resizable") GodotMethod!(void, bool) setResizable;
		@GodotName("set_selected") GodotMethod!(void, bool) setSelected;
		@GodotName("set_show_close_button") GodotMethod!(void, bool) setShowCloseButton;
		@GodotName("set_slot") GodotMethod!(void, long, bool, long, Color, bool, long, Color, Texture, Texture) setSlot;
		@GodotName("set_title") GodotMethod!(void, String) setTitle;
	}
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
		No overlay is shown.
		*/
		overlayDisabled = 0,
		/**
		Show overlay set in the `breakpoint` theme property.
		*/
		overlayBreakpoint = 1,
		/**
		Show overlay set in the `position` theme property.
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
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Disables all input and output slots of the GraphNode.
	*/
	void clearAllSlots()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearAllSlots, _godot_object);
	}
	/**
	Disables input and output slot whose index is `idx`.
	*/
	void clearSlot(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearSlot, _godot_object, idx);
	}
	/**
	Returns the color of the input connection `idx`.
	*/
	Color getConnectionInputColor(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getConnectionInputColor, _godot_object, idx);
	}
	/**
	Returns the number of enabled input slots (connections) to the GraphNode.
	*/
	long getConnectionInputCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectionInputCount, _godot_object);
	}
	/**
	Returns the position of the input connection `idx`.
	*/
	Vector2 getConnectionInputPosition(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getConnectionInputPosition, _godot_object, idx);
	}
	/**
	Returns the type of the input connection `idx`.
	*/
	long getConnectionInputType(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectionInputType, _godot_object, idx);
	}
	/**
	Returns the color of the output connection `idx`.
	*/
	Color getConnectionOutputColor(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getConnectionOutputColor, _godot_object, idx);
	}
	/**
	Returns the number of enabled output slots (connections) of the GraphNode.
	*/
	long getConnectionOutputCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectionOutputCount, _godot_object);
	}
	/**
	Returns the position of the output connection `idx`.
	*/
	Vector2 getConnectionOutputPosition(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getConnectionOutputPosition, _godot_object, idx);
	}
	/**
	Returns the type of the output connection `idx`.
	*/
	long getConnectionOutputType(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectionOutputType, _godot_object, idx);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	GraphNode.Overlay getOverlay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GraphNode.Overlay)(_classBinding.getOverlay, _godot_object);
	}
	/**
	Returns the color set to `idx` left (input) slot.
	*/
	Color getSlotColorLeft(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getSlotColorLeft, _godot_object, idx);
	}
	/**
	Returns the color set to `idx` right (output) slot.
	*/
	Color getSlotColorRight(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getSlotColorRight, _godot_object, idx);
	}
	/**
	Returns the (integer) type of left (input) `idx` slot.
	*/
	long getSlotTypeLeft(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSlotTypeLeft, _godot_object, idx);
	}
	/**
	Returns the (integer) type of right (output) `idx` slot.
	*/
	long getSlotTypeRight(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSlotTypeRight, _godot_object, idx);
	}
	/**
	
	*/
	String getTitle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTitle, _godot_object);
	}
	/**
	
	*/
	bool isCloseButtonVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCloseButtonVisible, _godot_object);
	}
	/**
	
	*/
	bool isComment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isComment, _godot_object);
	}
	/**
	
	*/
	bool isResizable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isResizable, _godot_object);
	}
	/**
	
	*/
	bool isSelected()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelected, _godot_object);
	}
	/**
	Returns `true` if left (input) slot `idx` is enabled, `false` otherwise.
	*/
	bool isSlotEnabledLeft(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSlotEnabledLeft, _godot_object, idx);
	}
	/**
	Returns `true` if right (output) slot `idx` is enabled, `false` otherwise.
	*/
	bool isSlotEnabledRight(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSlotEnabledRight, _godot_object, idx);
	}
	/**
	
	*/
	void setComment(in bool comment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setComment, _godot_object, comment);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setOverlay(in long overlay)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOverlay, _godot_object, overlay);
	}
	/**
	
	*/
	void setResizable(in bool resizable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setResizable, _godot_object, resizable);
	}
	/**
	
	*/
	void setSelected(in bool selected)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSelected, _godot_object, selected);
	}
	/**
	
	*/
	void setShowCloseButton(in bool show)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShowCloseButton, _godot_object, show);
	}
	/**
	Sets properties of the slot with ID `idx`.
	If `enable_left`/`right`, a port will appear and the slot will be able to be connected from this side.
	`type_left`/`right` is an arbitrary type of the port. Only ports with the same type values can be connected.
	`color_left`/`right` is the tint of the port's icon on this side.
	`custom_left`/`right` is a custom texture for this side's port.
	$(B Note:) This method only sets properties of the slot. To create the slot, add a $(D Control)-derived child to the GraphNode.
	*/
	void setSlot(in long idx, in bool enable_left, in long type_left, in Color color_left, in bool enable_right, in long type_right, in Color color_right, Texture custom_left = Texture.init, Texture custom_right = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSlot, _godot_object, idx, enable_left, type_left, color_left, enable_right, type_right, color_right, custom_left, custom_right);
	}
	/**
	
	*/
	void setTitle(in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTitle, _godot_object, title);
	}
	/**
	If `true`, the GraphNode is a comment node.
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
	The offset of the GraphNode, relative to the scroll offset of the $(D GraphEdit).
	$(B Note:) You cannot use position directly, as $(D GraphEdit) is a $(D Container).
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
	Sets the overlay shown above the GraphNode. See $(D overlay).
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
	/**
	If `true`, the user can resize the GraphNode.
	$(B Note:) Dragging the handle will only emit the $(D resizeRequest) signal, the GraphNode needs to be resized manually.
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
	If `true`, the GraphNode is selected.
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
	If `true`, the close button will be visible.
	$(B Note:) Pressing it will only emit the $(D closeRequest) signal, the GraphNode needs to be removed manually.
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
	The text displayed in the GraphNode's title bar.
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
}
