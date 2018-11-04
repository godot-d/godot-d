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
import godot.control;
import godot.canvasitem;
import godot.node;
/**
A GraphNode is a container with several input and output slots allowing connections between GraphNodes. Slots can have different, incompatible types.

A GraphNode is a container defined by a title. It can have 1 or more input and output slots, which can be enabled (shown) or disabled (not shown) and have different (incompatible) types. Colors can also be assigned to slots. A tuple of input and output slots is defined for each GUI element included in the GraphNode. Input and output connections are left and right slots, but only enabled slots are counted as connections.
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
		@GodotName("set_title") GodotMethod!(void, String) setTitle;
		@GodotName("get_title") GodotMethod!(String) getTitle;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("set_slot") GodotMethod!(void, long, bool, long, Color, bool, long, Color, Texture, Texture) setSlot;
		@GodotName("clear_slot") GodotMethod!(void, long) clearSlot;
		@GodotName("clear_all_slots") GodotMethod!(void) clearAllSlots;
		@GodotName("is_slot_enabled_left") GodotMethod!(bool, long) isSlotEnabledLeft;
		@GodotName("get_slot_type_left") GodotMethod!(long, long) getSlotTypeLeft;
		@GodotName("get_slot_color_left") GodotMethod!(Color, long) getSlotColorLeft;
		@GodotName("is_slot_enabled_right") GodotMethod!(bool, long) isSlotEnabledRight;
		@GodotName("get_slot_type_right") GodotMethod!(long, long) getSlotTypeRight;
		@GodotName("get_slot_color_right") GodotMethod!(Color, long) getSlotColorRight;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("set_comment") GodotMethod!(void, bool) setComment;
		@GodotName("is_comment") GodotMethod!(bool) isComment;
		@GodotName("set_resizable") GodotMethod!(void, bool) setResizable;
		@GodotName("is_resizable") GodotMethod!(bool) isResizable;
		@GodotName("set_selected") GodotMethod!(void, bool) setSelected;
		@GodotName("is_selected") GodotMethod!(bool) isSelected;
		@GodotName("get_connection_output_count") GodotMethod!(long) getConnectionOutputCount;
		@GodotName("get_connection_input_count") GodotMethod!(long) getConnectionInputCount;
		@GodotName("get_connection_output_position") GodotMethod!(Vector2, long) getConnectionOutputPosition;
		@GodotName("get_connection_output_type") GodotMethod!(long, long) getConnectionOutputType;
		@GodotName("get_connection_output_color") GodotMethod!(Color, long) getConnectionOutputColor;
		@GodotName("get_connection_input_position") GodotMethod!(Vector2, long) getConnectionInputPosition;
		@GodotName("get_connection_input_type") GodotMethod!(long, long) getConnectionInputType;
		@GodotName("get_connection_input_color") GodotMethod!(Color, long) getConnectionInputColor;
		@GodotName("set_show_close_button") GodotMethod!(void, bool) setShowCloseButton;
		@GodotName("is_close_button_visible") GodotMethod!(bool) isCloseButtonVisible;
		@GodotName("set_overlay") GodotMethod!(void, long) setOverlay;
		@GodotName("get_overlay") GodotMethod!(GraphNode.Overlay) getOverlay;
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
	/**
	
	*/
	void setTitle(in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTitle, _godot_object, title);
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
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setSlot(in long idx, in bool enable_left, in long type_left, in Color color_left, in bool enable_right, in long type_right, in Color color_right, Texture custom_left = Texture.init, Texture custom_right = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSlot, _godot_object, idx, enable_left, type_left, color_left, enable_right, type_right, color_right, custom_left, custom_right);
	}
	/**
	Disable input and output slot whose index is 'idx'.
	*/
	void clearSlot(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearSlot, _godot_object, idx);
	}
	/**
	Disable all input and output slots of the GraphNode.
	*/
	void clearAllSlots()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearAllSlots, _godot_object);
	}
	/**
	Return true if left (input) slot 'idx' is enabled. False otherwise.
	*/
	bool isSlotEnabledLeft(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSlotEnabledLeft, _godot_object, idx);
	}
	/**
	Return the (integer) type of left (input) 'idx' slot.
	*/
	long getSlotTypeLeft(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSlotTypeLeft, _godot_object, idx);
	}
	/**
	Return the color set to 'idx' left (input) slot.
	*/
	Color getSlotColorLeft(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getSlotColorLeft, _godot_object, idx);
	}
	/**
	Return true if right (output) slot 'idx' is enabled. False otherwise.
	*/
	bool isSlotEnabledRight(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSlotEnabledRight, _godot_object, idx);
	}
	/**
	Return the (integer) type of right (output) 'idx' slot.
	*/
	long getSlotTypeRight(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSlotTypeRight, _godot_object, idx);
	}
	/**
	Return the color set to 'idx' right (output) slot.
	*/
	Color getSlotColorRight(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getSlotColorRight, _godot_object, idx);
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
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
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
	bool isComment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isComment, _godot_object);
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
	bool isResizable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isResizable, _godot_object);
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
	bool isSelected()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelected, _godot_object);
	}
	/**
	Return the number of enabled output slots (connections) of the GraphNode.
	*/
	long getConnectionOutputCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectionOutputCount, _godot_object);
	}
	/**
	Return the number of enabled input slots (connections) to the GraphNode.
	*/
	long getConnectionInputCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectionInputCount, _godot_object);
	}
	/**
	Return the position of the output connection 'idx'.
	*/
	Vector2 getConnectionOutputPosition(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getConnectionOutputPosition, _godot_object, idx);
	}
	/**
	Return the type of the output connection 'idx'.
	*/
	long getConnectionOutputType(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectionOutputType, _godot_object, idx);
	}
	/**
	Return the color of the output connection 'idx'.
	*/
	Color getConnectionOutputColor(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getConnectionOutputColor, _godot_object, idx);
	}
	/**
	Return the position of the input connection 'idx'.
	*/
	Vector2 getConnectionInputPosition(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getConnectionInputPosition, _godot_object, idx);
	}
	/**
	Return the type of the input connection 'idx'.
	*/
	long getConnectionInputType(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConnectionInputType, _godot_object, idx);
	}
	/**
	Return the color of the input connection 'idx'.
	*/
	Color getConnectionInputColor(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getConnectionInputColor, _godot_object, idx);
	}
	/**
	
	*/
	void setShowCloseButton(in bool show)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShowCloseButton, _godot_object, show);
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
	void setOverlay(in long overlay)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOverlay, _godot_object, overlay);
	}
	/**
	
	*/
	GraphNode.Overlay getOverlay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GraphNode.Overlay)(_classBinding.getOverlay, _godot_object);
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
