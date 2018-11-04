/**
Base class of anything 2D.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.canvasitem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.node;
import godot.texture;
import godot.stylebox;
import godot.font;
import godot.mesh;
import godot.world2d;
import godot.material;
import godot.inputevent;
/**
Base class of anything 2D.

Canvas items are laid out in a tree and children inherit and extend the transform of their parent. CanvasItem is extended by $(D Control), for anything GUI related, and by $(D Node2D) for anything 2D engine related.
Any CanvasItem can draw. For this, the "update" function must be called, then NOTIFICATION_DRAW will be received on idle time to request redraw. Because of this, canvas items don't need to be redraw on every frame, improving the performance significantly. Several functions for drawing on the CanvasItem are provided (see draw_* functions). They can only be used inside the notification, signal or _draw() overrides function, though.
Canvas items are draw in tree order. By default, children are on top of their parents so a root CanvasItem will be drawn behind everything (this can be changed per item though).
Canvas items can also be hidden (hiding also their subtree). They provide many means for changing standard parameters such as opacity (for it and the subtree) and self opacity, blend mode.
Ultimately, a transform notification can be requested, which will notify the node that its global position changed in case the parent tree changed.
*/
@GodotBaseClass struct CanvasItem
{
	enum string _GODOT_internal_name = "CanvasItem";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_draw") GodotMethod!(void) _draw;
		@GodotName("_toplevel_raise_self") GodotMethod!(void) _toplevelRaiseSelf;
		@GodotName("_update_callback") GodotMethod!(void) _updateCallback;
		@GodotName("_edit_set_state") GodotMethod!(void, Dictionary) _editSetState;
		@GodotName("_edit_get_state") GodotMethod!(Dictionary) _editGetState;
		@GodotName("_edit_set_position") GodotMethod!(void, Vector2) _editSetPosition;
		@GodotName("_edit_get_position") GodotMethod!(Vector2) _editGetPosition;
		@GodotName("_edit_set_scale") GodotMethod!(void, Vector2) _editSetScale;
		@GodotName("_edit_get_scale") GodotMethod!(Vector2) _editGetScale;
		@GodotName("_edit_set_rect") GodotMethod!(void, Rect2) _editSetRect;
		@GodotName("_edit_get_rect") GodotMethod!(Rect2) _editGetRect;
		@GodotName("_edit_use_rect") GodotMethod!(bool) _editUseRect;
		@GodotName("_edit_set_rotation") GodotMethod!(void, double) _editSetRotation;
		@GodotName("_edit_get_rotation") GodotMethod!(double) _editGetRotation;
		@GodotName("_edit_use_rotation") GodotMethod!(bool) _editUseRotation;
		@GodotName("_edit_set_pivot") GodotMethod!(void, Vector2) _editSetPivot;
		@GodotName("_edit_get_pivot") GodotMethod!(Vector2) _editGetPivot;
		@GodotName("_edit_use_pivot") GodotMethod!(bool) _editUsePivot;
		@GodotName("get_canvas_item") GodotMethod!(RID) getCanvasItem;
		@GodotName("set_visible") GodotMethod!(void, bool) setVisible;
		@GodotName("is_visible") GodotMethod!(bool) isVisible;
		@GodotName("is_visible_in_tree") GodotMethod!(bool) isVisibleInTree;
		@GodotName("show") GodotMethod!(void) show;
		@GodotName("hide") GodotMethod!(void) hide;
		@GodotName("update") GodotMethod!(void) update;
		@GodotName("set_as_toplevel") GodotMethod!(void, bool) setAsToplevel;
		@GodotName("is_set_as_toplevel") GodotMethod!(bool) isSetAsToplevel;
		@GodotName("set_light_mask") GodotMethod!(void, long) setLightMask;
		@GodotName("get_light_mask") GodotMethod!(long) getLightMask;
		@GodotName("set_modulate") GodotMethod!(void, Color) setModulate;
		@GodotName("get_modulate") GodotMethod!(Color) getModulate;
		@GodotName("set_self_modulate") GodotMethod!(void, Color) setSelfModulate;
		@GodotName("get_self_modulate") GodotMethod!(Color) getSelfModulate;
		@GodotName("set_draw_behind_parent") GodotMethod!(void, bool) setDrawBehindParent;
		@GodotName("is_draw_behind_parent_enabled") GodotMethod!(bool) isDrawBehindParentEnabled;
		@GodotName("_set_on_top") GodotMethod!(void, bool) _setOnTop;
		@GodotName("_is_on_top") GodotMethod!(bool) _isOnTop;
		@GodotName("draw_line") GodotMethod!(void, Vector2, Vector2, Color, double, bool) drawLine;
		@GodotName("draw_polyline") GodotMethod!(void, PoolVector2Array, Color, double, bool) drawPolyline;
		@GodotName("draw_polyline_colors") GodotMethod!(void, PoolVector2Array, PoolColorArray, double, bool) drawPolylineColors;
		@GodotName("draw_multiline") GodotMethod!(void, PoolVector2Array, Color, double, bool) drawMultiline;
		@GodotName("draw_multiline_colors") GodotMethod!(void, PoolVector2Array, PoolColorArray, double, bool) drawMultilineColors;
		@GodotName("draw_rect") GodotMethod!(void, Rect2, Color, bool) drawRect;
		@GodotName("draw_circle") GodotMethod!(void, Vector2, double, Color) drawCircle;
		@GodotName("draw_texture") GodotMethod!(void, Texture, Vector2, Color, Texture) drawTexture;
		@GodotName("draw_texture_rect") GodotMethod!(void, Texture, Rect2, bool, Color, bool, Texture) drawTextureRect;
		@GodotName("draw_texture_rect_region") GodotMethod!(void, Texture, Rect2, Rect2, Color, bool, Texture, bool) drawTextureRectRegion;
		@GodotName("draw_style_box") GodotMethod!(void, StyleBox, Rect2) drawStyleBox;
		@GodotName("draw_primitive") GodotMethod!(void, PoolVector2Array, PoolColorArray, PoolVector2Array, Texture, double, Texture) drawPrimitive;
		@GodotName("draw_polygon") GodotMethod!(void, PoolVector2Array, PoolColorArray, PoolVector2Array, Texture, Texture, bool) drawPolygon;
		@GodotName("draw_colored_polygon") GodotMethod!(void, PoolVector2Array, Color, PoolVector2Array, Texture, Texture, bool) drawColoredPolygon;
		@GodotName("draw_string") GodotMethod!(void, Font, Vector2, String, Color, long) drawString;
		@GodotName("draw_char") GodotMethod!(double, Font, Vector2, String, String, Color) drawChar;
		@GodotName("draw_mesh") GodotMethod!(void, Mesh, Texture, Texture) drawMesh;
		@GodotName("draw_multimesh") GodotMethod!(void, Mesh, Texture, Texture) drawMultimesh;
		@GodotName("draw_set_transform") GodotMethod!(void, Vector2, double, Vector2) drawSetTransform;
		@GodotName("draw_set_transform_matrix") GodotMethod!(void, Transform2D) drawSetTransformMatrix;
		@GodotName("get_transform") GodotMethod!(Transform2D) getTransform;
		@GodotName("get_global_transform") GodotMethod!(Transform2D) getGlobalTransform;
		@GodotName("get_global_transform_with_canvas") GodotMethod!(Transform2D) getGlobalTransformWithCanvas;
		@GodotName("get_viewport_transform") GodotMethod!(Transform2D) getViewportTransform;
		@GodotName("get_viewport_rect") GodotMethod!(Rect2) getViewportRect;
		@GodotName("get_canvas_transform") GodotMethod!(Transform2D) getCanvasTransform;
		@GodotName("get_local_mouse_position") GodotMethod!(Vector2) getLocalMousePosition;
		@GodotName("get_global_mouse_position") GodotMethod!(Vector2) getGlobalMousePosition;
		@GodotName("get_canvas") GodotMethod!(RID) getCanvas;
		@GodotName("get_world_2d") GodotMethod!(World2D) getWorld2d;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("set_use_parent_material") GodotMethod!(void, bool) setUseParentMaterial;
		@GodotName("get_use_parent_material") GodotMethod!(bool) getUseParentMaterial;
		@GodotName("set_notify_local_transform") GodotMethod!(void, bool) setNotifyLocalTransform;
		@GodotName("is_local_transform_notification_enabled") GodotMethod!(bool) isLocalTransformNotificationEnabled;
		@GodotName("set_notify_transform") GodotMethod!(void, bool) setNotifyTransform;
		@GodotName("is_transform_notification_enabled") GodotMethod!(bool) isTransformNotificationEnabled;
		@GodotName("force_update_transform") GodotMethod!(void) forceUpdateTransform;
		@GodotName("make_canvas_position_local") GodotMethod!(Vector2, Vector2) makeCanvasPositionLocal;
		@GodotName("make_input_local") GodotMethod!(InputEvent, InputEvent) makeInputLocal;
	}
	bool opEquals(in CanvasItem other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasItem opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CanvasItem _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CanvasItem");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasItem)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum BlendMode : int
	{
		/**
		Mix blending mode. Colors are assumed to be independent of the alpha (opacity) value.
		*/
		blendModeMix = 0,
		/**
		Additive blending mode.
		*/
		blendModeAdd = 1,
		/**
		Subtractive blending mode.
		*/
		blendModeSub = 2,
		/**
		Multiplicative blending mode.
		*/
		blendModeMul = 3,
		/**
		Mix blending mode. Colors are assumed to be premultiplied by the alpha (opacity) value.
		*/
		blendModePremultAlpha = 4,
		/**
		Disable blending mode. Colors including alpha are written as is. Only applicable for render targets with a transparent background. No lighting will be applied.
		*/
		blendModeDisabled = 5,
	}
	/// 
	enum Constants : int
	{
		blendModeMix = 0,
		blendModeAdd = 1,
		blendModeSub = 2,
		blendModeMul = 3,
		blendModePremultAlpha = 4,
		blendModeDisabled = 5,
		/**
		Canvas item transform has changed. Notification is only received if enabled by $(D setNotifyTransform) or $(D setNotifyLocalTransform).
		*/
		notificationTransformChanged = 29,
		/**
		CanvasItem is requested to draw.
		*/
		notificationDraw = 30,
		/**
		Canvas item visibility has changed.
		*/
		notificationVisibilityChanged = 31,
		/**
		Canvas item has entered the canvas.
		*/
		notificationEnterCanvas = 32,
		/**
		Canvas item has exited the canvas.
		*/
		notificationExitCanvas = 33,
	}
	/**
	Called (if exists) to draw the canvas item.
	*/
	void _draw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _toplevelRaiseSelf()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_toplevel_raise_self");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateCallback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editSetState(in Dictionary state)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(state);
		String _GODOT_method_name = String("_edit_set_state");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Dictionary _editGetState() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_state");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	void _editSetPosition(in Vector2 position)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(position);
		String _GODOT_method_name = String("_edit_set_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Vector2 _editGetPosition() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_position");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	
	*/
	void _editSetScale(in Vector2 scale)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(scale);
		String _GODOT_method_name = String("_edit_set_scale");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Vector2 _editGetScale() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_scale");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	
	*/
	void _editSetRect(in Rect2 rect)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(rect);
		String _GODOT_method_name = String("_edit_set_rect");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Rect2 _editGetRect() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_rect");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Rect2);
	}
	/**
	
	*/
	bool _editUseRect() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_use_rect");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _editSetRotation(in double degrees)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(degrees);
		String _GODOT_method_name = String("_edit_set_rotation");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double _editGetRotation() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_rotation");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	bool _editUseRotation() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_use_rotation");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _editSetPivot(in Vector2 pivot)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(pivot);
		String _GODOT_method_name = String("_edit_set_pivot");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Vector2 _editGetPivot() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_pivot");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	
	*/
	bool _editUsePivot() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_use_pivot");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Return the canvas item RID used by $(D VisualServer) for this item.
	*/
	RID getCanvasItem() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getCanvasItem, _godot_object);
	}
	/**
	
	*/
	void setVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVisible, _godot_object, visible);
	}
	/**
	
	*/
	bool isVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isVisible, _godot_object);
	}
	/**
	Returns `true` if the node is present in the $(D SceneTree), its $(D visible) property is `true` and its inherited visibility is also `true`.
	*/
	bool isVisibleInTree() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isVisibleInTree, _godot_object);
	}
	/**
	Show the CanvasItem currently hidden.
	*/
	void show()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.show, _godot_object);
	}
	/**
	Hide the CanvasItem currently visible.
	*/
	void hide()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.hide, _godot_object);
	}
	/**
	Queue the CanvasItem for update. `NOTIFICATION_DRAW` will be called on idle time to request redraw.
	*/
	void update()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.update, _godot_object);
	}
	/**
	Sets as top level. This means that it will not inherit transform from parent canvas items.
	*/
	void setAsToplevel(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAsToplevel, _godot_object, enable);
	}
	/**
	Return if set as toplevel. See $(D setAsToplevel).
	*/
	bool isSetAsToplevel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSetAsToplevel, _godot_object);
	}
	/**
	
	*/
	void setLightMask(in long light_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLightMask, _godot_object, light_mask);
	}
	/**
	
	*/
	long getLightMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLightMask, _godot_object);
	}
	/**
	
	*/
	void setModulate(in Color modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setModulate, _godot_object, modulate);
	}
	/**
	
	*/
	Color getModulate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getModulate, _godot_object);
	}
	/**
	
	*/
	void setSelfModulate(in Color self_modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSelfModulate, _godot_object, self_modulate);
	}
	/**
	
	*/
	Color getSelfModulate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getSelfModulate, _godot_object);
	}
	/**
	
	*/
	void setDrawBehindParent(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawBehindParent, _godot_object, enable);
	}
	/**
	
	*/
	bool isDrawBehindParentEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDrawBehindParentEnabled, _godot_object);
	}
	/**
	
	*/
	void _setOnTop(in bool on_top)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(on_top);
		String _GODOT_method_name = String("_set_on_top");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool _isOnTop() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_on_top");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Draws a line from a 2D point to another, with a given color and width. It can be optionally antialiased.
	*/
	void drawLine(in Vector2 from, in Vector2 to, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawLine, _godot_object, from, to, color, width, antialiased);
	}
	/**
	Draws interconnected line segments with a uniform `color` and `width` and optional antialiasing.
	*/
	void drawPolyline(in PoolVector2Array points, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawPolyline, _godot_object, points, color, width, antialiased);
	}
	/**
	Draws interconnected line segments with a uniform `width`, segment-by-segment coloring, and optional antialiasing. Colors assigned to line segments match by index between `points` and `colors`.
	*/
	void drawPolylineColors(in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawPolylineColors, _godot_object, points, colors, width, antialiased);
	}
	/**
	Draws multiple, parallel lines with a uniform `color` and `width` and optional antialiasing.
	*/
	void drawMultiline(in PoolVector2Array points, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawMultiline, _godot_object, points, color, width, antialiased);
	}
	/**
	Draws multiple, parallel lines with a uniform `width`, segment-by-segment coloring, and optional antialiasing. Colors assigned to line segments match by index between `points` and `colors`.
	*/
	void drawMultilineColors(in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawMultilineColors, _godot_object, points, colors, width, antialiased);
	}
	/**
	Draws a colored rectangle.
	*/
	void drawRect(in Rect2 rect, in Color color, in bool filled = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawRect, _godot_object, rect, color, filled);
	}
	/**
	Draws a colored circle.
	*/
	void drawCircle(in Vector2 position, in double radius, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawCircle, _godot_object, position, radius, color);
	}
	/**
	Draws a texture at a given position.
	*/
	void drawTexture(Texture texture, in Vector2 position, in Color modulate = Color(1,1,1,1), Texture normal_map = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawTexture, _godot_object, texture, position, modulate, normal_map);
	}
	/**
	Draws a textured rectangle at a given position, optionally modulated by a color. Transpose swaps the x and y coordinates when reading the texture.
	*/
	void drawTextureRect(Texture texture, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawTextureRect, _godot_object, texture, rect, tile, modulate, transpose, normal_map);
	}
	/**
	Draws a textured rectangle region at a given position, optionally modulated by a color. Transpose swaps the x and y coordinates when reading the texture.
	*/
	void drawTextureRectRegion(Texture texture, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init, in bool clip_uv = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawTextureRectRegion, _godot_object, texture, rect, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	/**
	Draws a styled rectangle.
	*/
	void drawStyleBox(StyleBox style_box, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawStyleBox, _godot_object, style_box, rect);
	}
	/**
	Draws a custom primitive, 1 point for a point, 2 points for a line, 3 points for a triangle and 4 points for a quad.
	*/
	void drawPrimitive(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs, Texture texture = Texture.init, in double width = 1, Texture normal_map = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawPrimitive, _godot_object, points, colors, uvs, texture, width, normal_map);
	}
	/**
	Draws a polygon of any amount of points, convex or concave.
	*/
	void drawPolygon(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, Texture texture = Texture.init, Texture normal_map = Texture.init, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawPolygon, _godot_object, points, colors, uvs, texture, normal_map, antialiased);
	}
	/**
	Draws a colored polygon of any amount of points, convex or concave.
	*/
	void drawColoredPolygon(in PoolVector2Array points, in Color color, in PoolVector2Array uvs = PoolVector2Array.init, Texture texture = Texture.init, Texture normal_map = Texture.init, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawColoredPolygon, _godot_object, points, color, uvs, texture, normal_map, antialiased);
	}
	/**
	Draws a string using a custom font.
	*/
	void drawString(Font font, in Vector2 position, in String text, in Color modulate = Color(1,1,1,1), in long clip_w = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawString, _godot_object, font, position, text, modulate, clip_w);
	}
	/**
	Draws a string character using a custom font. Returns the advance, depending on the char width and kerning with an optional next char.
	*/
	double drawChar(Font font, in Vector2 position, in String _char, in String next, in Color modulate = Color(1,1,1,1))
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.drawChar, _godot_object, font, position, _char, next, modulate);
	}
	/**
	
	*/
	void drawMesh(Mesh mesh, Texture texture, Texture normal_map = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawMesh, _godot_object, mesh, texture, normal_map);
	}
	/**
	
	*/
	void drawMultimesh(Mesh mesh, Texture texture, Texture normal_map = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawMultimesh, _godot_object, mesh, texture, normal_map);
	}
	/**
	Sets a custom transform for drawing via components. Anything drawn afterwards will be transformed by this.
	*/
	void drawSetTransform(in Vector2 position, in double rotation, in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawSetTransform, _godot_object, position, rotation, scale);
	}
	/**
	Sets a custom transform for drawing via matrix. Anything drawn afterwards will be transformed by this.
	*/
	void drawSetTransformMatrix(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.drawSetTransformMatrix, _godot_object, xform);
	}
	/**
	Get the transform matrix of this item.
	*/
	Transform2D getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getTransform, _godot_object);
	}
	/**
	Get the global transform matrix of this item.
	*/
	Transform2D getGlobalTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getGlobalTransform, _godot_object);
	}
	/**
	Get the global transform matrix of this item in relation to the canvas.
	*/
	Transform2D getGlobalTransformWithCanvas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getGlobalTransformWithCanvas, _godot_object);
	}
	/**
	Get this item's transform in relation to the viewport.
	*/
	Transform2D getViewportTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getViewportTransform, _godot_object);
	}
	/**
	Get the viewport's boundaries as a $(D Rect2).
	*/
	Rect2 getViewportRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getViewportRect, _godot_object);
	}
	/**
	Get the transform matrix of this item's canvas.
	*/
	Transform2D getCanvasTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getCanvasTransform, _godot_object);
	}
	/**
	Get the mouse position relative to this item's position.
	*/
	Vector2 getLocalMousePosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getLocalMousePosition, _godot_object);
	}
	/**
	Get the global position of the mouse.
	*/
	Vector2 getGlobalMousePosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getGlobalMousePosition, _godot_object);
	}
	/**
	Return the $(D RID) of the $(D World2D) canvas where this item is in.
	*/
	RID getCanvas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getCanvas, _godot_object);
	}
	/**
	Get the $(D World2D) where this item is in.
	*/
	Ref!World2D getWorld2d() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World2D)(_classBinding.getWorld2d, _godot_object);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaterial, _godot_object, material);
	}
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(_classBinding.getMaterial, _godot_object);
	}
	/**
	
	*/
	void setUseParentMaterial(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseParentMaterial, _godot_object, enable);
	}
	/**
	
	*/
	bool getUseParentMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getUseParentMaterial, _godot_object);
	}
	/**
	If `enable` is `true`, children will be updated with local transform data.
	*/
	void setNotifyLocalTransform(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNotifyLocalTransform, _godot_object, enable);
	}
	/**
	Returns `true` if local transform notifications are communicated to children.
	*/
	bool isLocalTransformNotificationEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isLocalTransformNotificationEnabled, _godot_object);
	}
	/**
	If `enable` is `true`, children will be updated with global transform data.
	*/
	void setNotifyTransform(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNotifyTransform, _godot_object, enable);
	}
	/**
	Returns `true` if global transform notifications are communicated to children.
	*/
	bool isTransformNotificationEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isTransformNotificationEnabled, _godot_object);
	}
	/**
	
	*/
	void forceUpdateTransform()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.forceUpdateTransform, _godot_object);
	}
	/**
	Assigns `screen_point` as this node's new local transform.
	*/
	Vector2 makeCanvasPositionLocal(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.makeCanvasPositionLocal, _godot_object, screen_point);
	}
	/**
	Transformations issued by `event`'s inputs are applied in local space instead of global space.
	*/
	Ref!InputEvent makeInputLocal(InputEvent event) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(InputEvent)(_classBinding.makeInputLocal, _godot_object, event);
	}
	/**
	If `true` this `CanvasItem` is drawn. Default value: `true`.
	*/
	@property bool visible()
	{
		return isVisible();
	}
	/// ditto
	@property void visible(bool v)
	{
		setVisible(v);
	}
	/**
	The color applied to textures on this `CanvasItem`. Default value: `Color(1, 1, 1, 1)` (opaque "white").
	*/
	@property Color modulate()
	{
		return getModulate();
	}
	/// ditto
	@property void modulate(Color v)
	{
		setModulate(v);
	}
	/**
	The color applied to textures on this `CanvasItem`. This is not inherited by children `CanvasItem`s. Default value: `Color(1, 1, 1, 1)` (opaque "white")..
	*/
	@property Color selfModulate()
	{
		return getSelfModulate();
	}
	/// ditto
	@property void selfModulate(Color v)
	{
		setSelfModulate(v);
	}
	/**
	If `true` the object draws behind its parent. Default value: `false`.
	*/
	@property bool showBehindParent()
	{
		return isDrawBehindParentEnabled();
	}
	/// ditto
	@property void showBehindParent(bool v)
	{
		setDrawBehindParent(v);
	}
	/**
	If `true` the object draws on top of its parent. Default value: `true`.
	*/
	@property bool showOnTop()
	{
		return _isOnTop();
	}
	/// ditto
	@property void showOnTop(bool v)
	{
		_setOnTop(v);
	}
	/**
	The rendering layers in which this `CanvasItem` responds to $(D Light2D) nodes. Default value: `1`.
	*/
	@property long lightMask()
	{
		return getLightMask();
	}
	/// ditto
	@property void lightMask(long v)
	{
		setLightMask(v);
	}
	/**
	If `true` the parent `CanvasItem`'s $(D material) property is used as this one's material. Default value: `false`.
	*/
	@property bool useParentMaterial()
	{
		return getUseParentMaterial();
	}
	/// ditto
	@property void useParentMaterial(bool v)
	{
		setUseParentMaterial(v);
	}
}
