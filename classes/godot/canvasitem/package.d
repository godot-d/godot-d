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
	static immutable string _GODOT_internal_name = "CanvasItem";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	}
	/// 
	enum Constants : int
	{
		blendModeMix = 0,
		blendModeAdd = 1,
		blendModeSub = 2,
		blendModeMul = 3,
		blendModePremultAlpha = 4,
		/**
		Canvas item transform has changed. Only received if requested.
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
	package(godot) static GodotMethod!(void) _GODOT__draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "_draw") = _GODOT__draw;
	/**
	Called (if exists) to draw the canvas item.
	*/
	void _draw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__toplevel_raise_self;
	package(godot) alias _GODOT_methodBindInfo(string name : "_toplevel_raise_self") = _GODOT__toplevel_raise_self;
	/**
	
	*/
	void _toplevelRaiseSelf()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_toplevel_raise_self");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_callback") = _GODOT__update_callback;
	/**
	
	*/
	void _updateCallback()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_callback");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__edit_set_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_set_state") = _GODOT__edit_set_state;
	/**
	
	*/
	void _editSetState(in Dictionary state)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(state);
		String _GODOT_method_name = String("_edit_set_state");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__edit_get_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_get_state") = _GODOT__edit_get_state;
	/**
	
	*/
	Dictionary _editGetState() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_state");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT__edit_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_set_position") = _GODOT__edit_set_position;
	/**
	
	*/
	void _editSetPosition(in Vector2 position)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(position);
		String _GODOT_method_name = String("_edit_set_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT__edit_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_get_position") = _GODOT__edit_get_position;
	/**
	
	*/
	Vector2 _editGetPosition() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_position");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	package(godot) static GodotMethod!(bool) _GODOT__edit_use_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_use_position") = _GODOT__edit_use_position;
	/**
	
	*/
	bool _editUsePosition() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_use_position");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT__edit_set_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_set_rect") = _GODOT__edit_set_rect;
	/**
	
	*/
	void _editSetRect(in Rect2 rect)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(rect);
		String _GODOT_method_name = String("_edit_set_rect");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT__edit_get_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_get_rect") = _GODOT__edit_get_rect;
	/**
	
	*/
	Rect2 _editGetRect() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_rect");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Rect2);
	}
	package(godot) static GodotMethod!(bool) _GODOT__edit_use_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_use_rect") = _GODOT__edit_use_rect;
	/**
	
	*/
	bool _editUseRect() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_use_rect");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT__edit_get_item_and_children_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_get_item_and_children_rect") = _GODOT__edit_get_item_and_children_rect;
	/**
	
	*/
	Rect2 _editGetItemAndChildrenRect() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_item_and_children_rect");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Rect2);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__edit_set_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_set_rotation") = _GODOT__edit_set_rotation;
	/**
	
	*/
	void _editSetRotation(in double degrees)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(degrees);
		String _GODOT_method_name = String("_edit_set_rotation");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(double) _GODOT__edit_get_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_get_rotation") = _GODOT__edit_get_rotation;
	/**
	
	*/
	double _editGetRotation() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_rotation");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	package(godot) static GodotMethod!(bool) _GODOT__edit_use_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_use_rotation") = _GODOT__edit_use_rotation;
	/**
	
	*/
	bool _editUseRotation() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_use_rotation");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT__edit_set_pivot;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_set_pivot") = _GODOT__edit_set_pivot;
	/**
	
	*/
	void _editSetPivot(in Vector2 pivot)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(pivot);
		String _GODOT_method_name = String("_edit_set_pivot");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT__edit_get_pivot;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_get_pivot") = _GODOT__edit_get_pivot;
	/**
	
	*/
	Vector2 _editGetPivot() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_get_pivot");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Vector2);
	}
	package(godot) static GodotMethod!(bool) _GODOT__edit_use_pivot;
	package(godot) alias _GODOT_methodBindInfo(string name : "_edit_use_pivot") = _GODOT__edit_use_pivot;
	/**
	
	*/
	bool _editUsePivot() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_edit_use_pivot");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_canvas_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas_item") = _GODOT_get_canvas_item;
	/**
	Return the canvas item RID used by $(D VisualServer) for this item.
	*/
	RID getCanvasItem() const
	{
		_GODOT_get_canvas_item.bind("CanvasItem", "get_canvas_item");
		return ptrcall!(RID)(_GODOT_get_canvas_item, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visible") = _GODOT_set_visible;
	/**
	
	*/
	void setVisible(in bool visible)
	{
		_GODOT_set_visible.bind("CanvasItem", "set_visible");
		ptrcall!(void)(_GODOT_set_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_visible") = _GODOT_is_visible;
	/**
	
	*/
	bool isVisible() const
	{
		_GODOT_is_visible.bind("CanvasItem", "is_visible");
		return ptrcall!(bool)(_GODOT_is_visible, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_visible_in_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_visible_in_tree") = _GODOT_is_visible_in_tree;
	/**
	Returns `true` if the node is present in the $(D SceneTree), its $(D visible) property is `true` and its inherited visibility is also `true`.
	*/
	bool isVisibleInTree() const
	{
		_GODOT_is_visible_in_tree.bind("CanvasItem", "is_visible_in_tree");
		return ptrcall!(bool)(_GODOT_is_visible_in_tree, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_show;
	package(godot) alias _GODOT_methodBindInfo(string name : "show") = _GODOT_show;
	/**
	Show the CanvasItem currently hidden.
	*/
	void show()
	{
		_GODOT_show.bind("CanvasItem", "show");
		ptrcall!(void)(_GODOT_show, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_hide;
	package(godot) alias _GODOT_methodBindInfo(string name : "hide") = _GODOT_hide;
	/**
	Hide the CanvasItem currently visible.
	*/
	void hide()
	{
		_GODOT_hide.bind("CanvasItem", "hide");
		ptrcall!(void)(_GODOT_hide, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_update;
	package(godot) alias _GODOT_methodBindInfo(string name : "update") = _GODOT_update;
	/**
	Queue the CanvasItem for update. `NOTIFICATION_DRAW` will be called on idle time to request redraw.
	*/
	void update()
	{
		_GODOT_update.bind("CanvasItem", "update");
		ptrcall!(void)(_GODOT_update, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_as_toplevel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_toplevel") = _GODOT_set_as_toplevel;
	/**
	Sets as top level. This means that it will not inherit transform from parent canvas items.
	*/
	void setAsToplevel(in bool enable)
	{
		_GODOT_set_as_toplevel.bind("CanvasItem", "set_as_toplevel");
		ptrcall!(void)(_GODOT_set_as_toplevel, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_set_as_toplevel;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_set_as_toplevel") = _GODOT_is_set_as_toplevel;
	/**
	Return if set as toplevel. See $(D setAsToplevel).
	*/
	bool isSetAsToplevel() const
	{
		_GODOT_is_set_as_toplevel.bind("CanvasItem", "is_set_as_toplevel");
		return ptrcall!(bool)(_GODOT_is_set_as_toplevel, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_light_mask") = _GODOT_set_light_mask;
	/**
	
	*/
	void setLightMask(in long light_mask)
	{
		_GODOT_set_light_mask.bind("CanvasItem", "set_light_mask");
		ptrcall!(void)(_GODOT_set_light_mask, _godot_object, light_mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_light_mask") = _GODOT_get_light_mask;
	/**
	
	*/
	long getLightMask() const
	{
		_GODOT_get_light_mask.bind("CanvasItem", "get_light_mask");
		return ptrcall!(long)(_GODOT_get_light_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_modulate") = _GODOT_set_modulate;
	/**
	
	*/
	void setModulate(in Color modulate)
	{
		_GODOT_set_modulate.bind("CanvasItem", "set_modulate");
		ptrcall!(void)(_GODOT_set_modulate, _godot_object, modulate);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_modulate") = _GODOT_get_modulate;
	/**
	
	*/
	Color getModulate() const
	{
		_GODOT_get_modulate.bind("CanvasItem", "get_modulate");
		return ptrcall!(Color)(_GODOT_get_modulate, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_self_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_self_modulate") = _GODOT_set_self_modulate;
	/**
	
	*/
	void setSelfModulate(in Color self_modulate)
	{
		_GODOT_set_self_modulate.bind("CanvasItem", "set_self_modulate");
		ptrcall!(void)(_GODOT_set_self_modulate, _godot_object, self_modulate);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_self_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_self_modulate") = _GODOT_get_self_modulate;
	/**
	
	*/
	Color getSelfModulate() const
	{
		_GODOT_get_self_modulate.bind("CanvasItem", "get_self_modulate");
		return ptrcall!(Color)(_GODOT_get_self_modulate, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_draw_behind_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_draw_behind_parent") = _GODOT_set_draw_behind_parent;
	/**
	
	*/
	void setDrawBehindParent(in bool enable)
	{
		_GODOT_set_draw_behind_parent.bind("CanvasItem", "set_draw_behind_parent");
		ptrcall!(void)(_GODOT_set_draw_behind_parent, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_draw_behind_parent_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_draw_behind_parent_enabled") = _GODOT_is_draw_behind_parent_enabled;
	/**
	
	*/
	bool isDrawBehindParentEnabled() const
	{
		_GODOT_is_draw_behind_parent_enabled.bind("CanvasItem", "is_draw_behind_parent_enabled");
		return ptrcall!(bool)(_GODOT_is_draw_behind_parent_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT__set_on_top;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_on_top") = _GODOT__set_on_top;
	/**
	
	*/
	void _setOnTop(in bool on_top)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(on_top);
		String _GODOT_method_name = String("_set_on_top");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool) _GODOT__is_on_top;
	package(godot) alias _GODOT_methodBindInfo(string name : "_is_on_top") = _GODOT__is_on_top;
	/**
	
	*/
	bool _isOnTop() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_on_top");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, Vector2, Vector2, Color, double, bool) _GODOT_draw_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_line") = _GODOT_draw_line;
	/**
	Draws a line from a 2D point to another, with a given color and width. It can be optionally antialiased.
	*/
	void drawLine(in Vector2 from, in Vector2 to, in Color color, in double width = 1, in bool antialiased = false)
	{
		_GODOT_draw_line.bind("CanvasItem", "draw_line");
		ptrcall!(void)(_GODOT_draw_line, _godot_object, from, to, color, width, antialiased);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, Color, double, bool) _GODOT_draw_polyline;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_polyline") = _GODOT_draw_polyline;
	/**
	Draws interconnected line segments with a uniform `color` and `width` and optional antialiasing.
	*/
	void drawPolyline(in PoolVector2Array points, in Color color, in double width = 1, in bool antialiased = false)
	{
		_GODOT_draw_polyline.bind("CanvasItem", "draw_polyline");
		ptrcall!(void)(_GODOT_draw_polyline, _godot_object, points, color, width, antialiased);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, PoolColorArray, double, bool) _GODOT_draw_polyline_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_polyline_colors") = _GODOT_draw_polyline_colors;
	/**
	Draws interconnected line segments with a uniform `width`, segment-by-segment coloring, and optional antialiasing. Colors assigned to line segments match by index between `points` and `colors`.
	*/
	void drawPolylineColors(in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		_GODOT_draw_polyline_colors.bind("CanvasItem", "draw_polyline_colors");
		ptrcall!(void)(_GODOT_draw_polyline_colors, _godot_object, points, colors, width, antialiased);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, Color, double, bool) _GODOT_draw_multiline;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_multiline") = _GODOT_draw_multiline;
	/**
	Draws multiple, parallel lines with a uniform `color` and `width` and optional antialiasing.
	*/
	void drawMultiline(in PoolVector2Array points, in Color color, in double width = 1, in bool antialiased = false)
	{
		_GODOT_draw_multiline.bind("CanvasItem", "draw_multiline");
		ptrcall!(void)(_GODOT_draw_multiline, _godot_object, points, color, width, antialiased);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, PoolColorArray, double, bool) _GODOT_draw_multiline_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_multiline_colors") = _GODOT_draw_multiline_colors;
	/**
	Draws multiple, parallel lines with a uniform `width`, segment-by-segment coloring, and optional antialiasing. Colors assigned to line segments match by index between `points` and `colors`.
	*/
	void drawMultilineColors(in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		_GODOT_draw_multiline_colors.bind("CanvasItem", "draw_multiline_colors");
		ptrcall!(void)(_GODOT_draw_multiline_colors, _godot_object, points, colors, width, antialiased);
	}
	package(godot) static GodotMethod!(void, Rect2, Color, bool) _GODOT_draw_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_rect") = _GODOT_draw_rect;
	/**
	Draws a colored rectangle.
	*/
	void drawRect(in Rect2 rect, in Color color, in bool filled = true)
	{
		_GODOT_draw_rect.bind("CanvasItem", "draw_rect");
		ptrcall!(void)(_GODOT_draw_rect, _godot_object, rect, color, filled);
	}
	package(godot) static GodotMethod!(void, Vector2, double, Color) _GODOT_draw_circle;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_circle") = _GODOT_draw_circle;
	/**
	Draws a colored circle.
	*/
	void drawCircle(in Vector2 position, in double radius, in Color color)
	{
		_GODOT_draw_circle.bind("CanvasItem", "draw_circle");
		ptrcall!(void)(_GODOT_draw_circle, _godot_object, position, radius, color);
	}
	package(godot) static GodotMethod!(void, Texture, Vector2, Color, Texture) _GODOT_draw_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_texture") = _GODOT_draw_texture;
	/**
	Draws a texture at a given position.
	*/
	void drawTexture(Texture texture, in Vector2 position, in Color modulate = Color(1,1,1,1), Texture normal_map = Texture.init)
	{
		_GODOT_draw_texture.bind("CanvasItem", "draw_texture");
		ptrcall!(void)(_GODOT_draw_texture, _godot_object, texture, position, modulate, normal_map);
	}
	package(godot) static GodotMethod!(void, Texture, Rect2, bool, Color, bool, Texture) _GODOT_draw_texture_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_texture_rect") = _GODOT_draw_texture_rect;
	/**
	Draws a textured rectangle at a given position, optionally modulated by a color. Transpose swaps the x and y coordinates when reading the texture.
	*/
	void drawTextureRect(Texture texture, in Rect2 rect, in bool tile, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init)
	{
		_GODOT_draw_texture_rect.bind("CanvasItem", "draw_texture_rect");
		ptrcall!(void)(_GODOT_draw_texture_rect, _godot_object, texture, rect, tile, modulate, transpose, normal_map);
	}
	package(godot) static GodotMethod!(void, Texture, Rect2, Rect2, Color, bool, Texture, bool) _GODOT_draw_texture_rect_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_texture_rect_region") = _GODOT_draw_texture_rect_region;
	/**
	Draws a textured rectangle region at a given position, optionally modulated by a color. Transpose swaps the x and y coordinates when reading the texture.
	*/
	void drawTextureRectRegion(Texture texture, in Rect2 rect, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, Texture normal_map = Texture.init, in bool clip_uv = true)
	{
		_GODOT_draw_texture_rect_region.bind("CanvasItem", "draw_texture_rect_region");
		ptrcall!(void)(_GODOT_draw_texture_rect_region, _godot_object, texture, rect, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	package(godot) static GodotMethod!(void, StyleBox, Rect2) _GODOT_draw_style_box;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_style_box") = _GODOT_draw_style_box;
	/**
	Draws a styled rectangle.
	*/
	void drawStyleBox(StyleBox style_box, in Rect2 rect)
	{
		_GODOT_draw_style_box.bind("CanvasItem", "draw_style_box");
		ptrcall!(void)(_GODOT_draw_style_box, _godot_object, style_box, rect);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, PoolColorArray, PoolVector2Array, Texture, double, Texture) _GODOT_draw_primitive;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_primitive") = _GODOT_draw_primitive;
	/**
	Draws a custom primitive, 1 point for a point, 2 points for a line, 3 points for a triangle and 4 points for a quad.
	*/
	void drawPrimitive(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs, Texture texture = Texture.init, in double width = 1, Texture normal_map = Texture.init)
	{
		_GODOT_draw_primitive.bind("CanvasItem", "draw_primitive");
		ptrcall!(void)(_GODOT_draw_primitive, _godot_object, points, colors, uvs, texture, width, normal_map);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, PoolColorArray, PoolVector2Array, Texture, Texture, bool) _GODOT_draw_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_polygon") = _GODOT_draw_polygon;
	/**
	Draws a polygon of any amount of points, convex or concave.
	*/
	void drawPolygon(in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, Texture texture = Texture.init, Texture normal_map = Texture.init, in bool antialiased = false)
	{
		_GODOT_draw_polygon.bind("CanvasItem", "draw_polygon");
		ptrcall!(void)(_GODOT_draw_polygon, _godot_object, points, colors, uvs, texture, normal_map, antialiased);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array, Color, PoolVector2Array, Texture, Texture, bool) _GODOT_draw_colored_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_colored_polygon") = _GODOT_draw_colored_polygon;
	/**
	Draws a colored polygon of any amount of points, convex or concave.
	*/
	void drawColoredPolygon(in PoolVector2Array points, in Color color, in PoolVector2Array uvs = PoolVector2Array.init, Texture texture = Texture.init, Texture normal_map = Texture.init, in bool antialiased = false)
	{
		_GODOT_draw_colored_polygon.bind("CanvasItem", "draw_colored_polygon");
		ptrcall!(void)(_GODOT_draw_colored_polygon, _godot_object, points, color, uvs, texture, normal_map, antialiased);
	}
	package(godot) static GodotMethod!(void, Font, Vector2, String, Color, long) _GODOT_draw_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_string") = _GODOT_draw_string;
	/**
	Draws a string using a custom font.
	*/
	void drawString(StringArg2)(Font font, in Vector2 position, in StringArg2 text, in Color modulate = Color(1,1,1,1), in long clip_w = -1)
	{
		_GODOT_draw_string.bind("CanvasItem", "draw_string");
		ptrcall!(void)(_GODOT_draw_string, _godot_object, font, position, text, modulate, clip_w);
	}
	package(godot) static GodotMethod!(double, Font, Vector2, String, String, Color) _GODOT_draw_char;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_char") = _GODOT_draw_char;
	/**
	Draws a string character using a custom font. Returns the advance, depending on the char width and kerning with an optional next char.
	*/
	double drawChar(StringArg2, StringArg3)(Font font, in Vector2 position, in StringArg2 _char, in StringArg3 next, in Color modulate = Color(1,1,1,1))
	{
		_GODOT_draw_char.bind("CanvasItem", "draw_char");
		return ptrcall!(double)(_GODOT_draw_char, _godot_object, font, position, _char, next, modulate);
	}
	package(godot) static GodotMethod!(void, Mesh, Texture, Texture) _GODOT_draw_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_mesh") = _GODOT_draw_mesh;
	/**
	
	*/
	void drawMesh(Mesh mesh, Texture texture, Texture normal_map = Texture.init)
	{
		_GODOT_draw_mesh.bind("CanvasItem", "draw_mesh");
		ptrcall!(void)(_GODOT_draw_mesh, _godot_object, mesh, texture, normal_map);
	}
	package(godot) static GodotMethod!(void, Mesh, Texture, Texture) _GODOT_draw_multimesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_multimesh") = _GODOT_draw_multimesh;
	/**
	
	*/
	void drawMultimesh(Mesh mesh, Texture texture, Texture normal_map = Texture.init)
	{
		_GODOT_draw_multimesh.bind("CanvasItem", "draw_multimesh");
		ptrcall!(void)(_GODOT_draw_multimesh, _godot_object, mesh, texture, normal_map);
	}
	package(godot) static GodotMethod!(void, Vector2, double, Vector2) _GODOT_draw_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_set_transform") = _GODOT_draw_set_transform;
	/**
	Sets a custom transform for drawing via components. Anything drawn afterwards will be transformed by this.
	*/
	void drawSetTransform(in Vector2 position, in double rotation, in Vector2 scale)
	{
		_GODOT_draw_set_transform.bind("CanvasItem", "draw_set_transform");
		ptrcall!(void)(_GODOT_draw_set_transform, _godot_object, position, rotation, scale);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_draw_set_transform_matrix;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_set_transform_matrix") = _GODOT_draw_set_transform_matrix;
	/**
	Sets a custom transform for drawing via matrix. Anything drawn afterwards will be transformed by this.
	*/
	void drawSetTransformMatrix(in Transform2D xform)
	{
		_GODOT_draw_set_transform_matrix.bind("CanvasItem", "draw_set_transform_matrix");
		ptrcall!(void)(_GODOT_draw_set_transform_matrix, _godot_object, xform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	/**
	Get the transform matrix of this item.
	*/
	Transform2D getTransform() const
	{
		_GODOT_get_transform.bind("CanvasItem", "get_transform");
		return ptrcall!(Transform2D)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_global_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_transform") = _GODOT_get_global_transform;
	/**
	Get the global transform matrix of this item.
	*/
	Transform2D getGlobalTransform() const
	{
		_GODOT_get_global_transform.bind("CanvasItem", "get_global_transform");
		return ptrcall!(Transform2D)(_GODOT_get_global_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_global_transform_with_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_transform_with_canvas") = _GODOT_get_global_transform_with_canvas;
	/**
	Get the global transform matrix of this item in relation to the canvas.
	*/
	Transform2D getGlobalTransformWithCanvas() const
	{
		_GODOT_get_global_transform_with_canvas.bind("CanvasItem", "get_global_transform_with_canvas");
		return ptrcall!(Transform2D)(_GODOT_get_global_transform_with_canvas, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_viewport_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_viewport_transform") = _GODOT_get_viewport_transform;
	/**
	Get this item's transform in relation to the viewport.
	*/
	Transform2D getViewportTransform() const
	{
		_GODOT_get_viewport_transform.bind("CanvasItem", "get_viewport_transform");
		return ptrcall!(Transform2D)(_GODOT_get_viewport_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_viewport_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_viewport_rect") = _GODOT_get_viewport_rect;
	/**
	Get the viewport's boundaries as a $(D Rect2).
	*/
	Rect2 getViewportRect() const
	{
		_GODOT_get_viewport_rect.bind("CanvasItem", "get_viewport_rect");
		return ptrcall!(Rect2)(_GODOT_get_viewport_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas_transform") = _GODOT_get_canvas_transform;
	/**
	Get the transform matrix of this item's canvas.
	*/
	Transform2D getCanvasTransform() const
	{
		_GODOT_get_canvas_transform.bind("CanvasItem", "get_canvas_transform");
		return ptrcall!(Transform2D)(_GODOT_get_canvas_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_local_mouse_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_local_mouse_position") = _GODOT_get_local_mouse_position;
	/**
	Get the mouse position relative to this item's position.
	*/
	Vector2 getLocalMousePosition() const
	{
		_GODOT_get_local_mouse_position.bind("CanvasItem", "get_local_mouse_position");
		return ptrcall!(Vector2)(_GODOT_get_local_mouse_position, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_mouse_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_mouse_position") = _GODOT_get_global_mouse_position;
	/**
	Get the global position of the mouse.
	*/
	Vector2 getGlobalMousePosition() const
	{
		_GODOT_get_global_mouse_position.bind("CanvasItem", "get_global_mouse_position");
		return ptrcall!(Vector2)(_GODOT_get_global_mouse_position, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas") = _GODOT_get_canvas;
	/**
	Return the $(D RID) of the $(D World2D) canvas where this item is in.
	*/
	RID getCanvas() const
	{
		_GODOT_get_canvas.bind("CanvasItem", "get_canvas");
		return ptrcall!(RID)(_GODOT_get_canvas, _godot_object);
	}
	package(godot) static GodotMethod!(World2D) _GODOT_get_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_2d") = _GODOT_get_world_2d;
	/**
	Get the $(D World2D) where this item is in.
	*/
	Ref!World2D getWorld2d() const
	{
		_GODOT_get_world_2d.bind("CanvasItem", "get_world_2d");
		return ptrcall!(World2D)(_GODOT_get_world_2d, _godot_object);
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_material") = _GODOT_set_material;
	/**
	
	*/
	void setMaterial(Material material)
	{
		_GODOT_set_material.bind("CanvasItem", "set_material");
		ptrcall!(void)(_GODOT_set_material, _godot_object, material);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_material") = _GODOT_get_material;
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		_GODOT_get_material.bind("CanvasItem", "get_material");
		return ptrcall!(Material)(_GODOT_get_material, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_parent_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_parent_material") = _GODOT_set_use_parent_material;
	/**
	
	*/
	void setUseParentMaterial(in bool enable)
	{
		_GODOT_set_use_parent_material.bind("CanvasItem", "set_use_parent_material");
		ptrcall!(void)(_GODOT_set_use_parent_material, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_parent_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_parent_material") = _GODOT_get_use_parent_material;
	/**
	
	*/
	bool getUseParentMaterial() const
	{
		_GODOT_get_use_parent_material.bind("CanvasItem", "get_use_parent_material");
		return ptrcall!(bool)(_GODOT_get_use_parent_material, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_notify_local_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_notify_local_transform") = _GODOT_set_notify_local_transform;
	/**
	If `enable` is `true`, children will be updated with local transform data.
	*/
	void setNotifyLocalTransform(in bool enable)
	{
		_GODOT_set_notify_local_transform.bind("CanvasItem", "set_notify_local_transform");
		ptrcall!(void)(_GODOT_set_notify_local_transform, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_local_transform_notification_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_local_transform_notification_enabled") = _GODOT_is_local_transform_notification_enabled;
	/**
	Returns `true` if local transform notifications are communicated to children.
	*/
	bool isLocalTransformNotificationEnabled() const
	{
		_GODOT_is_local_transform_notification_enabled.bind("CanvasItem", "is_local_transform_notification_enabled");
		return ptrcall!(bool)(_GODOT_is_local_transform_notification_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_notify_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_notify_transform") = _GODOT_set_notify_transform;
	/**
	If `enable` is `true`, children will be updated with global transform data.
	*/
	void setNotifyTransform(in bool enable)
	{
		_GODOT_set_notify_transform.bind("CanvasItem", "set_notify_transform");
		ptrcall!(void)(_GODOT_set_notify_transform, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_transform_notification_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_transform_notification_enabled") = _GODOT_is_transform_notification_enabled;
	/**
	Returns `true` if global transform notifications are communicated to children.
	*/
	bool isTransformNotificationEnabled() const
	{
		_GODOT_is_transform_notification_enabled.bind("CanvasItem", "is_transform_notification_enabled");
		return ptrcall!(bool)(_GODOT_is_transform_notification_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_make_canvas_position_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_canvas_position_local") = _GODOT_make_canvas_position_local;
	/**
	Assigns `screen_point` as this node's new local transform.
	*/
	Vector2 makeCanvasPositionLocal(in Vector2 screen_point) const
	{
		_GODOT_make_canvas_position_local.bind("CanvasItem", "make_canvas_position_local");
		return ptrcall!(Vector2)(_GODOT_make_canvas_position_local, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(InputEvent, InputEvent) _GODOT_make_input_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_input_local") = _GODOT_make_input_local;
	/**
	Transformations issued by `event`'s inputs are applied in local space instead of global space.
	*/
	Ref!InputEvent makeInputLocal(InputEvent event) const
	{
		_GODOT_make_input_local.bind("CanvasItem", "make_input_local");
		return ptrcall!(InputEvent)(_GODOT_make_input_local, _godot_object, event);
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
