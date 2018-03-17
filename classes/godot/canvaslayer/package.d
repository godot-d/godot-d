/**
Canvas drawing layer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.canvaslayer;
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
import godot.viewport;
/**
Canvas drawing layer.

$(D CanvasItem) nodes that are direct or indirect children of a `CanvasLayer` will be drawn in that layer. The layer is a numeric index that defines the draw order. The default 2D scene renders with index 0, so a `CanvasLayer` with index -1 will be drawn below, and one with index 1 will be drawn above. This is very useful for HUDs (in layer 1+ or above), or backgrounds (in layer -1 or below).
*/
@GodotBaseClass struct CanvasLayer
{
	static immutable string _GODOT_internal_name = "CanvasLayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in CanvasLayer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CanvasLayer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CanvasLayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CanvasLayer");
		if(constructor is null) return typeof(this).init;
		return cast(CanvasLayer)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_layer") = _GODOT_set_layer;
	/**
	
	*/
	void setLayer(in long layer)
	{
		_GODOT_set_layer.bind("CanvasLayer", "set_layer");
		ptrcall!(void)(_GODOT_set_layer, _godot_object, layer);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_layer") = _GODOT_get_layer;
	/**
	
	*/
	long getLayer() const
	{
		_GODOT_get_layer.bind("CanvasLayer", "get_layer");
		return ptrcall!(long)(_GODOT_get_layer, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	/**
	
	*/
	void setTransform(in Transform2D transform)
	{
		_GODOT_set_transform.bind("CanvasLayer", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, transform);
	}
	package(godot) static GodotMethod!(Transform2D) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	/**
	
	*/
	Transform2D getTransform() const
	{
		_GODOT_get_transform.bind("CanvasLayer", "get_transform");
		return ptrcall!(Transform2D)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("CanvasLayer", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	
	*/
	Vector2 getOffset() const
	{
		_GODOT_get_offset.bind("CanvasLayer", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation") = _GODOT_set_rotation;
	/**
	
	*/
	void setRotation(in double radians)
	{
		_GODOT_set_rotation.bind("CanvasLayer", "set_rotation");
		ptrcall!(void)(_GODOT_set_rotation, _godot_object, radians);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation") = _GODOT_get_rotation;
	/**
	
	*/
	double getRotation() const
	{
		_GODOT_get_rotation.bind("CanvasLayer", "get_rotation");
		return ptrcall!(double)(_GODOT_get_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation_degrees") = _GODOT_set_rotation_degrees;
	/**
	
	*/
	void setRotationDegrees(in double degrees)
	{
		_GODOT_set_rotation_degrees.bind("CanvasLayer", "set_rotation_degrees");
		ptrcall!(void)(_GODOT_set_rotation_degrees, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation_degrees") = _GODOT_get_rotation_degrees;
	/**
	
	*/
	double getRotationDegrees() const
	{
		_GODOT_get_rotation_degrees.bind("CanvasLayer", "get_rotation_degrees");
		return ptrcall!(double)(_GODOT_get_rotation_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scale") = _GODOT_set_scale;
	/**
	
	*/
	void setScale(in Vector2 scale)
	{
		_GODOT_set_scale.bind("CanvasLayer", "set_scale");
		ptrcall!(void)(_GODOT_set_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scale") = _GODOT_get_scale;
	/**
	
	*/
	Vector2 getScale() const
	{
		_GODOT_get_scale.bind("CanvasLayer", "get_scale");
		return ptrcall!(Vector2)(_GODOT_get_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_custom_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_viewport") = _GODOT_set_custom_viewport;
	/**
	
	*/
	void setCustomViewport(GodotObject viewport)
	{
		_GODOT_set_custom_viewport.bind("CanvasLayer", "set_custom_viewport");
		ptrcall!(void)(_GODOT_set_custom_viewport, _godot_object, viewport);
	}
	package(godot) static GodotMethod!(Node) _GODOT_get_custom_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_viewport") = _GODOT_get_custom_viewport;
	/**
	
	*/
	Node getCustomViewport() const
	{
		_GODOT_get_custom_viewport.bind("CanvasLayer", "get_custom_viewport");
		return ptrcall!(Node)(_GODOT_get_custom_viewport, _godot_object);
	}
	package(godot) static GodotMethod!(World2D) _GODOT_get_world_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_2d") = _GODOT_get_world_2d;
	/**
	Return the $(D World2D) used by this layer.
	*/
	Ref!World2D getWorld2d() const
	{
		_GODOT_get_world_2d.bind("CanvasLayer", "get_world_2d");
		return ptrcall!(World2D)(_GODOT_get_world_2d, _godot_object);
	}
	/**
	Layer index for draw order. Lower values are drawn first. Default value: `1`.
	*/
	@property long layer()
	{
		return getLayer();
	}
	/// ditto
	@property void layer(long v)
	{
		setLayer(v);
	}
	/**
	The layer's base offset.
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
	The layer's rotation in degrees.
	*/
	@property double rotationDegrees()
	{
		return getRotationDegrees();
	}
	/// ditto
	@property void rotationDegrees(double v)
	{
		setRotationDegrees(v);
	}
	/**
	The layer's rotation in radians.
	*/
	@property double rotation()
	{
		return getRotation();
	}
	/// ditto
	@property void rotation(double v)
	{
		setRotation(v);
	}
	/**
	The layer's scale.
	*/
	@property Vector2 scale()
	{
		return getScale();
	}
	/// ditto
	@property void scale(Vector2 v)
	{
		setScale(v);
	}
	/**
	The layer's transform.
	*/
	@property Transform2D transform()
	{
		return getTransform();
	}
	/// ditto
	@property void transform(Transform2D v)
	{
		setTransform(v);
	}
	/**
	The custom $(D Viewport) node assigned to the `CanvasLayer`. If null, uses the default viewport instead.
	*/
	@property Node customViewport()
	{
		return getCustomViewport();
	}
	/// ditto
	@property void customViewport(GodotObject v)
	{
		setCustomViewport(v);
	}
}
