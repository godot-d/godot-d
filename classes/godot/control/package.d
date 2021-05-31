/**
All user interface nodes inherit from Control. A control's anchors and margins adapt its position and size relative to its parent.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.control;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.font;
import godot.texture;
import godot.shader;
import godot.stylebox;
import godot.theme;
/**
All user interface nodes inherit from Control. A control's anchors and margins adapt its position and size relative to its parent.

Base class for all UI-related nodes. $(D Control) features a bounding rectangle that defines its extents, an anchor position relative to its parent control or the current viewport, and margins that represent an offset to the anchor. The margins update automatically when the node, any of its parents, or the screen size change.
For more information on Godot's UI system, anchors, margins, and containers, see the related tutorials in the manual. To build flexible UIs, you'll need a mix of UI elements that inherit from $(D Control) and $(D Container) nodes.
$(B User Interface nodes and input)
Godot sends input events to the scene's root node first, by calling $(D Node._input). $(D Node._input) forwards the event down the node tree to the nodes under the mouse cursor, or on keyboard focus. To do so, it calls $(D MainLoop._inputEvent). Call $(D acceptEvent) so no other node receives the event. Once you accepted an input, it becomes handled so $(D Node._unhandledInput) will not process it.
Only one $(D Control) node can be in keyboard focus. Only the node in focus will receive keyboard events. To get the focus, call $(D grabFocus). $(D Control) nodes lose focus when another node grabs it, or if you hide the node in focus.
Sets $(D mouseFilter) to $(D constant MOUSE_FILTER_IGNORE) to tell a $(D Control) node to ignore mouse or touch events. You'll need it if you place an icon on top of a button.
$(D Theme) resources change the Control's appearance. If you change the $(D Theme) on a $(D Control) node, it affects all of its children. To override some of the theme's parameters, call one of the `add_*_override` methods, like $(D addFontOverride). You can override the theme with the inspector.
$(B Note:) Theme items are $(I not) $(D GodotObject) properties. This means you can't access their values using $(D GodotObject.get) and $(D GodotObject.set). Instead, use $(D getColor), $(D getConstant), $(D getFont), $(D getIcon), $(D getStylebox), and the `add_*_override` methods provided by this class.
*/
@GodotBaseClass struct Control
{
	package(godot) enum string _GODOT_internal_name = "Control";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CanvasItem _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_clips_input") GodotMethod!(bool) _clipsInput;
		@GodotName("_get_minimum_size") GodotMethod!(Vector2) _getMinimumSize;
		@GodotName("_get_tooltip") GodotMethod!(String) _getTooltip;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_make_custom_tooltip") GodotMethod!(Control, String) _makeCustomTooltip;
		@GodotName("_override_changed") GodotMethod!(void) _overrideChanged;
		@GodotName("_set_anchor") GodotMethod!(void, long, double) _setAnchor;
		@GodotName("_set_global_position") GodotMethod!(void, Vector2) _setGlobalPosition;
		@GodotName("_set_position") GodotMethod!(void, Vector2) _setPosition;
		@GodotName("_set_size") GodotMethod!(void, Vector2) _setSize;
		@GodotName("_size_changed") GodotMethod!(void) _sizeChanged;
		@GodotName("_theme_changed") GodotMethod!(void) _themeChanged;
		@GodotName("_update_minimum_size") GodotMethod!(void) _updateMinimumSize;
		@GodotName("accept_event") GodotMethod!(void) acceptEvent;
		@GodotName("add_color_override") GodotMethod!(void, String, Color) addColorOverride;
		@GodotName("add_constant_override") GodotMethod!(void, String, long) addConstantOverride;
		@GodotName("add_font_override") GodotMethod!(void, String, Font) addFontOverride;
		@GodotName("add_icon_override") GodotMethod!(void, String, Texture) addIconOverride;
		@GodotName("add_shader_override") GodotMethod!(void, String, Shader) addShaderOverride;
		@GodotName("add_stylebox_override") GodotMethod!(void, String, StyleBox) addStyleboxOverride;
		@GodotName("can_drop_data") GodotMethod!(bool, Vector2, Variant) canDropData;
		@GodotName("drop_data") GodotMethod!(void, Vector2, Variant) dropData;
		@GodotName("find_next_valid_focus") GodotMethod!(Control) findNextValidFocus;
		@GodotName("find_prev_valid_focus") GodotMethod!(Control) findPrevValidFocus;
		@GodotName("force_drag") GodotMethod!(void, Variant, Control) forceDrag;
		@GodotName("get_anchor") GodotMethod!(double, long) getAnchor;
		@GodotName("get_begin") GodotMethod!(Vector2) getBegin;
		@GodotName("get_color") GodotMethod!(Color, String, String) getColor;
		@GodotName("get_combined_minimum_size") GodotMethod!(Vector2) getCombinedMinimumSize;
		@GodotName("get_constant") GodotMethod!(long, String, String) getConstant;
		@GodotName("get_cursor_shape") GodotMethod!(Control.CursorShape, Vector2) getCursorShape;
		@GodotName("get_custom_minimum_size") GodotMethod!(Vector2) getCustomMinimumSize;
		@GodotName("get_default_cursor_shape") GodotMethod!(Control.CursorShape) getDefaultCursorShape;
		@GodotName("get_drag_data") GodotMethod!(Variant, Vector2) getDragData;
		@GodotName("get_end") GodotMethod!(Vector2) getEnd;
		@GodotName("get_focus_mode") GodotMethod!(Control.FocusMode) getFocusMode;
		@GodotName("get_focus_neighbour") GodotMethod!(NodePath, long) getFocusNeighbour;
		@GodotName("get_focus_next") GodotMethod!(NodePath) getFocusNext;
		@GodotName("get_focus_owner") GodotMethod!(Control) getFocusOwner;
		@GodotName("get_focus_previous") GodotMethod!(NodePath) getFocusPrevious;
		@GodotName("get_font") GodotMethod!(Font, String, String) getFont;
		@GodotName("get_global_position") GodotMethod!(Vector2) getGlobalPosition;
		@GodotName("get_global_rect") GodotMethod!(Rect2) getGlobalRect;
		@GodotName("get_h_grow_direction") GodotMethod!(Control.GrowDirection) getHGrowDirection;
		@GodotName("get_h_size_flags") GodotMethod!(long) getHSizeFlags;
		@GodotName("get_icon") GodotMethod!(Texture, String, String) getIcon;
		@GodotName("get_margin") GodotMethod!(double, long) getMargin;
		@GodotName("get_minimum_size") GodotMethod!(Vector2) getMinimumSize;
		@GodotName("get_mouse_filter") GodotMethod!(Control.MouseFilter) getMouseFilter;
		@GodotName("get_parent_area_size") GodotMethod!(Vector2) getParentAreaSize;
		@GodotName("get_parent_control") GodotMethod!(Control) getParentControl;
		@GodotName("get_pass_on_modal_close_click") GodotMethod!(bool) getPassOnModalCloseClick;
		@GodotName("get_pivot_offset") GodotMethod!(Vector2) getPivotOffset;
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("get_rect") GodotMethod!(Rect2) getRect;
		@GodotName("get_rotation") GodotMethod!(double) getRotation;
		@GodotName("get_rotation_degrees") GodotMethod!(double) getRotationDegrees;
		@GodotName("get_scale") GodotMethod!(Vector2) getScale;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("get_stretch_ratio") GodotMethod!(double) getStretchRatio;
		@GodotName("get_stylebox") GodotMethod!(StyleBox, String, String) getStylebox;
		@GodotName("get_theme") GodotMethod!(Theme) getTheme;
		@GodotName("get_tooltip") GodotMethod!(String, Vector2) getTooltip;
		@GodotName("get_v_grow_direction") GodotMethod!(Control.GrowDirection) getVGrowDirection;
		@GodotName("get_v_size_flags") GodotMethod!(long) getVSizeFlags;
		@GodotName("grab_click_focus") GodotMethod!(void) grabClickFocus;
		@GodotName("grab_focus") GodotMethod!(void) grabFocus;
		@GodotName("has_color") GodotMethod!(bool, String, String) hasColor;
		@GodotName("has_color_override") GodotMethod!(bool, String) hasColorOverride;
		@GodotName("has_constant") GodotMethod!(bool, String, String) hasConstant;
		@GodotName("has_constant_override") GodotMethod!(bool, String) hasConstantOverride;
		@GodotName("has_focus") GodotMethod!(bool) hasFocus;
		@GodotName("has_font") GodotMethod!(bool, String, String) hasFont;
		@GodotName("has_font_override") GodotMethod!(bool, String) hasFontOverride;
		@GodotName("has_icon") GodotMethod!(bool, String, String) hasIcon;
		@GodotName("has_icon_override") GodotMethod!(bool, String) hasIconOverride;
		@GodotName("has_point") GodotMethod!(bool, Vector2) hasPoint;
		@GodotName("has_shader_override") GodotMethod!(bool, String) hasShaderOverride;
		@GodotName("has_stylebox") GodotMethod!(bool, String, String) hasStylebox;
		@GodotName("has_stylebox_override") GodotMethod!(bool, String) hasStyleboxOverride;
		@GodotName("is_clipping_contents") GodotMethod!(bool) isClippingContents;
		@GodotName("minimum_size_changed") GodotMethod!(void) minimumSizeChanged;
		@GodotName("release_focus") GodotMethod!(void) releaseFocus;
		@GodotName("set_anchor") GodotMethod!(void, long, double, bool, bool) setAnchor;
		@GodotName("set_anchor_and_margin") GodotMethod!(void, long, double, double, bool) setAnchorAndMargin;
		@GodotName("set_anchors_and_margins_preset") GodotMethod!(void, long, long, long) setAnchorsAndMarginsPreset;
		@GodotName("set_anchors_preset") GodotMethod!(void, long, bool) setAnchorsPreset;
		@GodotName("set_begin") GodotMethod!(void, Vector2) setBegin;
		@GodotName("set_clip_contents") GodotMethod!(void, bool) setClipContents;
		@GodotName("set_custom_minimum_size") GodotMethod!(void, Vector2) setCustomMinimumSize;
		@GodotName("set_default_cursor_shape") GodotMethod!(void, long) setDefaultCursorShape;
		@GodotName("set_drag_forwarding") GodotMethod!(void, Control) setDragForwarding;
		@GodotName("set_drag_preview") GodotMethod!(void, Control) setDragPreview;
		@GodotName("set_end") GodotMethod!(void, Vector2) setEnd;
		@GodotName("set_focus_mode") GodotMethod!(void, long) setFocusMode;
		@GodotName("set_focus_neighbour") GodotMethod!(void, long, NodePath) setFocusNeighbour;
		@GodotName("set_focus_next") GodotMethod!(void, NodePath) setFocusNext;
		@GodotName("set_focus_previous") GodotMethod!(void, NodePath) setFocusPrevious;
		@GodotName("set_global_position") GodotMethod!(void, Vector2, bool) setGlobalPosition;
		@GodotName("set_h_grow_direction") GodotMethod!(void, long) setHGrowDirection;
		@GodotName("set_h_size_flags") GodotMethod!(void, long) setHSizeFlags;
		@GodotName("set_margin") GodotMethod!(void, long, double) setMargin;
		@GodotName("set_margins_preset") GodotMethod!(void, long, long, long) setMarginsPreset;
		@GodotName("set_mouse_filter") GodotMethod!(void, long) setMouseFilter;
		@GodotName("set_pass_on_modal_close_click") GodotMethod!(void, bool) setPassOnModalCloseClick;
		@GodotName("set_pivot_offset") GodotMethod!(void, Vector2) setPivotOffset;
		@GodotName("set_position") GodotMethod!(void, Vector2, bool) setPosition;
		@GodotName("set_rotation") GodotMethod!(void, double) setRotation;
		@GodotName("set_rotation_degrees") GodotMethod!(void, double) setRotationDegrees;
		@GodotName("set_scale") GodotMethod!(void, Vector2) setScale;
		@GodotName("set_size") GodotMethod!(void, Vector2, bool) setSize;
		@GodotName("set_stretch_ratio") GodotMethod!(void, double) setStretchRatio;
		@GodotName("set_theme") GodotMethod!(void, Theme) setTheme;
		@GodotName("set_tooltip") GodotMethod!(void, String) setTooltip;
		@GodotName("set_v_grow_direction") GodotMethod!(void, long) setVGrowDirection;
		@GodotName("set_v_size_flags") GodotMethod!(void, long) setVSizeFlags;
		@GodotName("show_modal") GodotMethod!(void, bool) showModal;
		@GodotName("warp_mouse") GodotMethod!(void, Vector2) warpMouse;
	}
	/// 
	pragma(inline, true) bool opEquals(in Control other) const
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
	/// Construct a new instance of Control.
	/// Note: use `memnew!Control` instead.
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
		The control will be resized to its minimum size.
		*/
		presetModeMinsize = 0,
		/**
		The control's width will not change.
		*/
		presetModeKeepWidth = 1,
		/**
		The control's height will not change.
		*/
		presetModeKeepHeight = 2,
		/**
		The control's size will not change.
		*/
		presetModeKeepSize = 3,
	}
	/// 
	enum MouseFilter : int
	{
		/**
		The control will receive mouse button input events through $(D _guiInput) if clicked on. And the control will receive the $(D mouseEntered) and $(D mouseExited) signals. These events are automatically marked as handled, and they will not propagate further to other controls. This also results in blocking signals in other controls.
		*/
		mouseFilterStop = 0,
		/**
		The control will receive mouse button input events through $(D _guiInput) if clicked on. And the control will receive the $(D mouseEntered) and $(D mouseExited) signals. If this control does not handle the event, the parent control (if any) will be considered, and so on until there is no more parent control to potentially handle it. This also allows signals to fire in other controls. Even if no control handled it at all, the event will still be handled automatically, so unhandled input will not be fired.
		*/
		mouseFilterPass = 1,
		/**
		The control will not receive mouse button input events through $(D _guiInput). The control will also not receive the $(D mouseEntered) nor $(D mouseExited) signals. This will not block other controls from receiving these events or firing the signals. Ignored events will not be handled automatically.
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
		Show the system's vertical resize mouse cursor when the user hovers the node. A double-headed vertical arrow. It tells the user they can resize the window or the panel vertically.
		*/
		cursorVsize = 9,
		/**
		Show the system's horizontal resize mouse cursor when the user hovers the node. A double-headed horizontal arrow. It tells the user they can resize the window or the panel horizontally.
		*/
		cursorHsize = 10,
		/**
		Show the system's window resize mouse cursor when the user hovers the node. The cursor is a double-headed arrow that goes from the bottom left to the top right. It tells the user they can resize the window or the panel both horizontally and vertically.
		*/
		cursorBdiagsize = 11,
		/**
		Show the system's window resize mouse cursor when the user hovers the node. The cursor is a double-headed arrow that goes from the top left to the bottom right, the opposite of $(D constant CURSOR_BDIAGSIZE). It tells the user they can resize the window or the panel both horizontally and vertically.
		*/
		cursorFdiagsize = 12,
		/**
		Show the system's move mouse cursor when the user hovers the node. It shows 2 double-headed arrows at a 90 degree angle. It tells the user they can move a UI element freely.
		*/
		cursorMove = 13,
		/**
		Show the system's vertical split mouse cursor when the user hovers the node. On Windows, it's the same as $(D constant CURSOR_VSIZE).
		*/
		cursorVsplit = 14,
		/**
		Show the system's horizontal split mouse cursor when the user hovers the node. On Windows, it's the same as $(D constant CURSOR_HSIZE).
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
		Snap all 4 anchors to the respective corners of the parent control. Set all 4 margins to 0 after you applied this preset and the $(D Control) will fit its parent control. This is equivalent to the "Full Rect" layout option in the editor. Use with $(D setAnchorsPreset).
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
	Virtual method to be implemented by the user. Returns whether $(D _guiInput) should not be called for children controls outside this control's rectangle. Input will be clipped to the Rect of this $(D Control). Similar to $(D rectClipContent), but doesn't affect visibility.
	If not overridden, defaults to `false`.
	*/
	bool _clipsInput()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_clips_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Virtual method to be implemented by the user. Returns the minimum size for this control. Alternative to $(D rectMinSize) for controlling minimum size via code. The actual minimum size will be the max value of these two (in each axis separately).
	If not overridden, defaults to $(D constant Vector2.ZERO).
	*/
	Vector2 _getMinimumSize()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_minimum_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	
	*/
	String _getTooltip() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Virtual method to be implemented by the user. Use this method to process and accept inputs on UI elements. See $(D acceptEvent).
	Example: clicking a control.
	
	
	func _gui_input(event):
	    if event is InputEventMouseButton:
	        if event.button_index == BUTTON_LEFT and event.pressed:
	            print("I've been clicked D:")
	
	
	The event won't trigger if:
	* clicking outside the control (see $(D hasPoint));
	* control has $(D mouseFilter) set to $(D constant MOUSE_FILTER_IGNORE);
	* control is obstructed by another $(D Control) on top of it, which doesn't have $(D mouseFilter) set to $(D constant MOUSE_FILTER_IGNORE);
	* control's parent has $(D mouseFilter) set to $(D constant MOUSE_FILTER_STOP) or has accepted the event;
	* it happens outside parent's rectangle and the parent has either $(D rectClipContent) or $(D _clipsInput) enabled.
	*/
	void _guiInput(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Virtual method to be implemented by the user. Returns a $(D Control) node that should be used as a tooltip instead of the default one. The `for_text` includes the contents of the $(D hintTooltip) property.
	The returned node must be of type $(D Control) or Control-derived. It can have child nodes of any type. It is freed when the tooltip disappears, so make sure you always provide a new instance (if you want to use a pre-existing node from your scene tree, you can duplicate it and pass the duplicated instance).When `null` or a non-Control node is returned, the default tooltip will be used instead.
	The returned node will be added as child to a $(D PopupPanel), so you should only provide the contents of that panel. That $(D PopupPanel) can be themed using $(D Theme.setStylebox) for the type `"TooltipPanel"` (see $(D hintTooltip) for an example).
	$(B Note:) The tooltip is shrunk to minimal size. If you want to ensure it's fully visible, you might want to set its $(D rectMinSize) to some non-zero value.
	Example of usage with a custom-constructed node:
	
	
	func _make_custom_tooltip(for_text):
	    var label = Label.new()
	    label.text = for_text
	    return label
	
	
	Example of usage with a custom scene instance:
	
	
	func _make_custom_tooltip(for_text):
	    var tooltip = preload("res://SomeTooltipScene.tscn").instance()
	    tooltip.get_node("Label").text = for_text
	    return tooltip
	
	
	*/
	Control _makeCustomTooltip(in String for_text)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(for_text);
		String _GODOT_method_name = String("_make_custom_tooltip");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Control);
	}
	/**
	
	*/
	void _overrideChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_override_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setAnchor(in long margin, in double anchor)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(margin);
		_GODOT_args.append(anchor);
		String _GODOT_method_name = String("_set_anchor");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setGlobalPosition(in Vector2 position)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(position);
		String _GODOT_method_name = String("_set_global_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setPosition(in Vector2 margin)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(margin);
		String _GODOT_method_name = String("_set_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setSize(in Vector2 size)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(size);
		String _GODOT_method_name = String("_set_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _sizeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_size_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _themeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateMinimumSize()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_minimum_size");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Marks an input event as handled. Once you accept an input event, it stops propagating, even to nodes listening to $(D Node._unhandledInput) or $(D Node._unhandledKeyInput).
	*/
	void acceptEvent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.acceptEvent, _godot_object);
	}
	/**
	Overrides the $(D Color) with given `name` in the $(D theme) resource the control uses.
	$(B Note:) Unlike other theme overrides, there is no way to undo a color override without manually assigning the previous color.
	$(B Example of overriding a label's color and resetting it later:)
	
	
	# Override the child node "MyLabel"'s font color to orange.
	$MyLabel.add_color_override("font_color", Color(1, 0.5, 0))
	
	# Reset the color by creating a new node to get the default value:
	var default_label_color = Label.new().get_color("font_color")
	$MyLabel.add_color_override("font_color", default_label_color)
	
	
	*/
	void addColorOverride(in String name, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addColorOverride, _godot_object, name, color);
	}
	/**
	Overrides an integer constant with given `name` in the $(D theme) resource the control uses. If the `constant` is `0`, the override is cleared and the constant from assigned $(D Theme) is used.
	*/
	void addConstantOverride(in String name, in long constant)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addConstantOverride, _godot_object, name, constant);
	}
	/**
	Overrides the font with given `name` in the $(D theme) resource the control uses. If `font` is `null` or invalid, the override is cleared and the font from assigned $(D Theme) is used.
	*/
	void addFontOverride(in String name, Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addFontOverride, _godot_object, name, font);
	}
	/**
	Overrides the icon with given `name` in the $(D theme) resource the control uses. If `icon` is `null` or invalid, the override is cleared and the icon from assigned $(D Theme) is used.
	*/
	void addIconOverride(in String name, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconOverride, _godot_object, name, texture);
	}
	/**
	Overrides the $(D Shader) with given `name` in the $(D theme) resource the control uses. If `shader` is `null` or invalid, the override is cleared and the shader from assigned $(D Theme) is used.
	*/
	void addShaderOverride(in String name, Shader shader)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addShaderOverride, _godot_object, name, shader);
	}
	/**
	Overrides the $(D StyleBox) with given `name` in the $(D theme) resource the control uses. If `stylebox` is empty or invalid, the override is cleared and the $(D StyleBox) from assigned $(D Theme) is used.
	$(B Example of modifying a property in a StyleBox by duplicating it:)
	
	
	# The snippet below assumes the child node MyButton has a StyleBoxFlat assigned.
	# Resources are shared across instances, so we need to duplicate it
	# to avoid modifying the appearance of all other buttons.
	var new_stylebox_normal = $MyButton.get_stylebox("normal").duplicate()
	new_stylebox_normal.border_width_top = 3
	new_stylebox_normal.border_color = Color(0, 1, 0.5)
	$MyButton.add_stylebox_override("normal", new_stylebox_normal)
	
	# Remove the stylebox override:
	$MyButton.add_stylebox_override("normal", null)
	
	
	*/
	void addStyleboxOverride(in String name, StyleBox stylebox)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addStyleboxOverride, _godot_object, name, stylebox);
	}
	/**
	Godot calls this method to test if `data` from a control's $(D getDragData) can be dropped at `position`. `position` is local to this control.
	This method should only be used to test the data. Process the data in $(D dropData).
	
	
	func can_drop_data(position, data):
	    # Check position if it is relevant to you
	    # Otherwise, just check data
	    return typeof(data) == TYPE_DICTIONARY and data.has("expected")
	
	
	*/
	bool canDropData(VariantArg1)(in Vector2 position, in VariantArg1 data)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(position);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("can_drop_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Godot calls this method to pass you the `data` from a control's $(D getDragData) result. Godot first calls $(D canDropData) to test if `data` is allowed to drop at `position` where `position` is local to this control.
	
	
	func can_drop_data(position, data):
	    return typeof(data) == TYPE_DICTIONARY and data.has("color")
	
	func drop_data(position, data):
	    color = data$(D "color")
	
	
	*/
	void dropData(VariantArg1)(in Vector2 position, in VariantArg1 data)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(position);
		_GODOT_args.append(data);
		String _GODOT_method_name = String("drop_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Finds the next (below in the tree) $(D Control) that can receive the focus.
	*/
	Control findNextValidFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.findNextValidFocus, _godot_object);
	}
	/**
	Finds the previous (above in the tree) $(D Control) that can receive the focus.
	*/
	Control findPrevValidFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.findPrevValidFocus, _godot_object);
	}
	/**
	Forces drag and bypasses $(D getDragData) and $(D setDragPreview) by passing `data` and `preview`. Drag will start even if the mouse is neither over nor pressed on this control.
	The methods $(D canDropData) and $(D dropData) must be implemented on controls that want to receive drop data.
	*/
	void forceDrag(VariantArg0)(in VariantArg0 data, Control preview)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceDrag, _godot_object, data, preview);
	}
	/**
	Returns the anchor identified by `margin` constant from $(D margin) enum. A getter method for $(D anchorBottom), $(D anchorLeft), $(D anchorRight) and $(D anchorTop).
	*/
	double getAnchor(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAnchor, _godot_object, margin);
	}
	/**
	Returns $(D marginLeft) and $(D marginTop). See also $(D rectPosition).
	*/
	Vector2 getBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getBegin, _godot_object);
	}
	/**
	Returns a color from assigned $(D Theme) with given `name` and associated with $(D Control) of given `node_type`.
	
	
	func _ready():
	    modulate = get_color("font_color", "Button") #get the color defined for button fonts
	
	
	*/
	Color getColor(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object, name, node_type);
	}
	/**
	Returns combined minimum size from $(D rectMinSize) and $(D getMinimumSize).
	*/
	Vector2 getCombinedMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCombinedMinimumSize, _godot_object);
	}
	/**
	Returns a constant from assigned $(D Theme) with given `name` and associated with $(D Control) of given `node_type`.
	*/
	long getConstant(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConstant, _godot_object, name, node_type);
	}
	/**
	Returns the mouse cursor shape the control displays on mouse hover. See $(D cursorshape).
	*/
	Control.CursorShape getCursorShape(in Vector2 position = Vector2(0, 0)) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.CursorShape)(GDNativeClassBinding.getCursorShape, _godot_object, position);
	}
	/**
	
	*/
	Vector2 getCustomMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCustomMinimumSize, _godot_object);
	}
	/**
	
	*/
	Control.CursorShape getDefaultCursorShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.CursorShape)(GDNativeClassBinding.getDefaultCursorShape, _godot_object);
	}
	/**
	Godot calls this method to get data that can be dragged and dropped onto controls that expect drop data. Returns `null` if there is no data to drag. Controls that want to receive drop data should implement $(D canDropData) and $(D dropData). `position` is local to this control. Drag may be forced with $(D forceDrag).
	A preview that will follow the mouse that should represent the data can be set with $(D setDragPreview). A good time to set the preview is in this method.
	
	
	func get_drag_data(position):
	    var mydata = make_data()
	    set_drag_preview(make_preview(mydata))
	    return mydata
	
	
	*/
	Variant getDragData(in Vector2 position)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(position);
		String _GODOT_method_name = String("get_drag_data");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns $(D marginRight) and $(D marginBottom).
	*/
	Vector2 getEnd() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getEnd, _godot_object);
	}
	/**
	
	*/
	Control.FocusMode getFocusMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.FocusMode)(GDNativeClassBinding.getFocusMode, _godot_object);
	}
	/**
	Returns the focus neighbour identified by `margin` constant from $(D margin) enum. A getter method for $(D focusNeighbourBottom), $(D focusNeighbourLeft), $(D focusNeighbourRight) and $(D focusNeighbourTop).
	*/
	NodePath getFocusNeighbour(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getFocusNeighbour, _godot_object, margin);
	}
	/**
	
	*/
	NodePath getFocusNext() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getFocusNext, _godot_object);
	}
	/**
	Returns the control that has the keyboard focus or `null` if none.
	*/
	Control getFocusOwner() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getFocusOwner, _godot_object);
	}
	/**
	
	*/
	NodePath getFocusPrevious() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getFocusPrevious, _godot_object);
	}
	/**
	Returns a font from assigned $(D Theme) with given `name` and associated with $(D Control) of given `node_type`.
	*/
	Ref!Font getFont(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(GDNativeClassBinding.getFont, _godot_object, name, node_type);
	}
	/**
	
	*/
	Vector2 getGlobalPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGlobalPosition, _godot_object);
	}
	/**
	Returns the position and size of the control relative to the top-left corner of the screen. See $(D rectPosition) and $(D rectSize).
	*/
	Rect2 getGlobalRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getGlobalRect, _godot_object);
	}
	/**
	
	*/
	Control.GrowDirection getHGrowDirection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.GrowDirection)(GDNativeClassBinding.getHGrowDirection, _godot_object);
	}
	/**
	
	*/
	long getHSizeFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getHSizeFlags, _godot_object);
	}
	/**
	Returns an icon from assigned $(D Theme) with given `name` and associated with $(D Control) of given `node_type`.
	*/
	Ref!Texture getIcon(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getIcon, _godot_object, name, node_type);
	}
	/**
	Returns the anchor identified by `margin` constant from $(D margin) enum. A getter method for $(D marginBottom), $(D marginLeft), $(D marginRight) and $(D marginTop).
	*/
	double getMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMargin, _godot_object, margin);
	}
	/**
	Returns the minimum size for this control. See $(D rectMinSize).
	*/
	Vector2 getMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMinimumSize, _godot_object);
	}
	/**
	
	*/
	Control.MouseFilter getMouseFilter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.MouseFilter)(GDNativeClassBinding.getMouseFilter, _godot_object);
	}
	/**
	Returns the width/height occupied in the parent control.
	*/
	Vector2 getParentAreaSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getParentAreaSize, _godot_object);
	}
	/**
	Returns the parent control node.
	*/
	Control getParentControl() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getParentControl, _godot_object);
	}
	/**
	
	*/
	bool getPassOnModalCloseClick() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getPassOnModalCloseClick, _godot_object);
	}
	/**
	
	*/
	Vector2 getPivotOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPivotOffset, _godot_object);
	}
	/**
	
	*/
	Vector2 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	Returns the position and size of the control relative to the top-left corner of the parent Control. See $(D rectPosition) and $(D rectSize).
	*/
	Rect2 getRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getRect, _godot_object);
	}
	/**
	Returns the rotation (in radians).
	*/
	double getRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRotation, _godot_object);
	}
	/**
	
	*/
	double getRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRotationDegrees, _godot_object);
	}
	/**
	
	*/
	Vector2 getScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getScale, _godot_object);
	}
	/**
	
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	
	*/
	double getStretchRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getStretchRatio, _godot_object);
	}
	/**
	Returns a $(D StyleBox) from assigned $(D Theme) with given `name` and associated with $(D Control) of given `node_type`.
	*/
	Ref!StyleBox getStylebox(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBox)(GDNativeClassBinding.getStylebox, _godot_object, name, node_type);
	}
	/**
	
	*/
	Ref!Theme getTheme() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Theme)(GDNativeClassBinding.getTheme, _godot_object);
	}
	/**
	Returns the tooltip, which will appear when the cursor is resting over this control. See $(D hintTooltip).
	*/
	String getTooltip(in Vector2 at_position = Vector2(0, 0)) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTooltip, _godot_object, at_position);
	}
	/**
	
	*/
	Control.GrowDirection getVGrowDirection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control.GrowDirection)(GDNativeClassBinding.getVGrowDirection, _godot_object);
	}
	/**
	
	*/
	long getVSizeFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVSizeFlags, _godot_object);
	}
	/**
	Creates an $(D InputEventMouseButton) that attempts to click the control. If the event is received, the control acquires focus.
	
	
	func _process(delta):
	    grab_click_focus() #when clicking another Control node, this node will be clicked instead
	
	
	*/
	void grabClickFocus()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.grabClickFocus, _godot_object);
	}
	/**
	Steal the focus from another control and become the focused control (see $(D focusMode)).
	*/
	void grabFocus()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.grabFocus, _godot_object);
	}
	/**
	Returns `true` if $(D Color) with given `name` and associated with $(D Control) of given `node_type` exists in assigned $(D Theme).
	*/
	bool hasColor(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasColor, _godot_object, name, node_type);
	}
	/**
	Returns `true` if $(D Color) with given `name` has a valid override in this $(D Control) node.
	*/
	bool hasColorOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasColorOverride, _godot_object, name);
	}
	/**
	Returns `true` if constant with given `name` and associated with $(D Control) of given `node_type` exists in assigned $(D Theme).
	*/
	bool hasConstant(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasConstant, _godot_object, name, node_type);
	}
	/**
	Returns `true` if constant with given `name` has a valid override in this $(D Control) node.
	*/
	bool hasConstantOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasConstantOverride, _godot_object, name);
	}
	/**
	Returns `true` if this is the current focused control. See $(D focusMode).
	*/
	bool hasFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFocus, _godot_object);
	}
	/**
	Returns `true` if font with given `name` and associated with $(D Control) of given `node_type` exists in assigned $(D Theme).
	*/
	bool hasFont(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFont, _godot_object, name, node_type);
	}
	/**
	Returns `true` if font with given `name` has a valid override in this $(D Control) node.
	*/
	bool hasFontOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFontOverride, _godot_object, name);
	}
	/**
	Returns `true` if icon with given `name` and associated with $(D Control) of given `node_type` exists in assigned $(D Theme).
	*/
	bool hasIcon(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasIcon, _godot_object, name, node_type);
	}
	/**
	Returns `true` if icon with given `name` has a valid override in this $(D Control) node.
	*/
	bool hasIconOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasIconOverride, _godot_object, name);
	}
	/**
	Virtual method to be implemented by the user. Returns whether the given `point` is inside this control.
	If not overridden, default behavior is checking if the point is within control's Rect.
	$(B Note:) If you want to check if a point is inside the control, you can use `get_rect().has_point(point)`.
	*/
	bool hasPoint(in Vector2 point)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(point);
		String _GODOT_method_name = String("has_point");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Returns `true` if $(D Shader) with given `name` has a valid override in this $(D Control) node.
	*/
	bool hasShaderOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasShaderOverride, _godot_object, name);
	}
	/**
	Returns `true` if $(D StyleBox) with given `name` and associated with $(D Control) of given `node_type` exists in assigned $(D Theme).
	*/
	bool hasStylebox(in String name, in String node_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasStylebox, _godot_object, name, node_type);
	}
	/**
	Returns `true` if $(D StyleBox) with given `name` has a valid override in this $(D Control) node.
	*/
	bool hasStyleboxOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasStyleboxOverride, _godot_object, name);
	}
	/**
	
	*/
	bool isClippingContents()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClippingContents, _godot_object);
	}
	/**
	Invalidates the size cache in this node and in parent nodes up to toplevel. Intended to be used with $(D getMinimumSize) when the return value is changed. Setting $(D rectMinSize) directly calls this method automatically.
	*/
	void minimumSizeChanged()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.minimumSizeChanged, _godot_object);
	}
	/**
	Give up the focus. No other control will be able to receive keyboard input.
	*/
	void releaseFocus()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.releaseFocus, _godot_object);
	}
	/**
	Sets the anchor identified by `margin` constant from $(D margin) enum to value `anchor`. A setter method for $(D anchorBottom), $(D anchorLeft), $(D anchorRight) and $(D anchorTop).
	If `keep_margin` is `true`, margins aren't updated after this operation.
	If `push_opposite_anchor` is `true` and the opposite anchor overlaps this anchor, the opposite one will have its value overridden. For example, when setting left anchor to 1 and the right anchor has value of 0.5, the right anchor will also get value of 1. If `push_opposite_anchor` was `false`, the left anchor would get value 0.5.
	*/
	void setAnchor(in long margin, in double anchor, in bool keep_margin = false, in bool push_opposite_anchor = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchor, _godot_object, margin, anchor, keep_margin, push_opposite_anchor);
	}
	/**
	Works the same as $(D setAnchor), but instead of `keep_margin` argument and automatic update of margin, it allows to set the margin offset yourself (see $(D setMargin)).
	*/
	void setAnchorAndMargin(in long margin, in double anchor, in double offset, in bool push_opposite_anchor = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchorAndMargin, _godot_object, margin, anchor, offset, push_opposite_anchor);
	}
	/**
	Sets both anchor preset and margin preset. See $(D setAnchorsPreset) and $(D setMarginsPreset).
	*/
	void setAnchorsAndMarginsPreset(in long preset, in long resize_mode = 0, in long margin = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchorsAndMarginsPreset, _godot_object, preset, resize_mode, margin);
	}
	/**
	Sets the anchors to a `preset` from $(D Control.layoutpreset) enum. This is code equivalent of using the Layout menu in 2D editor.
	If `keep_margins` is `true`, control's position will also be updated.
	*/
	void setAnchorsPreset(in long preset, in bool keep_margins = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchorsPreset, _godot_object, preset, keep_margins);
	}
	/**
	Sets $(D marginLeft) and $(D marginTop) at the same time. Equivalent of changing $(D rectPosition).
	*/
	void setBegin(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBegin, _godot_object, position);
	}
	/**
	
	*/
	void setClipContents(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClipContents, _godot_object, enable);
	}
	/**
	
	*/
	void setCustomMinimumSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomMinimumSize, _godot_object, size);
	}
	/**
	
	*/
	void setDefaultCursorShape(in long shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultCursorShape, _godot_object, shape);
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
		ptrcall!(void)(GDNativeClassBinding.setDragForwarding, _godot_object, target);
	}
	/**
	Shows the given control at the mouse pointer. A good time to call this method is in $(D getDragData). The control must not be in the scene tree. You should not free the control, and you should not keep a reference to the control beyond the duration of the drag. It will be deleted automatically after the drag has ended.
	
	
	export (Color, RGBA) var color = Color(1, 0, 0, 1)
	
	func get_drag_data(position):
	    # Use a control that is not in the tree
	    var cpb = ColorPickerButton.new()
	    cpb.color = color
	    cpb.rect_size = Vector2(50, 50)
	    set_drag_preview(cpb)
	    return color
	
	
	*/
	void setDragPreview(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDragPreview, _godot_object, control);
	}
	/**
	Sets $(D marginRight) and $(D marginBottom) at the same time.
	*/
	void setEnd(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnd, _godot_object, position);
	}
	/**
	
	*/
	void setFocusMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFocusMode, _godot_object, mode);
	}
	/**
	Sets the anchor identified by `margin` constant from $(D margin) enum to $(D Control) at `neighbor` node path. A setter method for $(D focusNeighbourBottom), $(D focusNeighbourLeft), $(D focusNeighbourRight) and $(D focusNeighbourTop).
	*/
	void setFocusNeighbour(NodePathArg1)(in long margin, in NodePathArg1 neighbour)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFocusNeighbour, _godot_object, margin, neighbour);
	}
	/**
	
	*/
	void setFocusNext(NodePathArg0)(in NodePathArg0 next)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFocusNext, _godot_object, next);
	}
	/**
	
	*/
	void setFocusPrevious(NodePathArg0)(in NodePathArg0 previous)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFocusPrevious, _godot_object, previous);
	}
	/**
	Sets the $(D rectGlobalPosition) to given `position`.
	If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	*/
	void setGlobalPosition(in Vector2 position, in bool keep_margins = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalPosition, _godot_object, position, keep_margins);
	}
	/**
	
	*/
	void setHGrowDirection(in long direction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHGrowDirection, _godot_object, direction);
	}
	/**
	
	*/
	void setHSizeFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHSizeFlags, _godot_object, flags);
	}
	/**
	Sets the margin identified by `margin` constant from $(D margin) enum to given `offset`. A setter method for $(D marginBottom), $(D marginLeft), $(D marginRight) and $(D marginTop).
	*/
	void setMargin(in long margin, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMargin, _godot_object, margin, offset);
	}
	/**
	Sets the margins to a `preset` from $(D Control.layoutpreset) enum. This is code equivalent of using the Layout menu in 2D editor.
	Use parameter `resize_mode` with constants from $(D Control.layoutpresetmode) to better determine the resulting size of the $(D Control). Constant size will be ignored if used with presets that change size, e.g. `PRESET_LEFT_WIDE`.
	Use parameter `margin` to determine the gap between the $(D Control) and the edges.
	*/
	void setMarginsPreset(in long preset, in long resize_mode = 0, in long margin = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMarginsPreset, _godot_object, preset, resize_mode, margin);
	}
	/**
	
	*/
	void setMouseFilter(in long filter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMouseFilter, _godot_object, filter);
	}
	/**
	
	*/
	void setPassOnModalCloseClick(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPassOnModalCloseClick, _godot_object, enabled);
	}
	/**
	
	*/
	void setPivotOffset(in Vector2 pivot_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPivotOffset, _godot_object, pivot_offset);
	}
	/**
	Sets the $(D rectPosition) to given `position`.
	If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	*/
	void setPosition(in Vector2 position, in bool keep_margins = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPosition, _godot_object, position, keep_margins);
	}
	/**
	Sets the rotation (in radians).
	*/
	void setRotation(in double radians)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRotation, _godot_object, radians);
	}
	/**
	
	*/
	void setRotationDegrees(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRotationDegrees, _godot_object, degrees);
	}
	/**
	
	*/
	void setScale(in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScale, _godot_object, scale);
	}
	/**
	Sets the size (see $(D rectSize)).
	If `keep_margins` is `true`, control's anchors will be updated instead of margins.
	*/
	void setSize(in Vector2 size, in bool keep_margins = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size, keep_margins);
	}
	/**
	
	*/
	void setStretchRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStretchRatio, _godot_object, ratio);
	}
	/**
	
	*/
	void setTheme(Theme theme)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTheme, _godot_object, theme);
	}
	/**
	
	*/
	void setTooltip(in String tooltip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTooltip, _godot_object, tooltip);
	}
	/**
	
	*/
	void setVGrowDirection(in long direction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVGrowDirection, _godot_object, direction);
	}
	/**
	
	*/
	void setVSizeFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVSizeFlags, _godot_object, flags);
	}
	/**
	Displays a control as modal. Control must be a subwindow. Modal controls capture the input signals until closed or the area outside them is accessed. When a modal control loses focus, or the ESC key is pressed, they automatically hide. Modal controls are used extensively for popup dialogs and menus.
	If `exclusive` is `true`, other controls will not receive input and clicking outside this control will not close it.
	*/
	void showModal(in bool exclusive = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.showModal, _godot_object, exclusive);
	}
	/**
	Moves the mouse cursor to `to_position`, relative to $(D rectPosition) of this $(D Control).
	*/
	void warpMouse(in Vector2 to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.warpMouse, _godot_object, to_position);
	}
	/**
	Anchors the bottom edge of the node to the origin, the center, or the end of its parent control. It changes how the bottom margin updates when the node moves or changes size. You can use one of the $(D anchor) constants for convenience.
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
	Anchors the left edge of the node to the origin, the center or the end of its parent control. It changes how the left margin updates when the node moves or changes size. You can use one of the $(D anchor) constants for convenience.
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
	Anchors the right edge of the node to the origin, the center or the end of its parent control. It changes how the right margin updates when the node moves or changes size. You can use one of the $(D anchor) constants for convenience.
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
	Anchors the top edge of the node to the origin, the center or the end of its parent control. It changes how the top margin updates when the node moves or changes size. You can use  one of the $(D anchor) constants for convenience.
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
	Changes the tooltip text. The tooltip appears when the user's mouse cursor stays idle over this control for a few moments, provided that the $(D mouseFilter) property is not $(D constant MOUSE_FILTER_IGNORE). You can change the time required for the tooltip to appear with `gui/timers/tooltip_delay_sec` option in Project Settings.
	The tooltip popup will use either a default implementation, or a custom one that you can provide by overriding $(D _makeCustomTooltip). The default tooltip includes a $(D PopupPanel) and $(D Label) whose theme properties can be customized using $(D Theme) methods with the `"TooltipPanel"` and `"TooltipLabel"` respectively. For example:
	
	
	var style_box = StyleBoxFlat.new()
	style_box.set_bg_color(Color(1, 1, 0))
	style_box.set_border_width_all(2)
	# We assume here that the `theme` property has been assigned a custom Theme beforehand.
	theme.set_stylebox("panel", "TooltipPanel", style_box)
	theme.set_color("font_color", "TooltipLabel", Color(0, 1, 1))
	
	
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
	Enables whether input should propagate when you close the control as modal.
	If `false`, stops event handling at the viewport input event handling. The viewport first hides the modal and after marks the input as handled.
	*/
	@property bool inputPassOnModalCloseClick()
	{
		return getPassOnModalCloseClick();
	}
	/// ditto
	@property void inputPassOnModalCloseClick(bool v)
	{
		setPassOnModalCloseClick(v);
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
	Enables whether rendering of $(D CanvasItem) based children should be clipped to this control's rectangle. If `true`, parts of a child which would be visibly outside of this control's rectangle will not be rendered.
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
	The node's global position, relative to the world (usually to the top-left corner of the window).
	*/
	@property Vector2 rectGlobalPosition()
	{
		return getGlobalPosition();
	}
	/// ditto
	@property void rectGlobalPosition(Vector2 v)
	{
		_setGlobalPosition(v);
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
	The node's position, relative to its parent. It corresponds to the rectangle's top-left corner. The property is not affected by $(D rectPivotOffset).
	*/
	@property Vector2 rectPosition()
	{
		return getPosition();
	}
	/// ditto
	@property void rectPosition(Vector2 v)
	{
		_setPosition(v);
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
	The node's scale, relative to its $(D rectSize). Change this property to scale the node around its $(D rectPivotOffset). The Control's $(D hintTooltip) will also scale according to this value.
	$(B Note:) This property is mainly intended to be used for animation purposes. Text inside the Control will look pixelated or blurry when the Control is scaled. To support multiple resolutions in your project, use an appropriate viewport stretch mode as described in the $(D url=https://docs.godotengine.org/en/3.3/tutorials/viewports/multiple_resolutions.html)documentation$(D /url) instead of scaling Controls individually.
	$(B Note:) If the Control node is a child of a $(D Container) node, the scale will be reset to `Vector2(1, 1)` when the scene is instanced. To set the Control's scale when it's instanced, wait for one frame using `yield(get_tree(), "idle_frame")` then set its $(D rectScale) property.
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
	The size of the node's bounding rectangle, in pixels. $(D Container) nodes update this property automatically.
	*/
	@property Vector2 rectSize()
	{
		return getSize();
	}
	/// ditto
	@property void rectSize(Vector2 v)
	{
		_setSize(v);
	}
	/**
	Tells the parent $(D Container) nodes how they should resize and place the node on the X axis. Use one of the $(D sizeflags) constants to change the flags. See the constants to learn what each does.
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
	If the node and at least one of its neighbours uses the $(D constant SIZE_EXPAND) size flag, the parent $(D Container) will let it take more or less space depending on this property. If this node has a stretch ratio of 2 and its neighbour a ratio of 1, this node will take two thirds of the available space.
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
	Tells the parent $(D Container) nodes how they should resize and place the node on the Y axis. Use one of the $(D sizeflags) constants to change the flags. See the constants to learn what each does.
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
