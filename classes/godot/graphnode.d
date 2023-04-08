/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.graphnode;
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
import godot.container;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.texture;
/**

*/
@GodotBaseClass struct GraphNode
{
	package(godot) enum string _GODOT_internal_name = "GraphNode";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
		@GodotName("set_slot_color_left") GodotMethod!(void, long, Color) setSlotColorLeft;
		@GodotName("set_slot_color_right") GodotMethod!(void, long, Color) setSlotColorRight;
		@GodotName("set_slot_enabled_left") GodotMethod!(void, long, bool) setSlotEnabledLeft;
		@GodotName("set_slot_enabled_right") GodotMethod!(void, long, bool) setSlotEnabledRight;
		@GodotName("set_slot_type_left") GodotMethod!(void, long, long) setSlotTypeLeft;
		@GodotName("set_slot_type_right") GodotMethod!(void, long, long) setSlotTypeRight;
		@GodotName("set_title") GodotMethod!(void, String) setTitle;
	}
	/// 
	pragma(inline, true) bool opEquals(in GraphNode other) const
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
	/// Construct a new instance of GraphNode.
	/// Note: use `memnew!GraphNode` instead.
	static GraphNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GraphNode");
		if(constructor is null) return typeof(this).init;
		return cast(GraphNode)(constructor());
	}
	/// 
	enum Overlay : int
	{
		/** */
		overlayDisabled = 0,
		/** */
		overlayBreakpoint = 1,
		/** */
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
	
	*/
	void clearAllSlots()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearAllSlots, _godot_object);
	}
	/**
	
	*/
	void clearSlot(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearSlot, _godot_object, idx);
	}
	/**
	
	*/
	Color getConnectionInputColor(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getConnectionInputColor, _godot_object, idx);
	}
	/**
	
	*/
	long getConnectionInputCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectionInputCount, _godot_object);
	}
	/**
	
	*/
	Vector2 getConnectionInputPosition(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getConnectionInputPosition, _godot_object, idx);
	}
	/**
	
	*/
	long getConnectionInputType(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectionInputType, _godot_object, idx);
	}
	/**
	
	*/
	Color getConnectionOutputColor(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getConnectionOutputColor, _godot_object, idx);
	}
	/**
	
	*/
	long getConnectionOutputCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectionOutputCount, _godot_object);
	}
	/**
	
	*/
	Vector2 getConnectionOutputPosition(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getConnectionOutputPosition, _godot_object, idx);
	}
	/**
	
	*/
	long getConnectionOutputType(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConnectionOutputType, _godot_object, idx);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	GraphNode.Overlay getOverlay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GraphNode.Overlay)(GDNativeClassBinding.getOverlay, _godot_object);
	}
	/**
	
	*/
	Color getSlotColorLeft(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getSlotColorLeft, _godot_object, idx);
	}
	/**
	
	*/
	Color getSlotColorRight(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getSlotColorRight, _godot_object, idx);
	}
	/**
	
	*/
	long getSlotTypeLeft(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSlotTypeLeft, _godot_object, idx);
	}
	/**
	
	*/
	long getSlotTypeRight(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSlotTypeRight, _godot_object, idx);
	}
	/**
	
	*/
	String getTitle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTitle, _godot_object);
	}
	/**
	
	*/
	bool isCloseButtonVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCloseButtonVisible, _godot_object);
	}
	/**
	
	*/
	bool isComment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isComment, _godot_object);
	}
	/**
	
	*/
	bool isResizable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isResizable, _godot_object);
	}
	/**
	
	*/
	bool isSelected()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSelected, _godot_object);
	}
	/**
	
	*/
	bool isSlotEnabledLeft(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSlotEnabledLeft, _godot_object, idx);
	}
	/**
	
	*/
	bool isSlotEnabledRight(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSlotEnabledRight, _godot_object, idx);
	}
	/**
	
	*/
	void setComment(in bool comment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setComment, _godot_object, comment);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setOverlay(in long overlay)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOverlay, _godot_object, overlay);
	}
	/**
	
	*/
	void setResizable(in bool resizable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setResizable, _godot_object, resizable);
	}
	/**
	
	*/
	void setSelected(in bool selected)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSelected, _godot_object, selected);
	}
	/**
	
	*/
	void setShowCloseButton(in bool show)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShowCloseButton, _godot_object, show);
	}
	/**
	
	*/
	void setSlot(in long idx, in bool enable_left, in long type_left, in Color color_left, in bool enable_right, in long type_right, in Color color_right, Texture custom_left = Texture.init, Texture custom_right = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSlot, _godot_object, idx, enable_left, type_left, color_left, enable_right, type_right, color_right, custom_left, custom_right);
	}
	/**
	
	*/
	void setSlotColorLeft(in long idx, in Color color_left)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSlotColorLeft, _godot_object, idx, color_left);
	}
	/**
	
	*/
	void setSlotColorRight(in long idx, in Color color_right)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSlotColorRight, _godot_object, idx, color_right);
	}
	/**
	
	*/
	void setSlotEnabledLeft(in long idx, in bool enable_left)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSlotEnabledLeft, _godot_object, idx, enable_left);
	}
	/**
	
	*/
	void setSlotEnabledRight(in long idx, in bool enable_right)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSlotEnabledRight, _godot_object, idx, enable_right);
	}
	/**
	
	*/
	void setSlotTypeLeft(in long idx, in long type_left)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSlotTypeLeft, _godot_object, idx, type_left);
	}
	/**
	
	*/
	void setSlotTypeRight(in long idx, in long type_right)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSlotTypeRight, _godot_object, idx, type_right);
	}
	/**
	
	*/
	void setTitle(in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTitle, _godot_object, title);
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
