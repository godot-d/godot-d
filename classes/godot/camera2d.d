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
import godot.canvasitem;
/**
Camera node for 2D scenes.

It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of $(D CanvasItem) based nodes.
This node is intended to be a simple helper to get things going quickly and it may happen often that more functionality is desired to change how the camera works. To make your own custom camera node, simply inherit from $(D Node2D) and change the transform of the canvas by calling get_viewport().set_canvas_transform(m) in $(D Viewport).
*/
@GodotBaseClass struct Camera2D
{
	enum string _GODOT_internal_name = "Camera2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("set_anchor_mode") GodotMethod!(void, long) setAnchorMode;
		@GodotName("get_anchor_mode") GodotMethod!(Camera2D.AnchorMode) getAnchorMode;
		@GodotName("set_rotating") GodotMethod!(void, bool) setRotating;
		@GodotName("is_rotating") GodotMethod!(bool) isRotating;
		@GodotName("make_current") GodotMethod!(void) makeCurrent;
		@GodotName("clear_current") GodotMethod!(void) clearCurrent;
		@GodotName("_make_current") GodotMethod!(void, GodotObject) _makeCurrent;
		@GodotName("_update_scroll") GodotMethod!(void) _updateScroll;
		@GodotName("set_process_mode") GodotMethod!(void, long) setProcessMode;
		@GodotName("get_process_mode") GodotMethod!(Camera2D.Camera2DProcessMode) getProcessMode;
		@GodotName("_set_current") GodotMethod!(void, bool) _setCurrent;
		@GodotName("is_current") GodotMethod!(bool) isCurrent;
		@GodotName("set_limit") GodotMethod!(void, long, long) setLimit;
		@GodotName("get_limit") GodotMethod!(long, long) getLimit;
		@GodotName("set_limit_smoothing_enabled") GodotMethod!(void, bool) setLimitSmoothingEnabled;
		@GodotName("is_limit_smoothing_enabled") GodotMethod!(bool) isLimitSmoothingEnabled;
		@GodotName("set_v_drag_enabled") GodotMethod!(void, bool) setVDragEnabled;
		@GodotName("is_v_drag_enabled") GodotMethod!(bool) isVDragEnabled;
		@GodotName("set_h_drag_enabled") GodotMethod!(void, bool) setHDragEnabled;
		@GodotName("is_h_drag_enabled") GodotMethod!(bool) isHDragEnabled;
		@GodotName("set_v_offset") GodotMethod!(void, double) setVOffset;
		@GodotName("get_v_offset") GodotMethod!(double) getVOffset;
		@GodotName("set_h_offset") GodotMethod!(void, double) setHOffset;
		@GodotName("get_h_offset") GodotMethod!(double) getHOffset;
		@GodotName("set_drag_margin") GodotMethod!(void, long, double) setDragMargin;
		@GodotName("get_drag_margin") GodotMethod!(double, long) getDragMargin;
		@GodotName("get_camera_position") GodotMethod!(Vector2) getCameraPosition;
		@GodotName("get_camera_screen_center") GodotMethod!(Vector2) getCameraScreenCenter;
		@GodotName("set_zoom") GodotMethod!(void, Vector2) setZoom;
		@GodotName("get_zoom") GodotMethod!(Vector2) getZoom;
		@GodotName("set_custom_viewport") GodotMethod!(void, Node) setCustomViewport;
		@GodotName("get_custom_viewport") GodotMethod!(Node) getCustomViewport;
		@GodotName("set_follow_smoothing") GodotMethod!(void, double) setFollowSmoothing;
		@GodotName("get_follow_smoothing") GodotMethod!(double) getFollowSmoothing;
		@GodotName("set_enable_follow_smoothing") GodotMethod!(void, bool) setEnableFollowSmoothing;
		@GodotName("is_follow_smoothing_enabled") GodotMethod!(bool) isFollowSmoothingEnabled;
		@GodotName("force_update_scroll") GodotMethod!(void) forceUpdateScroll;
		@GodotName("reset_smoothing") GodotMethod!(void) resetSmoothing;
		@GodotName("align") GodotMethod!(void) _align;
		@GodotName("_set_old_smoothing") GodotMethod!(void, double) _setOldSmoothing;
		@GodotName("set_screen_drawing_enabled") GodotMethod!(void, bool) setScreenDrawingEnabled;
		@GodotName("is_screen_drawing_enabled") GodotMethod!(bool) isScreenDrawingEnabled;
		@GodotName("set_limit_drawing_enabled") GodotMethod!(void, bool) setLimitDrawingEnabled;
		@GodotName("is_limit_drawing_enabled") GodotMethod!(bool) isLimitDrawingEnabled;
		@GodotName("set_margin_drawing_enabled") GodotMethod!(void, bool) setMarginDrawingEnabled;
		@GodotName("is_margin_drawing_enabled") GodotMethod!(bool) isMarginDrawingEnabled;
	}
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
	enum Camera2DProcessMode : int
	{
		/**
		
		*/
		camera2dProcessPhysics = 0,
		/**
		
		*/
		camera2dProcessIdle = 1,
	}
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
		camera2dProcessPhysics = 0,
		anchorModeFixedTopLeft = 0,
		anchorModeDragCenter = 1,
		camera2dProcessIdle = 1,
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
	void setAnchorMode(in long anchor_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnchorMode, _godot_object, anchor_mode);
	}
	/**
	
	*/
	Camera2D.AnchorMode getAnchorMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera2D.AnchorMode)(_classBinding.getAnchorMode, _godot_object);
	}
	/**
	
	*/
	void setRotating(in bool rotating)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRotating, _godot_object, rotating);
	}
	/**
	
	*/
	bool isRotating() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRotating, _godot_object);
	}
	/**
	Make this the current 2D camera for the scene (viewport and layer), in case there's many cameras in the scene.
	*/
	void makeCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.makeCurrent, _godot_object);
	}
	/**
	Removes any $(D Camera2D) from the ancestor $(D Viewport)'s internal currently-assigned camera.
	*/
	void clearCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearCurrent, _godot_object);
	}
	/**
	
	*/
	void _makeCurrent(GodotObject arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_make_current");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateScroll()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_scroll");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	Camera2D.Camera2DProcessMode getProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera2D.Camera2DProcessMode)(_classBinding.getProcessMode, _godot_object);
	}
	/**
	
	*/
	void _setCurrent(in bool current)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(current);
		String _GODOT_method_name = String("_set_current");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool isCurrent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCurrent, _godot_object);
	}
	/**
	
	*/
	void setLimit(in long margin, in long limit)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLimit, _godot_object, margin, limit);
	}
	/**
	
	*/
	long getLimit(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLimit, _godot_object, margin);
	}
	/**
	
	*/
	void setLimitSmoothingEnabled(in bool limit_smoothing_enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLimitSmoothingEnabled, _godot_object, limit_smoothing_enabled);
	}
	/**
	
	*/
	bool isLimitSmoothingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isLimitSmoothingEnabled, _godot_object);
	}
	/**
	
	*/
	void setVDragEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVDragEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isVDragEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isVDragEnabled, _godot_object);
	}
	/**
	
	*/
	void setHDragEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHDragEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isHDragEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHDragEnabled, _godot_object);
	}
	/**
	
	*/
	void setVOffset(in double ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVOffset, _godot_object, ofs);
	}
	/**
	
	*/
	double getVOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVOffset, _godot_object);
	}
	/**
	
	*/
	void setHOffset(in double ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHOffset, _godot_object, ofs);
	}
	/**
	
	*/
	double getHOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getHOffset, _godot_object);
	}
	/**
	
	*/
	void setDragMargin(in long margin, in double drag_margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDragMargin, _godot_object, margin, drag_margin);
	}
	/**
	
	*/
	double getDragMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDragMargin, _godot_object, margin);
	}
	/**
	Return the camera position.
	*/
	Vector2 getCameraPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getCameraPosition, _godot_object);
	}
	/**
	Returns the location of the $(D Camera2D)'s screen-center, relative to the origin.
	*/
	Vector2 getCameraScreenCenter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getCameraScreenCenter, _godot_object);
	}
	/**
	
	*/
	void setZoom(in Vector2 zoom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setZoom, _godot_object, zoom);
	}
	/**
	
	*/
	Vector2 getZoom() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getZoom, _godot_object);
	}
	/**
	
	*/
	void setCustomViewport(Node viewport)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomViewport, _godot_object, viewport);
	}
	/**
	
	*/
	Node getCustomViewport() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getCustomViewport, _godot_object);
	}
	/**
	
	*/
	void setFollowSmoothing(in double follow_smoothing)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFollowSmoothing, _godot_object, follow_smoothing);
	}
	/**
	
	*/
	double getFollowSmoothing() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFollowSmoothing, _godot_object);
	}
	/**
	
	*/
	void setEnableFollowSmoothing(in bool follow_smoothing)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnableFollowSmoothing, _godot_object, follow_smoothing);
	}
	/**
	
	*/
	bool isFollowSmoothingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFollowSmoothingEnabled, _godot_object);
	}
	/**
	Force the camera to update scroll immediately.
	*/
	void forceUpdateScroll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.forceUpdateScroll, _godot_object);
	}
	/**
	Set the camera's position immediately to its current smoothing destination.
	This has no effect if smoothing is disabled.
	*/
	void resetSmoothing()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.resetSmoothing, _godot_object);
	}
	/**
	Align the camera to the tracked node
	*/
	void _align()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding._align, _godot_object);
	}
	/**
	
	*/
	void _setOldSmoothing(in double follow_smoothing)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(follow_smoothing);
		String _GODOT_method_name = String("_set_old_smoothing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setScreenDrawingEnabled(in bool screen_drawing_enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScreenDrawingEnabled, _godot_object, screen_drawing_enabled);
	}
	/**
	
	*/
	bool isScreenDrawingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isScreenDrawingEnabled, _godot_object);
	}
	/**
	
	*/
	void setLimitDrawingEnabled(in bool limit_drawing_enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLimitDrawingEnabled, _godot_object, limit_drawing_enabled);
	}
	/**
	
	*/
	bool isLimitDrawingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isLimitDrawingEnabled, _godot_object);
	}
	/**
	
	*/
	void setMarginDrawingEnabled(in bool margin_drawing_enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMarginDrawingEnabled, _godot_object, margin_drawing_enabled);
	}
	/**
	
	*/
	bool isMarginDrawingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isMarginDrawingEnabled, _godot_object);
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
	If `true`, the camera rotates with the target. Default value: `false`
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
	If `true`, the camera is the active camera for the current scene. Only one camera can be current, so setting a different camera `current` will disable this one.
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
	The custom $(D Viewport) node attached to the $(D Camera2D). If null or not a $(D Viewport), uses the default viewport instead.
	*/
	@property Node customViewport()
	{
		return getCustomViewport();
	}
	/// ditto
	@property void customViewport(Node v)
	{
		setCustomViewport(v);
	}
	/**
	
	*/
	@property Camera2D.Camera2DProcessMode processMode()
	{
		return getProcessMode();
	}
	/// ditto
	@property void processMode(long v)
	{
		setProcessMode(v);
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
	If `true`, the camera smoothly stops when reaches its limits. Default value: `false`
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
	If `true`, the camera only moves when reaching the horizontal drag margins. If `false`, the camera moves horizontally regardless of margins. Default value: `true`.
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
	If `true`, the camera only moves when reaching the vertical drag margins. If `false`, the camera moves vertically regardless of margins. Default value: `true`.
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
	If `true`, the camera smoothly moves towards the target at $(D smoothingSpeed). Default value: `false`
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
	If `true`, draws the camera's screen rectangle in the editor. Default value: `false`
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
	If `true`, draws the camera's limits rectangle in the editor. Default value: `true`
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
	If `true`, draws the camera's drag margin rectangle in the editor. Default value: `false`
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
