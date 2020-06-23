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
import godot.inputevent;
import godot.world;
import godot.world2d;
import godot.camera;
import godot.control;
import godot.viewporttexture;
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
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("get_size_override") GodotMethod!(Vector2) getSizeOverride;
		@GodotName("get_texture") GodotMethod!(ViewportTexture) getTexture;
		@GodotName("get_update_mode") GodotMethod!(Viewport.UpdateMode) getUpdateMode;
		@GodotName("get_usage") GodotMethod!(Viewport.Usage) getUsage;
		@GodotName("get_vflip") GodotMethod!(bool) getVflip;
		@GodotName("get_viewport_rid") GodotMethod!(RID) getViewportRid;
		@GodotName("get_visible_rect") GodotMethod!(Rect2) getVisibleRect;
		@GodotName("get_world") GodotMethod!(World) getWorld;
		@GodotName("get_world_2d") GodotMethod!(World2D) getWorld2d;
		@GodotName("gui_get_drag_data") GodotMethod!(Variant) guiGetDragData;
		@GodotName("gui_has_modal_stack") GodotMethod!(bool) guiHasModalStack;
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
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
		@GodotName("set_size_override") GodotMethod!(void, bool, Vector2, Vector2) setSizeOverride;
		@GodotName("set_size_override_stretch") GodotMethod!(void, bool) setSizeOverrideStretch;
		@GodotName("set_snap_controls_to_pixels") GodotMethod!(void, bool) setSnapControlsToPixels;
		@GodotName("set_transparent_background") GodotMethod!(void, bool) setTransparentBackground;
		@GodotName("set_update_mode") GodotMethod!(void, long) setUpdateMode;
		@GodotName("set_usage") GodotMethod!(void, long) setUsage;
		@GodotName("set_use_arvr") GodotMethod!(void, bool) setUseArvr;
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
	pragma(inline, true) Viewport opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
		/**
		Always clear the render target before drawing.
		*/
		clearModeAlways = 0,
		/**
		Never clear the render target.
		*/
		clearModeNever = 1,
		/**
		Clear the render target next frame, then switch to $(D constant CLEAR_MODE_NEVER).
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
		Represents the size of the $(D renderinfo) enum.
		*/
		renderInfoMax = 6,
	}
	/// 
	enum Usage : int
	{
		/**
		Allocates all buffers needed for drawing 2D scenes. This takes less VRAM than the 3D usage modes.
		*/
		usage2d = 0,
		/**
		Allocates buffers needed for 2D scenes without allocating a buffer for screen copy. Accordingly, you cannot read from the screen. Of the $(D usage) types, this requires the least VRAM.
		*/
		usage2dNoSampling = 1,
		/**
		Allocates full buffers for drawing 3D scenes and all 3D effects including buffers needed for 2D scenes and effects.
		*/
		usage3d = 2,
		/**
		Allocates buffers needed for drawing 3D scenes. But does not allocate buffers needed for reading from the screen and post-processing effects. Saves some VRAM.
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
		This quadrant will not be used.
		*/
		shadowAtlasQuadrantSubdivDisabled = 0,
		/**
		This quadrant will only be used by one shadow map.
		*/
		shadowAtlasQuadrantSubdiv1 = 1,
		/**
		This quadrant will be split in 4 and used by up to 4 shadow maps.
		*/
		shadowAtlasQuadrantSubdiv4 = 2,
		/**
		This quadrant will be split 16 ways and used by up to 16 shadow maps.
		*/
		shadowAtlasQuadrantSubdiv16 = 3,
		/**
		This quadrant will be split 64 ways and used by up to 64 shadow maps.
		*/
		shadowAtlasQuadrantSubdiv64 = 4,
		/**
		This quadrant will be split 256 ways and used by up to 256 shadow maps. Unless the $(D shadowAtlasSize) is very high, the shadows in this quadrant will be very low resolution.
		*/
		shadowAtlasQuadrantSubdiv256 = 5,
		/**
		This quadrant will be split 1024 ways and used by up to 1024 shadow maps. Unless the $(D shadowAtlasSize) is very high, the shadows in this quadrant will be very low resolution.
		*/
		shadowAtlasQuadrantSubdiv1024 = 6,
		/**
		Represents the size of the $(D shadowatlasquadrantsubdiv) enum.
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
		Update the render target once, then switch to $(D constant UPDATE_DISABLED).
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
		Use 2x Multisample Antialiasing.
		*/
		msaa2x = 1,
		/**
		Use 4x Multisample Antialiasing.
		*/
		msaa4x = 2,
		/**
		Use 8x Multisample Antialiasing. Likely unsupported on low-end and older hardware.
		*/
		msaa8x = 3,
		/**
		Use 16x Multisample Antialiasing. Likely unsupported on medium and low-end hardware.
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
		renderInfoMax = 6,
		shadowAtlasQuadrantSubdiv1024 = 6,
		shadowAtlasQuadrantSubdivMax = 7,
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
	Returns the 3D world of the viewport, or if none the world of the parent viewport.
	*/
	Ref!World findWorld() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World)(GDNativeClassBinding.findWorld, _godot_object);
	}
	/**
	Returns the 2D world of the viewport.
	*/
	Ref!World2D findWorld2d() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World2D)(GDNativeClassBinding.findWorld2d, _godot_object);
	}
	/**
	Returns the active 3D camera.
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
	Returns the total transform of the viewport.
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
	Returns the topmost modal in the stack.
	*/
	Control getModalStackTop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(GDNativeClassBinding.getModalStackTop, _godot_object);
	}
	/**
	Returns the mouse position relative to the viewport.
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
	Returns information about the viewport from the rendering pipeline.
	*/
	long getRenderInfo(in long info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRenderInfo, _godot_object, info);
	}
	/**
	Returns the $(D shadowatlasquadrantsubdiv) of the specified quadrant.
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
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	Returns the size override set with $(D setSizeOverride).
	*/
	Vector2 getSizeOverride() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSizeOverride, _godot_object);
	}
	/**
	Returns the viewport's texture.
	$(B Note:) Due to the way OpenGL works, the resulting $(D ViewportTexture) is flipped vertically. You can use $(D Image.flipY) on the result of $(D Texture.getData) to flip it back, for example:
	
	
	var img = get_viewport().get_texture().get_data()
	img.flip_y()
	
	
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
	bool getVflip() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getVflip, _godot_object);
	}
	/**
	Returns the viewport's RID from the $(D VisualServer).
	*/
	RID getViewportRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getViewportRid, _godot_object);
	}
	/**
	Returns the visible rectangle in global screen coordinates.
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
	Returns the drag data from the GUI, that was previously returned by $(D Control.getDragData).
	*/
	Variant guiGetDragData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.guiGetDragData, _godot_object);
	}
	/**
	Returns `true` if there are visible modals on-screen.
	*/
	bool guiHasModalStack() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.guiHasModalStack, _godot_object);
	}
	/**
	Returns `true` if the viewport is currently performing a drag operation.
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
	Returns `true` if the size override is enabled. See $(D setSizeOverride).
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
	Attaches this $(D Viewport) to the root $(D Viewport) with the specified rectangle. This bypasses the need for another node to display this $(D Viewport) but makes you responsible for updating the position of this $(D Viewport) manually.
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
	Stops the input from propagating further down the $(D SceneTree).
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
	Sets the number of subdivisions to use in the specified quadrant. A higher number of subdivisions allows you to have more shadows in the scene at once, but reduces the quality of the shadows. A good practice is to have quadrants with a varying number of subdivisions and to have as few subdivisions as possible.
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
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size);
	}
	/**
	Sets the size override of the viewport. If the `enable` parameter is `true` the override is used, otherwise it uses the default size. If the size parameter is `(-1, -1)`, it won't update the size.
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
	void setUseArvr(in bool use)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseArvr, _godot_object, use);
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
	Forces update of the 2D and 3D worlds.
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
	Warps the mouse to a position relative to the viewport.
	*/
	void warpMouse(in Vector2 to_position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.warpMouse, _godot_object, to_position);
	}
	/**
	If `true`, the viewport will be used in AR/VR process.
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
	If `true`, the viewport will process 2D audio streams.
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
	If `true`, the viewport will process 3D audio streams.
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
	The overlay mode for test rendered geometry in debug purposes.
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
	If `true`, the viewport will disable 3D rendering. For actual disabling use `usage`.
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
	/**
	If `true`, the viewport will not receive input event.
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
	If `true`, the GUI controls on the viewport will lay pixel perfectly.
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
	If `true`, the viewport rendering will receive benefits from High Dynamic Range algorithm. High Dynamic Range allows the viewport to receive values that are outside the 0-1 range. In Godot HDR uses 16 bits, meaning it does not store the full range of a floating point number.
	$(B Note:) Requires $(D usage) to be set to $(D constant USAGE_3D) or $(D constant USAGE_3D_NO_EFFECTS), since HDR is not supported for 2D.
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
	The multisample anti-aliasing mode. A higher number results in smoother edges at the cost of significantly worse performance. A value of 4 is best unless targeting very high-end systems.
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
	If `true`, the viewport will use $(D World) defined in `world` property.
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
	If `true`, the objects rendered by viewport become subjects of mouse picking process.
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
	If `true`, renders the Viewport directly to the screen instead of to the root viewport. Only available in GLES2. This is a low-level optimization and should not be used in most cases. If used, reading from the Viewport or from `SCREEN_TEXTURE` becomes unavailable. For more information see $(D VisualServer.viewportSetRenderDirectToScreen).
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
	The clear mode when viewport used as a render target.
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
	The update mode when viewport used as a render target.
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
	If `true`, the result of rendering will be flipped vertically.
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
	The subdivision amount of the first quadrant on the shadow atlas.
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
	The subdivision amount of the second quadrant on the shadow atlas.
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
	The subdivision amount of the third quadrant on the shadow atlas.
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
	The subdivision amount of the fourth quadrant on the shadow atlas.
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
	The shadow atlas' resolution (used for omni and spot lights). The value will be rounded up to the nearest power of 2.
	$(B Note:) If this is set to 0, shadows won't be visible. Since user-created viewports default to a value of 0, this value must be set above 0 manually.
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
	If `true`, the size override affects stretch as well.
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
	If `true`, the viewport should render its background as transparent.
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
	The rendering mode of viewport.
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
}
