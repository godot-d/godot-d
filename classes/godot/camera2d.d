/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.camera2d;
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
import godot.node2d;
import godot.node;
/**

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
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
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
	/// 
	enum Camera2DProcessMode : int
	{
		/** */
		camera2dProcessPhysics = 0,
		/** */
		camera2dProcessIdle = 1,
	}
	/// 
	enum AnchorMode : int
	{
		/** */
		anchorModeFixedTopLeft = 0,
		/** */
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
	void _updateScroll()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_scroll");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _align()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding._align, _godot_object);
	}
	/**
	
	*/
	void clearCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCurrent, _godot_object);
	}
	/**
	
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
	
	*/
	Vector2 getCameraPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCameraPosition, _godot_object);
	}
	/**
	
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
	
	*/
	void makeCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeCurrent, _godot_object);
	}
	/**
	
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
