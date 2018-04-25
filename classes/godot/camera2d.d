/**
Camera node for 2D scenes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.camera2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.node;
import godot.viewport;
/**
Camera node for 2D scenes.

It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of $(D CanvasItem) based nodes.
This node is intended to be a simple helper to get things going quickly and it may happen often that more functionality is desired to change how the camera works. To make your own custom camera node, simply inherit from $(D Node2D) and change the transform of the canvas by calling get_viewport().set_canvas_transform(m) in $(D Viewport).
*/
@GodotBaseClass struct Camera2D
{
	static immutable string _GODOT_internal_name = "Camera2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Camera2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Camera2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Camera2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Camera2D");
		if(constructor is null) return typeof(this).init;
		return cast(Camera2D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum AnchorMode : int
	{
		/**
		The camera's position is fixed so that the top-left corner is always at the origin.
		*/
		anchorModeFixedTopLeft = 0,
		/**
		The camera's position takes into account vertical/horizontal offsets and the screen size.
		*/
		anchorModeDragCenter = 1,
	}
	/// 
	enum Constants : int
	{
		anchorModeFixedTopLeft = 0,
		anchorModeDragCenter = 1,
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("Camera2D", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	
	*/
	Vector2 getOffset() const
	{
		_GODOT_get_offset.bind("Camera2D", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_anchor_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchor_mode") = _GODOT_set_anchor_mode;
	/**
	
	*/
	void setAnchorMode(in long anchor_mode)
	{
		_GODOT_set_anchor_mode.bind("Camera2D", "set_anchor_mode");
		ptrcall!(void)(_GODOT_set_anchor_mode, _godot_object, anchor_mode);
	}
	package(godot) static GodotMethod!(Camera2D.AnchorMode) _GODOT_get_anchor_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anchor_mode") = _GODOT_get_anchor_mode;
	/**
	
	*/
	Camera2D.AnchorMode getAnchorMode() const
	{
		_GODOT_get_anchor_mode.bind("Camera2D", "get_anchor_mode");
		return ptrcall!(Camera2D.AnchorMode)(_GODOT_get_anchor_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_rotating;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotating") = _GODOT_set_rotating;
	/**
	
	*/
	void setRotating(in bool rotating)
	{
		_GODOT_set_rotating.bind("Camera2D", "set_rotating");
		ptrcall!(void)(_GODOT_set_rotating, _godot_object, rotating);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_rotating;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_rotating") = _GODOT_is_rotating;
	/**
	
	*/
	bool isRotating() const
	{
		_GODOT_is_rotating.bind("Camera2D", "is_rotating");
		return ptrcall!(bool)(_GODOT_is_rotating, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_make_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_current") = _GODOT_make_current;
	/**
	Make this the current 2D camera for the scene (viewport and layer), in case there's many cameras in the scene.
	*/
	void makeCurrent()
	{
		_GODOT_make_current.bind("Camera2D", "make_current");
		ptrcall!(void)(_GODOT_make_current, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_current") = _GODOT_clear_current;
	/**
	Removes any `Camera2D` from the ancestor $(D Viewport)'s internal currently-assigned camera.
	*/
	void clearCurrent()
	{
		_GODOT_clear_current.bind("Camera2D", "clear_current");
		ptrcall!(void)(_GODOT_clear_current, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT__make_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "_make_current") = _GODOT__make_current;
	/**
	
	*/
	void _makeCurrent(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_make_current");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_scroll") = _GODOT__update_scroll;
	/**
	
	*/
	void _updateScroll()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scroll");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_current") = _GODOT__set_current;
	/**
	
	*/
	void _setCurrent(in bool current)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(current);
		String _GODOT_method_name = String("_set_current");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_current") = _GODOT_is_current;
	/**
	
	*/
	bool isCurrent() const
	{
		_GODOT_is_current.bind("Camera2D", "is_current");
		return ptrcall!(bool)(_GODOT_is_current, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit") = _GODOT_set_limit;
	/**
	
	*/
	void setLimit(in long margin, in long limit)
	{
		_GODOT_set_limit.bind("Camera2D", "set_limit");
		ptrcall!(void)(_GODOT_set_limit, _godot_object, margin, limit);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_limit") = _GODOT_get_limit;
	/**
	
	*/
	long getLimit(in long margin) const
	{
		_GODOT_get_limit.bind("Camera2D", "get_limit");
		return ptrcall!(long)(_GODOT_get_limit, _godot_object, margin);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_limit_smoothing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit_smoothing_enabled") = _GODOT_set_limit_smoothing_enabled;
	/**
	
	*/
	void setLimitSmoothingEnabled(in bool limit_smoothing_enabled)
	{
		_GODOT_set_limit_smoothing_enabled.bind("Camera2D", "set_limit_smoothing_enabled");
		ptrcall!(void)(_GODOT_set_limit_smoothing_enabled, _godot_object, limit_smoothing_enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_limit_smoothing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_limit_smoothing_enabled") = _GODOT_is_limit_smoothing_enabled;
	/**
	
	*/
	bool isLimitSmoothingEnabled() const
	{
		_GODOT_is_limit_smoothing_enabled.bind("Camera2D", "is_limit_smoothing_enabled");
		return ptrcall!(bool)(_GODOT_is_limit_smoothing_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_v_drag_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_drag_enabled") = _GODOT_set_v_drag_enabled;
	/**
	
	*/
	void setVDragEnabled(in bool enabled)
	{
		_GODOT_set_v_drag_enabled.bind("Camera2D", "set_v_drag_enabled");
		ptrcall!(void)(_GODOT_set_v_drag_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_v_drag_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_v_drag_enabled") = _GODOT_is_v_drag_enabled;
	/**
	
	*/
	bool isVDragEnabled() const
	{
		_GODOT_is_v_drag_enabled.bind("Camera2D", "is_v_drag_enabled");
		return ptrcall!(bool)(_GODOT_is_v_drag_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_h_drag_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_drag_enabled") = _GODOT_set_h_drag_enabled;
	/**
	
	*/
	void setHDragEnabled(in bool enabled)
	{
		_GODOT_set_h_drag_enabled.bind("Camera2D", "set_h_drag_enabled");
		ptrcall!(void)(_GODOT_set_h_drag_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_h_drag_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_h_drag_enabled") = _GODOT_is_h_drag_enabled;
	/**
	
	*/
	bool isHDragEnabled() const
	{
		_GODOT_is_h_drag_enabled.bind("Camera2D", "is_h_drag_enabled");
		return ptrcall!(bool)(_GODOT_is_h_drag_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_offset") = _GODOT_set_v_offset;
	/**
	
	*/
	void setVOffset(in double ofs)
	{
		_GODOT_set_v_offset.bind("Camera2D", "set_v_offset");
		ptrcall!(void)(_GODOT_set_v_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_offset") = _GODOT_get_v_offset;
	/**
	
	*/
	double getVOffset() const
	{
		_GODOT_get_v_offset.bind("Camera2D", "get_v_offset");
		return ptrcall!(double)(_GODOT_get_v_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_offset") = _GODOT_set_h_offset;
	/**
	
	*/
	void setHOffset(in double ofs)
	{
		_GODOT_set_h_offset.bind("Camera2D", "set_h_offset");
		ptrcall!(void)(_GODOT_set_h_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_offset") = _GODOT_get_h_offset;
	/**
	
	*/
	double getHOffset() const
	{
		_GODOT_get_h_offset.bind("Camera2D", "get_h_offset");
		return ptrcall!(double)(_GODOT_get_h_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_drag_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_drag_margin") = _GODOT_set_drag_margin;
	/**
	
	*/
	void setDragMargin(in long margin, in double drag_margin)
	{
		_GODOT_set_drag_margin.bind("Camera2D", "set_drag_margin");
		ptrcall!(void)(_GODOT_set_drag_margin, _godot_object, margin, drag_margin);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_drag_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_drag_margin") = _GODOT_get_drag_margin;
	/**
	
	*/
	double getDragMargin(in long margin) const
	{
		_GODOT_get_drag_margin.bind("Camera2D", "get_drag_margin");
		return ptrcall!(double)(_GODOT_get_drag_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_camera_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_camera_position") = _GODOT_get_camera_position;
	/**
	Return the camera position.
	*/
	Vector2 getCameraPosition() const
	{
		_GODOT_get_camera_position.bind("Camera2D", "get_camera_position");
		return ptrcall!(Vector2)(_GODOT_get_camera_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_camera_screen_center;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_camera_screen_center") = _GODOT_get_camera_screen_center;
	/**
	Returns the location of the `Camera2D`'s screen-center, relative to the origin.
	*/
	Vector2 getCameraScreenCenter() const
	{
		_GODOT_get_camera_screen_center.bind("Camera2D", "get_camera_screen_center");
		return ptrcall!(Vector2)(_GODOT_get_camera_screen_center, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_zoom") = _GODOT_set_zoom;
	/**
	
	*/
	void setZoom(in Vector2 zoom)
	{
		_GODOT_set_zoom.bind("Camera2D", "set_zoom");
		ptrcall!(void)(_GODOT_set_zoom, _godot_object, zoom);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_zoom") = _GODOT_get_zoom;
	/**
	
	*/
	Vector2 getZoom() const
	{
		_GODOT_get_zoom.bind("Camera2D", "get_zoom");
		return ptrcall!(Vector2)(_GODOT_get_zoom, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_custom_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_viewport") = _GODOT_set_custom_viewport;
	/**
	
	*/
	void setCustomViewport(GodotObject viewport)
	{
		_GODOT_set_custom_viewport.bind("Camera2D", "set_custom_viewport");
		ptrcall!(void)(_GODOT_set_custom_viewport, _godot_object, viewport);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_custom_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_viewport") = _GODOT_get_custom_viewport;
	/**
	
	*/
	Node getCustomViewport() const
	{
		_GODOT_get_custom_viewport.bind("Camera2D", "get_custom_viewport");
		return ptrcall!(Node)(_GODOT_get_custom_viewport, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_follow_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_follow_smoothing") = _GODOT_set_follow_smoothing;
	/**
	
	*/
	void setFollowSmoothing(in double follow_smoothing)
	{
		_GODOT_set_follow_smoothing.bind("Camera2D", "set_follow_smoothing");
		ptrcall!(void)(_GODOT_set_follow_smoothing, _godot_object, follow_smoothing);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_follow_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_follow_smoothing") = _GODOT_get_follow_smoothing;
	/**
	
	*/
	double getFollowSmoothing() const
	{
		_GODOT_get_follow_smoothing.bind("Camera2D", "get_follow_smoothing");
		return ptrcall!(double)(_GODOT_get_follow_smoothing, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_enable_follow_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_enable_follow_smoothing") = _GODOT_set_enable_follow_smoothing;
	/**
	
	*/
	void setEnableFollowSmoothing(in bool follow_smoothing)
	{
		_GODOT_set_enable_follow_smoothing.bind("Camera2D", "set_enable_follow_smoothing");
		ptrcall!(void)(_GODOT_set_enable_follow_smoothing, _godot_object, follow_smoothing);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_follow_smoothing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_follow_smoothing_enabled") = _GODOT_is_follow_smoothing_enabled;
	/**
	
	*/
	bool isFollowSmoothingEnabled() const
	{
		_GODOT_is_follow_smoothing_enabled.bind("Camera2D", "is_follow_smoothing_enabled");
		return ptrcall!(bool)(_GODOT_is_follow_smoothing_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_force_update_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "force_update_scroll") = _GODOT_force_update_scroll;
	/**
	Force the camera to update scroll immediately.
	*/
	void forceUpdateScroll()
	{
		_GODOT_force_update_scroll.bind("Camera2D", "force_update_scroll");
		ptrcall!(void)(_GODOT_force_update_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_reset_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "reset_smoothing") = _GODOT_reset_smoothing;
	/**
	Set the camera's position immediately to its current smoothing destination.
	This has no effect if smoothing is disabled.
	*/
	void resetSmoothing()
	{
		_GODOT_reset_smoothing.bind("Camera2D", "reset_smoothing");
		ptrcall!(void)(_GODOT_reset_smoothing, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__align;
	package(godot) alias _GODOT_methodBindInfo(string name : "align") = _GODOT__align;
	/**
	Align the camera to the tracked node
	*/
	void _align()
	{
		_GODOT__align.bind("Camera2D", "align");
		ptrcall!(void)(_GODOT__align, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__set_old_smoothing;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_old_smoothing") = _GODOT__set_old_smoothing;
	/**
	
	*/
	void _setOldSmoothing(in double follow_smoothing)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(follow_smoothing);
		String _GODOT_method_name = String("_set_old_smoothing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_screen_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_screen_drawing_enabled") = _GODOT_set_screen_drawing_enabled;
	/**
	
	*/
	void setScreenDrawingEnabled(in bool screen_drawing_enabled)
	{
		_GODOT_set_screen_drawing_enabled.bind("Camera2D", "set_screen_drawing_enabled");
		ptrcall!(void)(_GODOT_set_screen_drawing_enabled, _godot_object, screen_drawing_enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_screen_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_screen_drawing_enabled") = _GODOT_is_screen_drawing_enabled;
	/**
	
	*/
	bool isScreenDrawingEnabled() const
	{
		_GODOT_is_screen_drawing_enabled.bind("Camera2D", "is_screen_drawing_enabled");
		return ptrcall!(bool)(_GODOT_is_screen_drawing_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_limit_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit_drawing_enabled") = _GODOT_set_limit_drawing_enabled;
	/**
	
	*/
	void setLimitDrawingEnabled(in bool limit_drawing_enabled)
	{
		_GODOT_set_limit_drawing_enabled.bind("Camera2D", "set_limit_drawing_enabled");
		ptrcall!(void)(_GODOT_set_limit_drawing_enabled, _godot_object, limit_drawing_enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_limit_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_limit_drawing_enabled") = _GODOT_is_limit_drawing_enabled;
	/**
	
	*/
	bool isLimitDrawingEnabled() const
	{
		_GODOT_is_limit_drawing_enabled.bind("Camera2D", "is_limit_drawing_enabled");
		return ptrcall!(bool)(_GODOT_is_limit_drawing_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_margin_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin_drawing_enabled") = _GODOT_set_margin_drawing_enabled;
	/**
	
	*/
	void setMarginDrawingEnabled(in bool margin_drawing_enabled)
	{
		_GODOT_set_margin_drawing_enabled.bind("Camera2D", "set_margin_drawing_enabled");
		ptrcall!(void)(_GODOT_set_margin_drawing_enabled, _godot_object, margin_drawing_enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_margin_drawing_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_margin_drawing_enabled") = _GODOT_is_margin_drawing_enabled;
	/**
	
	*/
	bool isMarginDrawingEnabled() const
	{
		_GODOT_is_margin_drawing_enabled.bind("Camera2D", "is_margin_drawing_enabled");
		return ptrcall!(bool)(_GODOT_is_margin_drawing_enabled, _godot_object);
	}
	/**
	The camera's offset, useful for looking around or camera shake animations.
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
	The Camera2D's anchor point. See `ANCHOR_MODE_*` constants.
	*/
	@property Camera2D.AnchorMode anchorMode()
	{
		return getAnchorMode();
	}
	/// ditto
	@property void anchorMode(long v)
	{
		setAnchorMode(v);
	}
	/**
	If `true` the camera rotates with the target. Default value: `false`
	*/
	@property bool rotating()
	{
		return isRotating();
	}
	/// ditto
	@property void rotating(bool v)
	{
		setRotating(v);
	}
	/**
	If `true` the camera is the active camera for the current scene. Only one camera can be current, so setting a different camera `current` will disable this one.
	*/
	@property bool current()
	{
		return isCurrent();
	}
	/// ditto
	@property void current(bool v)
	{
		_setCurrent(v);
	}
	/**
	The camera's zoom relative to the viewport. Values larger than `Vector2(1, 1)` zoom out and smaller values zoom in. For an example, use `Vector2(0.5, 0.5)` for a 2x zoom in, and `Vector2(4, 4)` for a 4x zoom out.
	*/
	@property Vector2 zoom()
	{
		return getZoom();
	}
	/// ditto
	@property void zoom(Vector2 v)
	{
		setZoom(v);
	}
	/**
	The custom $(D Viewport) node attached to the `Camera2D`. If null or not a $(D Viewport), uses the default viewport instead.
	*/
	@property Node customViewport()
	{
		return getCustomViewport();
	}
	/// ditto
	@property void customViewport(GodotObject v)
	{
		setCustomViewport(v);
	}
	/**
	Left scroll limit in pixels. The camera stops moving when reaching this value.
	*/
	@property long limitLeft()
	{
		return getLimit(0);
	}
	/// ditto
	@property void limitLeft(long v)
	{
		setLimit(0, v);
	}
	/**
	Top scroll limit in pixels. The camera stops moving when reaching this value.
	*/
	@property long limitTop()
	{
		return getLimit(1);
	}
	/// ditto
	@property void limitTop(long v)
	{
		setLimit(1, v);
	}
	/**
	Right scroll limit in pixels. The camera stops moving when reaching this value.
	*/
	@property long limitRight()
	{
		return getLimit(2);
	}
	/// ditto
	@property void limitRight(long v)
	{
		setLimit(2, v);
	}
	/**
	Bottom scroll limit in pixels. The camera stops moving when reaching this value.
	*/
	@property long limitBottom()
	{
		return getLimit(3);
	}
	/// ditto
	@property void limitBottom(long v)
	{
		setLimit(3, v);
	}
	/**
	If `true` the camera smoothly stops when reaches its limits. Default value: `false`
	*/
	@property bool limitSmoothed()
	{
		return isLimitSmoothingEnabled();
	}
	/// ditto
	@property void limitSmoothed(bool v)
	{
		setLimitSmoothingEnabled(v);
	}
	/**
	If `true` the camera only moves when reaching the horizontal drag margins. If `false` the camera moves horizontally regardless of margins. Default value: `true`.
	*/
	@property bool dragMarginHEnabled()
	{
		return isHDragEnabled();
	}
	/// ditto
	@property void dragMarginHEnabled(bool v)
	{
		setHDragEnabled(v);
	}
	/**
	If `true` the camera only moves when reaching the vertical drag margins. If `false` the camera moves vertically regardless of margins. Default value: `true`.
	*/
	@property bool dragMarginVEnabled()
	{
		return isVDragEnabled();
	}
	/// ditto
	@property void dragMarginVEnabled(bool v)
	{
		setVDragEnabled(v);
	}
	/**
	If `true` the camera smoothly moves towards the target at $(D smoothingSpeed). Default value: `false`
	*/
	@property bool smoothingEnabled()
	{
		return isFollowSmoothingEnabled();
	}
	/// ditto
	@property void smoothingEnabled(bool v)
	{
		setEnableFollowSmoothing(v);
	}
	/**
	Speed in pixels per second of the camera's smoothing effect when $(D smoothingEnabled) is `true`
	*/
	@property double smoothingSpeed()
	{
		return getFollowSmoothing();
	}
	/// ditto
	@property void smoothingSpeed(double v)
	{
		setFollowSmoothing(v);
	}
	/**
	The vertical offset of the camera, relative to the drag margins. Default value: `0`
	*/
	@property double offsetV()
	{
		return getVOffset();
	}
	/// ditto
	@property void offsetV(double v)
	{
		setVOffset(v);
	}
	/**
	The horizontal offset of the camera, relative to the drag margins. Default value: `0`
	*/
	@property double offsetH()
	{
		return getHOffset();
	}
	/// ditto
	@property void offsetH(double v)
	{
		setHOffset(v);
	}
	/**
	Left margin needed to drag the camera. A value of `1` makes the camera move only when reaching the edge of the screen.
	*/
	@property double dragMarginLeft()
	{
		return getDragMargin(0);
	}
	/// ditto
	@property void dragMarginLeft(double v)
	{
		setDragMargin(0, v);
	}
	/**
	Top margin needed to drag the camera. A value of `1` makes the camera move only when reaching the edge of the screen.
	*/
	@property double dragMarginTop()
	{
		return getDragMargin(1);
	}
	/// ditto
	@property void dragMarginTop(double v)
	{
		setDragMargin(1, v);
	}
	/**
	Right margin needed to drag the camera. A value of `1` makes the camera move only when reaching the edge of the screen.
	*/
	@property double dragMarginRight()
	{
		return getDragMargin(2);
	}
	/// ditto
	@property void dragMarginRight(double v)
	{
		setDragMargin(2, v);
	}
	/**
	Bottom margin needed to drag the camera. A value of `1` makes the camera move only when reaching the edge of the screen.
	*/
	@property double dragMarginBottom()
	{
		return getDragMargin(3);
	}
	/// ditto
	@property void dragMarginBottom(double v)
	{
		setDragMargin(3, v);
	}
	/**
	If `true` draws the camera's screen rectangle in the editor. Default value: `false`
	*/
	@property bool editorDrawScreen()
	{
		return isScreenDrawingEnabled();
	}
	/// ditto
	@property void editorDrawScreen(bool v)
	{
		setScreenDrawingEnabled(v);
	}
	/**
	If `true` draws the camera's limits rectangle in the editor. Default value: `true`
	*/
	@property bool editorDrawLimits()
	{
		return isLimitDrawingEnabled();
	}
	/// ditto
	@property void editorDrawLimits(bool v)
	{
		setLimitDrawingEnabled(v);
	}
	/**
	If `true` draws the camera's drag margin rectangle in the editor. Default value: `false`
	*/
	@property bool editorDrawDragMargin()
	{
		return isMarginDrawingEnabled();
	}
	/// ditto
	@property void editorDrawDragMargin(bool v)
	{
		setMarginDrawingEnabled(v);
	}
}
