/**
All User Interface nodes inherit from Control. A control's anchors and margins adapt its position and size relative to its parent.

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
import godot.node;
/**
All User Interface nodes inherit from Control. A control's anchors and margins adapt its position and size relative to its parent.

Base class for all User Interface or $(I UI) related nodes. $(D Control) features a bounding rectangle that defines its extents, an anchor position relative to its parent and margins that represent an offset to the anchor. The margins update automatically when the node, any of its parents, or the screen size change.
For more information on Godot's UI system, anchors, margins, and containers, see the related tutorials in the manual. To build flexible UIs, you'll need a mix of UI elements that inherit from $(D Control) and $(D Container) nodes.
$(B User Interface nodes and input)
Godot sends input events to the scene's root node first, by calling $(D Node._input). $(D Node._input) forwards the event down the node tree to the nodes under the mouse cursor, or on keyboard focus. To do so, it calls $(D MainLoop._inputEvent). Call $(D acceptEvent) so no other node receives the event. Once you accepted an input, it becomes handled so $(D Node._unhandledInput) will not process it.
Only one $(D Control) node can be in keyboard focus. Only the node in focus will receive keyboard events. To get the focus, call $(D grabFocus). $(D Control) nodes lose focus when another node grabs it, or if you hide the node in focus.
Set $(D mouseFilter) to $(D constant MOUSE_FILTER_IGNORE) to tell a $(D Control) node to ignore mouse or touch events. You'll need it if you place an icon on top of a button.
$(D Theme) resources change the Control's appearance. If you change the $(D Theme) on a $(D Control) node, it affects all of its children. To override some of the theme's parameters, call one of the `add_*_override` methods, like $(D addFontOverride). You can override the theme with the inspector.
*/
@GodotBaseClass struct Control
{
	enum string _GODOT_internal_name = "Control";
public:
@nogc nothrow:
	union { godot_object _godot_object; CanvasItem _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_get_minimum_size") GodotMethod!(Vector2) _getMinimumSize;
		@GodotName("get_drag_data") GodotMethod!(GodotObject, Vector2) getDragData;
		@GodotName("can_drop_data") GodotMethod!(bool, Vector2, Variant) canDropData;
		@GodotName("drop_data") GodotMethod!(void, Vector2, Variant) dropData;
		@GodotName("_make_custom_tooltip") GodotMethod!(GodotObject, String) _makeCustomTooltip;
		@GodotName("_clips_input") GodotMethod!(bool) _clipsInput;
		@GodotName("has_point") GodotMethod!(bool, Vector2) hasPoint;
		@GodotName("_size_changed") GodotMethod!(void) _sizeChanged;
		@GodotName("_update_minimum_size") GodotMethod!(void) _updateMinimumSize;
		@GodotName("accept_event") GodotMethod!(void) acceptEvent;
		@GodotName("get_minimum_size") GodotMethod!(Vector2) getMinimumSize;
		@GodotName("get_combined_minimum_size") GodotMethod!(Vector2) getCombinedMinimumSize;
		@GodotName("set_anchors_preset") GodotMethod!(void, long, bool) setAnchorsPreset;
		@GodotName("set_margins_preset") GodotMethod!(void, long, long, long) setMarginsPreset;
		@GodotName("set_anchors_and_margins_preset") GodotMethod!(void, long, long, long) setAnchorsAndMarginsPreset;
		@GodotName("set_anchor") GodotMethod!(void, long, double, bool, bool) setAnchor;
		@GodotName("_set_anchor") GodotMethod!(void, long, double) _setAnchor;
		@GodotName("get_anchor") GodotMethod!(double, long) getAnchor;
		@GodotName("set_margin") GodotMethod!(void, long, double) setMargin;
		@GodotName("set_anchor_and_margin") GodotMethod!(void, long, double, double, bool) setAnchorAndMargin;
		@GodotName("set_begin") GodotMethod!(void, Vector2) setBegin;
		@GodotName("set_end") GodotMethod!(void, Vector2) setEnd;
		@GodotName("set_position") GodotMethod!(void, Vector2) setPosition;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
		@GodotName("set_custom_minimum_size") GodotMethod!(void, Vector2) setCustomMinimumSize;
		@GodotName("set_global_position") GodotMethod!(void, Vector2) setGlobalPosition;
		@GodotName("set_rotation") GodotMethod!(void, double) setRotation;
		@GodotName("set_rotation_degrees") GodotMethod!(void, double) setRotationDegrees;
		@GodotName("set_scale") GodotMethod!(void, Vector2) setScale;
		@GodotName("set_pivot_offset") GodotMethod!(void, Vector2) setPivotOffset;
		@GodotName("get_margin") GodotMethod!(double, long) getMargin;
		@GodotName("get_begin") GodotMethod!(Vector2) getBegin;
		@GodotName("get_end") GodotMethod!(Vector2) getEnd;
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("get_rotation") GodotMethod!(double) getRotation;
		@GodotName("get_rotation_degrees") GodotMethod!(double) getRotationDegrees;
		@GodotName("get_scale") GodotMethod!(Vector2) getScale;
		@GodotName("get_pivot_offset") GodotMethod!(Vector2) getPivotOffset;
		@GodotName("get_custom_minimum_size") GodotMethod!(Vector2) getCustomMinimumSize;
		@GodotName("get_parent_area_size") GodotMethod!(Vector2) getParentAreaSize;
		@GodotName("get_global_position") GodotMethod!(Vector2) getGlobalPosition;
		@GodotName("get_rect") GodotMethod!(Rect2) getRect;
		@GodotName("get_global_rect") GodotMethod!(Rect2) getGlobalRect;
		@GodotName("show_modal") GodotMethod!(void, bool) showModal;
		@GodotName("set_focus_mode") GodotMethod!(void, long) setFocusMode;
		@GodotName("get_focus_mode") GodotMethod!(Control.FocusMode) getFocusMode;
		@GodotName("has_focus") GodotMethod!(bool) hasFocus;
		@GodotName("grab_focus") GodotMethod!(void) grabFocus;
		@GodotName("release_focus") GodotMethod!(void) releaseFocus;
		@GodotName("get_focus_owner") GodotMethod!(Control) getFocusOwner;
		@GodotName("set_h_size_flags") GodotMethod!(void, long) setHSizeFlags;
		@GodotName("get_h_size_flags") GodotMethod!(long) getHSizeFlags;
		@GodotName("set_stretch_ratio") GodotMethod!(void, double) setStretchRatio;
		@GodotName("get_stretch_ratio") GodotMethod!(double) getStretchRatio;
		@GodotName("set_v_size_flags") GodotMethod!(void, long) setVSizeFlags;
		@GodotName("get_v_size_flags") GodotMethod!(long) getVSizeFlags;
		@GodotName("set_theme") GodotMethod!(void, Theme) setTheme;
		@GodotName("get_theme") GodotMethod!(Theme) getTheme;
		@GodotName("add_icon_override") GodotMethod!(void, String, Texture) addIconOverride;
		@GodotName("add_shader_override") GodotMethod!(void, String, Shader) addShaderOverride;
		@GodotName("add_stylebox_override") GodotMethod!(void, String, StyleBox) addStyleboxOverride;
		@GodotName("add_font_override") GodotMethod!(void, String, Font) addFontOverride;
		@GodotName("add_color_override") GodotMethod!(void, String, Color) addColorOverride;
		@GodotName("add_constant_override") GodotMethod!(void, String, long) addConstantOverride;
		@GodotName("get_icon") GodotMethod!(Texture, String, String) getIcon;
		@GodotName("get_stylebox") GodotMethod!(StyleBox, String, String) getStylebox;
		@GodotName("get_font") GodotMethod!(Font, String, String) getFont;
		@GodotName("get_color") GodotMethod!(Color, String, String) getColor;
		@GodotName("get_constant") GodotMethod!(long, String, String) getConstant;
		@GodotName("has_icon_override") GodotMethod!(bool, String) hasIconOverride;
		@GodotName("has_shader_override") GodotMethod!(bool, String) hasShaderOverride;
		@GodotName("has_stylebox_override") GodotMethod!(bool, String) hasStyleboxOverride;
		@GodotName("has_font_override") GodotMethod!(bool, String) hasFontOverride;
		@GodotName("has_color_override") GodotMethod!(bool, String) hasColorOverride;
		@GodotName("has_constant_override") GodotMethod!(bool, String) hasConstantOverride;
		@GodotName("has_icon") GodotMethod!(bool, String, String) hasIcon;
		@GodotName("has_stylebox") GodotMethod!(bool, String, String) hasStylebox;
		@GodotName("has_font") GodotMethod!(bool, String, String) hasFont;
		@GodotName("has_color") GodotMethod!(bool, String, String) hasColor;
		@GodotName("has_constant") GodotMethod!(bool, String, String) hasConstant;
		@GodotName("get_parent_control") GodotMethod!(Control) getParentControl;
		@GodotName("set_h_grow_direction") GodotMethod!(void, long) setHGrowDirection;
		@GodotName("get_h_grow_direction") GodotMethod!(Control.GrowDirection) getHGrowDirection;
		@GodotName("set_v_grow_direction") GodotMethod!(void, long) setVGrowDirection;
		@GodotName("get_v_grow_direction") GodotMethod!(Control.GrowDirection) getVGrowDirection;
		@GodotName("set_tooltip") GodotMethod!(void, String) setTooltip;
		@GodotName("get_tooltip") GodotMethod!(String, Vector2) getTooltip;
		@GodotName("_get_tooltip") GodotMethod!(String) _getTooltip;
		@GodotName("set_default_cursor_shape") GodotMethod!(void, long) setDefaultCursorShape;
		@GodotName("get_default_cursor_shape") GodotMethod!(Control.CursorShape) getDefaultCursorShape;
		@GodotName("get_cursor_shape") GodotMethod!(Control.CursorShape, Vector2) getCursorShape;
		@GodotName("set_focus_neighbour") GodotMethod!(void, long, NodePath) setFocusNeighbour;
		@GodotName("get_focus_neighbour") GodotMethod!(NodePath, long) getFocusNeighbour;
		@GodotName("set_focus_next") GodotMethod!(void, NodePath) setFocusNext;
		@GodotName("get_focus_next") GodotMethod!(NodePath) getFocusNext;
		@GodotName("set_focus_previous") GodotMethod!(void, NodePath) setFocusPrevious;
		@GodotName("get_focus_previous") GodotMethod!(NodePath) getFocusPrevious;
		@GodotName("force_drag") GodotMethod!(void, Variant, Control) forceDrag;
		@GodotName("set_mouse_filter") GodotMethod!(void, long) setMouseFilter;
		@GodotName("get_mouse_filter") GodotMethod!(Control.MouseFilter) getMouseFilter;
		@GodotName("set_clip_contents") GodotMethod!(void, bool) setClipContents;
		@GodotName("is_clipping_contents") GodotMethod!(bool) isClippingContents;
		@GodotName("grab_click_focus") GodotMethod!(void) grabClickFocus;
		@GodotName("set_drag_forwarding") GodotMethod!(void, Control) setDragForwarding;
		@GodotName("set_drag_preview") GodotMethod!(void, Control) setDragPreview;
		@GodotName("warp_mouse") GodotMethod!(void, Vector2) warpMouse;
		@GodotName("minimum_size_changed") GodotMethod!(void) minimumSizeChanged;
		@GodotName("_theme_changed") GodotMethod!(void) _themeChanged;
		@GodotName("_override_changed") GodotMethod!(void) _overrideChanged;
	}
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
		The node cannot grab focus. Use with $(D focusMode).
		*/
		focusNone = 0,
		/**
		The node can only grab focus on mouse clicks. Use with $(D focusMode).
		*/
		focusClick = 1,
		/**
		The node can grab focus on mouse click or using the arrows and the Tab keys on the keyboard. Use with $(D focusMode).
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
		The control will receive mouse button input events through $(D _guiInput) if clicked on. And the control will receive the $(D mouseEntered) and $(D mouseExited) signals. These events are automatically marked as handled and they will not propagate further to other controls. This also results in blocking signals in other controls.
		*/
		mouseFilterStop = 0,
		/**
		The control will receive mouse button input events through $(D _guiInput) if clicked on. And the control will receive the $(D mouseEntered) and $(D mouseExited) signals. If this control does not handle the event, the parent control (if any) will be considered, and so on until there is no more parent control to potentially handle it. This also allows signals to fire in other controls. Even if no control handled it at all, the event will still be handled automatically, so unhandled input will not be fired.
		*/
		mouseFilterPass = 1,
		/**
		The control will not receive mouse button input events through $(D _guiInput). Also the control will not receive the $(D mouseEntered) nor $(D mouseExited) signals. This will not block other controls from receiving these events or firing the signals. Ignored events will not be handled automatically.
		*/
		mouseFilterIgnore = 2,
	}
	/// 
	enum CursorShape : int
	{
		/**
		Show the system's arrow mouse cursor when the user hovers the node. Use with $(D mouseDefaultCursorShape).
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
		The control will grow to the left or top to make up if its minimum size is changed to be greater than its current size on the respective axis.
		*/
		growDirectionBegin = 0,
		/**
		The control will grow to the right or bottom to make up if its minimum size is changed to be greater than its current size on the respective axis.
		*/
		growDirectionEnd = 1,
		/**
		The control will grow in both directions equally to make up if its minimum size is changed to be greater than its current size.
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
		Tells the parent $(D Container) to center the node in itself. It centers the control based on its bounding box, so it doesn't work with the fill or expand size flags. Use with $(D sizeFlagsHorizontal) and $(D sizeFlagsVertical).
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
		Snap all 4 anchors to the top-left of the parent control's bounds. Use with $(D setAnchorsPreset).
		*/
		presetTopLeft = 0,
		/**
		Snap all 4 anchors to the top-right of the parent control's bounds. Use with $(D setAnchorsPreset).
		*/
		presetTopRight = 1,
		/**
		Snap all 4 anchors to the bottom-left of the parent control's bounds. Use with $(D setAnchorsPreset).
		*/
		presetBottomLeft = 2,
		/**
		Snap all 4 anchors to the bottom-right of the parent control's bounds. Use with $(D setAnchorsPreset).
		*/
		presetBottomRight = 3,
		/**
		Snap all 4 anchors to the center of the left edge of the parent control's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenterLeft = 4,
		/**
		Snap all 4 anchors to the center of the top edge of the parent control's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenterTop = 5,
		/**
		Snap all 4 anchors to the center of the right edge of the parent control's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenterRight = 6,
		/**
		Snap all 4 anchors to the center of the bottom edge of the parent control's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenterBottom = 7,
		/**
		Snap all 4 anchors to the center of the parent control's bounds. Use with $(D setAnchorsPreset).
		*/
		presetCenter = 8,
		/**
		Snap all 4 anchors to the left edge of the parent control. The left margin becomes relative to the left edge and the top margin relative to the top left corner of the node's parent. Use with $(D setAnchorsPreset).
		*/
		presetLeftWide = 9,
		/**
		Snap all 4 anchors to the top edge of the parent control. The left margin becomes relative to the top left corner, the top margin relative to the top edge, and the right margin relative to the top right corner of the node's parent. Use with $(D setAnchorsPreset).
		*/
		presetTopWide = 10,
		/**
		Snap all 4 anchors to the right edge of the parent control. The right margin becomes relative to the right edge and the top margin relative to the top right corner of the node's parent. Use with $(D setAnchorsPreset).
		*/
		presetRightWide = 11,
		/**
		Snap all 4 anchors to the bottom edge of the parent control. The left margin becomes relative to the bottom left corner, the bottom margin relative to the bottom edge, and the right margin relative to the bottom right corner of the node's parent. Use with $(D setAnchorsPreset).
		*/
		presetBottomWide = 12,
		/**
		Snap all 4 anchors to a vertical line that cuts the parent control in half. Use with $(D setAnchorsPreset).
		*/
		presetVcenterWide = 13,
		/**
		Snap all 4 anchors to a horizontal line that cuts the parent control in half. Use with $(D setAnchorsPreset).
		*/
		presetHcenterWide = 14,
		/**
		Snap all 4 anchors to the respective corners of the parent control. Set all 4 margins to 0 after you applied this preset and the $(D Control) will fit its parent control. This is equivalent to to the "Full Rect" layout option in the editor. Use with $(D setAnchorsPreset).
		*/
		presetWide = 15,
	}
	/// 
	enum Constants : int
	{
		anchorBegin = 0,
		mouseFilterStop = 0,
		focusNone = 0,
		cursorArrow = 0,
		growDirectionBegin = 0,
		presetModeMinsize = 0,
		presetTopLeft = 0,
		mouseFilterPass = 1,
		anchorEnd = 1,
		sizeFill = 1,
		presetModeKeepWidth = 1,
		growDirectionEnd = 1,
		cursorIbeam = 1,
		focusClick = 1,
		presetTopRight = 1,
		focusAll = 2,
		sizeExpand = 2,
		presetModeKeepHeight = 2,
		cursorPointingHand = 2,
		mouseFilterIgnore = 2,
		growDirectionBoth = 2,
		presetBottomLeft = 2,
		presetBottomRight = 3,
		sizeExpandFill = 3,
		presetModeKeepSize = 3,
		cursorCross = 3,
		presetCenterLeft = 4,
		cursorWait = 4,
		sizeShrinkCenter = 4,
		cursorBusy = 5,
		presetCenterTop = 5,
		cursorDrag = 6,
		presetCenterRight = 6,
		presetCenterBottom = 7,
		cursorCanDrop = 7,
		cursorForbidden = 8,
		presetCenter = 8,
		sizeShrinkEnd = 8,
		presetLeftWide = 9,
		cursorVsize = 9,
		presetTopWide = 10,
		cursorHsize = 10,
		presetRightWide = 11,
		cursorBdiagsize = 11,
		cursorFdiagsize = 12,
		presetBottomWide = 12,
		cursorMove = 13,
		presetVcenterWide = 13,
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
		Sent when the mouse pointer enters the node.
		*/
		notificationMouseEnter = 41,
		/**
		Sent when the mouse pointer exits the node.
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
		Sent when the node's $(D theme) changes, right before Godot redraws the control. Happens when you call one of the `add_*_override` methods.
		*/
		notificationThemeChanged = 45,
		/**
		Sent when an open modal dialog closes. See $(D showModal).
		*/
		notificationModalClose = 46,
		/**
		Sent when this node is inside a $(D ScrollContainer) which has begun being scrolled.
		*/
		notificationScrollBegin = 47,
		/**
		Sent when this node is inside a $(D ScrollContainer) which has stopped being scrolled.
		*/
		notificationScrollEnd = 48,
	}
	/**
	Use this method to process and accept inputs on UI elements. See $(D acceptEvent).
	Replaces Godot 2's `_input_event`.
	*/
	void _guiInput(InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the minimum size for this control. See $(D rectMinSize).
	*/
	Vector2 _getMinimumSize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_minimum_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
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
	/**
	
	*/
	GodotObject _makeCustomTooltip(in String for_text)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(for_text);
		String _GODOT_method_name = String("_make_custom_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!GodotObject);
	}
	/**
	
	*/
	bool _clipsInput()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_clips_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool hasPoint(in Vector2 point)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(point);
		String _GODOT_method_name = String("has_point");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _sizeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_size_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateMinimumSize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_minimum_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Marks an input event as handled. Once you accept an input event, it stops propagating, even to nodes listening to $(D Node._unhandledInput) or $(D Node._unhandledKeyInput).
	*/
	void acceptEvent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.acceptEvent, _godot_object);
	}
	/**
	Returns the minimum size for this control. See $(D rectMinSize).
	*/
	Vector2 getMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getMinimumSize, _godot_object);
	}
	/**
	
	*/
	Vector2 getCombinedMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getCombinedMinimumSize, _godot_object);
	}
	/**
	
	*/
	void setAnchorsPreset(in long preset, in bool keep_margin = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnchorsPreset, _godot_object, preset, keep_margin);
	}
	/**
	
	*/
	void setMarginsPreset(in long preset, in long resize_mode = 0, in long margin = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMarginsPreset, _godot_object, preset, resize_mode, margin);
	}
	/**
	
	*/
	void setAnchorsAndMarginsPreset(in long preset, in long resize_mode = 0, in long margin = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnchorsAndMarginsPreset, _godot_object, preset, resize_mode, margin);
	}
	/**
	
	*/
	void setAnchor(in long margin, in double anchor, in bool keep_margin = false, in bool push_opposite_anchor = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnchor, _godot_object, margin, anchor, keep_margin, push_opposite_anchor);
	}
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
	/**
	
	*/
	double getAnchor(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAnchor, _godot_object, margin);
	}
	/**
	
	*/
	void setMargin(in long margin, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMargin, _godot_object, margin, offset);
	}
	/**
	
	*/
	void setAnchorAndMargin(in long margin, in double anchor, in double offset, in bool push_opposite_anchor = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnchorAndMargin, _godot_object, margin, anchor, offset, push_opposite_anchor);
	}
	/**
	Sets $(D marginLeft) and $(D marginTop) at the same time.
	*/
	void setBegin(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBegin, _godot_object, position);
	}
	/**
	Sets $(D marginRight) and $(D marginBottom) at the same time.
	*/
	void setEnd(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnd, _godot_object, position);
	}
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPosition, _godot_object, position);
	}
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	void setCustomMinimumSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomMinimumSize, _godot_object, size);
	}
	/**
	
	*/
	void setGlobalPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlobalPosition, _godot_object, position);
	}
	/**
	Sets the rotation (in radians).
	*/
	void setRotation(in double radians)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRotation, _godot_object, radians);
	}
	/**
	
	*/
	void setRotationDegrees(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRotationDegrees, _godot_object, degrees);
	}
	/**
	
	*/
	void setScale(in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScale, _godot_object, scale);
	}
	/**
	
	*/
	void setPivotOffset(in Vector2 pivot_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPivotOffset, _godot_object, pivot_offset);
	}
	/**
	
	*/
	double getMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMargin, _godot_object, margin);
	}
	/**
	Returns $(D marginLeft) and $(D marginTop). See also $(D rectPosition).
	*/
	Vector2 getBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getBegin, _godot_object);
	}
	/**
	Returns $(D marginRight) and $(D marginBottom).
	*/
	Vector2 getEnd() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getEnd, _godot_object);
	}
	/**
	
	*/
	Vector2 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSize, _godot_object);
	}
	/**
	Returns the rotation (in radians).
	*/
	double getRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRotation, _godot_object);
	}
	/**
	
	*/
	double getRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRotationDegrees, _godot_object);
	}
	/**
	
	*/
	Vector2 getScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScale, _godot_object);
	}
	/**
	
	*/
	Vector2 getPivotOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getPivotOffset, _godot_object);
	}
	/**
	
	*/
	Vector2 getCustomMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getCustomMinimumSize, _godot_object);
	}
	/**
	Returns the width/height occupied in the parent control.
	*/
	Vector2 getParentAreaSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getParentAreaSize, _godot_object);
	}
	/**
	
	*/
	Vector2 getGlobalPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getGlobalPosition, _godot_object);
	}
	/**
	Returns the position and size of the control relative to the top-left corner of the parent Control. See $(D rectPosition) and $(D rectSize).
	*/
	Rect2 getRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getRect, _godot_object);
	}
	/**
	Returns the position and size of the control relative to the top-left corner of the screen. See $(D rectPosition) and $(D rectSize).
	*/
	Rect2 getGlobalRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getGlobalRect, _godot_object);
	}
	/**
	Displays a control as modal. Control must be a subwindow. Modal controls capture the input signals until closed or the area outside them is accessed. When a modal control loses focus, or the ESC key is pressed, they automatically hide. Modal controls are used extensively for popup dialogs and menus.
	*/
	void showModal(in bool exclusive = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.showModal, _godot_object, exclusive);
	}
	/**
	
	*/
	void setFocusMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFocusMode, _godot_object, mode);
	}
	/**
	
	*/
	Control.FocusMode getFocusMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.FocusMode)(_classBinding.getFocusMode, _godot_object);
	}
	/**
	Returns `true` if this is the current focused control. See $(D focusMode).
	*/
	bool hasFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasFocus, _godot_object);
	}
	/**
	Steal the focus from another control and become the focused control (see $(D focusMode)).
	*/
	void grabFocus()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.grabFocus, _godot_object);
	}
	/**
	Give up the focus. No other control will be able to receive keyboard input.
	*/
	void releaseFocus()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.releaseFocus, _godot_object);
	}
	/**
	Returns the control that has the keyboard focus or `null` if none.
	*/
	Control getFocusOwner() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(_classBinding.getFocusOwner, _godot_object);
	}
	/**
	
	*/
	void setHSizeFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHSizeFlags, _godot_object, flags);
	}
	/**
	
	*/
	long getHSizeFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHSizeFlags, _godot_object);
	}
	/**
	
	*/
	void setStretchRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStretchRatio, _godot_object, ratio);
	}
	/**
	
	*/
	double getStretchRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getStretchRatio, _godot_object);
	}
	/**
	
	*/
	void setVSizeFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVSizeFlags, _godot_object, flags);
	}
	/**
	
	*/
	long getVSizeFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVSizeFlags, _godot_object);
	}
	/**
	
	*/
	void setTheme(Theme theme)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTheme, _godot_object, theme);
	}
	/**
	
	*/
	Ref!Theme getTheme() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Theme)(_classBinding.getTheme, _godot_object);
	}
	/**
	Overrides the `name` icon in the $(D theme) resource the node uses. If `icon` is empty, Godot clears the override.
	*/
	void addIconOverride(in String name, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIconOverride, _godot_object, name, texture);
	}
	/**
	Overrides the `name` shader in the $(D theme) resource the node uses. If `shader` is empty, Godot clears the override.
	*/
	void addShaderOverride(in String name, Shader shader)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addShaderOverride, _godot_object, name, shader);
	}
	/**
	Overrides the `name` $(D StyleBox) in the $(D theme) resource the node uses. If `stylebox` is empty, Godot clears the override.
	*/
	void addStyleboxOverride(in String name, StyleBox stylebox)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addStyleboxOverride, _godot_object, name, stylebox);
	}
	/**
	Overrides the `name` font in the $(D theme) resource the node uses. If `font` is empty, Godot clears the override.
	*/
	void addFontOverride(in String name, Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addFontOverride, _godot_object, name, font);
	}
	/**
	Overrides the color in the $(D theme) resource the node uses.
	*/
	void addColorOverride(in String name, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addColorOverride, _godot_object, name, color);
	}
	/**
	Overrides an integer constant in the $(D theme) resource the node uses. If the `constant` is invalid, Godot clears the override.
	*/
	void addConstantOverride(in String name, in long constant)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addConstantOverride, _godot_object, name, constant);
	}
	/**
	
	*/
	Ref!Texture getIcon(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getIcon, _godot_object, name, type);
	}
	/**
	
	*/
	Ref!StyleBox getStylebox(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBox)(_classBinding.getStylebox, _godot_object, name, type);
	}
	/**
	
	*/
	Ref!Font getFont(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(_classBinding.getFont, _godot_object, name, type);
	}
	/**
	
	*/
	Color getColor(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object, name, type);
	}
	/**
	
	*/
	long getConstant(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConstant, _godot_object, name, type);
	}
	/**
	
	*/
	bool hasIconOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasIconOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasShaderOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasShaderOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasStyleboxOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasStyleboxOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasFontOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasFontOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasColorOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasColorOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasConstantOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasConstantOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasIcon(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasIcon, _godot_object, name, type);
	}
	/**
	
	*/
	bool hasStylebox(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasStylebox, _godot_object, name, type);
	}
	/**
	
	*/
	bool hasFont(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasFont, _godot_object, name, type);
	}
	/**
	
	*/
	bool hasColor(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasColor, _godot_object, name, type);
	}
	/**
	
	*/
	bool hasConstant(in String name, in String type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasConstant, _godot_object, name, type);
	}
	/**
	Returns the parent control node.
	*/
	Control getParentControl() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(_classBinding.getParentControl, _godot_object);
	}
	/**
	
	*/
	void setHGrowDirection(in long direction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHGrowDirection, _godot_object, direction);
	}
	/**
	
	*/
	Control.GrowDirection getHGrowDirection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.GrowDirection)(_classBinding.getHGrowDirection, _godot_object);
	}
	/**
	
	*/
	void setVGrowDirection(in long direction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVGrowDirection, _godot_object, direction);
	}
	/**
	
	*/
	Control.GrowDirection getVGrowDirection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.GrowDirection)(_classBinding.getVGrowDirection, _godot_object);
	}
	/**
	
	*/
	void setTooltip(in String tooltip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTooltip, _godot_object, tooltip);
	}
	/**
	Returns the tooltip, which will appear when the cursor is resting over this control.
	*/
	String getTooltip(in Vector2 at_position = Vector2(0, 0)) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTooltip, _godot_object, at_position);
	}
	/**
	
	*/
	String _getTooltip() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	void setDefaultCursorShape(in long shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultCursorShape, _godot_object, shape);
	}
	/**
	
	*/
	Control.CursorShape getDefaultCursorShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.CursorShape)(_classBinding.getDefaultCursorShape, _godot_object);
	}
	/**
	Returns the mouse cursor shape the control displays on mouse hover. See $(D cursorshape).
	*/
	Control.CursorShape getCursorShape(in Vector2 position = Vector2(0, 0)) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.CursorShape)(_classBinding.getCursorShape, _godot_object, position);
	}
	/**
	
	*/
	void setFocusNeighbour(NodePathArg1)(in long margin, in NodePathArg1 neighbour)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFocusNeighbour, _godot_object, margin, neighbour);
	}
	/**
	
	*/
	NodePath getFocusNeighbour(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getFocusNeighbour, _godot_object, margin);
	}
	/**
	
	*/
	void setFocusNext(NodePathArg0)(in NodePathArg0 next)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFocusNext, _godot_object, next);
	}
	/**
	
	*/
	NodePath getFocusNext() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getFocusNext, _godot_object);
	}
	/**
	
	*/
	void setFocusPrevious(NodePathArg0)(in NodePathArg0 previous)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFocusPrevious, _godot_object, previous);
	}
	/**
	
	*/
	NodePath getFocusPrevious() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getFocusPrevious, _godot_object);
	}
	/**
	Forces drag and bypasses $(D getDragData) and $(D setDragPreview) by passing `data` and `preview`. Drag will start even if the mouse is neither over nor pressed on this control.
	The methods $(D canDropData) and $(D dropData) must be implemented on controls that want to receive drop data.
	*/
	void forceDrag(VariantArg0)(in VariantArg0 data, Control preview)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.forceDrag, _godot_object, data, preview);
	}
	/**
	
	*/
	void setMouseFilter(in long filter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMouseFilter, _godot_object, filter);
	}
	/**
	
	*/
	Control.MouseFilter getMouseFilter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.MouseFilter)(_classBinding.getMouseFilter, _godot_object);
	}
	/**
	
	*/
	void setClipContents(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClipContents, _godot_object, enable);
	}
	/**
	
	*/
	bool isClippingContents()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClippingContents, _godot_object);
	}
	/**
	
	*/
	void grabClickFocus()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.grabClickFocus, _godot_object);
	}
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
	void setDragForwarding(Control target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDragForwarding, _godot_object, target);
	}
	/**
	Shows the given control at the mouse pointer. A good time to call this method is in $(D getDragData).
	*/
	void setDragPreview(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDragPreview, _godot_object, control);
	}
	/**
	
	*/
	void warpMouse(in Vector2 to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.warpMouse, _godot_object, to_position);
	}
	/**
	
	*/
	void minimumSizeChanged()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.minimumSizeChanged, _godot_object);
	}
	/**
	
	*/
	void _themeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _overrideChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_override_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Anchors the left edge of the node to the origin, the center or the end of its parent control. It changes how the left margin updates when the node moves or changes size. You can use one of the `ANCHOR_*` constants for convenience.Default value: `ANCHOR_BEGIN`.
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
	Anchors the top edge of the node to the origin, the center or the end of its parent control. It changes how the top margin updates when the node moves or changes size. You can use  one of the `ANCHOR_*` constants for convenience. Default value: `ANCHOR_BEGIN`.
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
	Anchors the right edge of the node to the origin, the center or the end of its parent control. It changes how the right margin updates when the node moves or changes size. You can use one of the `ANCHOR_*` constants for convenience. Default value: `ANCHOR_BEGIN`.
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
	Anchors the bottom edge of the node to the origin, the center, or the end of its parent control. It changes how the bottom margin updates when the node moves or changes size. You can use one of the `ANCHOR_*` constants for convenience. Default value: `ANCHOR_BEGIN`.
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
	Distance between the node's left edge and its parent control, based on $(D anchorLeft).
	Margins are often controlled by one or multiple parent $(D Container) nodes, so you should not modify them manually if your node is a direct child of a $(D Container). Margins update automatically when you move or resize the node.
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
	Distance between the node's top edge and its parent control, based on $(D anchorTop).
	Margins are often controlled by one or multiple parent $(D Container) nodes, so you should not modify them manually if your node is a direct child of a $(D Container). Margins update automatically when you move or resize the node.
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
	Distance between the node's right edge and its parent control, based on $(D anchorRight).
	Margins are often controlled by one or multiple parent $(D Container) nodes, so you should not modify them manually if your node is a direct child of a $(D Container). Margins update automatically when you move or resize the node.
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
	Distance between the node's bottom edge and its parent control, based on $(D anchorBottom).
	Margins are often controlled by one or multiple parent $(D Container) nodes, so you should not modify them manually if your node is a direct child of a $(D Container). Margins update automatically when you move or resize the node.
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
	Controls the direction on the horizontal axis in which the control should grow if its horizontal minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.
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
	Controls the direction on the vertical axis in which the control should grow if its vertical minimum size is changed to be greater than its current size, as the control always has to be at least the minimum size.
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
	Enables whether rendering of children should be clipped to this control's rectangle. If `true`, parts of a child which would be visibly outside of this control's rectangle will not be rendered.
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
	Changes the tooltip text. The tooltip appears when the user's mouse cursor stays idle over this control for a few moments, provided that the $(D mouseFilter) property is not $(D constant MOUSE_FILTER_IGNORE).
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
	Tells Godot which node it should give keyboard focus to if the user presses the left arrow on the keyboard or left on a gamepad by default. You can change the key by editing the `ui_left` input action. The node must be a $(D Control). If this property is not set, Godot will give focus to the closest $(D Control) to the left of this one.
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
	Tells Godot which node it should give keyboard focus to if the user presses the top arrow on the keyboard or top on a gamepad by default. You can change the key by editing the `ui_top` input action. The node must be a $(D Control). If this property is not set, Godot will give focus to the closest $(D Control) to the bottom of this one.
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
	Tells Godot which node it should give keyboard focus to if the user presses the right arrow on the keyboard or right on a gamepad  by default. You can change the key by editing the `ui_right` input action. The node must be a $(D Control). If this property is not set, Godot will give focus to the closest $(D Control) to the bottom of this one.
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
	Tells Godot which node it should give keyboard focus to if the user presses the down arrow on the keyboard or down on a gamepad by default. You can change the key by editing the `ui_down` input action. The node must be a $(D Control). If this property is not set, Godot will give focus to the closest $(D Control) to the bottom of this one.
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
	Tells Godot which node it should give keyboard focus to if the user presses Tab on a keyboard by default. You can change the key by editing the `ui_focus_next` input action.
	If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.
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
	Tells Godot which node it should give keyboard focus to if the user presses Shift+Tab on a keyboard by default. You can change the key by editing the `ui_focus_prev` input action.
	If this property is not set, Godot will select a "best guess" based on surrounding nodes in the scene tree.
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
	Controls whether the control will be able to receive mouse button input events through $(D _guiInput) and how these events should be handled. Also controls whether the control can receive the $(D mouseEntered), and $(D mouseExited) signals. See the constants to learn what each does.
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
	$(B Note:) On Linux, shapes may vary depending on the cursor theme of the system.
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
	Changing this property replaces the current $(D Theme) resource this node and all its $(D Control) children use.
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
