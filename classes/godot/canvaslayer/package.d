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
import godot.viewport;
/**
Canvas drawing layer.

$(D CanvasItem) nodes that are direct or indirect children of a `CanvasLayer` will be drawn in that layer. The layer is a numeric index that defines the draw order. The default 2D scene renders with index 0, so a `CanvasLayer` with index -1 will be drawn below, and one with index 1 will be drawn above. This is very useful for HUDs (in layer 1+ or above), or backgrounds (in layer -1 or below).
*/
@GodotBaseClass struct CanvasLayer
{
	enum string _GODOT_internal_name = "CanvasLayer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_layer") GodotMethod!(void, long) setLayer;
		@GodotName("get_layer") GodotMethod!(long) getLayer;
		@GodotName("set_transform") GodotMethod!(void, Transform2D) setTransform;
		@GodotName("get_transform") GodotMethod!(Transform2D) getTransform;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("set_rotation") GodotMethod!(void, double) setRotation;
		@GodotName("get_rotation") GodotMethod!(double) getRotation;
		@GodotName("set_rotation_degrees") GodotMethod!(void, double) setRotationDegrees;
		@GodotName("get_rotation_degrees") GodotMethod!(double) getRotationDegrees;
		@GodotName("set_scale") GodotMethod!(void, Vector2) setScale;
		@GodotName("get_scale") GodotMethod!(Vector2) getScale;
		@GodotName("set_custom_viewport") GodotMethod!(void, GodotObject) setCustomViewport;
		@GodotName("get_custom_viewport") GodotMethod!(Node) getCustomViewport;
		@GodotName("get_canvas") GodotMethod!(RID) getCanvas;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setLayer(in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLayer, _godot_object, layer);
	}
	/**
	
	*/
	long getLayer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLayer, _godot_object);
	}
	/**
	
	*/
	void setTransform(in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransform, _godot_object, transform);
	}
	/**
	
	*/
	Transform2D getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getTransform, _godot_object);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	void setRotation(in double radians)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRotation, _godot_object, radians);
	}
	/**
	
	*/
	double getRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRotation, _godot_object);
	}
	/**
	
	*/
	void setRotationDegrees(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRotationDegrees, _godot_object, degrees);
	}
	/**
	
	*/
	double getRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRotationDegrees, _godot_object);
	}
	/**
	
	*/
	void setScale(in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScale, _godot_object, scale);
	}
	/**
	
	*/
	Vector2 getScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScale, _godot_object);
	}
	/**
	
	*/
	void setCustomViewport(GodotObject viewport)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomViewport, _godot_object, viewport);
	}
	/**
	
	*/
	Node getCustomViewport() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(_classBinding.getCustomViewport, _godot_object);
	}
	/**
	Returns the RID of the canvas used by this layer.
	*/
	RID getCanvas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getCanvas, _godot_object);
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
