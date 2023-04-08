/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.canvasitem;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.node;
import godot.font;
import godot.texture;
import godot.mesh;
import godot.multimesh;
import godot.stylebox;
import godot.material;
import godot.world2d;
import godot.inputevent;
/**

*/
@GodotBaseClass struct CanvasItem
{
	package(godot) enum string _GODOT_internal_name = "CanvasItem";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_draw") GodotMethod!(void) _draw;
		@GodotName("_edit_get_pivot") GodotMethod!(Vector2) _editGetPivot;
		@GodotName("_edit_get_position") GodotMethod!(Vector2) _editGetPosition;
		@GodotName("_edit_get_rect") GodotMethod!(Rect2) _editGetRect;
		@GodotName("_edit_get_rotation") GodotMethod!(double) _editGetRotation;
		@GodotName("_edit_get_scale") GodotMethod!(Vector2) _editGetScale;
		@GodotName("_edit_get_state") GodotMethod!(Dictionary) _editGetState;
		@GodotName("_edit_get_transform") GodotMethod!(Transform2D) _editGetTransform;
		@GodotName("_edit_set_pivot") GodotMethod!(void, Vector2) _editSetPivot;
		@GodotName("_edit_set_position") GodotMethod!(void, Vector2) _editSetPosition;
		@GodotName("_edit_set_rect") GodotMethod!(void, Rect2) _editSetRect;
		@GodotName("_edit_set_rotation") GodotMethod!(void, double) _editSetRotation;
		@GodotName("_edit_set_scale") GodotMethod!(void, Vector2) _editSetScale;
		@GodotName("_edit_set_state") GodotMethod!(void, Dictionary) _editSetState;
		@GodotName("_edit_use_pivot") GodotMethod!(bool) _editUsePivot;
		@GodotName("_edit_use_rect") GodotMethod!(bool) _editUseRect;
		@GodotName("_edit_use_rotation") GodotMethod!(bool) _editUseRotation;
		@GodotName("_is_on_top") GodotMethod!(bool) _isOnTop;
		@GodotName("_set_on_top") GodotMethod!(void, bool) _setOnTop;
		@GodotName("_toplevel_raise_self") GodotMethod!(void) _toplevelRaiseSelf;
		@GodotName("_toplevel_visibility_changed") GodotMethod!(void, bool) _toplevelVisibilityChanged;
		@GodotName("_update_callback") GodotMethod!(void) _updateCallback;
		@GodotName("draw_arc") GodotMethod!(void, Vector2, double, double, double, long, Color, double, bool) drawArc;
		@GodotName("draw_char") GodotMethod!(double, Font, Vector2, String, String, Color) drawChar;
		@GodotName("draw_circle") GodotMethod!(void, Vector2, double, Color) drawCircle;
		@GodotName("draw_colored_polygon") GodotMethod!(void, PoolVector2Array, Color, PoolVector2Array, Texture, Texture, bool) drawColoredPolygon;
		@GodotName("draw_line") GodotMethod!(void, Vector2, Vector2, Color, double, bool) drawLine;
		@GodotName("draw_mesh") GodotMethod!(void, Mesh, Texture, Texture, Transform2D, Color) drawMesh;
		@GodotName("draw_multiline") GodotMethod!(void, PoolVector2Array, Color, double, bool) drawMultiline;
		@GodotName("draw_multiline_colors") GodotMethod!(void, PoolVector2Array, PoolColorArray, double, bool) drawMultilineColors;
		@GodotName("draw_multimesh") GodotMethod!(void, MultiMesh, Texture, Texture) drawMultimesh;
		@GodotName("draw_polygon") GodotMethod!(void, PoolVector2Array, PoolColorArray, PoolVector2Array, Texture, Texture, bool) drawPolygon;
		@GodotName("draw_polyline") GodotMethod!(void, PoolVector2Array, Color, double, bool) drawPolyline;
		@GodotName("draw_polyline_colors") GodotMethod!(void, PoolVector2Array, PoolColorArray, double, bool) drawPolylineColors;
		@GodotName("draw_primitive") GodotMethod!(void, PoolVector2Array, PoolColorArray, PoolVector2Array, Texture, double, Texture) drawPrimitive;
		@GodotName("draw_rect") GodotMethod!(void, Rect2, Color, bool, double, bool) drawRect;
		@GodotName("draw_set_transform") GodotMethod!(void, Vector2, double, Vector2) drawSetTransform;
		@GodotName("draw_set_transform_matrix") GodotMethod!(void, Transform2D) drawSetTransformMatrix;
		@GodotName("draw_string") GodotMethod!(void, Font, Vector2, String, Color, long) drawString;
		@GodotName("draw_style_box") GodotMethod!(void, StyleBox, Rect2) drawStyleBox;
		@GodotName("draw_texture") GodotMethod!(void, Texture, Vector2, Color, Texture) drawTexture;
		@GodotName("draw_texture_rect") GodotMethod!(void, Texture, Rect2, bool, Color, bool, Texture) drawTextureRect;
		@GodotName("draw_texture_rect_region") GodotMethod!(void, Texture, Rect2, Rect2, Color, bool, Texture, bool) drawTextureRectRegion;
		@GodotName("force_update_transform") GodotMethod!(void) forceUpdateTransform;
		@GodotName("get_canvas") GodotMethod!(RID) getCanvas;
		@GodotName("get_canvas_item") GodotMethod!(RID) getCanvasItem;
		@GodotName("get_canvas_transform") GodotMethod!(Transform2D) getCanvasTransform;
		@GodotName("get_global_mouse_position") GodotMethod!(Vector2) getGlobalMousePosition;
		@GodotName("get_global_transform") GodotMethod!(Transform2D) getGlobalTransform;
		@GodotName("get_global_transform_with_canvas") GodotMethod!(Transform2D) getGlobalTransformWithCanvas;
		@GodotName("get_light_mask") GodotMethod!(long) getLightMask;
		@GodotName("get_local_mouse_position") GodotMethod!(Vector2) getLocalMousePosition;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_modulate") GodotMethod!(Color) getModulate;
		@GodotName("get_self_modulate") GodotMethod!(Color) getSelfModulate;
		@GodotName("get_transform") GodotMethod!(Transform2D) getTransform;
		@GodotName("get_use_parent_material") GodotMethod!(bool) getUseParentMaterial;
		@GodotName("get_viewport_rect") GodotMethod!(Rect2) getViewportRect;
		@GodotName("get_viewport_transform") GodotMethod!(Transform2D) getViewportTransform;
		@GodotName("get_world_2d") GodotMethod!(World2D) getWorld2d;
		@GodotName("hide") GodotMethod!(void) hide;
		@GodotName("is_draw_behind_parent_enabled") GodotMethod!(bool) isDrawBehindParentEnabled;
		@GodotName("is_local_transform_notification_enabled") GodotMethod!(bool) isLocalTransformNotificationEnabled;
		@GodotName("is_set_as_toplevel") GodotMethod!(bool) isSetAsToplevel;
		@GodotName("is_transform_notification_enabled") GodotMethod!(bool) isTransformNotificationEnabled;
		@GodotName("is_visible") GodotMethod!(bool) isVisible;
		@GodotName("is_visible_in_tree") GodotMethod!(bool) isVisibleInTree;
		@GodotName("make_canvas_position_local") GodotMethod!(Vector2, Vector2) makeCanvasPositionLocal;
		@GodotName("make_input_local") GodotMethod!(InputEvent, InputEvent) makeInputLocal;
		@GodotName("set_as_toplevel") GodotMethod!(void, bool) setAsToplevel;
		@GodotName("set_draw_behind_parent") GodotMethod!(void, bool) setDrawBehindParent;
		@GodotName("set_light_mask") GodotMethod!(void, long) setLightMask;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("set_modulate") GodotMethod!(void, Color) setModulate;
		@GodotName("set_notify_local_transform") GodotMethod!(void, bool) setNotifyLocalTransform;
		@GodotName("set_notify_transform") GodotMethod!(void, bool) setNotifyTransform;
		@GodotName("set_self_modulate") GodotMethod!(void, Color) setSelfModulate;
		@GodotName("set_use_parent_material") GodotMethod!(void, bool) setUseParentMaterial;
		@GodotName("set_visible") GodotMethod!(void, bool) setVisible;
		@GodotName("show") GodotMethod!(void) show;
		@GodotName("update") GodotMethod!(void) update;
	}
	/// 
	pragma(inline, true) bool opEquals(in CanvasItem other) const
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
	/// Construct a new instance of CanvasItem.
	/// Note: use `memnew!CanvasItem` instead.
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
		/** */
		blendModeMix = 0,
		/** */
		blendModeAdd = 1,
		/** */
		blendModeSub = 2,
		/** */
		blendModeMul = 3,
		/** */
		blendModePremultAlpha = 4,
		/** */
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
		/** */
		notificationDraw = 30,
		/** */
		notificationVisibilityChanged = 31,
		/** */
		notificationEnterCanvas = 32,
		/** */
		notificationExitCanvas = 33,
		/** */
		notificationLocalTransformChanged = 35,
		/** */
		notificationTransformChanged = 2000,
	}
	/**
	
	*/
	void _draw()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Vector2 _editGetPivot() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_get_pivot");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	
	*/
	Vector2 _editGetPosition() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_get_position");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	
	*/
	Rect2 _editGetRect() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_get_rect");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Rect2);
	}
	/**
	
	*/
	double _editGetRotation() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_get_rotation");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	Vector2 _editGetScale() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_get_scale");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	/**
	
	*/
	Dictionary _editGetState() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_get_state");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	Transform2D _editGetTransform() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_get_transform");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Transform2D);
	}
	/**
	
	*/
	void _editSetPivot(in Vector2 pivot)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(pivot);
		String _GODOT_method_name = String("_edit_set_pivot");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editSetPosition(in Vector2 position)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(position);
		String _GODOT_method_name = String("_edit_set_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editSetRect(in Rect2 rect)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(rect);
		String _GODOT_method_name = String("_edit_set_rect");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editSetRotation(in double degrees)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(degrees);
		String _GODOT_method_name = String("_edit_set_rotation");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editSetScale(in Vector2 scale)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(scale);
		String _GODOT_method_name = String("_edit_set_scale");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editSetState(in Dictionary state)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(state);
		String _GODOT_method_name = String("_edit_set_state");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool _editUsePivot() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_use_pivot");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool _editUseRect() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_use_rect");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool _editUseRotation() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_edit_use_rotation");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool _isOnTop() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_is_on_top");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _setOnTop(in bool on_top)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(on_top);
		String _GODOT_method_name = String("_set_on_top");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _toplevelRaiseSelf()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_toplevel_raise_self");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _toplevelVisibilityChanged(in bool visible)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(visible);
		String _GODOT_method_name = String("_toplevel_visibility_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateCallback()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void drawArc(in Vector2 center, in double radius, in double start_angle, in double end_angle, in long point_count, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawArc, _godot_object, center, radius, start_angle, end_angle, point_count, color, width, antialiased);
	}
	/**
	
	*/
	double drawChar(Font font, in Vector2 position, in String _char, in String next, in Color modulate = Color(1,1,1,1))
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.drawChar, _godot_object, font, position, _char, next, modulate);
	}
	/**
	
	*/
	void drawCircle(in Vector2 position, in double radius, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawCircle, _godot_object, position, radius, color);
	}
	/**
	
	*/
	void drawColoredPolygon(in PoolVector2Array points, in Color color, in PoolVector2Array uvs = PoolVector2Array.init, Texture texture = Texture.init, Texture normal_map = Texture.init, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawColoredPolygon, _godot_object, points, color, uvs, texture, normal_map, antialiased);
	}
	/**
	
	*/
	void drawLine(in Vector2 from, in Vector2 to, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawLine, _godot_object, from, to, color, width, antialiased);
	}
	/**
	
	*/
	void drawMesh(Mesh mesh, Texture texture, Texture normal_map = Texture.init, in Transform2D transform = Transform2D.init, in Color modulate = Color(1,1,1,1))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawMesh, _godot_object, mesh, texture, normal_map, transform, modulate);
	}
	/**
	
	*/
	void drawMultiline(in PoolVector2Array points, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawMultiline, _godot_object, points, color, width, antialiased);
	}
	/**
	
	*/
	void drawMultilineColors(in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawMultilineColors, _godot_object, points, colors, width, antialiased);
	}
	/**
	
	*/
	void drawMultimesh(MultiMesh multimesh, Texture texture, Texture normal_map = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawMultimesh, _godot_object, multimesh, texture, normal_map);
	}
	/**
	
	*/
	void drawPolygon(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, Texture texture = Texture.init, Texture normal_map = Texture.init, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawPolygon, _godot_object, points, colors, uvs, texture, normal_map, antialiased);
	}
	/**
	
	*/
	void drawPolyline(in PoolVector2Array points, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawPolyline, _godot_object, points, color, width, antialiased);
	}
	/**
	
	*/
	void drawPolylineColors(in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawPolylineColors, _godot_object, points, colors, width, antialiased);
	}
	/**
	
	*/
	void drawPrimitive(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs, Texture texture = Texture.init, in double width = 1, Texture normal_map = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawPrimitive, _godot_object, points, colors, uvs, texture, width, normal_map);
	}
	/**
	
	*/
	void drawRect(in Rect2 rect, in Color color, in bool filled = true, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawRect, _godot_object, rect, color, filled, width, antialiased);
	}
	/**
	
	*/
	void drawSetTransform(in Vector2 position, in double rotation, in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawSetTransform, _godot_object, position, rotation, scale);
	}
	/**
	
	*/
	void drawSetTransformMatrix(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawSetTransformMatrix, _godot_object, xform);
	}
	/**
	
	*/
	void drawString(Font font, in Vector2 position, in String text, in Color modulate = Color(1,1,1,1), in long clip_w = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawString, _godot_object, font, position, text, modulate, clip_w);
	}
	/**
	
	*/
	void drawStyleBox(StyleBox style_box, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawStyleBox, _godot_object, style_box, rect);
	}
	/**
	
	*/
	void drawTexture(Texture texture, in Vector2 position, in Color modulate = Color(1,1,1,1), Texture normal_map = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawTexture, _godot_object, texture, position, modulate, normal_map);
	}
	/**
	
	*/
	void drawTextureRect(Texture texture, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawTextureRect, _godot_object, texture, rect, tile, modulate, transpose, normal_map);
	}
	/**
	
	*/
	void drawTextureRectRegion(Texture texture, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init, in bool clip_uv = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.drawTextureRectRegion, _godot_object, texture, rect, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	/**
	
	*/
	void forceUpdateTransform()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceUpdateTransform, _godot_object);
	}
	/**
	
	*/
	RID getCanvas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getCanvas, _godot_object);
	}
	/**
	
	*/
	RID getCanvasItem() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getCanvasItem, _godot_object);
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
	Vector2 getGlobalMousePosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGlobalMousePosition, _godot_object);
	}
	/**
	
	*/
	Transform2D getGlobalTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getGlobalTransform, _godot_object);
	}
	/**
	
	*/
	Transform2D getGlobalTransformWithCanvas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getGlobalTransformWithCanvas, _godot_object);
	}
	/**
	
	*/
	long getLightMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLightMask, _godot_object);
	}
	/**
	
	*/
	Vector2 getLocalMousePosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getLocalMousePosition, _godot_object);
	}
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getMaterial, _godot_object);
	}
	/**
	
	*/
	Color getModulate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getModulate, _godot_object);
	}
	/**
	
	*/
	Color getSelfModulate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getSelfModulate, _godot_object);
	}
	/**
	
	*/
	Transform2D getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getTransform, _godot_object);
	}
	/**
	
	*/
	bool getUseParentMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseParentMaterial, _godot_object);
	}
	/**
	
	*/
	Rect2 getViewportRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getViewportRect, _godot_object);
	}
	/**
	
	*/
	Transform2D getViewportTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getViewportTransform, _godot_object);
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
	void hide()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.hide, _godot_object);
	}
	/**
	
	*/
	bool isDrawBehindParentEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDrawBehindParentEnabled, _godot_object);
	}
	/**
	
	*/
	bool isLocalTransformNotificationEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isLocalTransformNotificationEnabled, _godot_object);
	}
	/**
	
	*/
	bool isSetAsToplevel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSetAsToplevel, _godot_object);
	}
	/**
	
	*/
	bool isTransformNotificationEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isTransformNotificationEnabled, _godot_object);
	}
	/**
	
	*/
	bool isVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVisible, _godot_object);
	}
	/**
	
	*/
	bool isVisibleInTree() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVisibleInTree, _godot_object);
	}
	/**
	
	*/
	Vector2 makeCanvasPositionLocal(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.makeCanvasPositionLocal, _godot_object, screen_point);
	}
	/**
	
	*/
	Ref!InputEvent makeInputLocal(InputEvent event) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(InputEvent)(GDNativeClassBinding.makeInputLocal, _godot_object, event);
	}
	/**
	
	*/
	void setAsToplevel(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsToplevel, _godot_object, enable);
	}
	/**
	
	*/
	void setDrawBehindParent(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrawBehindParent, _godot_object, enable);
	}
	/**
	
	*/
	void setLightMask(in long light_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLightMask, _godot_object, light_mask);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterial, _godot_object, material);
	}
	/**
	
	*/
	void setModulate(in Color modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setModulate, _godot_object, modulate);
	}
	/**
	
	*/
	void setNotifyLocalTransform(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNotifyLocalTransform, _godot_object, enable);
	}
	/**
	
	*/
	void setNotifyTransform(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNotifyTransform, _godot_object, enable);
	}
	/**
	
	*/
	void setSelfModulate(in Color self_modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSelfModulate, _godot_object, self_modulate);
	}
	/**
	
	*/
	void setUseParentMaterial(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseParentMaterial, _godot_object, enable);
	}
	/**
	
	*/
	void setVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVisible, _godot_object, visible);
	}
	/**
	
	*/
	void show()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.show, _godot_object);
	}
	/**
	
	*/
	void update()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.update, _godot_object);
	}
	/**
	
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
	/**
	
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
}
