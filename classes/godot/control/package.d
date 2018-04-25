/**
All User Interface nodes inherit from Control. Features anchors and margins to adapt its position and size to its parent.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.control;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.canvasitem;
import godot.inputevent;
import godot.theme;
import godot.texture;
import godot.shader;
import godot.stylebox;
import godot.font;
/**
All User Interface nodes inherit from Control. Features anchors and margins to adapt its position and size to its parent.

Base class for all User Interface or $(I UI) related nodes. `Control` features a bounding rectangle that defines its extents, an anchor position relative to its parent and margins that represent an offset to the anchor. The margins update automatically when the node, any of its parents, or the screen size change.
For more information on Godot's UI system, anchors, margins, and containers, see the related tutorials in the manual. To build flexible UIs, you'll need a mix of UI elements that inherit from `Control` and $(D Container) nodes.
$(B User Interface nodes and input)
Godot sends input events to the scene's root node first, by calling $(D Node._input). $(D Node._input) forwards the event down the node tree to the nodes under the mouse cursor, or on keyboard focus. To do so, it calls $(D MainLoop._inputEvent). Call $(D acceptEvent) so no other node receives the event. Once you accepted an input, it becomes handled so $(D Node._unhandledInput) will not process it.
Only one `Control` node can be in keyboard focus. Only the node in focus will receive keyboard events. To get the focus, call $(D grabFocus). `Control` nodes lose focus when another node grabs it, or if you hide the node in focus.
Set $(D mouseFilter) to MOUSE_FILTER_IGNORE to tell a `Control` node to ignore mouse or touch events. You'll need it if you place an icon on top of a button.
$(D Theme) resources change the Control's appearance. If you change the $(D Theme) on a `Control` node, it affects all of its children. To override some of the theme's parameters, call one of the `add_*_override` methods, like $(D addFontOverride). You can override the theme with the inspector.
*/
@GodotBaseClass struct Control
{
	static immutable string _GODOT_internal_name = "Control";
public:
@nogc nothrow:
	union { godot_object _godot_object; CanvasItem _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Control other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Control opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Control _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Control");
		if(constructor is null) return typeof(this).init;
		return cast(Control)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Anchor : int
	{
		/**
		Snaps one of the 4 anchor's sides to the origin of the node's `Rect`, in the top left. Use it with one of the `anchor_*` member variables, like $(D anchorLeft). To change all 4 anchors at once, use $(D setAnchorsPreset).
		*/
		anchorBegin = 0,
		/**
		Snaps one of the 4 anchor's sides to the end of the node's `Rect`, in the bottom right. Use it with one of the `anchor_*` member variables, like $(D anchorLeft). To change all 4 anchors at once, use $(D setAnchorsPreset).
		*/
		anchorEnd = 1,
	}
	/// 
	enum FocusMode : int
	{
		/**
		The node cannot grab focus. Use with $(D setFocusMode).
		*/
		focusNone = 0,
		/**
		The node can only grab focus on mouse clicks. Use with $(D setFocusMode).
		*/
		focusClick = 1,
		/**
		The node can grab focus on mouse click or using the arrows and the Tab keys on the keyboard. Use with $(D setFocusMode).
		*/
		focusAll = 2,
	}
	/// 
	enum LayoutPresetMode : int
	{
		/**
		
		*/
		presetModeMinsize = 0,
		/**
		
		*/
		presetModeKeepWidth = 1,
		/**
		
		*/
		presetModeKeepHeight = 2,
		/**
		
		*/
		presetModeKeepSize = 3,
	}
	/// 
	enum MouseFilter : int
	{
		/**
		The control will receive mouse button input events through $(D _guiInput) if clicked on. These events are automatically marked as handled and they will not propagate further to other controls.
		*/
		mouseFilterStop = 0,
		/**
		The control will receive mouse button input events through $(D _guiInput) if clicked on. If this control does not handle the event, the parent control (if any) will be considered for a mouse click, and so on until there is no more parent control to potentially handle it. Even if no control handled it at all, the event will still be handled automatically.
		*/
		mouseFilterPass = 1,
		/**
		The control will not receive mouse button input events through $(D _guiInput) and will not block other controls from receiving these events. These events will also not be handled automatically.
		*/
		mouseFilterIgnore = 2,
	}
	/// 
	enum CursorShape : int
	{
		/**
		Show the system's arrow mouse cursor when the user hovers the node. Use with $(D setDefaultCursorShape).
		*/
		cursorArrow = 0,
		/**
		Show the system's I-beam mouse cursor when the user hovers the node. The I-beam pointer has a shape similar to "I". It tells the user they can highlight or insert text.
		*/
		cursorIbeam = 1,
		/**
		Show the system's pointing hand mouse cursor when the user hovers the node.
		*/
		cursorPointingHand = 2,
		/**
		Show the system's cross mouse cursor when the user hovers the node.
		*/
		cursorCross = 3,
		/**
		Show the system's wait mouse cursor, often an hourglass, when the user hovers the node.
		*/
		cursorWait = 4,
		/**
		Show the system's busy mouse cursor when the user hovers the node. Often an hourglass.
		*/
		cursorBusy = 5,
		/**
		Show the system's drag mouse cursor, often a closed fist or a cross symbol, when the user hovers the node. It tells the user they're currently dragging an item, like a node in the Scene dock.
		*/
		cursorDrag = 6,
		/**
		Show the system's drop mouse cursor when the user hovers the node. It can be an open hand. It tells the user they can drop an item they're currently grabbing, like a node in the Scene dock.
		*/
		cursorCanDrop = 7,
		/**
		Show the system's forbidden mouse cursor when the user hovers the node. Often a crossed circle.
		*/
		cursorForbidden = 8,
		/**
		Show the system's vertical resize mouse cursor when the user hovers the node. A double headed vertical arrow. It tells the user they can resize the window or the panel vertically.
		*/
		cursorVsize = 9,
		/**
		Show the system's horizontal resize mouse cursor when the user hovers the node. A double headed horizontal arrow. It tells the user they can resize the window or the panel horizontally.
		*/
		cursorHsize = 10,
		/**
		Show the system's window resize mouse cursor when the user hovers the node. The cursor is a double headed arrow that goes from the bottom left to the top right. It tells the user they can resize the window or the panel both horizontally and vertically.
		*/
		cursorBdiagsize = 11,
		/**
		Show the system's window resize mouse cursor when the user hovers the node. The cursor is a double headed arrow that goes from the top left to the bottom right, the opposite of `CURSOR_BDIAGSIZE`. It tells the user they can resize the window or the panel both horizontally and vertically.
		*/
		cursorFdiagsize = 12,
		/**
		Show the system's move mouse cursor when the user hovers the node. It shows 2 double-headed arrows at a 90 degree angle. It tells the user they can move a UI element freely.
		*/
		cursorMove = 13,
		/**
		Show the system's vertical split mouse cursor when the user hovers the node. On Windows, it's the same as `CURSOR_VSIZE`.
		*/
		cursorVsplit = 14,
		/**
		Show the system's horizontal split mouse cursor when the user hovers the node. On Windows, it's the same as `CURSOR_HSIZE`.
		*/
		cursorHsplit = 15,
		/**
		Show the system's help mouse cursor when the user hovers the node, a question mark.
		*/
		cursorHelp = 16,
	}
	/// 
	enum GrowDirection : int
	{
		/**
		
		*/
		growDirectionBegin = 0,
		/**
		
		*/
		growDirectionEnd = 1,
		/**
		
		*/
		growDirectionBoth = 2,
	}
	/// 
	enum SizeFlags : int
	{
		/**
		Tells the parent $(D Container) to expand the bounds of this node to fill all the available space without pushing any other node. Use with $(D sizeFlagsHorizontal) and $(D sizeFlagsVertical).
		*/
		sizeFill = 1,
		/**
		Tells the parent $(D Container) to let this node take all the available space on the axis you flag. If multiple neighboring nodes are set to expand, they'll share the space based on their stretch ratio. See $(D sizeFlagsStretchRatio). Use with $(D sizeFlagsHorizontal) and $(D sizeFlagsVertical).
		*/
		sizeExpand = 2,
		/**
		Sets the node's size flags to both fill and expand. See the 2 constants above for more information.
		*/
		sizeExpandFill = 3,
		/**
		Tells the parent $(D Container) to center the node in itself. It centers the `Control` based on its bounding box, so it doesn't work with the fill or expand size flags. Use with $(D sizeFlagsHorizontal) and $(D sizeFlagsVertical).
		*/
		sizeShrinkCenter = 4,
		/**
		Tells the parent $(D Container) to align the node with its end, either the bottom or the right edge. It doesn't work with the fill or expand size flags. Use with $(D sizeFlagsHorizontal) and $(D sizeFlagsVertical).
		*/
		sizeShrinkEnd = 8,
	}
	/// 
	enum LayoutPreset : int
	{
		/**
		Snap all 4 anchors to the top-left of the parent container's bounds. Use with $(D setAnchorsPreset).
		*/
		presetTopLeft = 0,
		/**
		Snap all 4 anchors to the top-right of the parent container's bounds. Use with $(D setAnchorsPreset).
		*/
		presetTopRight = 1,
		/**
		Snap all 4 anchors to the bottom-left of the parent container's bounds. Use with $(D setAnchorsPreset).
		*/
		presetBottomLeft = 2,
		/**
		Snap all 4 anchors to the bottom-right of the parent container's bounds. Use with $(D setAnchorsPreset).
		*/
		presetBottomRight = 3,
		/**
		Snap all 4 anchors to the center of the left edge of the parent container's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenterLeft = 4,
		/**
		Snap all 4 anchors to the center of the top edge of the parent container's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenterTop = 5,
		/**
		Snap all 4 anchors to the center of the right edge of the parent container's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenterRight = 6,
		/**
		Snap all 4 anchors to the center of the bottom edge of the parent container's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenterBottom = 7,
		/**
		Snap all 4 anchors to the center of the parent container's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenter = 8,
		/**
		Snap all 4 anchors to the left edge of the parent container. The left margin becomes relative to the left edge and the top margin relative to the top left corner of the node's parent. Use with $(D setAnchorsPreset).
		*/
		presetLeftWide = 9,
		/**
		Snap all 4 anchors to the top edge of the parent container. The left margin becomes relative to the top left corner, the top margin relative to the top edge, and the right margin relative to the top right corner of the node's parent. Use with $(D setAnchorsPreset).
		*/
		presetTopWide = 10,
		/**
		Snap all 4 anchors to the right edge of the parent container. The right margin becomes relative to the right edge and the top margin relative to the top right corner of the node's parent. Use with $(D setAnchorsPreset).
		*/
		presetRightWide = 11,
		/**
		Snap all 4 anchors to the bottom edge of the parent container. The left margin becomes relative to the bottom left corner, the bottom margin relative to the bottom edge, and the right margin relative to the bottom right corner of the node's parent. Use with $(D setAnchorsPreset).
		*/
		presetBottomWide = 12,
		/**
		Snap all 4 anchors to a vertical line that cuts the parent container in half. Use with $(D setAnchorsPreset).
		*/
		presetVcenterWide = 13,
		/**
		Snap all 4 anchors to a horizontal line that cuts the parent container in half. Use with $(D setAnchorsPreset).
		*/
		presetHcenterWide = 14,
		/**
		Snap all 4 anchors to the respective corners of the parent container. Set all 4 margins to 0 after you applied this preset and the `Control` will fit its parent container. Use with $(D setAnchorsPreset).
		*/
		presetWide = 15,
	}
	/// 
	enum Constants : int
	{
		cursorArrow = 0,
		mouseFilterStop = 0,
		growDirectionBegin = 0,
		presetModeMinsize = 0,
		focusNone = 0,
		anchorBegin = 0,
		presetTopLeft = 0,
		presetModeKeepWidth = 1,
		cursorIbeam = 1,
		anchorEnd = 1,
		focusClick = 1,
		growDirectionEnd = 1,
		sizeFill = 1,
		mouseFilterPass = 1,
		presetTopRight = 1,
		sizeExpand = 2,
		focusAll = 2,
		presetModeKeepHeight = 2,
		growDirectionBoth = 2,
		presetBottomLeft = 2,
		mouseFilterIgnore = 2,
		cursorPointingHand = 2,
		cursorCross = 3,
		presetModeKeepSize = 3,
		sizeExpandFill = 3,
		presetBottomRight = 3,
		presetCenterLeft = 4,
		sizeShrinkCenter = 4,
		cursorWait = 4,
		presetCenterTop = 5,
		cursorBusy = 5,
		presetCenterRight = 6,
		cursorDrag = 6,
		presetCenterBottom = 7,
		cursorCanDrop = 7,
		cursorForbidden = 8,
		presetCenter = 8,
		sizeShrinkEnd = 8,
		cursorVsize = 9,
		presetLeftWide = 9,
		presetTopWide = 10,
		cursorHsize = 10,
		cursorBdiagsize = 11,
		presetRightWide = 11,
		cursorFdiagsize = 12,
		presetBottomWide = 12,
		presetVcenterWide = 13,
		cursorMove = 13,
		cursorVsplit = 14,
		presetHcenterWide = 14,
		cursorHsplit = 15,
		presetWide = 15,
		cursorHelp = 16,
		/**
		Sent when the node changes size. Use $(D rectSize) to get the new size.
		*/
		notificationResized = 40,
		/**
		Sent when the mouse pointer enters the node's `Rect` area.
		*/
		notificationMouseEnter = 41,
		/**
		Sent when the mouse pointer exits the node's `Rect` area.
		*/
		notificationMouseExit = 42,
		/**
		Sent when the node grabs focus.
		*/
		notificationFocusEnter = 43,
		/**
		Sent when the node loses focus.
		*/
		notificationFocusExit = 44,
		/**
		Sent when the node's $(D theme) changes, right before Godot redraws the `Control`. Happens when you call one of the `add_*_override`
		*/
		notificationThemeChanged = 45,
		/**
		Sent when an open modal dialog closes. See $(D showModal).
		*/
		notificationModalClose = 46,
		/**
		
		*/
		notificationScrollBegin = 47,
		/**
		
		*/
		notificationScrollEnd = 48,
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	/**
	The node's parent forwards input events to this method. Use it to process and accept inputs on UI elements. See $(D acceptEvent).
	Replaces Godot 2's `_input_event`.
	*/
	void _guiInput(InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT__get_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_minimum_size") = _GODOT__get_minimum_size;
	/**
	Returns the minimum size this Control can shrink to. The node can never be smaller than this minimum size.
	*/
	Vector2 _getMinimumSize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_minimum_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	package(godot) static GodotMethod!(GodotObject, Vector2) _GODOT_get_drag_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drag_data") = _GODOT_get_drag_data;
	/**
	Godot calls this method to get data that can be dragged and dropped onto controls that expect drop data. Return null if there is no data to drag. Controls that want to receive drop data should implement $(D canDropData) and $(D dropData). `position` is local to this control. Drag may be forced with $(D forceDrag).
	A preview that will follow the mouse that should represent the data can be set with $(D setDragPreview). A good time to set the preview is in this method.
	
	
	extends Control
	
	func get_drag_data(position):
		var mydata = make_data()
		set_drag_preview(make_preview(mydata))
		return mydata
	
	
	*/
	GodotObject getDragData(in Vector2 position)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(position);
		String _GODOT_method_name = String("get_drag_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!GodotObject);
	}
	package(godot) static GodotMethod!(bool, Vector2, Variant) _GODOT_can_drop_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_drop_data") = _GODOT_can_drop_data;
	/**
	Godot calls this method to test if `data` from a control's $(D getDragData) can be dropped at `position`. `position` is local to this control.
	This method should only be used to test the data. Process the data in $(D dropData).
	
	
	extends Control
	
	func can_drop_data(position, data):
	    # check position if it is relevant to you
	    # otherwise just check data
	    return typeof(data) == TYPE_DICTIONARY and data.has('expected')
	
	
	*/
	bool canDropData(VariantArg1)(in Vector2 position, in VariantArg1 data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(position);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("can_drop_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, Vector2, Variant) _GODOT_drop_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "drop_data") = _GODOT_drop_data;
	/**
	Godot calls this method to pass you the `data` from a control's $(D getDragData) result. Godot first calls $(D canDropData) to test if `data` is allowed to drop at `position` where `position` is local to this control.
	
	
	extends ColorRect
	
	func can_drop_data(position, data):
	    return typeof(data) == TYPE_DICTIONARY and data.has('color')
	
	func drop_data(position, data):
	    color = data$(D 'color')
	
	
	*/
	void dropData(VariantArg1)(in Vector2 position, in VariantArg1 data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(position);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("drop_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool, Vector2) _GODOT_has_point;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_point") = _GODOT_has_point;
	/**
	
	*/
	bool hasPoint(in Vector2 point)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(point);
		String _GODOT_method_name = String("has_point");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void) _GODOT__size_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_size_changed") = _GODOT__size_changed;
	/**
	
	*/
	void _sizeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_size_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_minimum_size") = _GODOT__update_minimum_size;
	/**
	
	*/
	void _updateMinimumSize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_minimum_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_accept_event;
	package(godot) alias _GODOT_methodBindInfo(string name : "accept_event") = _GODOT_accept_event;
	/**
	Marks an input event as handled. Once you accept an input event, it stops propagating, even to nodes listening to $(D Node._unhandledInput) or $(D Node._unhandledKeyInput).
	*/
	void acceptEvent()
	{
		_GODOT_accept_event.bind("Control", "accept_event");
		ptrcall!(void)(_GODOT_accept_event, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_minimum_size") = _GODOT_get_minimum_size;
	/**
	Return the minimum size this Control can shrink to. A control will never be displayed or resized smaller than its minimum size.
	*/
	Vector2 getMinimumSize() const
	{
		_GODOT_get_minimum_size.bind("Control", "get_minimum_size");
		return ptrcall!(Vector2)(_GODOT_get_minimum_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_combined_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_combined_minimum_size") = _GODOT_get_combined_minimum_size;
	/**
	
	*/
	Vector2 getCombinedMinimumSize() const
	{
		_GODOT_get_combined_minimum_size.bind("Control", "get_combined_minimum_size");
		return ptrcall!(Vector2)(_GODOT_get_combined_minimum_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_set_anchors_preset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchors_preset") = _GODOT_set_anchors_preset;
	/**
	
	*/
	void setAnchorsPreset(in long preset, in bool keep_margin = false)
	{
		_GODOT_set_anchors_preset.bind("Control", "set_anchors_preset");
		ptrcall!(void)(_GODOT_set_anchors_preset, _godot_object, preset, keep_margin);
	}
	package(godot) static GodotMethod!(void, long, long, long) _GODOT_set_margins_preset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margins_preset") = _GODOT_set_margins_preset;
	/**
	
	*/
	void setMarginsPreset(in long preset, in long resize_mode = 0, in long margin = 0)
	{
		_GODOT_set_margins_preset.bind("Control", "set_margins_preset");
		ptrcall!(void)(_GODOT_set_margins_preset, _godot_object, preset, resize_mode, margin);
	}
	package(godot) static GodotMethod!(void, long, long, long) _GODOT_set_anchors_and_margins_preset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchors_and_margins_preset") = _GODOT_set_anchors_and_margins_preset;
	/**
	
	*/
	void setAnchorsAndMarginsPreset(in long preset, in long resize_mode = 0, in long margin = 0)
	{
		_GODOT_set_anchors_and_margins_preset.bind("Control", "set_anchors_and_margins_preset");
		ptrcall!(void)(_GODOT_set_anchors_and_margins_preset, _godot_object, preset, resize_mode, margin);
	}
	package(godot) static GodotMethod!(void, long, double, bool, bool) _GODOT_set_anchor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchor") = _GODOT_set_anchor;
	/**
	
	*/
	void setAnchor(in long margin, in double anchor, in bool keep_margin = false, in bool push_opposite_anchor = true)
	{
		_GODOT_set_anchor.bind("Control", "set_anchor");
		ptrcall!(void)(_GODOT_set_anchor, _godot_object, margin, anchor, keep_margin, push_opposite_anchor);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT__set_anchor;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_anchor") = _GODOT__set_anchor;
	/**
	
	*/
	void _setAnchor(in long margin, in double anchor)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(margin);
		_GODOT_args.append(anchor);
		String _GODOT_method_name = String("_set_anchor");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_anchor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anchor") = _GODOT_get_anchor;
	/**
	
	*/
	double getAnchor(in long margin) const
	{
		_GODOT_get_anchor.bind("Control", "get_anchor");
		return ptrcall!(double)(_GODOT_get_anchor, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin") = _GODOT_set_margin;
	/**
	
	*/
	void setMargin(in long margin, in double offset)
	{
		_GODOT_set_margin.bind("Control", "set_margin");
		ptrcall!(void)(_GODOT_set_margin, _godot_object, margin, offset);
	}
	package(godot) static GodotMethod!(void, long, double, double, bool) _GODOT_set_anchor_and_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchor_and_margin") = _GODOT_set_anchor_and_margin;
	/**
	
	*/
	void setAnchorAndMargin(in long margin, in double anchor, in double offset, in bool push_opposite_anchor = false)
	{
		_GODOT_set_anchor_and_margin.bind("Control", "set_anchor_and_margin");
		ptrcall!(void)(_GODOT_set_anchor_and_margin, _godot_object, margin, anchor, offset, push_opposite_anchor);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_begin") = _GODOT_set_begin;
	/**
	Sets MARGIN_LEFT and MARGIN_TOP at the same time. This is a helper (see $(D setMargin)).
	*/
	void setBegin(in Vector2 position)
	{
		_GODOT_set_begin.bind("Control", "set_begin");
		ptrcall!(void)(_GODOT_set_begin, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_end") = _GODOT_set_end;
	/**
	Sets MARGIN_RIGHT and MARGIN_BOTTOM at the same time. This is a helper (see $(D setMargin)).
	*/
	void setEnd(in Vector2 position)
	{
		_GODOT_set_end.bind("Control", "set_end");
		ptrcall!(void)(_GODOT_set_end, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		_GODOT_set_position.bind("Control", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		_GODOT_set_size.bind("Control", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_custom_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_minimum_size") = _GODOT_set_custom_minimum_size;
	/**
	
	*/
	void setCustomMinimumSize(in Vector2 size)
	{
		_GODOT_set_custom_minimum_size.bind("Control", "set_custom_minimum_size");
		ptrcall!(void)(_GODOT_set_custom_minimum_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_position") = _GODOT_set_global_position;
	/**
	
	*/
	void setGlobalPosition(in Vector2 position)
	{
		_GODOT_set_global_position.bind("Control", "set_global_position");
		ptrcall!(void)(_GODOT_set_global_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation") = _GODOT_set_rotation;
	/**
	Set the rotation (in radians).
	*/
	void setRotation(in double radians)
	{
		_GODOT_set_rotation.bind("Control", "set_rotation");
		ptrcall!(void)(_GODOT_set_rotation, _godot_object, radians);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation_degrees") = _GODOT_set_rotation_degrees;
	/**
	
	*/
	void setRotationDegrees(in double degrees)
	{
		_GODOT_set_rotation_degrees.bind("Control", "set_rotation_degrees");
		ptrcall!(void)(_GODOT_set_rotation_degrees, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scale") = _GODOT_set_scale;
	/**
	
	*/
	void setScale(in Vector2 scale)
	{
		_GODOT_set_scale.bind("Control", "set_scale");
		ptrcall!(void)(_GODOT_set_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_pivot_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pivot_offset") = _GODOT_set_pivot_offset;
	/**
	
	*/
	void setPivotOffset(in Vector2 pivot_offset)
	{
		_GODOT_set_pivot_offset.bind("Control", "set_pivot_offset");
		ptrcall!(void)(_GODOT_set_pivot_offset, _godot_object, pivot_offset);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	/**
	
	*/
	double getMargin(in long margin) const
	{
		_GODOT_get_margin.bind("Control", "get_margin");
		return ptrcall!(double)(_GODOT_get_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_begin") = _GODOT_get_begin;
	/**
	
	*/
	Vector2 getBegin() const
	{
		_GODOT_get_begin.bind("Control", "get_begin");
		return ptrcall!(Vector2)(_GODOT_get_begin, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_end") = _GODOT_get_end;
	/**
	Returns MARGIN_LEFT and MARGIN_TOP at the same time. This is a helper (see $(D setMargin)).
	*/
	Vector2 getEnd() const
	{
		_GODOT_get_end.bind("Control", "get_end");
		return ptrcall!(Vector2)(_GODOT_get_end, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	/**
	
	*/
	Vector2 getPosition() const
	{
		_GODOT_get_position.bind("Control", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	
	*/
	Vector2 getSize() const
	{
		_GODOT_get_size.bind("Control", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation") = _GODOT_get_rotation;
	/**
	Return the rotation (in radians)
	*/
	double getRotation() const
	{
		_GODOT_get_rotation.bind("Control", "get_rotation");
		return ptrcall!(double)(_GODOT_get_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation_degrees") = _GODOT_get_rotation_degrees;
	/**
	
	*/
	double getRotationDegrees() const
	{
		_GODOT_get_rotation_degrees.bind("Control", "get_rotation_degrees");
		return ptrcall!(double)(_GODOT_get_rotation_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scale") = _GODOT_get_scale;
	/**
	
	*/
	Vector2 getScale() const
	{
		_GODOT_get_scale.bind("Control", "get_scale");
		return ptrcall!(Vector2)(_GODOT_get_scale, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_pivot_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pivot_offset") = _GODOT_get_pivot_offset;
	/**
	
	*/
	Vector2 getPivotOffset() const
	{
		_GODOT_get_pivot_offset.bind("Control", "get_pivot_offset");
		return ptrcall!(Vector2)(_GODOT_get_pivot_offset, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_custom_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_minimum_size") = _GODOT_get_custom_minimum_size;
	/**
	
	*/
	Vector2 getCustomMinimumSize() const
	{
		_GODOT_get_custom_minimum_size.bind("Control", "get_custom_minimum_size");
		return ptrcall!(Vector2)(_GODOT_get_custom_minimum_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_parent_area_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent_area_size") = _GODOT_get_parent_area_size;
	/**
	
	*/
	Vector2 getParentAreaSize() const
	{
		_GODOT_get_parent_area_size.bind("Control", "get_parent_area_size");
		return ptrcall!(Vector2)(_GODOT_get_parent_area_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_position") = _GODOT_get_global_position;
	/**
	
	*/
	Vector2 getGlobalPosition() const
	{
		_GODOT_get_global_position.bind("Control", "get_global_position");
		return ptrcall!(Vector2)(_GODOT_get_global_position, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rect") = _GODOT_get_rect;
	/**
	Return position and size of the Control, relative to the top-left corner of the parent Control. This is a helper (see $(D getPosition), $(D getSize)).
	*/
	Rect2 getRect() const
	{
		_GODOT_get_rect.bind("Control", "get_rect");
		return ptrcall!(Rect2)(_GODOT_get_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_global_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_rect") = _GODOT_get_global_rect;
	/**
	Return position and size of the Control, relative to the top-left corner of the $(I window) Control. This is a helper (see $(D getGlobalPosition), $(D getSize)).
	*/
	Rect2 getGlobalRect() const
	{
		_GODOT_get_global_rect.bind("Control", "get_global_rect");
		return ptrcall!(Rect2)(_GODOT_get_global_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_show_modal;
	package(godot) alias _GODOT_methodBindInfo(string name : "show_modal") = _GODOT_show_modal;
	/**
	Display a Control as modal. Control must be a subwindow. Modal controls capture the input signals until closed or the area outside them is accessed. When a modal control loses focus, or the ESC key is pressed, they automatically hide. Modal controls are used extensively for popup dialogs and menus.
	*/
	void showModal(in bool exclusive = false)
	{
		_GODOT_show_modal.bind("Control", "show_modal");
		ptrcall!(void)(_GODOT_show_modal, _godot_object, exclusive);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_focus_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_focus_mode") = _GODOT_set_focus_mode;
	/**
	
	*/
	void setFocusMode(in long mode)
	{
		_GODOT_set_focus_mode.bind("Control", "set_focus_mode");
		ptrcall!(void)(_GODOT_set_focus_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Control.FocusMode) _GODOT_get_focus_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focus_mode") = _GODOT_get_focus_mode;
	/**
	
	*/
	Control.FocusMode getFocusMode() const
	{
		_GODOT_get_focus_mode.bind("Control", "get_focus_mode");
		return ptrcall!(Control.FocusMode)(_GODOT_get_focus_mode, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_focus") = _GODOT_has_focus;
	/**
	Return whether the Control is the current focused control (see $(D setFocusMode)).
	*/
	bool hasFocus() const
	{
		_GODOT_has_focus.bind("Control", "has_focus");
		return ptrcall!(bool)(_GODOT_has_focus, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_grab_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "grab_focus") = _GODOT_grab_focus;
	/**
	Steal the focus from another control and become the focused control (see $(D setFocusMode)).
	*/
	void grabFocus()
	{
		_GODOT_grab_focus.bind("Control", "grab_focus");
		ptrcall!(void)(_GODOT_grab_focus, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_release_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "release_focus") = _GODOT_release_focus;
	/**
	Give up the focus, no other control will be able to receive keyboard input.
	*/
	void releaseFocus()
	{
		_GODOT_release_focus.bind("Control", "release_focus");
		ptrcall!(void)(_GODOT_release_focus, _godot_object);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_focus_owner;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focus_owner") = _GODOT_get_focus_owner;
	/**
	Return which control is owning the keyboard focus, or null if no one.
	*/
	Control getFocusOwner() const
	{
		_GODOT_get_focus_owner.bind("Control", "get_focus_owner");
		return ptrcall!(Control)(_GODOT_get_focus_owner, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_h_size_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_size_flags") = _GODOT_set_h_size_flags;
	/**
	
	*/
	void setHSizeFlags(in long flags)
	{
		_GODOT_set_h_size_flags.bind("Control", "set_h_size_flags");
		ptrcall!(void)(_GODOT_set_h_size_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_h_size_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_size_flags") = _GODOT_get_h_size_flags;
	/**
	
	*/
	long getHSizeFlags() const
	{
		_GODOT_get_h_size_flags.bind("Control", "get_h_size_flags");
		return ptrcall!(long)(_GODOT_get_h_size_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_stretch_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch_ratio") = _GODOT_set_stretch_ratio;
	/**
	
	*/
	void setStretchRatio(in double ratio)
	{
		_GODOT_set_stretch_ratio.bind("Control", "set_stretch_ratio");
		ptrcall!(void)(_GODOT_set_stretch_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_stretch_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stretch_ratio") = _GODOT_get_stretch_ratio;
	/**
	
	*/
	double getStretchRatio() const
	{
		_GODOT_get_stretch_ratio.bind("Control", "get_stretch_ratio");
		return ptrcall!(double)(_GODOT_get_stretch_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_v_size_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_size_flags") = _GODOT_set_v_size_flags;
	/**
	
	*/
	void setVSizeFlags(in long flags)
	{
		_GODOT_set_v_size_flags.bind("Control", "set_v_size_flags");
		ptrcall!(void)(_GODOT_set_v_size_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_v_size_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_size_flags") = _GODOT_get_v_size_flags;
	/**
	
	*/
	long getVSizeFlags() const
	{
		_GODOT_get_v_size_flags.bind("Control", "get_v_size_flags");
		return ptrcall!(long)(_GODOT_get_v_size_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, Theme) _GODOT_set_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_theme") = _GODOT_set_theme;
	/**
	
	*/
	void setTheme(Theme theme)
	{
		_GODOT_set_theme.bind("Control", "set_theme");
		ptrcall!(void)(_GODOT_set_theme, _godot_object, theme);
	}
	package(godot) static GodotMethod!(Theme) _GODOT_get_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_theme") = _GODOT_get_theme;
	/**
	
	*/
	Ref!Theme getTheme() const
	{
		_GODOT_get_theme.bind("Control", "get_theme");
		return ptrcall!(Theme)(_GODOT_get_theme, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Texture) _GODOT_add_icon_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_icon_override") = _GODOT_add_icon_override;
	/**
	Overrides the `name` icon in the $(D theme) resource the node uses. If `icon` is empty, Godot clears the override.
	*/
	void addIconOverride(StringArg0)(in StringArg0 name, Texture texture)
	{
		_GODOT_add_icon_override.bind("Control", "add_icon_override");
		ptrcall!(void)(_GODOT_add_icon_override, _godot_object, name, texture);
	}
	package(godot) static GodotMethod!(void, String, Shader) _GODOT_add_shader_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_shader_override") = _GODOT_add_shader_override;
	/**
	Overrides the `name` shader in the $(D theme) resource the node uses. If `shader` is empty, Godot clears the override.
	*/
	void addShaderOverride(StringArg0)(in StringArg0 name, Shader shader)
	{
		_GODOT_add_shader_override.bind("Control", "add_shader_override");
		ptrcall!(void)(_GODOT_add_shader_override, _godot_object, name, shader);
	}
	package(godot) static GodotMethod!(void, String, StyleBox) _GODOT_add_stylebox_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_stylebox_override") = _GODOT_add_stylebox_override;
	/**
	Overrides the `name` $(D Stylebox) in the $(D theme) resource the node uses. If `stylebox` is empty, Godot clears the override.
	*/
	void addStyleboxOverride(StringArg0)(in StringArg0 name, StyleBox stylebox)
	{
		_GODOT_add_stylebox_override.bind("Control", "add_stylebox_override");
		ptrcall!(void)(_GODOT_add_stylebox_override, _godot_object, name, stylebox);
	}
	package(godot) static GodotMethod!(void, String, Font) _GODOT_add_font_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_font_override") = _GODOT_add_font_override;
	/**
	Overrides the `name` font in the $(D theme) resource the node uses. If `font` is empty, Godot clears the override.
	*/
	void addFontOverride(StringArg0)(in StringArg0 name, Font font)
	{
		_GODOT_add_font_override.bind("Control", "add_font_override");
		ptrcall!(void)(_GODOT_add_font_override, _godot_object, name, font);
	}
	package(godot) static GodotMethod!(void, String, Color) _GODOT_add_color_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_color_override") = _GODOT_add_color_override;
	/**
	Overrides the color in the $(D theme) resource the node uses.
	*/
	void addColorOverride(StringArg0)(in StringArg0 name, in Color color)
	{
		_GODOT_add_color_override.bind("Control", "add_color_override");
		ptrcall!(void)(_GODOT_add_color_override, _godot_object, name, color);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_add_constant_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_constant_override") = _GODOT_add_constant_override;
	/**
	Overrides an integer constant in the $(D Theme) resource the node uses. If the `constant` is invalid, Godot clears the override. See $(D Theme.invalidConstant) for more information.
	*/
	void addConstantOverride(StringArg0)(in StringArg0 name, in long constant)
	{
		_GODOT_add_constant_override.bind("Control", "add_constant_override");
		ptrcall!(void)(_GODOT_add_constant_override, _godot_object, name, constant);
	}
	package(godot) static GodotMethod!(Texture, String, String) _GODOT_get_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon") = _GODOT_get_icon;
	/**
	
	*/
	Ref!Texture getIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_icon.bind("Control", "get_icon");
		return ptrcall!(Texture)(_GODOT_get_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(StyleBox, String, String) _GODOT_get_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stylebox") = _GODOT_get_stylebox;
	/**
	
	*/
	Ref!StyleBox getStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_stylebox.bind("Control", "get_stylebox");
		return ptrcall!(StyleBox)(_GODOT_get_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(Font, String, String) _GODOT_get_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font") = _GODOT_get_font;
	/**
	
	*/
	Ref!Font getFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_font.bind("Control", "get_font");
		return ptrcall!(Font)(_GODOT_get_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(Color, String, String) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	/**
	
	*/
	Color getColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_color.bind("Control", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(long, String, String) _GODOT_get_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant") = _GODOT_get_constant;
	/**
	
	*/
	long getConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_get_constant.bind("Control", "get_constant");
		return ptrcall!(long)(_GODOT_get_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_icon_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_icon_override") = _GODOT_has_icon_override;
	/**
	
	*/
	bool hasIconOverride(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_icon_override.bind("Control", "has_icon_override");
		return ptrcall!(bool)(_GODOT_has_icon_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_shader_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_shader_override") = _GODOT_has_shader_override;
	/**
	
	*/
	bool hasShaderOverride(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_shader_override.bind("Control", "has_shader_override");
		return ptrcall!(bool)(_GODOT_has_shader_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_stylebox_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_stylebox_override") = _GODOT_has_stylebox_override;
	/**
	
	*/
	bool hasStyleboxOverride(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_stylebox_override.bind("Control", "has_stylebox_override");
		return ptrcall!(bool)(_GODOT_has_stylebox_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_font_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_font_override") = _GODOT_has_font_override;
	/**
	
	*/
	bool hasFontOverride(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_font_override.bind("Control", "has_font_override");
		return ptrcall!(bool)(_GODOT_has_font_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_color_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_color_override") = _GODOT_has_color_override;
	/**
	
	*/
	bool hasColorOverride(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_color_override.bind("Control", "has_color_override");
		return ptrcall!(bool)(_GODOT_has_color_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_constant_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_constant_override") = _GODOT_has_constant_override;
	/**
	
	*/
	bool hasConstantOverride(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_constant_override.bind("Control", "has_constant_override");
		return ptrcall!(bool)(_GODOT_has_constant_override, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_icon") = _GODOT_has_icon;
	/**
	
	*/
	bool hasIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_icon.bind("Control", "has_icon");
		return ptrcall!(bool)(_GODOT_has_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_stylebox") = _GODOT_has_stylebox;
	/**
	
	*/
	bool hasStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_stylebox.bind("Control", "has_stylebox");
		return ptrcall!(bool)(_GODOT_has_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_font") = _GODOT_has_font;
	/**
	
	*/
	bool hasFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_font.bind("Control", "has_font");
		return ptrcall!(bool)(_GODOT_has_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_color") = _GODOT_has_color;
	/**
	
	*/
	bool hasColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_color.bind("Control", "has_color");
		return ptrcall!(bool)(_GODOT_has_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_constant") = _GODOT_has_constant;
	/**
	
	*/
	bool hasConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type = "") const
	{
		_GODOT_has_constant.bind("Control", "has_constant");
		return ptrcall!(bool)(_GODOT_has_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(Control) _GODOT_get_parent_control;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent_control") = _GODOT_get_parent_control;
	/**
	
	*/
	Control getParentControl() const
	{
		_GODOT_get_parent_control.bind("Control", "get_parent_control");
		return ptrcall!(Control)(_GODOT_get_parent_control, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_h_grow_direction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_grow_direction") = _GODOT_set_h_grow_direction;
	/**
	
	*/
	void setHGrowDirection(in long direction)
	{
		_GODOT_set_h_grow_direction.bind("Control", "set_h_grow_direction");
		ptrcall!(void)(_GODOT_set_h_grow_direction, _godot_object, direction);
	}
	package(godot) static GodotMethod!(Control.GrowDirection) _GODOT_get_h_grow_direction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_grow_direction") = _GODOT_get_h_grow_direction;
	/**
	
	*/
	Control.GrowDirection getHGrowDirection() const
	{
		_GODOT_get_h_grow_direction.bind("Control", "get_h_grow_direction");
		return ptrcall!(Control.GrowDirection)(_GODOT_get_h_grow_direction, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_v_grow_direction;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_grow_direction") = _GODOT_set_v_grow_direction;
	/**
	
	*/
	void setVGrowDirection(in long direction)
	{
		_GODOT_set_v_grow_direction.bind("Control", "set_v_grow_direction");
		ptrcall!(void)(_GODOT_set_v_grow_direction, _godot_object, direction);
	}
	package(godot) static GodotMethod!(Control.GrowDirection) _GODOT_get_v_grow_direction;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_grow_direction") = _GODOT_get_v_grow_direction;
	/**
	
	*/
	Control.GrowDirection getVGrowDirection() const
	{
		_GODOT_get_v_grow_direction.bind("Control", "get_v_grow_direction");
		return ptrcall!(Control.GrowDirection)(_GODOT_get_v_grow_direction, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tooltip") = _GODOT_set_tooltip;
	/**
	
	*/
	void setTooltip(StringArg0)(in StringArg0 tooltip)
	{
		_GODOT_set_tooltip.bind("Control", "set_tooltip");
		ptrcall!(void)(_GODOT_set_tooltip, _godot_object, tooltip);
	}
	package(godot) static GodotMethod!(String, Vector2) _GODOT_get_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tooltip") = _GODOT_get_tooltip;
	/**
	Return the tooltip, which will appear when the cursor is resting over this control.
	*/
	String getTooltip(in Vector2 at_position = Vector2(0, 0)) const
	{
		_GODOT_get_tooltip.bind("Control", "get_tooltip");
		return ptrcall!(String)(_GODOT_get_tooltip, _godot_object, at_position);
	}
	package(godot) static GodotMethod!(String) _GODOT__get_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_tooltip") = _GODOT__get_tooltip;
	/**
	
	*/
	String _getTooltip() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_default_cursor_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_cursor_shape") = _GODOT_set_default_cursor_shape;
	/**
	
	*/
	void setDefaultCursorShape(in long shape)
	{
		_GODOT_set_default_cursor_shape.bind("Control", "set_default_cursor_shape");
		ptrcall!(void)(_GODOT_set_default_cursor_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Control.CursorShape) _GODOT_get_default_cursor_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_cursor_shape") = _GODOT_get_default_cursor_shape;
	/**
	
	*/
	Control.CursorShape getDefaultCursorShape() const
	{
		_GODOT_get_default_cursor_shape.bind("Control", "get_default_cursor_shape");
		return ptrcall!(Control.CursorShape)(_GODOT_get_default_cursor_shape, _godot_object);
	}
	package(godot) static GodotMethod!(Control.CursorShape, Vector2) _GODOT_get_cursor_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cursor_shape") = _GODOT_get_cursor_shape;
	/**
	Returns the mouse cursor shape the control displays on mouse hover, one of the `CURSOR_*` constants.
	*/
	Control.CursorShape getCursorShape(in Vector2 position = Vector2(0, 0)) const
	{
		_GODOT_get_cursor_shape.bind("Control", "get_cursor_shape");
		return ptrcall!(Control.CursorShape)(_GODOT_get_cursor_shape, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, long, NodePath) _GODOT_set_focus_neighbour;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_focus_neighbour") = _GODOT_set_focus_neighbour;
	/**
	
	*/
	void setFocusNeighbour(NodePathArg1)(in long margin, in NodePathArg1 neighbour)
	{
		_GODOT_set_focus_neighbour.bind("Control", "set_focus_neighbour");
		ptrcall!(void)(_GODOT_set_focus_neighbour, _godot_object, margin, neighbour);
	}
	package(godot) static GodotMethod!(NodePath, long) _GODOT_get_focus_neighbour;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focus_neighbour") = _GODOT_get_focus_neighbour;
	/**
	
	*/
	NodePath getFocusNeighbour(in long margin) const
	{
		_GODOT_get_focus_neighbour.bind("Control", "get_focus_neighbour");
		return ptrcall!(NodePath)(_GODOT_get_focus_neighbour, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_focus_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_focus_next") = _GODOT_set_focus_next;
	/**
	
	*/
	void setFocusNext(NodePathArg0)(in NodePathArg0 next)
	{
		_GODOT_set_focus_next.bind("Control", "set_focus_next");
		ptrcall!(void)(_GODOT_set_focus_next, _godot_object, next);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_focus_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focus_next") = _GODOT_get_focus_next;
	/**
	
	*/
	NodePath getFocusNext() const
	{
		_GODOT_get_focus_next.bind("Control", "get_focus_next");
		return ptrcall!(NodePath)(_GODOT_get_focus_next, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_focus_previous;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_focus_previous") = _GODOT_set_focus_previous;
	/**
	
	*/
	void setFocusPrevious(NodePathArg0)(in NodePathArg0 previous)
	{
		_GODOT_set_focus_previous.bind("Control", "set_focus_previous");
		ptrcall!(void)(_GODOT_set_focus_previous, _godot_object, previous);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_focus_previous;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focus_previous") = _GODOT_get_focus_previous;
	/**
	
	*/
	NodePath getFocusPrevious() const
	{
		_GODOT_get_focus_previous.bind("Control", "get_focus_previous");
		return ptrcall!(NodePath)(_GODOT_get_focus_previous, _godot_object);
	}
	package(godot) static GodotMethod!(void, Variant, GodotObject) _GODOT_force_drag;
	package(godot) alias _GODOT_methodBindInfo(string name : "force_drag") = _GODOT_force_drag;
	/**
	Forces drag and bypasses $(D getDragData) and $(D setDragPreview) by passing `data` and `preview`. Drag will start even if the mouse is neither over nor pressed on this control.
	The methods $(D canDropData) and $(D dropData) must be implemented on controls that want to receive drop data.
	*/
	void forceDrag(VariantArg0)(in VariantArg0 data, GodotObject preview)
	{
		_GODOT_force_drag.bind("Control", "force_drag");
		ptrcall!(void)(_GODOT_force_drag, _godot_object, data, preview);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_mouse_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_mouse_filter") = _GODOT_set_mouse_filter;
	/**
	
	*/
	void setMouseFilter(in long filter)
	{
		_GODOT_set_mouse_filter.bind("Control", "set_mouse_filter");
		ptrcall!(void)(_GODOT_set_mouse_filter, _godot_object, filter);
	}
	package(godot) static GodotMethod!(Control.MouseFilter) _GODOT_get_mouse_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mouse_filter") = _GODOT_get_mouse_filter;
	/**
	
	*/
	Control.MouseFilter getMouseFilter() const
	{
		_GODOT_get_mouse_filter.bind("Control", "get_mouse_filter");
		return ptrcall!(Control.MouseFilter)(_GODOT_get_mouse_filter, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_clip_contents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clip_contents") = _GODOT_set_clip_contents;
	/**
	
	*/
	void setClipContents(in bool enable)
	{
		_GODOT_set_clip_contents.bind("Control", "set_clip_contents");
		ptrcall!(void)(_GODOT_set_clip_contents, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_clipping_contents;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_clipping_contents") = _GODOT_is_clipping_contents;
	/**
	
	*/
	bool isClippingContents()
	{
		_GODOT_is_clipping_contents.bind("Control", "is_clipping_contents");
		return ptrcall!(bool)(_GODOT_is_clipping_contents, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_grab_click_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "grab_click_focus") = _GODOT_grab_click_focus;
	/**
	
	*/
	void grabClickFocus()
	{
		_GODOT_grab_click_focus.bind("Control", "grab_click_focus");
		ptrcall!(void)(_GODOT_grab_click_focus, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_drag_forwarding;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drag_forwarding") = _GODOT_set_drag_forwarding;
	/**
	Forwards the handling of this control's drag and drop to `target` control.
	Forwarding can be implemented in the target control similar to the methods $(D getDragData), $(D canDropData), and $(D dropData) but with two differences:
	1. The function name must be suffixed with $(B _fw)
	2. The function must take an extra argument that is the control doing the forwarding
	
	
	# ThisControl.gd
	extends Control
	func _ready():
	    set_drag_forwarding(target_control)
	
	# TargetControl.gd
	extends Control
	func can_drop_data_fw(position, data, from_control):
	    return true
	
	func drop_data_fw(position, data, from_control):
	    my_handle_data(data)
	
	func get_drag_data_fw(position, from_control):
	    set_drag_preview(my_preview)
	    return my_data()
	
	
	*/
	void setDragForwarding(GodotObject target)
	{
		_GODOT_set_drag_forwarding.bind("Control", "set_drag_forwarding");
		ptrcall!(void)(_GODOT_set_drag_forwarding, _godot_object, target);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_drag_preview;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drag_preview") = _GODOT_set_drag_preview;
	/**
	Shows the given control at the mouse pointer. A good time to call this method is in $(D getDragData).
	*/
	void setDragPreview(GodotObject control)
	{
		_GODOT_set_drag_preview.bind("Control", "set_drag_preview");
		ptrcall!(void)(_GODOT_set_drag_preview, _godot_object, control);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_warp_mouse;
	package(godot) alias _GODOT_methodBindInfo(string name : "warp_mouse") = _GODOT_warp_mouse;
	/**
	
	*/
	void warpMouse(in Vector2 to_position)
	{
		_GODOT_warp_mouse.bind("Control", "warp_mouse");
		ptrcall!(void)(_GODOT_warp_mouse, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(void) _GODOT_minimum_size_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "minimum_size_changed") = _GODOT_minimum_size_changed;
	/**
	
	*/
	void minimumSizeChanged()
	{
		_GODOT_minimum_size_changed.bind("Control", "minimum_size_changed");
		ptrcall!(void)(_GODOT_minimum_size_changed, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__theme_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_theme_changed") = _GODOT__theme_changed;
	/**
	
	*/
	void _themeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__font_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_font_changed") = _GODOT__font_changed;
	/**
	
	*/
	void _fontChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_font_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Anchors the left edge of the node to the origin, the center or the end of its parent container. It changes how the left margin updates when the node moves or changes size. Use one of the `ANCHOR_*` constants. Default value: `ANCHOR_BEGIN`.
	*/
	@property double anchorLeft()
	{
		return getAnchor(0);
	}
	/// ditto
	@property void anchorLeft(double v)
	{
		_setAnchor(0, v);
	}
	/**
	Anchors the top edge of the node to the origin, the center or the end of its parent container. It changes how the top margin updates when the node moves or changes size. Use one of the `ANCHOR_*` constants. Default value: `ANCHOR_BEGIN`.
	*/
	@property double anchorTop()
	{
		return getAnchor(1);
	}
	/// ditto
	@property void anchorTop(double v)
	{
		_setAnchor(1, v);
	}
	/**
	Anchors the right edge of the node to the origin, the center or the end of its parent container. It changes how the right margin updates when the node moves or changes size. Use one of the `ANCHOR_*` constants. Default value: `ANCHOR_BEGIN`.
	*/
	@property double anchorRight()
	{
		return getAnchor(2);
	}
	/// ditto
	@property void anchorRight(double v)
	{
		_setAnchor(2, v);
	}
	/**
	Anchors the bottom edge of the node to the origin, the center, or the end of its parent container. It changes how the bottom margin updates when the node moves or changes size. Use one of the `ANCHOR_*` constants. Default value: `ANCHOR_BEGIN`.
	*/
	@property double anchorBottom()
	{
		return getAnchor(3);
	}
	/// ditto
	@property void anchorBottom(double v)
	{
		_setAnchor(3, v);
	}
	/**
	Distance between the node's left edge and its parent container, based on $(D anchorLeft).
	*/
	@property double marginLeft()
	{
		return getMargin(0);
	}
	/// ditto
	@property void marginLeft(double v)
	{
		setMargin(0, v);
	}
	/**
	Distance between the node's top edge and its parent container, based on $(D anchorTop).
	*/
	@property double marginTop()
	{
		return getMargin(1);
	}
	/// ditto
	@property void marginTop(double v)
	{
		setMargin(1, v);
	}
	/**
	Distance between the node's right edge and its parent container, based on $(D anchorRight).
	*/
	@property double marginRight()
	{
		return getMargin(2);
	}
	/// ditto
	@property void marginRight(double v)
	{
		setMargin(2, v);
	}
	/**
	Distance between the node's bottom edge and its parent container, based on $(D anchorBottom).
	Margins are often controlled by one or multiple parent $(D Container) nodes. Margins update automatically when you move or resize the node.
	*/
	@property double marginBottom()
	{
		return getMargin(3);
	}
	/// ditto
	@property void marginBottom(double v)
	{
		setMargin(3, v);
	}
	/**
	
	*/
	@property Control.GrowDirection growHorizontal()
	{
		return getHGrowDirection();
	}
	/// ditto
	@property void growHorizontal(long v)
	{
		setHGrowDirection(v);
	}
	/**
	
	*/
	@property Control.GrowDirection growVertical()
	{
		return getVGrowDirection();
	}
	/// ditto
	@property void growVertical(long v)
	{
		setVGrowDirection(v);
	}
	/**
	The node's position, relative to its parent. It corresponds to the rectangle's top-left corner. The property is not affected by $(D rectPivotOffset).
	*/
	@property Vector2 rectPosition()
	{
		return getPosition();
	}
	/// ditto
	@property void rectPosition(Vector2 v)
	{
		setPosition(v);
	}
	/**
	The node's global position, relative to the world (usually to the top-left corner of the window).
	*/
	@property Vector2 rectGlobalPosition()
	{
		return getGlobalPosition();
	}
	/// ditto
	@property void rectGlobalPosition(Vector2 v)
	{
		setGlobalPosition(v);
	}
	/**
	The size of the node's bounding rectangle, in pixels. $(D Container) nodes update this property automatically.
	*/
	@property Vector2 rectSize()
	{
		return getSize();
	}
	/// ditto
	@property void rectSize(Vector2 v)
	{
		setSize(v);
	}
	/**
	The minimum size of the node's bounding rectangle. If you set it to a value greater than (0, 0), the node's bounding rectangle will always have at least this size, even if its content is smaller. If it's set to (0, 0), the node sizes automatically to fit its content, be it a texture or child nodes.
	*/
	@property Vector2 rectMinSize()
	{
		return getCustomMinimumSize();
	}
	/// ditto
	@property void rectMinSize(Vector2 v)
	{
		setCustomMinimumSize(v);
	}
	/**
	The node's rotation around its pivot, in degrees. See $(D rectPivotOffset) to change the pivot's position.
	*/
	@property double rectRotation()
	{
		return getRotationDegrees();
	}
	/// ditto
	@property void rectRotation(double v)
	{
		setRotationDegrees(v);
	}
	/**
	The node's scale, relative to its $(D rectSize). Change this property to scale the node around its $(D rectPivotOffset).
	*/
	@property Vector2 rectScale()
	{
		return getScale();
	}
	/// ditto
	@property void rectScale(Vector2 v)
	{
		setScale(v);
	}
	/**
	By default, the node's pivot is its top-left corner. When you change its $(D rectScale), it will scale around this pivot. Set this property to $(D rectSize) / 2 to center the pivot in the node's rectangle.
	*/
	@property Vector2 rectPivotOffset()
	{
		return getPivotOffset();
	}
	/// ditto
	@property void rectPivotOffset(Vector2 v)
	{
		setPivotOffset(v);
	}
	/**
	
	*/
	@property bool rectClipContent()
	{
		return isClippingContents();
	}
	/// ditto
	@property void rectClipContent(bool v)
	{
		setClipContents(v);
	}
	/**
	Changes the tooltip text. The tooltip appears when the user's mouse cursor stays idle over this control for a few moments.
	*/
	@property String hintTooltip()
	{
		return _getTooltip();
	}
	/// ditto
	@property void hintTooltip(String v)
	{
		setTooltip(v);
	}
	/**
	Tells Godot which node it should give keyboard focus to if the user presses Shift+Tab, the left arrow on the keyboard or left on a gamepad. The node must be a `Control`. If this property is not set, Godot will give focus to the closest `Control` to the left of this one.
	*/
	@property NodePath focusNeighbourLeft()
	{
		return getFocusNeighbour(0);
	}
	/// ditto
	@property void focusNeighbourLeft(NodePath v)
	{
		setFocusNeighbour(0, v);
	}
	/**
	Tells Godot which node it should give keyboard focus to if the user presses Shift+Tab, the top arrow on the keyboard or top on a gamepad. The node must be a `Control`. If this property is not set, Godot will give focus to the closest `Control` to the bottom of this one.
	*/
	@property NodePath focusNeighbourTop()
	{
		return getFocusNeighbour(1);
	}
	/// ditto
	@property void focusNeighbourTop(NodePath v)
	{
		setFocusNeighbour(1, v);
	}
	/**
	Tells Godot which node it should give keyboard focus to if the user presses Tab, the right arrow on the keyboard or right on a gamepad. The node must be a `Control`. If this property is not set, Godot will give focus to the closest `Control` to the bottom of this one.
	*/
	@property NodePath focusNeighbourRight()
	{
		return getFocusNeighbour(2);
	}
	/// ditto
	@property void focusNeighbourRight(NodePath v)
	{
		setFocusNeighbour(2, v);
	}
	/**
	Tells Godot which node it should give keyboard focus to if the user presses Tab, the down arrow on the keyboard, or down on a gamepad. The node must be a `Control`. If this property is not set, Godot will give focus to the closest `Control` to the bottom of this one.
	If the user presses Tab, Godot will give focus to the closest node to the right first, then to the bottom. If the user presses Shift+Tab, Godot will look to the left of the node, then above it.
	*/
	@property NodePath focusNeighbourBottom()
	{
		return getFocusNeighbour(3);
	}
	/// ditto
	@property void focusNeighbourBottom(NodePath v)
	{
		setFocusNeighbour(3, v);
	}
	/**
	
	*/
	@property NodePath focusNext()
	{
		return getFocusNext();
	}
	/// ditto
	@property void focusNext(NodePath v)
	{
		setFocusNext(v);
	}
	/**
	
	*/
	@property NodePath focusPrevious()
	{
		return getFocusPrevious();
	}
	/// ditto
	@property void focusPrevious(NodePath v)
	{
		setFocusPrevious(v);
	}
	/**
	The focus access mode for the control (None, Click or All). Only one Control can be focused at the same time, and it will receive keyboard signals.
	*/
	@property Control.FocusMode focusMode()
	{
		return getFocusMode();
	}
	/// ditto
	@property void focusMode(long v)
	{
		setFocusMode(v);
	}
	/**
	Controls whether the control will be able to receive mouse button input events through $(D _guiInput) and how these events should be handled. Use one of the `MOUSE_FILTER_*` constants. See the constants to learn what each does.
	*/
	@property Control.MouseFilter mouseFilter()
	{
		return getMouseFilter();
	}
	/// ditto
	@property void mouseFilter(long v)
	{
		setMouseFilter(v);
	}
	/**
	The default cursor shape for this control. Useful for Godot plugins and applications or games that use the system's mouse cursors.
	*/
	@property Control.CursorShape mouseDefaultCursorShape()
	{
		return getDefaultCursorShape();
	}
	/// ditto
	@property void mouseDefaultCursorShape(long v)
	{
		setDefaultCursorShape(v);
	}
	/**
	Tells the parent $(D Container) nodes how they should resize and place the node on the X axis. Use one of the `SIZE_*` constants to change the flags. See the constants to learn what each does.
	*/
	@property long sizeFlagsHorizontal()
	{
		return getHSizeFlags();
	}
	/// ditto
	@property void sizeFlagsHorizontal(long v)
	{
		setHSizeFlags(v);
	}
	/**
	Tells the parent $(D Container) nodes how they should resize and place the node on the Y axis. Use one of the `SIZE_*` constants to change the flags. See the constants to learn what each does.
	*/
	@property long sizeFlagsVertical()
	{
		return getVSizeFlags();
	}
	/// ditto
	@property void sizeFlagsVertical(long v)
	{
		setVSizeFlags(v);
	}
	/**
	If the node and at least one of its neighbours uses the `SIZE_EXPAND` size flag, the parent $(D Container) will let it take more or less space depending on this property. If this node has a stretch ratio of 2 and its neighbour a ratio of 1, this node will take two thirds of the available space.
	*/
	@property double sizeFlagsStretchRatio()
	{
		return getStretchRatio();
	}
	/// ditto
	@property void sizeFlagsStretchRatio(double v)
	{
		setStretchRatio(v);
	}
	/**
	Changing this property replaces the current $(D Theme) resource this node and all its `Control` children use.
	*/
	@property Theme theme()
	{
		return getTheme();
	}
	/// ditto
	@property void theme(Theme v)
	{
		setTheme(v);
	}
}
