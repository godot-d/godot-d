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
/**
Creates a sub-view into the screen.

A Viewport creates a different view into the screen, or a sub-view inside another viewport. Children 2D Nodes will display on it, and children Camera 3D nodes will render on it too.
Optionally, a viewport can have its own 2D or 3D world, so they don't share what they draw with other viewports.
If a viewport is a child of a $(D Control), it will automatically take up its same rect and position, otherwise they must be set manually.
Viewports can also choose to be audio listeners, so they generate positional audio depending on a 2D or 3D camera child of it.
Also, viewports can be assigned to different screens in case the devices have multiple screens.
Finally, viewports can also behave as render targets, in which case they will not be visible unless the associated texture is used to draw.
*/
@GodotBaseClass struct Viewport
{
	static immutable string _GODOT_internal_name = "Viewport";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	/// 
	enum ClearMode : int
	{
		/**
		
		*/
		clearModeAlways = 0,
		/**
		
		*/
		clearModeNever = 1,
		/**
		
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
		Update the render target once, then switch to `UPDATE_DISABLED`
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
		clearModeAlways = 0,
		usage2d = 0,
		updateDisabled = 0,
		debugDrawDisabled = 0,
		shadowAtlasQuadrantSubdivDisabled = 0,
		msaaDisabled = 0,
		renderInfoObjectsInFrame = 0,
		renderInfoVerticesInFrame = 1,
		usage2dNoSampling = 1,
		shadowAtlasQuadrantSubdiv1 = 1,
		clearModeNever = 1,
		msaa2x = 1,
		debugDrawUnshaded = 1,
		updateOnce = 1,
		msaa4x = 2,
		shadowAtlasQuadrantSubdiv4 = 2,
		clearModeOnlyNextFrame = 2,
		debugDrawOverdraw = 2,
		updateWhenVisible = 2,
		renderInfoMaterialChangesInFrame = 2,
		usage3d = 2,
		renderInfoShaderChangesInFrame = 3,
		updateAlways = 3,
		shadowAtlasQuadrantSubdiv16 = 3,
		msaa8x = 3,
		debugDrawWireframe = 3,
		usage3dNoEffects = 3,
		msaa16x = 4,
		shadowAtlasQuadrantSubdiv64 = 4,
		renderInfoSurfaceChangesInFrame = 4,
		shadowAtlasQuadrantSubdiv256 = 5,
		renderInfoDrawCallsInFrame = 5,
		renderInfoMax = 6,
		shadowAtlasQuadrantSubdiv1024 = 6,
		shadowAtlasQuadrantSubdivMax = 7,
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_arvr;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_arvr") = _GODOT_set_use_arvr;
	/**
	
	*/
	void setUseArvr(in bool use)
	{
		_GODOT_set_use_arvr.bind("Viewport", "set_use_arvr");
		ptrcall!(void)(_GODOT_set_use_arvr, _godot_object, use);
	}
	package(godot) static GodotMethod!(bool) _GODOT_use_arvr;
	package(godot) alias _GODOT_methodBindInfo(string name : "use_arvr") = _GODOT_use_arvr;
	/**
	
	*/
	bool useArvr()
	{
		_GODOT_use_arvr.bind("Viewport", "use_arvr");
		return ptrcall!(bool)(_GODOT_use_arvr, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		_GODOT_set_size.bind("Viewport", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	
	*/
	Vector2 getSize() const
	{
		_GODOT_get_size.bind("Viewport", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, World2D) _GODOT_set_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_world_2d") = _GODOT_set_world_2d;
	/**
	
	*/
	void setWorld2d(World2D world_2d)
	{
		_GODOT_set_world_2d.bind("Viewport", "set_world_2d");
		ptrcall!(void)(_GODOT_set_world_2d, _godot_object, world_2d);
	}
	package(godot) static GodotMethod!(World2D) _GODOT_get_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_2d") = _GODOT_get_world_2d;
	/**
	
	*/
	Ref!World2D getWorld2d() const
	{
		_GODOT_get_world_2d.bind("Viewport", "get_world_2d");
		return ptrcall!(World2D)(_GODOT_get_world_2d, _godot_object);
	}
	package(godot) static GodotMethod!(World2D) _GODOT_find_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_world_2d") = _GODOT_find_world_2d;
	/**
	Return the 2D world of the viewport.
	*/
	Ref!World2D findWorld2d() const
	{
		_GODOT_find_world_2d.bind("Viewport", "find_world_2d");
		return ptrcall!(World2D)(_GODOT_find_world_2d, _godot_object);
	}
	package(godot) static GodotMethod!(void, World) _GODOT_set_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_world") = _GODOT_set_world;
	/**
	
	*/
	void setWorld(World world)
	{
		_GODOT_set_world.bind("Viewport", "set_world");
		ptrcall!(void)(_GODOT_set_world, _godot_object, world);
	}
	package(godot) static GodotMethod!(World) _GODOT_get_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world") = _GODOT_get_world;
	/**
	
	*/
	Ref!World getWorld() const
	{
		_GODOT_get_world.bind("Viewport", "get_world");
		return ptrcall!(World)(_GODOT_get_world, _godot_object);
	}
	package(godot) static GodotMethod!(World) _GODOT_find_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_world") = _GODOT_find_world;
	/**
	Return the 3D world of the viewport, or if no such present, the one of the parent viewport.
	*/
	Ref!World findWorld() const
	{
		_GODOT_find_world.bind("Viewport", "find_world");
		return ptrcall!(World)(_GODOT_find_world, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_canvas_transform") = _GODOT_set_canvas_transform;
	/**
	
	*/
	void setCanvasTransform(in Transform2D xform)
	{
		_GODOT_set_canvas_transform.bind("Viewport", "set_canvas_transform");
		ptrcall!(void)(_GODOT_set_canvas_transform, _godot_object, xform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas_transform") = _GODOT_get_canvas_transform;
	/**
	
	*/
	Transform2D getCanvasTransform() const
	{
		_GODOT_get_canvas_transform.bind("Viewport", "get_canvas_transform");
		return ptrcall!(Transform2D)(_GODOT_get_canvas_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_global_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_canvas_transform") = _GODOT_set_global_canvas_transform;
	/**
	
	*/
	void setGlobalCanvasTransform(in Transform2D xform)
	{
		_GODOT_set_global_canvas_transform.bind("Viewport", "set_global_canvas_transform");
		ptrcall!(void)(_GODOT_set_global_canvas_transform, _godot_object, xform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_global_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_canvas_transform") = _GODOT_get_global_canvas_transform;
	/**
	
	*/
	Transform2D getGlobalCanvasTransform() const
	{
		_GODOT_get_global_canvas_transform.bind("Viewport", "get_global_canvas_transform");
		return ptrcall!(Transform2D)(_GODOT_get_global_canvas_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_final_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_final_transform") = _GODOT_get_final_transform;
	/**
	Get the total transform of the viewport.
	*/
	Transform2D getFinalTransform() const
	{
		_GODOT_get_final_transform.bind("Viewport", "get_final_transform");
		return ptrcall!(Transform2D)(_GODOT_get_final_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_visible_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_rect") = _GODOT_get_visible_rect;
	/**
	Return the final, visible rect in global screen coordinates.
	*/
	Rect2 getVisibleRect() const
	{
		_GODOT_get_visible_rect.bind("Viewport", "get_visible_rect");
		return ptrcall!(Rect2)(_GODOT_get_visible_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_transparent_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transparent_background") = _GODOT_set_transparent_background;
	/**
	
	*/
	void setTransparentBackground(in bool enable)
	{
		_GODOT_set_transparent_background.bind("Viewport", "set_transparent_background");
		ptrcall!(void)(_GODOT_set_transparent_background, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_transparent_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_transparent_background") = _GODOT_has_transparent_background;
	/**
	
	*/
	bool hasTransparentBackground() const
	{
		_GODOT_has_transparent_background.bind("Viewport", "has_transparent_background");
		return ptrcall!(bool)(_GODOT_has_transparent_background, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__vp_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_vp_input") = _GODOT__vp_input;
	/**
	
	*/
	void _vpInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_vp_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__vp_input_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "_vp_input_text") = _GODOT__vp_input_text;
	/**
	
	*/
	void _vpInputText(StringArg0)(in StringArg0 text)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(text);
		String _GODOT_method_name = String("_vp_input_text");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__vp_unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_vp_unhandled_input") = _GODOT__vp_unhandled_input;
	/**
	
	*/
	void _vpUnhandledInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_vp_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool, Vector2, Vector2) _GODOT_set_size_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size_override") = _GODOT_set_size_override;
	/**
	Set the size override of the viewport. If the enable parameter is true, it would use the override, otherwise it would use the default size. If the size parameter is equal to `(-1, -1)`, it won't update the size.
	*/
	void setSizeOverride(in bool enable, in Vector2 size = Vector2(-1, -1), in Vector2 margin = Vector2(0, 0))
	{
		_GODOT_set_size_override.bind("Viewport", "set_size_override");
		ptrcall!(void)(_GODOT_set_size_override, _godot_object, enable, size, margin);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size_override") = _GODOT_get_size_override;
	/**
	Get the size override set with $(D setSizeOverride).
	*/
	Vector2 getSizeOverride() const
	{
		_GODOT_get_size_override.bind("Viewport", "get_size_override");
		return ptrcall!(Vector2)(_GODOT_get_size_override, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_size_override_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_size_override_enabled") = _GODOT_is_size_override_enabled;
	/**
	Get the enabled status of the size override set with $(D setSizeOverride).
	*/
	bool isSizeOverrideEnabled() const
	{
		_GODOT_is_size_override_enabled.bind("Viewport", "is_size_override_enabled");
		return ptrcall!(bool)(_GODOT_is_size_override_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_size_override_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size_override_stretch") = _GODOT_set_size_override_stretch;
	/**
	Set whether the size override affects stretch as well.
	*/
	void setSizeOverrideStretch(in bool enabled)
	{
		_GODOT_set_size_override_stretch.bind("Viewport", "set_size_override_stretch");
		ptrcall!(void)(_GODOT_set_size_override_stretch, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_size_override_stretch_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_size_override_stretch_enabled") = _GODOT_is_size_override_stretch_enabled;
	/**
	Get the enabled status of the size stretch override set with $(D setSizeOverrideStretch).
	*/
	bool isSizeOverrideStretchEnabled() const
	{
		_GODOT_is_size_override_stretch_enabled.bind("Viewport", "is_size_override_stretch_enabled");
		return ptrcall!(bool)(_GODOT_is_size_override_stretch_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_vflip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vflip") = _GODOT_set_vflip;
	/**
	
	*/
	void setVflip(in bool enable)
	{
		_GODOT_set_vflip.bind("Viewport", "set_vflip");
		ptrcall!(void)(_GODOT_set_vflip, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_vflip;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vflip") = _GODOT_get_vflip;
	/**
	
	*/
	bool getVflip() const
	{
		_GODOT_get_vflip.bind("Viewport", "get_vflip");
		return ptrcall!(bool)(_GODOT_get_vflip, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_clear_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clear_mode") = _GODOT_set_clear_mode;
	/**
	
	*/
	void setClearMode(in long mode)
	{
		_GODOT_set_clear_mode.bind("Viewport", "set_clear_mode");
		ptrcall!(void)(_GODOT_set_clear_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Viewport.ClearMode) _GODOT_get_clear_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_clear_mode") = _GODOT_get_clear_mode;
	/**
	
	*/
	Viewport.ClearMode getClearMode() const
	{
		_GODOT_get_clear_mode.bind("Viewport", "get_clear_mode");
		return ptrcall!(Viewport.ClearMode)(_GODOT_get_clear_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_update_mode") = _GODOT_set_update_mode;
	/**
	
	*/
	void setUpdateMode(in long mode)
	{
		_GODOT_set_update_mode.bind("Viewport", "set_update_mode");
		ptrcall!(void)(_GODOT_set_update_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Viewport.UpdateMode) _GODOT_get_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_update_mode") = _GODOT_get_update_mode;
	/**
	
	*/
	Viewport.UpdateMode getUpdateMode() const
	{
		_GODOT_get_update_mode.bind("Viewport", "get_update_mode");
		return ptrcall!(Viewport.UpdateMode)(_GODOT_get_update_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_msaa;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_msaa") = _GODOT_set_msaa;
	/**
	
	*/
	void setMsaa(in long msaa)
	{
		_GODOT_set_msaa.bind("Viewport", "set_msaa");
		ptrcall!(void)(_GODOT_set_msaa, _godot_object, msaa);
	}
	package(godot) static GodotMethod!(Viewport.MSAA) _GODOT_get_msaa;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_msaa") = _GODOT_get_msaa;
	/**
	
	*/
	Viewport.MSAA getMsaa() const
	{
		_GODOT_get_msaa.bind("Viewport", "get_msaa");
		return ptrcall!(Viewport.MSAA)(_GODOT_get_msaa, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_hdr;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hdr") = _GODOT_set_hdr;
	/**
	
	*/
	void setHdr(in bool enable)
	{
		_GODOT_set_hdr.bind("Viewport", "set_hdr");
		ptrcall!(void)(_GODOT_set_hdr, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_hdr;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hdr") = _GODOT_get_hdr;
	/**
	
	*/
	bool getHdr() const
	{
		_GODOT_get_hdr.bind("Viewport", "get_hdr");
		return ptrcall!(bool)(_GODOT_get_hdr, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_usage") = _GODOT_set_usage;
	/**
	
	*/
	void setUsage(in long usage)
	{
		_GODOT_set_usage.bind("Viewport", "set_usage");
		ptrcall!(void)(_GODOT_set_usage, _godot_object, usage);
	}
	package(godot) static GodotMethod!(Viewport.Usage) _GODOT_get_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_usage") = _GODOT_get_usage;
	/**
	
	*/
	Viewport.Usage getUsage() const
	{
		_GODOT_get_usage.bind("Viewport", "get_usage");
		return ptrcall!(Viewport.Usage)(_GODOT_get_usage, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_debug_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_debug_draw") = _GODOT_set_debug_draw;
	/**
	
	*/
	void setDebugDraw(in long debug_draw)
	{
		_GODOT_set_debug_draw.bind("Viewport", "set_debug_draw");
		ptrcall!(void)(_GODOT_set_debug_draw, _godot_object, debug_draw);
	}
	package(godot) static GodotMethod!(Viewport.DebugDraw) _GODOT_get_debug_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_debug_draw") = _GODOT_get_debug_draw;
	/**
	
	*/
	Viewport.DebugDraw getDebugDraw() const
	{
		_GODOT_get_debug_draw.bind("Viewport", "get_debug_draw");
		return ptrcall!(Viewport.DebugDraw)(_GODOT_get_debug_draw, _godot_object);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_render_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_render_info") = _GODOT_get_render_info;
	/**
	Get the specific information about the viewport from rendering pipeline.
	*/
	long getRenderInfo(in long info)
	{
		_GODOT_get_render_info.bind("Viewport", "get_render_info");
		return ptrcall!(long)(_GODOT_get_render_info, _godot_object, info);
	}
	package(godot) static GodotMethod!(ViewportTexture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	Get the viewport's texture, for use with various objects that you want to texture with the viewport.
	*/
	Ref!ViewportTexture getTexture() const
	{
		_GODOT_get_texture.bind("Viewport", "get_texture");
		return ptrcall!(ViewportTexture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_physics_object_picking;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_physics_object_picking") = _GODOT_set_physics_object_picking;
	/**
	
	*/
	void setPhysicsObjectPicking(in bool enable)
	{
		_GODOT_set_physics_object_picking.bind("Viewport", "set_physics_object_picking");
		ptrcall!(void)(_GODOT_set_physics_object_picking, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_physics_object_picking;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_physics_object_picking") = _GODOT_get_physics_object_picking;
	/**
	
	*/
	bool getPhysicsObjectPicking()
	{
		_GODOT_get_physics_object_picking.bind("Viewport", "get_physics_object_picking");
		return ptrcall!(bool)(_GODOT_get_physics_object_picking, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_viewport_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_viewport_rid") = _GODOT_get_viewport_rid;
	/**
	Get the viewport RID from the $(D VisualServer).
	*/
	RID getViewportRid() const
	{
		_GODOT_get_viewport_rid.bind("Viewport", "get_viewport_rid");
		return ptrcall!(RID)(_GODOT_get_viewport_rid, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "input") = _GODOT_input;
	/**
	
	*/
	void input(InputEvent local_event)
	{
		_GODOT_input.bind("Viewport", "input");
		ptrcall!(void)(_GODOT_input, _godot_object, local_event);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_unhandled_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "unhandled_input") = _GODOT_unhandled_input;
	/**
	
	*/
	void unhandledInput(InputEvent local_event)
	{
		_GODOT_unhandled_input.bind("Viewport", "unhandled_input");
		ptrcall!(void)(_GODOT_unhandled_input, _godot_object, local_event);
	}
	package(godot) static GodotMethod!(void) _GODOT_update_worlds;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_worlds") = _GODOT_update_worlds;
	/**
	Force update of the 2D and 3D worlds.
	*/
	void updateWorlds()
	{
		_GODOT_update_worlds.bind("Viewport", "update_worlds");
		ptrcall!(void)(_GODOT_update_worlds, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_own_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_own_world") = _GODOT_set_use_own_world;
	/**
	
	*/
	void setUseOwnWorld(in bool enable)
	{
		_GODOT_set_use_own_world.bind("Viewport", "set_use_own_world");
		ptrcall!(void)(_GODOT_set_use_own_world, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_own_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_own_world") = _GODOT_is_using_own_world;
	/**
	
	*/
	bool isUsingOwnWorld() const
	{
		_GODOT_is_using_own_world.bind("Viewport", "is_using_own_world");
		return ptrcall!(bool)(_GODOT_is_using_own_world, _godot_object);
	}
	package(godot) static GodotMethod!(Camera) _GODOT_get_camera;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_camera") = _GODOT_get_camera;
	/**
	Return the active 3D camera.
	*/
	Camera getCamera() const
	{
		_GODOT_get_camera.bind("Viewport", "get_camera");
		return ptrcall!(Camera)(_GODOT_get_camera, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_as_audio_listener;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_audio_listener") = _GODOT_set_as_audio_listener;
	/**
	
	*/
	void setAsAudioListener(in bool enable)
	{
		_GODOT_set_as_audio_listener.bind("Viewport", "set_as_audio_listener");
		ptrcall!(void)(_GODOT_set_as_audio_listener, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_audio_listener;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_audio_listener") = _GODOT_is_audio_listener;
	/**
	
	*/
	bool isAudioListener() const
	{
		_GODOT_is_audio_listener.bind("Viewport", "is_audio_listener");
		return ptrcall!(bool)(_GODOT_is_audio_listener, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_as_audio_listener_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_audio_listener_2d") = _GODOT_set_as_audio_listener_2d;
	/**
	
	*/
	void setAsAudioListener2d(in bool enable)
	{
		_GODOT_set_as_audio_listener_2d.bind("Viewport", "set_as_audio_listener_2d");
		ptrcall!(void)(_GODOT_set_as_audio_listener_2d, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_audio_listener_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_audio_listener_2d") = _GODOT_is_audio_listener_2d;
	/**
	
	*/
	bool isAudioListener2d() const
	{
		_GODOT_is_audio_listener_2d.bind("Viewport", "is_audio_listener_2d");
		return ptrcall!(bool)(_GODOT_is_audio_listener_2d, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_attach_to_screen_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_attach_to_screen_rect") = _GODOT_set_attach_to_screen_rect;
	/**
	
	*/
	void setAttachToScreenRect(in Rect2 rect)
	{
		_GODOT_set_attach_to_screen_rect.bind("Viewport", "set_attach_to_screen_rect");
		ptrcall!(void)(_GODOT_set_attach_to_screen_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_mouse_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mouse_position") = _GODOT_get_mouse_position;
	/**
	Get the mouse position, relative to the viewport.
	*/
	Vector2 getMousePosition() const
	{
		_GODOT_get_mouse_position.bind("Viewport", "get_mouse_position");
		return ptrcall!(Vector2)(_GODOT_get_mouse_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_warp_mouse;
	package(godot) alias _GODOT_methodBindInfo(string name : "warp_mouse") = _GODOT_warp_mouse;
	/**
	Warp the mouse to a position, relative to the viewport.
	*/
	void warpMouse(in Vector2 to_position)
	{
		_GODOT_warp_mouse.bind("Viewport", "warp_mouse");
		ptrcall!(void)(_GODOT_warp_mouse, _godot_object, to_position);
	}
	package(godot) static GodotMethod!(bool) _GODOT_gui_has_modal_stack;
	package(godot) alias _GODOT_methodBindInfo(string name : "gui_has_modal_stack") = _GODOT_gui_has_modal_stack;
	/**
	Returns whether there are shown modals on-screen.
	*/
	bool guiHasModalStack() const
	{
		_GODOT_gui_has_modal_stack.bind("Viewport", "gui_has_modal_stack");
		return ptrcall!(bool)(_GODOT_gui_has_modal_stack, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_gui_get_drag_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "gui_get_drag_data") = _GODOT_gui_get_drag_data;
	/**
	Returns the drag data from the GUI, that was previously returned by $(D Control.getDragData).
	*/
	Variant guiGetDragData() const
	{
		_GODOT_gui_get_drag_data.bind("Viewport", "gui_get_drag_data");
		return ptrcall!(Variant)(_GODOT_gui_get_drag_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disable_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disable_input") = _GODOT_set_disable_input;
	/**
	
	*/
	void setDisableInput(in bool disable)
	{
		_GODOT_set_disable_input.bind("Viewport", "set_disable_input");
		ptrcall!(void)(_GODOT_set_disable_input, _godot_object, disable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_input_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_input_disabled") = _GODOT_is_input_disabled;
	/**
	
	*/
	bool isInputDisabled() const
	{
		_GODOT_is_input_disabled.bind("Viewport", "is_input_disabled");
		return ptrcall!(bool)(_GODOT_is_input_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disable_3d;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disable_3d") = _GODOT_set_disable_3d;
	/**
	
	*/
	void setDisable3d(in bool disable)
	{
		_GODOT_set_disable_3d.bind("Viewport", "set_disable_3d");
		ptrcall!(void)(_GODOT_set_disable_3d, _godot_object, disable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_3d_disabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_3d_disabled") = _GODOT_is_3d_disabled;
	/**
	
	*/
	bool is3dDisabled() const
	{
		_GODOT_is_3d_disabled.bind("Viewport", "is_3d_disabled");
		return ptrcall!(bool)(_GODOT_is_3d_disabled, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__gui_show_tooltip;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_show_tooltip") = _GODOT__gui_show_tooltip;
	/**
	
	*/
	void _guiShowTooltip()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_gui_show_tooltip");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__gui_remove_focus;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_remove_focus") = _GODOT__gui_remove_focus;
	/**
	
	*/
	void _guiRemoveFocus()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_gui_remove_focus");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_shadow_atlas_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_atlas_size") = _GODOT_set_shadow_atlas_size;
	/**
	
	*/
	void setShadowAtlasSize(in long size)
	{
		_GODOT_set_shadow_atlas_size.bind("Viewport", "set_shadow_atlas_size");
		ptrcall!(void)(_GODOT_set_shadow_atlas_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_shadow_atlas_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_atlas_size") = _GODOT_get_shadow_atlas_size;
	/**
	
	*/
	long getShadowAtlasSize() const
	{
		_GODOT_get_shadow_atlas_size.bind("Viewport", "get_shadow_atlas_size");
		return ptrcall!(long)(_GODOT_get_shadow_atlas_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_snap_controls_to_pixels;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_snap_controls_to_pixels") = _GODOT_set_snap_controls_to_pixels;
	/**
	
	*/
	void setSnapControlsToPixels(in bool enabled)
	{
		_GODOT_set_snap_controls_to_pixels.bind("Viewport", "set_snap_controls_to_pixels");
		ptrcall!(void)(_GODOT_set_snap_controls_to_pixels, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_snap_controls_to_pixels_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_snap_controls_to_pixels_enabled") = _GODOT_is_snap_controls_to_pixels_enabled;
	/**
	
	*/
	bool isSnapControlsToPixelsEnabled() const
	{
		_GODOT_is_snap_controls_to_pixels_enabled.bind("Viewport", "is_snap_controls_to_pixels_enabled");
		return ptrcall!(bool)(_GODOT_is_snap_controls_to_pixels_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_shadow_atlas_quadrant_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_atlas_quadrant_subdiv") = _GODOT_set_shadow_atlas_quadrant_subdiv;
	/**
	
	*/
	void setShadowAtlasQuadrantSubdiv(in long quadrant, in long subdiv)
	{
		_GODOT_set_shadow_atlas_quadrant_subdiv.bind("Viewport", "set_shadow_atlas_quadrant_subdiv");
		ptrcall!(void)(_GODOT_set_shadow_atlas_quadrant_subdiv, _godot_object, quadrant, subdiv);
	}
	package(godot) static GodotMethod!(Viewport.ShadowAtlasQuadrantSubdiv, long) _GODOT_get_shadow_atlas_quadrant_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_atlas_quadrant_subdiv") = _GODOT_get_shadow_atlas_quadrant_subdiv;
	/**
	
	*/
	Viewport.ShadowAtlasQuadrantSubdiv getShadowAtlasQuadrantSubdiv(in long quadrant) const
	{
		_GODOT_get_shadow_atlas_quadrant_subdiv.bind("Viewport", "get_shadow_atlas_quadrant_subdiv");
		return ptrcall!(Viewport.ShadowAtlasQuadrantSubdiv)(_GODOT_get_shadow_atlas_quadrant_subdiv, _godot_object, quadrant);
	}
	/**
	If `true` the viewport will be used in AR/VR process. Default value: `false`.
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
	If `true` the viewport will use $(D World) defined in `world` property. Default value: `false`.
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
	If `true` the viewport should render its background as transparent. Default value: `false`.
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
	If `true` the viewport rendering will receive benefits from High Dynamic Range algorithm. Default value: `true`.
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
	If `true` the viewport will disable 3D rendering. For actual disabling use `usage`. Default value: `false`.
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
	If `true` the result of rendering will be flipped vertically. Default value: `false`.
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
	If `true` the viewport will process 2D audio streams. Default value: `false`.
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
	If `true` the viewport will process 3D audio streams. Default value: `false`.
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
	If `true` the objects rendered by viewport become subjects of mouse picking process. Default value: `false`.
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
	If `true` the viewport will not receive input event. Default value: `false`.
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
	If `true` the GUI controls on the viewport will lay pixel perfectly. Default value: `true`.
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
