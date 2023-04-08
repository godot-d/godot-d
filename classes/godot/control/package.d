/**


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
import godot.globalenums;
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
		@GodotName("get_theme_default_font") GodotMethod!(Font) getThemeDefaultFont;
		@GodotName("get_theme_type_variation") GodotMethod!(String) getThemeTypeVariation;
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
		@GodotName("is_drag_successful") GodotMethod!(bool) isDragSuccessful;
		@GodotName("minimum_size_changed") GodotMethod!(void) minimumSizeChanged;
		@GodotName("release_focus") GodotMethod!(void) releaseFocus;
		@GodotName("remove_color_override") GodotMethod!(void, String) removeColorOverride;
		@GodotName("remove_constant_override") GodotMethod!(void, String) removeConstantOverride;
		@GodotName("remove_font_override") GodotMethod!(void, String) removeFontOverride;
		@GodotName("remove_icon_override") GodotMethod!(void, String) removeIconOverride;
		@GodotName("remove_shader_override") GodotMethod!(void, String) removeShaderOverride;
		@GodotName("remove_stylebox_override") GodotMethod!(void, String) removeStyleboxOverride;
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
		@GodotName("set_theme_type_variation") GodotMethod!(void, String) setThemeTypeVariation;
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
		/** */
		anchorBegin = 0,
		/** */
		anchorEnd = 1,
	}
	/// 
	enum FocusMode : int
	{
		/** */
		focusNone = 0,
		/** */
		focusClick = 1,
		/** */
		focusAll = 2,
	}
	/// 
	enum LayoutPresetMode : int
	{
		/** */
		presetModeMinsize = 0,
		/** */
		presetModeKeepWidth = 1,
		/** */
		presetModeKeepHeight = 2,
		/** */
		presetModeKeepSize = 3,
	}
	/// 
	enum MouseFilter : int
	{
		/** */
		mouseFilterStop = 0,
		/** */
		mouseFilterPass = 1,
		/** */
		mouseFilterIgnore = 2,
	}
	/// 
	enum CursorShape : int
	{
		/** */
		cursorArrow = 0,
		/** */
		cursorIbeam = 1,
		/** */
		cursorPointingHand = 2,
		/** */
		cursorCross = 3,
		/** */
		cursorWait = 4,
		/** */
		cursorBusy = 5,
		/** */
		cursorDrag = 6,
		/** */
		cursorCanDrop = 7,
		/** */
		cursorForbidden = 8,
		/** */
		cursorVsize = 9,
		/** */
		cursorHsize = 10,
		/** */
		cursorBdiagsize = 11,
		/** */
		cursorFdiagsize = 12,
		/** */
		cursorMove = 13,
		/** */
		cursorVsplit = 14,
		/** */
		cursorHsplit = 15,
		/** */
		cursorHelp = 16,
	}
	/// 
	enum GrowDirection : int
	{
		/** */
		growDirectionBegin = 0,
		/** */
		growDirectionEnd = 1,
		/** */
		growDirectionBoth = 2,
	}
	/// 
	enum SizeFlags : int
	{
		/** */
		sizeFill = 1,
		/** */
		sizeExpand = 2,
		/** */
		sizeExpandFill = 3,
		/** */
		sizeShrinkCenter = 4,
		/** */
		sizeShrinkEnd = 8,
	}
	/// 
	enum LayoutPreset : int
	{
		/** */
		presetTopLeft = 0,
		/** */
		presetTopRight = 1,
		/** */
		presetBottomLeft = 2,
		/** */
		presetBottomRight = 3,
		/** */
		presetCenterLeft = 4,
		/** */
		presetCenterTop = 5,
		/** */
		presetCenterRight = 6,
		/** */
		presetCenterBottom = 7,
		/** */
		presetCenter = 8,
		/** */
		presetLeftWide = 9,
		/** */
		presetTopWide = 10,
		/** */
		presetRightWide = 11,
		/** */
		presetBottomWide = 12,
		/** */
		presetVcenterWide = 13,
		/** */
		presetHcenterWide = 14,
		/** */
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
		/** */
		notificationResized = 40,
		/** */
		notificationMouseEnter = 41,
		/** */
		notificationMouseExit = 42,
		/** */
		notificationFocusEnter = 43,
		/** */
		notificationFocusExit = 44,
		/** */
		notificationThemeChanged = 45,
		/** */
		notificationModalClose = 46,
		/** */
		notificationScrollBegin = 47,
		/** */
		notificationScrollEnd = 48,
	}
	/**
	
	*/
	bool _clipsInput()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_clips_input");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
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
	
	*/
	void _guiInput(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
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
	
	*/
	void acceptEvent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.acceptEvent, _godot_object);
	}
	/**
	
	*/
	void addColorOverride(in String name, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addColorOverride, _godot_object, name, color);
	}
	/**
	
	*/
	void addConstantOverride(in String name, in long constant)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addConstantOverride, _godot_object, name, constant);
	}
	/**
	
	*/
	void addFontOverride(in String name, Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addFontOverride, _godot_object, name, font);
	}
	/**
	
	*/
	void addIconOverride(in String name, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addIconOverride, _godot_object, name, texture);
	}
	/**
	
	*/
	void addShaderOverride(in String name, Shader shader)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addShaderOverride, _godot_object, name, shader);
	}
	/**
	
	*/
	void addStyleboxOverride(in String name, StyleBox stylebox)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addStyleboxOverride, _godot_object, name, stylebox);
	}
	/**
	
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
	
	*/
	Control findNextValidFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.findNextValidFocus, _godot_object);
	}
	/**
	
	*/
	Control findPrevValidFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.findPrevValidFocus, _godot_object);
	}
	/**
	
	*/
	void forceDrag(VariantArg0)(in VariantArg0 data, Control preview)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceDrag, _godot_object, data, preview);
	}
	/**
	
	*/
	double getAnchor(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAnchor, _godot_object, margin);
	}
	/**
	
	*/
	Vector2 getBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getBegin, _godot_object);
	}
	/**
	
	*/
	Color getColor(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object, name, theme_type);
	}
	/**
	
	*/
	Vector2 getCombinedMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCombinedMinimumSize, _godot_object);
	}
	/**
	
	*/
	long getConstant(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConstant, _godot_object, name, theme_type);
	}
	/**
	
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
	
	*/
	Variant getDragData(in Vector2 position)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(position);
		String _GODOT_method_name = String("get_drag_data");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
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
	
	*/
	Ref!Font getFont(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(GDNativeClassBinding.getFont, _godot_object, name, theme_type);
	}
	/**
	
	*/
	Vector2 getGlobalPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGlobalPosition, _godot_object);
	}
	/**
	
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
	
	*/
	Ref!Texture getIcon(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getIcon, _godot_object, name, theme_type);
	}
	/**
	
	*/
	double getMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMargin, _godot_object, margin);
	}
	/**
	
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
	
	*/
	Vector2 getParentAreaSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getParentAreaSize, _godot_object);
	}
	/**
	
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
	
	*/
	Rect2 getRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getRect, _godot_object);
	}
	/**
	
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
	
	*/
	Ref!StyleBox getStylebox(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBox)(GDNativeClassBinding.getStylebox, _godot_object, name, theme_type);
	}
	/**
	
	*/
	Ref!Theme getTheme() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Theme)(GDNativeClassBinding.getTheme, _godot_object);
	}
	/**
	
	*/
	Ref!Font getThemeDefaultFont() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(GDNativeClassBinding.getThemeDefaultFont, _godot_object);
	}
	/**
	
	*/
	String getThemeTypeVariation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getThemeTypeVariation, _godot_object);
	}
	/**
	
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
	
	*/
	void grabClickFocus()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.grabClickFocus, _godot_object);
	}
	/**
	
	*/
	void grabFocus()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.grabFocus, _godot_object);
	}
	/**
	
	*/
	bool hasColor(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasColor, _godot_object, name, theme_type);
	}
	/**
	
	*/
	bool hasColorOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasColorOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasConstant(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasConstant, _godot_object, name, theme_type);
	}
	/**
	
	*/
	bool hasConstantOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasConstantOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasFocus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFocus, _godot_object);
	}
	/**
	
	*/
	bool hasFont(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFont, _godot_object, name, theme_type);
	}
	/**
	
	*/
	bool hasFontOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFontOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasIcon(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasIcon, _godot_object, name, theme_type);
	}
	/**
	
	*/
	bool hasIconOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasIconOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasPoint(in Vector2 point)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(point);
		String _GODOT_method_name = String("has_point");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool hasShaderOverride(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasShaderOverride, _godot_object, name);
	}
	/**
	
	*/
	bool hasStylebox(in String name, in String theme_type = gs!"") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasStylebox, _godot_object, name, theme_type);
	}
	/**
	
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
	
	*/
	bool isDragSuccessful() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDragSuccessful, _godot_object);
	}
	/**
	
	*/
	void minimumSizeChanged()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.minimumSizeChanged, _godot_object);
	}
	/**
	
	*/
	void releaseFocus()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.releaseFocus, _godot_object);
	}
	/**
	
	*/
	void removeColorOverride(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeColorOverride, _godot_object, name);
	}
	/**
	
	*/
	void removeConstantOverride(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeConstantOverride, _godot_object, name);
	}
	/**
	
	*/
	void removeFontOverride(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeFontOverride, _godot_object, name);
	}
	/**
	
	*/
	void removeIconOverride(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeIconOverride, _godot_object, name);
	}
	/**
	
	*/
	void removeShaderOverride(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeShaderOverride, _godot_object, name);
	}
	/**
	
	*/
	void removeStyleboxOverride(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeStyleboxOverride, _godot_object, name);
	}
	/**
	
	*/
	void setAnchor(in long margin, in double anchor, in bool keep_margin = false, in bool push_opposite_anchor = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchor, _godot_object, margin, anchor, keep_margin, push_opposite_anchor);
	}
	/**
	
	*/
	void setAnchorAndMargin(in long margin, in double anchor, in double offset, in bool push_opposite_anchor = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchorAndMargin, _godot_object, margin, anchor, offset, push_opposite_anchor);
	}
	/**
	
	*/
	void setAnchorsAndMarginsPreset(in long preset, in long resize_mode = 0, in long margin = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchorsAndMarginsPreset, _godot_object, preset, resize_mode, margin);
	}
	/**
	
	*/
	void setAnchorsPreset(in long preset, in bool keep_margins = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchorsPreset, _godot_object, preset, keep_margins);
	}
	/**
	
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
	
	*/
	void setDragForwarding(Control target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDragForwarding, _godot_object, target);
	}
	/**
	
	*/
	void setDragPreview(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDragPreview, _godot_object, control);
	}
	/**
	
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
	
	*/
	void setMargin(in long margin, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMargin, _godot_object, margin, offset);
	}
	/**
	
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
	
	*/
	void setPosition(in Vector2 position, in bool keep_margins = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPosition, _godot_object, position, keep_margins);
	}
	/**
	
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
	void setThemeTypeVariation(in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setThemeTypeVariation, _godot_object, theme_type);
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
	
	*/
	void showModal(in bool exclusive = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.showModal, _godot_object, exclusive);
	}
	/**
	
	*/
	void warpMouse(in Vector2 to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.warpMouse, _godot_object, to_position);
	}
	/**
	
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
	/**
	
	*/
	@property String themeTypeVariation()
	{
		return getThemeTypeVariation();
	}
	/// ditto
	@property void themeTypeVariation(String v)
	{
		setThemeTypeVariation(v);
	}
}
