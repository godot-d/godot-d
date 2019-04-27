/**
Creates a sub-view into the screen.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.viewport;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.world2d;
import godot.world;
import godot.inputevent;
import godot.viewporttexture;
import godot.camera;
import godot.control;
/**
Creates a sub-view into the screen.

A Viewport creates a different view into the screen, or a sub-view inside another viewport. Children 2D Nodes will display on it, and children Camera 3D nodes will render on it too.
Optionally, a viewport can have its own 2D or 3D world, so they don't share what they draw with other viewports.
If a viewport is a child of a $(D ViewportContainer), it will automatically take up its size, otherwise it must be set manually.
Viewports can also choose to be audio listeners, so they generate positional audio depending on a 2D or 3D camera child of it.
Also, viewports can be assigned to different screens in case the devices have multiple screens.
Finally, viewports can also behave as render targets, in which case they will not be visible unless the associated texture is used to draw.
*/
@GodotBaseClass struct Viewport
{
	enum string _GODOT_internal_name = "Viewport";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_use_arvr") GodotMethod!(void, bool) setUseArvr;
		@GodotName("use_arvr") GodotMethod!(bool) useArvr;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("set_world_2d") GodotMethod!(void, World2D) setWorld2d;
		@GodotName("get_world_2d") GodotMethod!(World2D) getWorld2d;
		@GodotName("find_world_2d") GodotMethod!(World2D) findWorld2d;
		@GodotName("set_world") GodotMethod!(void, World) setWorld;
		@GodotName("get_world") GodotMethod!(World) getWorld;
		@GodotName("find_world") GodotMethod!(World) findWorld;
		@GodotName("set_canvas_transform") GodotMethod!(void, Transform2D) setCanvasTransform;
		@GodotName("get_canvas_transform") GodotMethod!(Transform2D) getCanvasTransform;
		@GodotName("set_global_canvas_transform") GodotMethod!(void, Transform2D) setGlobalCanvasTransform;
		@GodotName("get_global_canvas_transform") GodotMethod!(Transform2D) getGlobalCanvasTransform;
		@GodotName("get_final_transform") GodotMethod!(Transform2D) getFinalTransform;
		@GodotName("get_visible_rect") GodotMethod!(Rect2) getVisibleRect;
		@GodotName("set_transparent_background") GodotMethod!(void, bool) setTransparentBackground;
		@GodotName("has_transparent_background") GodotMethod!(bool) hasTransparentBackground;
		@GodotName("_vp_input") GodotMethod!(void, InputEvent) _vpInput;
		@GodotName("_vp_input_text") GodotMethod!(void, String) _vpInputText;
		@GodotName("_vp_unhandled_input") GodotMethod!(void, InputEvent) _vpUnhandledInput;
		@GodotName("set_size_override") GodotMethod!(void, bool, Vector2, Vector2) setSizeOverride;
		@GodotName("get_size_override") GodotMethod!(Vector2) getSizeOverride;
		@GodotName("is_size_override_enabled") GodotMethod!(bool) isSizeOverrideEnabled;
		@GodotName("set_size_override_stretch") GodotMethod!(void, bool) setSizeOverrideStretch;
		@GodotName("is_size_override_stretch_enabled") GodotMethod!(bool) isSizeOverrideStretchEnabled;
		@GodotName("set_vflip") GodotMethod!(void, bool) setVflip;
		@GodotName("get_vflip") GodotMethod!(bool) getVflip;
		@GodotName("set_clear_mode") GodotMethod!(void, long) setClearMode;
		@GodotName("get_clear_mode") GodotMethod!(Viewport.ClearMode) getClearMode;
		@GodotName("set_update_mode") GodotMethod!(void, long) setUpdateMode;
		@GodotName("get_update_mode") GodotMethod!(Viewport.UpdateMode) getUpdateMode;
		@GodotName("set_msaa") GodotMethod!(void, long) setMsaa;
		@GodotName("get_msaa") GodotMethod!(Viewport.MSAA) getMsaa;
		@GodotName("set_hdr") GodotMethod!(void, bool) setHdr;
		@GodotName("get_hdr") GodotMethod!(bool) getHdr;
		@GodotName("set_usage") GodotMethod!(void, long) setUsage;
		@GodotName("get_usage") GodotMethod!(Viewport.Usage) getUsage;
		@GodotName("set_debug_draw") GodotMethod!(void, long) setDebugDraw;
		@GodotName("get_debug_draw") GodotMethod!(Viewport.DebugDraw) getDebugDraw;
		@GodotName("get_render_info") GodotMethod!(long, long) getRenderInfo;
		@GodotName("get_texture") GodotMethod!(ViewportTexture) getTexture;
		@GodotName("set_physics_object_picking") GodotMethod!(void, bool) setPhysicsObjectPicking;
		@GodotName("get_physics_object_picking") GodotMethod!(bool) getPhysicsObjectPicking;
		@GodotName("get_viewport_rid") GodotMethod!(RID) getViewportRid;
		@GodotName("input") GodotMethod!(void, InputEvent) input;
		@GodotName("unhandled_input") GodotMethod!(void, InputEvent) unhandledInput;
		@GodotName("update_worlds") GodotMethod!(void) updateWorlds;
		@GodotName("set_use_own_world") GodotMethod!(void, bool) setUseOwnWorld;
		@GodotName("is_using_own_world") GodotMethod!(bool) isUsingOwnWorld;
		@GodotName("get_camera") GodotMethod!(Camera) getCamera;
		@GodotName("set_as_audio_listener") GodotMethod!(void, bool) setAsAudioListener;
		@GodotName("is_audio_listener") GodotMethod!(bool) isAudioListener;
		@GodotName("set_as_audio_listener_2d") GodotMethod!(void, bool) setAsAudioListener2d;
		@GodotName("is_audio_listener_2d") GodotMethod!(bool) isAudioListener2d;
		@GodotName("set_attach_to_screen_rect") GodotMethod!(void, Rect2) setAttachToScreenRect;
		@GodotName("get_mouse_position") GodotMethod!(Vector2) getMousePosition;
		@GodotName("warp_mouse") GodotMethod!(void, Vector2) warpMouse;
		@GodotName("gui_has_modal_stack") GodotMethod!(bool) guiHasModalStack;
		@GodotName("gui_get_drag_data") GodotMethod!(Variant) guiGetDragData;
		@GodotName("gui_is_dragging") GodotMethod!(bool) guiIsDragging;
		@GodotName("get_modal_stack_top") GodotMethod!(Control) getModalStackTop;
		@GodotName("set_disable_input") GodotMethod!(void, bool) setDisableInput;
		@GodotName("is_input_disabled") GodotMethod!(bool) isInputDisabled;
		@GodotName("set_disable_3d") GodotMethod!(void, bool) setDisable3d;
		@GodotName("is_3d_disabled") GodotMethod!(bool) is3dDisabled;
		@GodotName("set_keep_3d_linear") GodotMethod!(void, bool) setKeep3dLinear;
		@GodotName("get_keep_3d_linear") GodotMethod!(bool) getKeep3dLinear;
		@GodotName("_gui_show_tooltip") GodotMethod!(void) _guiShowTooltip;
		@GodotName("_gui_remove_focus") GodotMethod!(void) _guiRemoveFocus;
		@GodotName("_post_gui_grab_click_focus") GodotMethod!(void) _postGuiGrabClickFocus;
		@GodotName("set_shadow_atlas_size") GodotMethod!(void, long) setShadowAtlasSize;
		@GodotName("get_shadow_atlas_size") GodotMethod!(long) getShadowAtlasSize;
		@GodotName("set_snap_controls_to_pixels") GodotMethod!(void, bool) setSnapControlsToPixels;
		@GodotName("is_snap_controls_to_pixels_enabled") GodotMethod!(bool) isSnapControlsToPixelsEnabled;
		@GodotName("set_shadow_atlas_quadrant_subdiv") GodotMethod!(void, long, long) setShadowAtlasQuadrantSubdiv;
		@GodotName("get_shadow_atlas_quadrant_subdiv") GodotMethod!(Viewport.ShadowAtlasQuadrantSubdiv, long) getShadowAtlasQuadrantSubdiv;
		@GodotName("set_input_as_handled") GodotMethod!(void) setInputAsHandled;
		@GodotName("is_input_handled") GodotMethod!(bool) isInputHandled;
		@GodotName("set_handle_input_locally") GodotMethod!(void, bool) setHandleInputLocally;
		@GodotName("is_handling_input_locally") GodotMethod!(bool) isHandlingInputLocally;
		@GodotName("_subwindow_visibility_changed") GodotMethod!(void) _subwindowVisibilityChanged;
	}
	bool opEquals(in Viewport other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Viewport opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		Always clear the render target before drawing.
		*/
		clearModeAlways = 0,
		/**
		Never clear the render target.
		*/
		clearModeNever = 1,
		/**
		Clear the render target next frame, then switch to `CLEAR_MODE_NEVER`.
		*/
		clearModeOnlyNextFrame = 2,
	}
	/// 
	enum RenderInfo : int
	{
		/**
		Amount of objects in frame.
		*/
		renderInfoObjectsInFrame = 0,
		/**
		Amount of vertices in frame.
		*/
		renderInfoVerticesInFrame = 1,
		/**
		Amount of material changes in frame.
		*/
		renderInfoMaterialChangesInFrame = 2,
		/**
		Amount of shader changes in frame.
		*/
		renderInfoShaderChangesInFrame = 3,
		/**
		Amount of surface changes in frame.
		*/
		renderInfoSurfaceChangesInFrame = 4,
		/**
		Amount of draw calls in frame.
		*/
		renderInfoDrawCallsInFrame = 5,
		/**
		Enum limiter. Do not use it directly.
		*/
		renderInfoMax = 6,
	}
	/// 
	enum Usage : int
	{
		/**
		
		*/
		usage2d = 0,
		/**
		
		*/
		usage2dNoSampling = 1,
		/**
		
		*/
		usage3d = 2,
		/**
		
		*/
		usage3dNoEffects = 3,
	}
	/// 
	enum DebugDraw : int
	{
		/**
		Objects are displayed normally.
		*/
		debugDrawDisabled = 0,
		/**
		Objects are displayed without light information.
		*/
		debugDrawUnshaded = 1,
		/**
		Objected are displayed semi-transparent with additive blending so you can see where they intersect.
		*/
		debugDrawOverdraw = 2,
		/**
		Objects are displayed in wireframe style.
		*/
		debugDrawWireframe = 3,
	}
	/// 
	enum ShadowAtlasQuadrantSubdiv : int
	{
		/**
		
		*/
		shadowAtlasQuadrantSubdivDisabled = 0,
		/**
		
		*/
		shadowAtlasQuadrantSubdiv1 = 1,
		/**
		
		*/
		shadowAtlasQuadrantSubdiv4 = 2,
		/**
		
		*/
		shadowAtlasQuadrantSubdiv16 = 3,
		/**
		
		*/
		shadowAtlasQuadrantSubdiv64 = 4,
		/**
		
		*/
		shadowAtlasQuadrantSubdiv256 = 5,
		/**
		
		*/
		shadowAtlasQuadrantSubdiv1024 = 6,
		/**
		Enum limiter. Do not use it directly.
		*/
		shadowAtlasQuadrantSubdivMax = 7,
	}
	/// 
	enum UpdateMode : int
	{
		/**
		Do not update the render target.
		*/
		updateDisabled = 0,
		/**
		Update the render target once, then switch to `UPDATE_DISABLED`.
		*/
		updateOnce = 1,
		/**
		Update the render target only when it is visible. This is the default value.
		*/
		updateWhenVisible = 2,
		/**
		Always update the render target.
		*/
		updateAlways = 3,
	}
	/// 
	enum MSAA : int
	{
		/**
		Multisample anti-aliasing mode disabled. This is the default value.
		*/
		msaaDisabled = 0,
		/**
		
		*/
		msaa2x = 1,
		/**
		
		*/
		msaa4x = 2,
		/**
		
		*/
		msaa8x = 3,
		/**
		
		*/
		msaa16x = 4,
	}
	/// 
	enum Constants : int
	{
		debugDrawDisabled = 0,
		shadowAtlasQuadrantSubdivDisabled = 0,
		updateDisabled = 0,
		renderInfoObjectsInFrame = 0,
		msaaDisabled = 0,
		clearModeAlways = 0,
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
		shadowAtlasQuadrantSubdiv256 = 5,
		renderInfoDrawCallsInFrame = 5,
		renderInfoMax = 6,
		shadowAtlasQuadrantSubdiv1024 = 6,
		shadowAtlasQuadrantSubdivMax = 7,
	}
	/**
	
	*/
	void setUseArvr(in bool use)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseArvr, _godot_object, use);
	}
	/**
	
	*/
	bool useArvr()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.useArvr, _godot_object);
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
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSize, _godot_object);
	}
	/**
	
	*/
	void setWorld2d(World2D world_2d)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWorld2d, _godot_object, world_2d);
	}
	/**
	
	*/
	Ref!World2D getWorld2d() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World2D)(_classBinding.getWorld2d, _godot_object);
	}
	/**
	Returns the 2D world of the viewport.
	*/
	Ref!World2D findWorld2d() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World2D)(_classBinding.findWorld2d, _godot_object);
	}
	/**
	
	*/
	void setWorld(World world)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWorld, _godot_object, world);
	}
	/**
	
	*/
	Ref!World getWorld() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World)(_classBinding.getWorld, _godot_object);
	}
	/**
	Returns the 3D world of the viewport, or if none the world of the parent viewport.
	*/
	Ref!World findWorld() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World)(_classBinding.findWorld, _godot_object);
	}
	/**
	
	*/
	void setCanvasTransform(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCanvasTransform, _godot_object, xform);
	}
	/**
	
	*/
	Transform2D getCanvasTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getCanvasTransform, _godot_object);
	}
	/**
	
	*/
	void setGlobalCanvasTransform(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlobalCanvasTransform, _godot_object, xform);
	}
	/**
	
	*/
	Transform2D getGlobalCanvasTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getGlobalCanvasTransform, _godot_object);
	}
	/**
	Returns the total transform of the viewport.
	*/
	Transform2D getFinalTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getFinalTransform, _godot_object);
	}
	/**
	Returns the visible rectangle in global screen coordinates.
	*/
	Rect2 getVisibleRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getVisibleRect, _godot_object);
	}
	/**
	
	*/
	void setTransparentBackground(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransparentBackground, _godot_object, enable);
	}
	/**
	
	*/
	bool hasTransparentBackground() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasTransparentBackground, _godot_object);
	}
	/**
	
	*/
	void _vpInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_vp_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _vpInputText(in String text)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_vp_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _vpUnhandledInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_vp_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Sets the size override of the viewport. If the `enable` parameter is `true` the override is used, otherwise it uses the default size. If the size parameter is `(-1, -1)`, it won't update the size.
	*/
	void setSizeOverride(in bool enable, in Vector2 size = Vector2(-1, -1), in Vector2 margin = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSizeOverride, _godot_object, enable, size, margin);
	}
	/**
	Returns the size override set with $(D setSizeOverride).
	*/
	Vector2 getSizeOverride() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSizeOverride, _godot_object);
	}
	/**
	Returns `true` if the size override is enabled. See $(D setSizeOverride).
	*/
	bool isSizeOverrideEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSizeOverrideEnabled, _godot_object);
	}
	/**
	If `true`, the size override affects stretch as well.
	*/
	void setSizeOverrideStretch(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSizeOverrideStretch, _godot_object, enabled);
	}
	/**
	Returns `true` if the size stretch override is enabled. See $(D setSizeOverrideStretch).
	*/
	bool isSizeOverrideStretchEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSizeOverrideStretchEnabled, _godot_object);
	}
	/**
	
	*/
	void setVflip(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVflip, _godot_object, enable);
	}
	/**
	
	*/
	bool getVflip() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getVflip, _godot_object);
	}
	/**
	
	*/
	void setClearMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClearMode, _godot_object, mode);
	}
	/**
	
	*/
	Viewport.ClearMode getClearMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.ClearMode)(_classBinding.getClearMode, _godot_object);
	}
	/**
	
	*/
	void setUpdateMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUpdateMode, _godot_object, mode);
	}
	/**
	
	*/
	Viewport.UpdateMode getUpdateMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.UpdateMode)(_classBinding.getUpdateMode, _godot_object);
	}
	/**
	
	*/
	void setMsaa(in long msaa)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMsaa, _godot_object, msaa);
	}
	/**
	
	*/
	Viewport.MSAA getMsaa() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.MSAA)(_classBinding.getMsaa, _godot_object);
	}
	/**
	
	*/
	void setHdr(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHdr, _godot_object, enable);
	}
	/**
	
	*/
	bool getHdr() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getHdr, _godot_object);
	}
	/**
	
	*/
	void setUsage(in long usage)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUsage, _godot_object, usage);
	}
	/**
	
	*/
	Viewport.Usage getUsage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.Usage)(_classBinding.getUsage, _godot_object);
	}
	/**
	
	*/
	void setDebugDraw(in long debug_draw)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDebugDraw, _godot_object, debug_draw);
	}
	/**
	
	*/
	Viewport.DebugDraw getDebugDraw() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.DebugDraw)(_classBinding.getDebugDraw, _godot_object);
	}
	/**
	Returns information about the viewport from the rendering pipeline.
	*/
	long getRenderInfo(in long info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRenderInfo, _godot_object, info);
	}
	/**
	Returns the viewport's texture. Note that due to the way OpenGL works, the resulting $(D ViewportTexture) is flipped vertically. You can use $(D Image.flipY) on the result of $(D Texture.getData) to flip it back, for example:
	
	
	var img = get_viewport().get_texture().get_data()
	img.flip_y()
	
	
	*/
	Ref!ViewportTexture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ViewportTexture)(_classBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	void setPhysicsObjectPicking(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPhysicsObjectPicking, _godot_object, enable);
	}
	/**
	
	*/
	bool getPhysicsObjectPicking()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getPhysicsObjectPicking, _godot_object);
	}
	/**
	Returns the viewport's RID from the $(D VisualServer).
	*/
	RID getViewportRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getViewportRid, _godot_object);
	}
	/**
	
	*/
	void input(InputEvent local_event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.input, _godot_object, local_event);
	}
	/**
	
	*/
	void unhandledInput(InputEvent local_event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unhandledInput, _godot_object, local_event);
	}
	/**
	Forces update of the 2D and 3D worlds.
	*/
	void updateWorlds()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.updateWorlds, _godot_object);
	}
	/**
	
	*/
	void setUseOwnWorld(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseOwnWorld, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsingOwnWorld() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingOwnWorld, _godot_object);
	}
	/**
	Returns the active 3D camera.
	*/
	Camera getCamera() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera)(_classBinding.getCamera, _godot_object);
	}
	/**
	
	*/
	void setAsAudioListener(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAsAudioListener, _godot_object, enable);
	}
	/**
	
	*/
	bool isAudioListener() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAudioListener, _godot_object);
	}
	/**
	
	*/
	void setAsAudioListener2d(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAsAudioListener2d, _godot_object, enable);
	}
	/**
	
	*/
	bool isAudioListener2d() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAudioListener2d, _godot_object);
	}
	/**
	
	*/
	void setAttachToScreenRect(in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAttachToScreenRect, _godot_object, rect);
	}
	/**
	Returns the mouse position relative to the viewport.
	*/
	Vector2 getMousePosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getMousePosition, _godot_object);
	}
	/**
	Warps the mouse to a position relative to the viewport.
	*/
	void warpMouse(in Vector2 to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.warpMouse, _godot_object, to_position);
	}
	/**
	Returns `true` if there are visible modals on-screen.
	*/
	bool guiHasModalStack() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.guiHasModalStack, _godot_object);
	}
	/**
	Returns the drag data from the GUI, that was previously returned by $(D Control.getDragData).
	*/
	Variant guiGetDragData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.guiGetDragData, _godot_object);
	}
	/**
	
	*/
	bool guiIsDragging() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.guiIsDragging, _godot_object);
	}
	/**
	Returns the topmost modal in the stack.
	*/
	Control getModalStackTop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(_classBinding.getModalStackTop, _godot_object);
	}
	/**
	
	*/
	void setDisableInput(in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisableInput, _godot_object, disable);
	}
	/**
	
	*/
	bool isInputDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInputDisabled, _godot_object);
	}
	/**
	
	*/
	void setDisable3d(in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisable3d, _godot_object, disable);
	}
	/**
	
	*/
	bool is3dDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.is3dDisabled, _godot_object);
	}
	/**
	
	*/
	void setKeep3dLinear(in bool keep_3d_linear)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setKeep3dLinear, _godot_object, keep_3d_linear);
	}
	/**
	
	*/
	bool getKeep3dLinear() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getKeep3dLinear, _godot_object);
	}
	/**
	
	*/
	void _guiShowTooltip()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_gui_show_tooltip");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _guiRemoveFocus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_gui_remove_focus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _postGuiGrabClickFocus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_post_gui_grab_click_focus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setShadowAtlasSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowAtlasSize, _godot_object, size);
	}
	/**
	
	*/
	long getShadowAtlasSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getShadowAtlasSize, _godot_object);
	}
	/**
	
	*/
	void setSnapControlsToPixels(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSnapControlsToPixels, _godot_object, enabled);
	}
	/**
	
	*/
	bool isSnapControlsToPixelsEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSnapControlsToPixelsEnabled, _godot_object);
	}
	/**
	
	*/
	void setShadowAtlasQuadrantSubdiv(in long quadrant, in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShadowAtlasQuadrantSubdiv, _godot_object, quadrant, subdiv);
	}
	/**
	
	*/
	Viewport.ShadowAtlasQuadrantSubdiv getShadowAtlasQuadrantSubdiv(in long quadrant) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Viewport.ShadowAtlasQuadrantSubdiv)(_classBinding.getShadowAtlasQuadrantSubdiv, _godot_object, quadrant);
	}
	/**
	
	*/
	void setInputAsHandled()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputAsHandled, _godot_object);
	}
	/**
	
	*/
	bool isInputHandled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInputHandled, _godot_object);
	}
	/**
	
	*/
	void setHandleInputLocally(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHandleInputLocally, _godot_object, enable);
	}
	/**
	
	*/
	bool isHandlingInputLocally() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isHandlingInputLocally, _godot_object);
	}
	/**
	
	*/
	void _subwindowVisibilityChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_subwindow_visibility_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	If `true`, the viewport will be used in AR/VR process. Default value: `false`.
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
	The width and height of viewport.
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
	If `true`, the viewport will use $(D World) defined in `world` property. Default value: `false`.
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
	The custom $(D World) which can be used as 3D environment source.
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
	The custom $(D World2D) which can be used as 2D environment source.
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
	/**
	If `true`, the viewport should render its background as transparent. Default value: `false`.
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
	The multisample anti-aliasing mode. Default value: `MSAA_DISABLED`.
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
	If `true`, the viewport rendering will receive benefits from High Dynamic Range algorithm. Default value: `true`.
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
	If `true`, the viewport will disable 3D rendering. For actual disabling use `usage`. Default value: `false`.
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
	If `true`, the result after 3D rendering will not have a linear to sRGB color conversion applied. This is important when the viewport is used as a render target where the result is used as a texture on a 3D object rendered in another viewport. It is also important if the viewport is used to create data that is not color based (noise, heightmaps, pickmaps, etc.). Do not enable this when the viewport is used as a texture on a 2D object or if the viewport is your final output.
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
	The rendering mode of viewport. Default value: `USAGE_3D`.
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
	The overlay mode for test rendered geometry in debug purposes. Default value: `DEBUG_DRAW_DISABLED`.
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
	If `true`, the result of rendering will be flipped vertically. Default value: `false`.
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
	The clear mode when viewport used as a render target. Default value: `CLEAR_MODE_ALWAYS`.
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
	The update mode when viewport used as a render target. Default value: `UPDATE_WHEN_VISIBLE`.
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
	If `true`, the viewport will process 2D audio streams. Default value: `false`.
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
	If `true`, the viewport will process 3D audio streams. Default value: `false`.
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
	If `true`, the objects rendered by viewport become subjects of mouse picking process. Default value: `false`.
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
	If `true`, the viewport will not receive input event. Default value: `false`.
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
	If `true`, the GUI controls on the viewport will lay pixel perfectly. Default value: `true`.
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
	The resolution of shadow atlas. Both width and height is equal to one value.
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
	The subdivision amount of first quadrant on shadow atlas. Default value: `SHADOW_ATLAS_QUADRANT_SUBDIV_4`.
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
	The subdivision amount of second quadrant on shadow atlas. Default value: `SHADOW_ATLAS_QUADRANT_SUBDIV_4`.
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
	The subdivision amount of third quadrant on shadow atlas. Default value: `SHADOW_ATLAS_QUADRANT_SUBDIV_16`.
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
	The subdivision amount of fourth quadrant on shadow atlas. Default value: `SHADOW_ATLAS_QUADRANT_SUBDIV_64`.
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
	The canvas transform of the viewport, useful for changing the on-screen positions of all child $(D CanvasItem)s. This is relative to the global canvas transform of the viewport.
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
	The global canvas transform of the viewport. The canvas transform is relative to this.
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
}
