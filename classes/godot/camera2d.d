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
/**
Camera node for 2D scenes.

It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of $(D CanvasItem)-based nodes.
This node is intended to be a simple helper to get things going quickly and it may happen that more functionality is desired to change how the camera works. To make your own custom camera node, inherit from $(D Node2D) and change the transform of the canvas by setting $(D Viewport.canvasTransform) in $(D Viewport) (you can obtain the current $(D Viewport) by using $(D Node.getViewport)).
Note that the $(D Camera2D) node's `position` doesn't represent the actual position of the screen, which may differ due to applied smoothing or limits. You can use $(D getCameraScreenCenter) to get the real position.
*/
@GodotBaseClass struct Camera2D
{
	package(godot) enum string _GODOT_internal_name = "Camera2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_make_current") GodotMethod!(void, GodotObject) _makeCurrent;
		@GodotName("_set_current") GodotMethod!(void, bool) _setCurrent;
		@GodotName("_set_old_smoothing") GodotMethod!(void, double) _setOldSmoothing;
		@GodotName("_update_scroll") GodotMethod!(void) _updateScroll;
		@GodotName("align") GodotMethod!(void) _align;
		@GodotName("clear_current") GodotMethod!(void) clearCurrent;
		@GodotName("force_update_scroll") GodotMethod!(void) forceUpdateScroll;
		@GodotName("get_anchor_mode") GodotMethod!(Camera2D.AnchorMode) getAnchorMode;
		@GodotName("get_camera_position") GodotMethod!(Vector2) getCameraPosition;
		@GodotName("get_camera_screen_center") GodotMethod!(Vector2) getCameraScreenCenter;
		@GodotName("get_custom_viewport") GodotMethod!(Node) getCustomViewport;
		@GodotName("get_drag_margin") GodotMethod!(double, long) getDragMargin;
		@GodotName("get_follow_smoothing") GodotMethod!(double) getFollowSmoothing;
		@GodotName("get_h_offset") GodotMethod!(double) getHOffset;
		@GodotName("get_limit") GodotMethod!(long, long) getLimit;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("get_process_mode") GodotMethod!(Camera2D.Camera2DProcessMode) getProcessMode;
		@GodotName("get_v_offset") GodotMethod!(double) getVOffset;
		@GodotName("get_zoom") GodotMethod!(Vector2) getZoom;
		@GodotName("is_current") GodotMethod!(bool) isCurrent;
		@GodotName("is_follow_smoothing_enabled") GodotMethod!(bool) isFollowSmoothingEnabled;
		@GodotName("is_h_drag_enabled") GodotMethod!(bool) isHDragEnabled;
		@GodotName("is_limit_drawing_enabled") GodotMethod!(bool) isLimitDrawingEnabled;
		@GodotName("is_limit_smoothing_enabled") GodotMethod!(bool) isLimitSmoothingEnabled;
		@GodotName("is_margin_drawing_enabled") GodotMethod!(bool) isMarginDrawingEnabled;
		@GodotName("is_rotating") GodotMethod!(bool) isRotating;
		@GodotName("is_screen_drawing_enabled") GodotMethod!(bool) isScreenDrawingEnabled;
		@GodotName("is_v_drag_enabled") GodotMethod!(bool) isVDragEnabled;
		@GodotName("make_current") GodotMethod!(void) makeCurrent;
		@GodotName("reset_smoothing") GodotMethod!(void) resetSmoothing;
		@GodotName("set_anchor_mode") GodotMethod!(void, long) setAnchorMode;
		@GodotName("set_custom_viewport") GodotMethod!(void, Node) setCustomViewport;
		@GodotName("set_drag_margin") GodotMethod!(void, long, double) setDragMargin;
		@GodotName("set_enable_follow_smoothing") GodotMethod!(void, bool) setEnableFollowSmoothing;
		@GodotName("set_follow_smoothing") GodotMethod!(void, double) setFollowSmoothing;
		@GodotName("set_h_drag_enabled") GodotMethod!(void, bool) setHDragEnabled;
		@GodotName("set_h_offset") GodotMethod!(void, double) setHOffset;
		@GodotName("set_limit") GodotMethod!(void, long, long) setLimit;
		@GodotName("set_limit_drawing_enabled") GodotMethod!(void, bool) setLimitDrawingEnabled;
		@GodotName("set_limit_smoothing_enabled") GodotMethod!(void, bool) setLimitSmoothingEnabled;
		@GodotName("set_margin_drawing_enabled") GodotMethod!(void, bool) setMarginDrawingEnabled;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("set_process_mode") GodotMethod!(void, long) setProcessMode;
		@GodotName("set_rotating") GodotMethod!(void, bool) setRotating;
		@GodotName("set_screen_drawing_enabled") GodotMethod!(void, bool) setScreenDrawingEnabled;
		@GodotName("set_v_drag_enabled") GodotMethod!(void, bool) setVDragEnabled;
		@GodotName("set_v_offset") GodotMethod!(void, double) setVOffset;
		@GodotName("set_zoom") GodotMethod!(void, Vector2) setZoom;
	}
	/// 
	pragma(inline, true) bool opEquals(in Camera2D other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) Camera2D opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of Camera2D.
	/// Note: use `memnew!Camera2D` instead.
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
		The camera updates with the `_physics_process` callback.
		*/
		camera2dProcessPhysics = 0,
		/**
		The camera updates with the `_process` callback.
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
	void _makeCurrent(GodotObject arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_make_current");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setCurrent(in bool current)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(current);
		String _GODOT_method_name = String("_set_current");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setOldSmoothing(in double follow_smoothing)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(follow_smoothing);
		String _GODOT_method_name = String("_set_old_smoothing");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateScroll()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_scroll");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Aligns the camera to the tracked node.
	*/
	void _align()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding._align, _godot_object);
	}
	/**
	Removes any $(D Camera2D) from the ancestor $(D Viewport)'s internal currently-assigned camera.
	*/
	void clearCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCurrent, _godot_object);
	}
	/**
	Forces the camera to update scroll immediately.
	*/
	void forceUpdateScroll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceUpdateScroll, _godot_object);
	}
	/**
	
	*/
	Camera2D.AnchorMode getAnchorMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera2D.AnchorMode)(GDNativeClassBinding.getAnchorMode, _godot_object);
	}
	/**
	Returns the camera position.
	*/
	Vector2 getCameraPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCameraPosition, _godot_object);
	}
	/**
	Returns the location of the $(D Camera2D)'s screen-center, relative to the origin.
	*/
	Vector2 getCameraScreenCenter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCameraScreenCenter, _godot_object);
	}
	/**
	
	*/
	Node getCustomViewport() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getCustomViewport, _godot_object);
	}
	/**
	Returns the specified margin. See also $(D dragMarginBottom), $(D dragMarginTop), $(D dragMarginLeft), and $(D dragMarginRight).
	*/
	double getDragMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDragMargin, _godot_object, margin);
	}
	/**
	
	*/
	double getFollowSmoothing() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFollowSmoothing, _godot_object);
	}
	/**
	
	*/
	double getHOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHOffset, _godot_object);
	}
	/**
	Returns the specified camera limit. See also $(D limitBottom), $(D limitTop), $(D limitLeft), and $(D limitRight).
	*/
	long getLimit(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLimit, _godot_object, margin);
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
	Camera2D.Camera2DProcessMode getProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera2D.Camera2DProcessMode)(GDNativeClassBinding.getProcessMode, _godot_object);
	}
	/**
	
	*/
	double getVOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVOffset, _godot_object);
	}
	/**
	
	*/
	Vector2 getZoom() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getZoom, _godot_object);
	}
	/**
	
	*/
	bool isCurrent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCurrent, _godot_object);
	}
	/**
	
	*/
	bool isFollowSmoothingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFollowSmoothingEnabled, _godot_object);
	}
	/**
	
	*/
	bool isHDragEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHDragEnabled, _godot_object);
	}
	/**
	
	*/
	bool isLimitDrawingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isLimitDrawingEnabled, _godot_object);
	}
	/**
	
	*/
	bool isLimitSmoothingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isLimitSmoothingEnabled, _godot_object);
	}
	/**
	
	*/
	bool isMarginDrawingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isMarginDrawingEnabled, _godot_object);
	}
	/**
	
	*/
	bool isRotating() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRotating, _godot_object);
	}
	/**
	
	*/
	bool isScreenDrawingEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isScreenDrawingEnabled, _godot_object);
	}
	/**
	
	*/
	bool isVDragEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVDragEnabled, _godot_object);
	}
	/**
	Make this the current 2D camera for the scene (viewport and layer), in case there are many cameras in the scene.
	*/
	void makeCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeCurrent, _godot_object);
	}
	/**
	Sets the camera's position immediately to its current smoothing destination.
	This has no effect if smoothing is disabled.
	*/
	void resetSmoothing()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resetSmoothing, _godot_object);
	}
	/**
	
	*/
	void setAnchorMode(in long anchor_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchorMode, _godot_object, anchor_mode);
	}
	/**
	
	*/
	void setCustomViewport(Node viewport)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomViewport, _godot_object, viewport);
	}
	/**
	Sets the specified margin. See also $(D dragMarginBottom), $(D dragMarginTop), $(D dragMarginLeft), and $(D dragMarginRight).
	*/
	void setDragMargin(in long margin, in double drag_margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDragMargin, _godot_object, margin, drag_margin);
	}
	/**
	
	*/
	void setEnableFollowSmoothing(in bool follow_smoothing)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnableFollowSmoothing, _godot_object, follow_smoothing);
	}
	/**
	
	*/
	void setFollowSmoothing(in double follow_smoothing)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFollowSmoothing, _godot_object, follow_smoothing);
	}
	/**
	
	*/
	void setHDragEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHDragEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setHOffset(in double ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHOffset, _godot_object, ofs);
	}
	/**
	Sets the specified camera limit. See also $(D limitBottom), $(D limitTop), $(D limitLeft), and $(D limitRight).
	*/
	void setLimit(in long margin, in long limit)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLimit, _godot_object, margin, limit);
	}
	/**
	
	*/
	void setLimitDrawingEnabled(in bool limit_drawing_enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLimitDrawingEnabled, _godot_object, limit_drawing_enabled);
	}
	/**
	
	*/
	void setLimitSmoothingEnabled(in bool limit_smoothing_enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLimitSmoothingEnabled, _godot_object, limit_smoothing_enabled);
	}
	/**
	
	*/
	void setMarginDrawingEnabled(in bool margin_drawing_enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMarginDrawingEnabled, _godot_object, margin_drawing_enabled);
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
	void setProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	void setRotating(in bool rotating)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRotating, _godot_object, rotating);
	}
	/**
	
	*/
	void setScreenDrawingEnabled(in bool screen_drawing_enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScreenDrawingEnabled, _godot_object, screen_drawing_enabled);
	}
	/**
	
	*/
	void setVDragEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVDragEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setVOffset(in double ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVOffset, _godot_object, ofs);
	}
	/**
	
	*/
	void setZoom(in Vector2 zoom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setZoom, _godot_object, zoom);
	}
	/**
	The Camera2D's anchor point. See $(D anchormode) constants.
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
	The custom $(D Viewport) node attached to the $(D Camera2D). If `null` or not a $(D Viewport), uses the default viewport instead.
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
	If `true`, the camera only moves when reaching the horizontal drag margins. If `false`, the camera moves horizontally regardless of margins.
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
	If `true`, the camera only moves when reaching the vertical drag margins. If `false`, the camera moves vertically regardless of margins.
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
	If `true`, draws the camera's drag margin rectangle in the editor.
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
	/**
	If `true`, draws the camera's limits rectangle in the editor.
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
	If `true`, draws the camera's screen rectangle in the editor.
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
	If `true`, the camera smoothly stops when reaches its limits.
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
	The horizontal offset of the camera, relative to the drag margins.
	$(B Note:) Offset H is used only to force offset relative to margins. It's not updated in any way if drag margins are enabled and can be used to set initial offset.
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
	The vertical offset of the camera, relative to the drag margins.
	$(B Note:) Used the same as $(D offsetH).
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
	The camera's process callback. See $(D camera2dprocessmode).
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
	If `true`, the camera rotates with the target.
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
	If `true`, the camera smoothly moves towards the target at $(D smoothingSpeed).
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
	Speed in pixels per second of the camera's smoothing effect when $(D smoothingEnabled) is `true`.
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
	The camera's zoom relative to the viewport. Values larger than `Vector2(1, 1)` zoom out and smaller values zoom in. For an example, use `Vector2(0.5, 0.5)` for a 2× zoom-in, and `Vector2(4, 4)` for a 4× zoom-out.
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
}
