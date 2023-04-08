/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.viewport;
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
import godot.node;
import godot.inputevent;
import godot.world;
import godot.world2d;
import godot.camera;
import godot.control;
import godot.viewporttexture;
/**

*/
@GodotBaseClass struct Viewport
{
	package(godot) enum string _GODOT_internal_name = "Viewport";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_gui_remove_focus") GodotMethod!(void) _guiRemoveFocus;
		@GodotName("_gui_show_tooltip") GodotMethod!(void) _guiShowTooltip;
		@GodotName("_own_world_changed") GodotMethod!(void) _ownWorldChanged;
		@GodotName("_post_gui_grab_click_focus") GodotMethod!(void) _postGuiGrabClickFocus;
		@GodotName("_process_picking") GodotMethod!(void, bool) _processPicking;
		@GodotName("_subwindow_visibility_changed") GodotMethod!(void) _subwindowVisibilityChanged;
		@GodotName("_vp_input") GodotMethod!(void, InputEvent) _vpInput;
		@GodotName("_vp_input_text") GodotMethod!(void, String) _vpInputText;
		@GodotName("_vp_unhandled_input") GodotMethod!(void, InputEvent) _vpUnhandledInput;
		@GodotName("find_world") GodotMethod!(World) findWorld;
		@GodotName("find_world_2d") GodotMethod!(World2D) findWorld2d;
		@GodotName("get_camera") GodotMethod!(Camera) getCamera;
		@GodotName("get_canvas_transform") GodotMethod!(Transform2D) getCanvasTransform;
		@GodotName("get_clear_mode") GodotMethod!(Viewport.ClearMode) getClearMode;
		@GodotName("get_debug_draw") GodotMethod!(Viewport.DebugDraw) getDebugDraw;
		@GodotName("get_final_transform") GodotMethod!(Transform2D) getFinalTransform;
		@GodotName("get_global_canvas_transform") GodotMethod!(Transform2D) getGlobalCanvasTransform;
		@GodotName("get_hdr") GodotMethod!(bool) getHdr;
		@GodotName("get_keep_3d_linear") GodotMethod!(bool) getKeep3dLinear;
		@GodotName("get_modal_stack_top") GodotMethod!(Control) getModalStackTop;
		@GodotName("get_mouse_position") GodotMethod!(Vector2) getMousePosition;
		@GodotName("get_msaa") GodotMethod!(Viewport.MSAA) getMsaa;
		@GodotName("get_physics_object_picking") GodotMethod!(bool) getPhysicsObjectPicking;
		@GodotName("get_render_info") GodotMethod!(long, long) getRenderInfo;
		@GodotName("get_shadow_atlas_quadrant_subdiv") GodotMethod!(Viewport.ShadowAtlasQuadrantSubdiv, long) getShadowAtlasQuadrantSubdiv;
		@GodotName("get_shadow_atlas_size") GodotMethod!(long) getShadowAtlasSize;
		@GodotName("get_sharpen_intensity") GodotMethod!(double) getSharpenIntensity;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("get_size_override") GodotMethod!(Vector2) getSizeOverride;
		@GodotName("get_texture") GodotMethod!(ViewportTexture) getTexture;
		@GodotName("get_update_mode") GodotMethod!(Viewport.UpdateMode) getUpdateMode;
		@GodotName("get_usage") GodotMethod!(Viewport.Usage) getUsage;
		@GodotName("get_use_32_bpc_depth") GodotMethod!(bool) getUse32BpcDepth;
		@GodotName("get_use_debanding") GodotMethod!(bool) getUseDebanding;
		@GodotName("get_use_fxaa") GodotMethod!(bool) getUseFxaa;
		@GodotName("get_vflip") GodotMethod!(bool) getVflip;
		@GodotName("get_viewport_rid") GodotMethod!(RID) getViewportRid;
		@GodotName("get_visible_rect") GodotMethod!(Rect2) getVisibleRect;
		@GodotName("get_world") GodotMethod!(World) getWorld;
		@GodotName("get_world_2d") GodotMethod!(World2D) getWorld2d;
		@GodotName("gui_get_drag_data") GodotMethod!(Variant) guiGetDragData;
		@GodotName("gui_has_modal_stack") GodotMethod!(bool) guiHasModalStack;
		@GodotName("gui_is_drag_successful") GodotMethod!(bool) guiIsDragSuccessful;
		@GodotName("gui_is_dragging") GodotMethod!(bool) guiIsDragging;
		@GodotName("has_transparent_background") GodotMethod!(bool) hasTransparentBackground;
		@GodotName("input") GodotMethod!(void, InputEvent) input;
		@GodotName("is_3d_disabled") GodotMethod!(bool) is3dDisabled;
		@GodotName("is_audio_listener") GodotMethod!(bool) isAudioListener;
		@GodotName("is_audio_listener_2d") GodotMethod!(bool) isAudioListener2d;
		@GodotName("is_handling_input_locally") GodotMethod!(bool) isHandlingInputLocally;
		@GodotName("is_input_disabled") GodotMethod!(bool) isInputDisabled;
		@GodotName("is_input_handled") GodotMethod!(bool) isInputHandled;
		@GodotName("is_size_override_enabled") GodotMethod!(bool) isSizeOverrideEnabled;
		@GodotName("is_size_override_stretch_enabled") GodotMethod!(bool) isSizeOverrideStretchEnabled;
		@GodotName("is_snap_controls_to_pixels_enabled") GodotMethod!(bool) isSnapControlsToPixelsEnabled;
		@GodotName("is_using_own_world") GodotMethod!(bool) isUsingOwnWorld;
		@GodotName("is_using_render_direct_to_screen") GodotMethod!(bool) isUsingRenderDirectToScreen;
		@GodotName("set_as_audio_listener") GodotMethod!(void, bool) setAsAudioListener;
		@GodotName("set_as_audio_listener_2d") GodotMethod!(void, bool) setAsAudioListener2d;
		@GodotName("set_attach_to_screen_rect") GodotMethod!(void, Rect2) setAttachToScreenRect;
		@GodotName("set_canvas_transform") GodotMethod!(void, Transform2D) setCanvasTransform;
		@GodotName("set_clear_mode") GodotMethod!(void, long) setClearMode;
		@GodotName("set_debug_draw") GodotMethod!(void, long) setDebugDraw;
		@GodotName("set_disable_3d") GodotMethod!(void, bool) setDisable3d;
		@GodotName("set_disable_input") GodotMethod!(void, bool) setDisableInput;
		@GodotName("set_global_canvas_transform") GodotMethod!(void, Transform2D) setGlobalCanvasTransform;
		@GodotName("set_handle_input_locally") GodotMethod!(void, bool) setHandleInputLocally;
		@GodotName("set_hdr") GodotMethod!(void, bool) setHdr;
		@GodotName("set_input_as_handled") GodotMethod!(void) setInputAsHandled;
		@GodotName("set_keep_3d_linear") GodotMethod!(void, bool) setKeep3dLinear;
		@GodotName("set_msaa") GodotMethod!(void, long) setMsaa;
		@GodotName("set_physics_object_picking") GodotMethod!(void, bool) setPhysicsObjectPicking;
		@GodotName("set_shadow_atlas_quadrant_subdiv") GodotMethod!(void, long, long) setShadowAtlasQuadrantSubdiv;
		@GodotName("set_shadow_atlas_size") GodotMethod!(void, long) setShadowAtlasSize;
		@GodotName("set_sharpen_intensity") GodotMethod!(void, double) setSharpenIntensity;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
		@GodotName("set_size_override") GodotMethod!(void, bool, Vector2, Vector2) setSizeOverride;
		@GodotName("set_size_override_stretch") GodotMethod!(void, bool) setSizeOverrideStretch;
		@GodotName("set_snap_controls_to_pixels") GodotMethod!(void, bool) setSnapControlsToPixels;
		@GodotName("set_transparent_background") GodotMethod!(void, bool) setTransparentBackground;
		@GodotName("set_update_mode") GodotMethod!(void, long) setUpdateMode;
		@GodotName("set_usage") GodotMethod!(void, long) setUsage;
		@GodotName("set_use_32_bpc_depth") GodotMethod!(void, bool) setUse32BpcDepth;
		@GodotName("set_use_arvr") GodotMethod!(void, bool) setUseArvr;
		@GodotName("set_use_debanding") GodotMethod!(void, bool) setUseDebanding;
		@GodotName("set_use_fxaa") GodotMethod!(void, bool) setUseFxaa;
		@GodotName("set_use_own_world") GodotMethod!(void, bool) setUseOwnWorld;
		@GodotName("set_use_render_direct_to_screen") GodotMethod!(void, bool) setUseRenderDirectToScreen;
		@GodotName("set_vflip") GodotMethod!(void, bool) setVflip;
		@GodotName("set_world") GodotMethod!(void, World) setWorld;
		@GodotName("set_world_2d") GodotMethod!(void, World2D) setWorld2d;
		@GodotName("unhandled_input") GodotMethod!(void, InputEvent) unhandledInput;
		@GodotName("update_worlds") GodotMethod!(void) updateWorlds;
		@GodotName("use_arvr") GodotMethod!(bool) useArvr;
		@GodotName("warp_mouse") GodotMethod!(void, Vector2) warpMouse;
	}
	/// 
	pragma(inline, true) bool opEquals(in Viewport other) const
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
	/// Construct a new instance of Viewport.
	/// Note: use `memnew!Viewport` instead.
	static Viewport _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Viewport");
		if(constructor is null) return typeof(this).init;
		return cast(Viewport)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ClearMode : int
	{
		/** */
		clearModeAlways = 0,
		/** */
		clearModeNever = 1,
		/** */
		clearModeOnlyNextFrame = 2,
	}
	/// 
	enum RenderInfo : int
	{
		/** */
		renderInfoObjectsInFrame = 0,
		/** */
		renderInfoVerticesInFrame = 1,
		/** */
		renderInfoMaterialChangesInFrame = 2,
		/** */
		renderInfoShaderChangesInFrame = 3,
		/** */
		renderInfoSurfaceChangesInFrame = 4,
		/** */
		renderInfoDrawCallsInFrame = 5,
		/** */
		renderInfo2dItemsInFrame = 6,
		/** */
		renderInfo2dDrawCallsInFrame = 7,
		/** */
		renderInfoMax = 8,
	}
	/// 
	enum Usage : int
	{
		/** */
		usage2d = 0,
		/** */
		usage2dNoSampling = 1,
		/** */
		usage3d = 2,
		/** */
		usage3dNoEffects = 3,
	}
	/// 
	enum DebugDraw : int
	{
		/** */
		debugDrawDisabled = 0,
		/** */
		debugDrawUnshaded = 1,
		/** */
		debugDrawOverdraw = 2,
		/** */
		debugDrawWireframe = 3,
	}
	/// 
	enum ShadowAtlasQuadrantSubdiv : int
	{
		/** */
		shadowAtlasQuadrantSubdivDisabled = 0,
		/** */
		shadowAtlasQuadrantSubdiv1 = 1,
		/** */
		shadowAtlasQuadrantSubdiv4 = 2,
		/** */
		shadowAtlasQuadrantSubdiv16 = 3,
		/** */
		shadowAtlasQuadrantSubdiv64 = 4,
		/** */
		shadowAtlasQuadrantSubdiv256 = 5,
		/** */
		shadowAtlasQuadrantSubdiv1024 = 6,
		/** */
		shadowAtlasQuadrantSubdivMax = 7,
	}
	/// 
	enum UpdateMode : int
	{
		/** */
		updateDisabled = 0,
		/** */
		updateOnce = 1,
		/** */
		updateWhenVisible = 2,
		/** */
		updateAlways = 3,
	}
	/// 
	enum MSAA : int
	{
		/** */
		msaaDisabled = 0,
		/** */
		msaa2x = 1,
		/** */
		msaa4x = 2,
		/** */
		msaa8x = 3,
		/** */
		msaa16x = 4,
	}
	/// 
	enum Constants : int
	{
		debugDrawDisabled = 0,
		shadowAtlasQuadrantSubdivDisabled = 0,
		updateDisabled = 0,
		renderInfoObjectsInFrame = 0,
		clearModeAlways = 0,
		msaaDisabled = 0,
		usage2d = 0,
		updateOnce = 1,
		msaa2x = 1,
		debugDrawUnshaded = 1,
		renderInfoVerticesInFrame = 1,
		shadowAtlasQuadrantSubdiv1 = 1,
		clearModeNever = 1,
		usage2dNoSampling = 1,
		debugDrawOverdraw = 2,
		msaa4x = 2,
		clearModeOnlyNextFrame = 2,
		updateWhenVisible = 2,
		usage3d = 2,
		renderInfoMaterialChangesInFrame = 2,
		shadowAtlasQuadrantSubdiv4 = 2,
		shadowAtlasQuadrantSubdiv16 = 3,
		msaa8x = 3,
		renderInfoShaderChangesInFrame = 3,
		usage3dNoEffects = 3,
		debugDrawWireframe = 3,
		updateAlways = 3,
		shadowAtlasQuadrantSubdiv64 = 4,
		renderInfoSurfaceChangesInFrame = 4,
		msaa16x = 4,
		renderInfoDrawCallsInFrame = 5,
		shadowAtlasQuadrantSubdiv256 = 5,
		shadowAtlasQuadrantSubdiv1024 = 6,
		renderInfo2dItemsInFrame = 6,
		shadowAtlasQuadrantSubdivMax = 7,
		renderInfo2dDrawCallsInFrame = 7,
		renderInfoMax = 8,
	}
	/**
	
	*/
	void _guiRemoveFocus()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_gui_remove_focus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _guiShowTooltip()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_gui_show_tooltip");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _ownWorldChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_own_world_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _postGuiGrabClickFocus()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_post_gui_grab_click_focus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _processPicking(in bool ignore_paused)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(ignore_paused);
		String _GODOT_method_name = String("_process_picking");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _subwindowVisibilityChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_subwindow_visibility_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _vpInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_vp_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _vpInputText(in String text)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_vp_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _vpUnhandledInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_vp_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!World findWorld() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World)(GDNativeClassBinding.findWorld, _godot_object);
	}
	/**
	
	*/
	Ref!World2D findWorld2d() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World2D)(GDNativeClassBinding.findWorld2d, _godot_object);
	}
	/**
	
	*/
	Camera getCamera() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera)(GDNativeClassBinding.getCamera, _godot_object);
	}
	/**
	
	*/
	Transform2D getCanvasTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getCanvasTransform, _godot_object);
	}
	/**
	
	*/
	Viewport.ClearMode getClearMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.ClearMode)(GDNativeClassBinding.getClearMode, _godot_object);
	}
	/**
	
	*/
	Viewport.DebugDraw getDebugDraw() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.DebugDraw)(GDNativeClassBinding.getDebugDraw, _godot_object);
	}
	/**
	
	*/
	Transform2D getFinalTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getFinalTransform, _godot_object);
	}
	/**
	
	*/
	Transform2D getGlobalCanvasTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getGlobalCanvasTransform, _godot_object);
	}
	/**
	
	*/
	bool getHdr() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getHdr, _godot_object);
	}
	/**
	
	*/
	bool getKeep3dLinear() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getKeep3dLinear, _godot_object);
	}
	/**
	
	*/
	Control getModalStackTop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getModalStackTop, _godot_object);
	}
	/**
	
	*/
	Vector2 getMousePosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMousePosition, _godot_object);
	}
	/**
	
	*/
	Viewport.MSAA getMsaa() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.MSAA)(GDNativeClassBinding.getMsaa, _godot_object);
	}
	/**
	
	*/
	bool getPhysicsObjectPicking()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getPhysicsObjectPicking, _godot_object);
	}
	/**
	
	*/
	long getRenderInfo(in long info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRenderInfo, _godot_object, info);
	}
	/**
	
	*/
	Viewport.ShadowAtlasQuadrantSubdiv getShadowAtlasQuadrantSubdiv(in long quadrant) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.ShadowAtlasQuadrantSubdiv)(GDNativeClassBinding.getShadowAtlasQuadrantSubdiv, _godot_object, quadrant);
	}
	/**
	
	*/
	long getShadowAtlasSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getShadowAtlasSize, _godot_object);
	}
	/**
	
	*/
	double getSharpenIntensity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSharpenIntensity, _godot_object);
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
	Vector2 getSizeOverride() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSizeOverride, _godot_object);
	}
	/**
	
	*/
	Ref!ViewportTexture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ViewportTexture)(GDNativeClassBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	Viewport.UpdateMode getUpdateMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.UpdateMode)(GDNativeClassBinding.getUpdateMode, _godot_object);
	}
	/**
	
	*/
	Viewport.Usage getUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.Usage)(GDNativeClassBinding.getUsage, _godot_object);
	}
	/**
	
	*/
	bool getUse32BpcDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUse32BpcDepth, _godot_object);
	}
	/**
	
	*/
	bool getUseDebanding() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseDebanding, _godot_object);
	}
	/**
	
	*/
	bool getUseFxaa() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseFxaa, _godot_object);
	}
	/**
	
	*/
	bool getVflip() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getVflip, _godot_object);
	}
	/**
	
	*/
	RID getViewportRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getViewportRid, _godot_object);
	}
	/**
	
	*/
	Rect2 getVisibleRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getVisibleRect, _godot_object);
	}
	/**
	
	*/
	Ref!World getWorld() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World)(GDNativeClassBinding.getWorld, _godot_object);
	}
	/**
	
	*/
	Ref!World2D getWorld2d() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World2D)(GDNativeClassBinding.getWorld2d, _godot_object);
	}
	/**
	
	*/
	Variant guiGetDragData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.guiGetDragData, _godot_object);
	}
	/**
	
	*/
	bool guiHasModalStack() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.guiHasModalStack, _godot_object);
	}
	/**
	
	*/
	bool guiIsDragSuccessful() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.guiIsDragSuccessful, _godot_object);
	}
	/**
	
	*/
	bool guiIsDragging() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.guiIsDragging, _godot_object);
	}
	/**
	
	*/
	bool hasTransparentBackground() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasTransparentBackground, _godot_object);
	}
	/**
	
	*/
	void input(InputEvent local_event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.input, _godot_object, local_event);
	}
	/**
	
	*/
	bool is3dDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.is3dDisabled, _godot_object);
	}
	/**
	
	*/
	bool isAudioListener() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAudioListener, _godot_object);
	}
	/**
	
	*/
	bool isAudioListener2d() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAudioListener2d, _godot_object);
	}
	/**
	
	*/
	bool isHandlingInputLocally() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHandlingInputLocally, _godot_object);
	}
	/**
	
	*/
	bool isInputDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInputDisabled, _godot_object);
	}
	/**
	
	*/
	bool isInputHandled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInputHandled, _godot_object);
	}
	/**
	
	*/
	bool isSizeOverrideEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSizeOverrideEnabled, _godot_object);
	}
	/**
	
	*/
	bool isSizeOverrideStretchEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSizeOverrideStretchEnabled, _godot_object);
	}
	/**
	
	*/
	bool isSnapControlsToPixelsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSnapControlsToPixelsEnabled, _godot_object);
	}
	/**
	
	*/
	bool isUsingOwnWorld() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingOwnWorld, _godot_object);
	}
	/**
	
	*/
	bool isUsingRenderDirectToScreen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingRenderDirectToScreen, _godot_object);
	}
	/**
	
	*/
	void setAsAudioListener(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsAudioListener, _godot_object, enable);
	}
	/**
	
	*/
	void setAsAudioListener2d(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsAudioListener2d, _godot_object, enable);
	}
	/**
	
	*/
	void setAttachToScreenRect(in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAttachToScreenRect, _godot_object, rect);
	}
	/**
	
	*/
	void setCanvasTransform(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCanvasTransform, _godot_object, xform);
	}
	/**
	
	*/
	void setClearMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClearMode, _godot_object, mode);
	}
	/**
	
	*/
	void setDebugDraw(in long debug_draw)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDebugDraw, _godot_object, debug_draw);
	}
	/**
	
	*/
	void setDisable3d(in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisable3d, _godot_object, disable);
	}
	/**
	
	*/
	void setDisableInput(in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisableInput, _godot_object, disable);
	}
	/**
	
	*/
	void setGlobalCanvasTransform(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalCanvasTransform, _godot_object, xform);
	}
	/**
	
	*/
	void setHandleInputLocally(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHandleInputLocally, _godot_object, enable);
	}
	/**
	
	*/
	void setHdr(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHdr, _godot_object, enable);
	}
	/**
	
	*/
	void setInputAsHandled()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputAsHandled, _godot_object);
	}
	/**
	
	*/
	void setKeep3dLinear(in bool keep_3d_linear)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setKeep3dLinear, _godot_object, keep_3d_linear);
	}
	/**
	
	*/
	void setMsaa(in long msaa)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMsaa, _godot_object, msaa);
	}
	/**
	
	*/
	void setPhysicsObjectPicking(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsObjectPicking, _godot_object, enable);
	}
	/**
	
	*/
	void setShadowAtlasQuadrantSubdiv(in long quadrant, in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowAtlasQuadrantSubdiv, _godot_object, quadrant, subdiv);
	}
	/**
	
	*/
	void setShadowAtlasSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowAtlasSize, _godot_object, size);
	}
	/**
	
	*/
	void setSharpenIntensity(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSharpenIntensity, _godot_object, intensity);
	}
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	void setSizeOverride(in bool enable, in Vector2 size = Vector2(-1, -1), in Vector2 margin = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSizeOverride, _godot_object, enable, size, margin);
	}
	/**
	
	*/
	void setSizeOverrideStretch(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSizeOverrideStretch, _godot_object, enabled);
	}
	/**
	
	*/
	void setSnapControlsToPixels(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSnapControlsToPixels, _godot_object, enabled);
	}
	/**
	
	*/
	void setTransparentBackground(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransparentBackground, _godot_object, enable);
	}
	/**
	
	*/
	void setUpdateMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUpdateMode, _godot_object, mode);
	}
	/**
	
	*/
	void setUsage(in long usage)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUsage, _godot_object, usage);
	}
	/**
	
	*/
	void setUse32BpcDepth(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUse32BpcDepth, _godot_object, enable);
	}
	/**
	
	*/
	void setUseArvr(in bool use)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseArvr, _godot_object, use);
	}
	/**
	
	*/
	void setUseDebanding(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseDebanding, _godot_object, enable);
	}
	/**
	
	*/
	void setUseFxaa(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseFxaa, _godot_object, enable);
	}
	/**
	
	*/
	void setUseOwnWorld(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseOwnWorld, _godot_object, enable);
	}
	/**
	
	*/
	void setUseRenderDirectToScreen(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseRenderDirectToScreen, _godot_object, enable);
	}
	/**
	
	*/
	void setVflip(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVflip, _godot_object, enable);
	}
	/**
	
	*/
	void setWorld(World world)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWorld, _godot_object, world);
	}
	/**
	
	*/
	void setWorld2d(World2D world_2d)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWorld2d, _godot_object, world_2d);
	}
	/**
	
	*/
	void unhandledInput(InputEvent local_event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unhandledInput, _godot_object, local_event);
	}
	/**
	
	*/
	void updateWorlds()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateWorlds, _godot_object);
	}
	/**
	
	*/
	bool useArvr()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.useArvr, _godot_object);
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
	@property bool arvr()
	{
		return useArvr();
	}
	/// ditto
	@property void arvr(bool v)
	{
		setUseArvr(v);
	}
	/**
	
	*/
	@property bool audioListenerEnable2d()
	{
		return isAudioListener2d();
	}
	/// ditto
	@property void audioListenerEnable2d(bool v)
	{
		setAsAudioListener2d(v);
	}
	/**
	
	*/
	@property bool audioListenerEnable3d()
	{
		return isAudioListener();
	}
	/// ditto
	@property void audioListenerEnable3d(bool v)
	{
		setAsAudioListener(v);
	}
	/**
	
	*/
	@property Transform2D canvasTransform()
	{
		return getCanvasTransform();
	}
	/// ditto
	@property void canvasTransform(Transform2D v)
	{
		setCanvasTransform(v);
	}
	/**
	
	*/
	@property bool debanding()
	{
		return getUseDebanding();
	}
	/// ditto
	@property void debanding(bool v)
	{
		setUseDebanding(v);
	}
	/**
	
	*/
	@property Viewport.DebugDraw debugDraw()
	{
		return getDebugDraw();
	}
	/// ditto
	@property void debugDraw(long v)
	{
		setDebugDraw(v);
	}
	/**
	
	*/
	@property bool disable3d()
	{
		return is3dDisabled();
	}
	/// ditto
	@property void disable3d(bool v)
	{
		setDisable3d(v);
	}
	/**
	
	*/
	@property bool fxaa()
	{
		return getUseFxaa();
	}
	/// ditto
	@property void fxaa(bool v)
	{
		setUseFxaa(v);
	}
	/**
	
	*/
	@property Transform2D globalCanvasTransform()
	{
		return getGlobalCanvasTransform();
	}
	/// ditto
	@property void globalCanvasTransform(Transform2D v)
	{
		setGlobalCanvasTransform(v);
	}
	/**
	
	*/
	@property bool guiDisableInput()
	{
		return isInputDisabled();
	}
	/// ditto
	@property void guiDisableInput(bool v)
	{
		setDisableInput(v);
	}
	/**
	
	*/
	@property bool guiSnapControlsToPixels()
	{
		return isSnapControlsToPixelsEnabled();
	}
	/// ditto
	@property void guiSnapControlsToPixels(bool v)
	{
		setSnapControlsToPixels(v);
	}
	/**
	
	*/
	@property bool handleInputLocally()
	{
		return isHandlingInputLocally();
	}
	/// ditto
	@property void handleInputLocally(bool v)
	{
		setHandleInputLocally(v);
	}
	/**
	
	*/
	@property bool hdr()
	{
		return getHdr();
	}
	/// ditto
	@property void hdr(bool v)
	{
		setHdr(v);
	}
	/**
	
	*/
	@property bool keep3dLinear()
	{
		return getKeep3dLinear();
	}
	/// ditto
	@property void keep3dLinear(bool v)
	{
		setKeep3dLinear(v);
	}
	/**
	
	*/
	@property Viewport.MSAA msaa()
	{
		return getMsaa();
	}
	/// ditto
	@property void msaa(long v)
	{
		setMsaa(v);
	}
	/**
	
	*/
	@property bool ownWorld()
	{
		return isUsingOwnWorld();
	}
	/// ditto
	@property void ownWorld(bool v)
	{
		setUseOwnWorld(v);
	}
	/**
	
	*/
	@property bool physicsObjectPicking()
	{
		return getPhysicsObjectPicking();
	}
	/// ditto
	@property void physicsObjectPicking(bool v)
	{
		setPhysicsObjectPicking(v);
	}
	/**
	
	*/
	@property bool renderDirectToScreen()
	{
		return isUsingRenderDirectToScreen();
	}
	/// ditto
	@property void renderDirectToScreen(bool v)
	{
		setUseRenderDirectToScreen(v);
	}
	/**
	
	*/
	@property Viewport.ClearMode renderTargetClearMode()
	{
		return getClearMode();
	}
	/// ditto
	@property void renderTargetClearMode(long v)
	{
		setClearMode(v);
	}
	/**
	
	*/
	@property Viewport.UpdateMode renderTargetUpdateMode()
	{
		return getUpdateMode();
	}
	/// ditto
	@property void renderTargetUpdateMode(long v)
	{
		setUpdateMode(v);
	}
	/**
	
	*/
	@property bool renderTargetVFlip()
	{
		return getVflip();
	}
	/// ditto
	@property void renderTargetVFlip(bool v)
	{
		setVflip(v);
	}
	/**
	
	*/
	@property Viewport.ShadowAtlasQuadrantSubdiv shadowAtlasQuad0()
	{
		return getShadowAtlasQuadrantSubdiv(0);
	}
	/// ditto
	@property void shadowAtlasQuad0(long v)
	{
		setShadowAtlasQuadrantSubdiv(0, v);
	}
	/**
	
	*/
	@property Viewport.ShadowAtlasQuadrantSubdiv shadowAtlasQuad1()
	{
		return getShadowAtlasQuadrantSubdiv(1);
	}
	/// ditto
	@property void shadowAtlasQuad1(long v)
	{
		setShadowAtlasQuadrantSubdiv(1, v);
	}
	/**
	
	*/
	@property Viewport.ShadowAtlasQuadrantSubdiv shadowAtlasQuad2()
	{
		return getShadowAtlasQuadrantSubdiv(2);
	}
	/// ditto
	@property void shadowAtlasQuad2(long v)
	{
		setShadowAtlasQuadrantSubdiv(2, v);
	}
	/**
	
	*/
	@property Viewport.ShadowAtlasQuadrantSubdiv shadowAtlasQuad3()
	{
		return getShadowAtlasQuadrantSubdiv(3);
	}
	/// ditto
	@property void shadowAtlasQuad3(long v)
	{
		setShadowAtlasQuadrantSubdiv(3, v);
	}
	/**
	
	*/
	@property long shadowAtlasSize()
	{
		return getShadowAtlasSize();
	}
	/// ditto
	@property void shadowAtlasSize(long v)
	{
		setShadowAtlasSize(v);
	}
	/**
	
	*/
	@property double sharpenIntensity()
	{
		return getSharpenIntensity();
	}
	/// ditto
	@property void sharpenIntensity(double v)
	{
		setSharpenIntensity(v);
	}
	/**
	
	*/
	@property Vector2 size()
	{
		return getSize();
	}
	/// ditto
	@property void size(Vector2 v)
	{
		setSize(v);
	}
	/**
	
	*/
	@property bool sizeOverrideStretch()
	{
		return isSizeOverrideStretchEnabled();
	}
	/// ditto
	@property void sizeOverrideStretch(bool v)
	{
		setSizeOverrideStretch(v);
	}
	/**
	
	*/
	@property bool transparentBg()
	{
		return hasTransparentBackground();
	}
	/// ditto
	@property void transparentBg(bool v)
	{
		setTransparentBackground(v);
	}
	/**
	
	*/
	@property Viewport.Usage usage()
	{
		return getUsage();
	}
	/// ditto
	@property void usage(long v)
	{
		setUsage(v);
	}
	/**
	
	*/
	@property bool use32BpcDepth()
	{
		return getUse32BpcDepth();
	}
	/// ditto
	@property void use32BpcDepth(bool v)
	{
		setUse32BpcDepth(v);
	}
	/**
	
	*/
	@property World world()
	{
		return getWorld();
	}
	/// ditto
	@property void world(World v)
	{
		setWorld(v);
	}
	/**
	
	*/
	@property World2D world2d()
	{
		return getWorld2d();
	}
	/// ditto
	@property void world2d(World2D v)
	{
		setWorld2d(v);
	}
}
