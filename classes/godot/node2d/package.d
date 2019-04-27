/**
A 2D game object, parent of all 2D related nodes. Has a position, rotation, scale and Z-index.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.node2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.canvasitem;
import godot.node;
/**
A 2D game object, parent of all 2D related nodes. Has a position, rotation, scale and Z-index.

A 2D game object, with a position, rotation and scale. All 2D physics nodes and sprites inherit from Node2D. Use Node2D as a parent node to move, scale and rotate children in a 2D project. Also gives control on the node's render order.
*/
@GodotBaseClass struct Node2D
{
	enum string _GODOT_internal_name = "Node2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; CanvasItem _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_position") GodotMethod!(void, Vector2) setPosition;
		@GodotName("set_rotation") GodotMethod!(void, double) setRotation;
		@GodotName("set_rotation_degrees") GodotMethod!(void, double) setRotationDegrees;
		@GodotName("set_scale") GodotMethod!(void, Vector2) setScale;
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("get_rotation") GodotMethod!(double) getRotation;
		@GodotName("get_rotation_degrees") GodotMethod!(double) getRotationDegrees;
		@GodotName("get_scale") GodotMethod!(Vector2) getScale;
		@GodotName("rotate") GodotMethod!(void, double) rotate;
		@GodotName("move_local_x") GodotMethod!(void, double, bool) moveLocalX;
		@GodotName("move_local_y") GodotMethod!(void, double, bool) moveLocalY;
		@GodotName("translate") GodotMethod!(void, Vector2) translate;
		@GodotName("global_translate") GodotMethod!(void, Vector2) globalTranslate;
		@GodotName("apply_scale") GodotMethod!(void, Vector2) applyScale;
		@GodotName("set_global_position") GodotMethod!(void, Vector2) setGlobalPosition;
		@GodotName("get_global_position") GodotMethod!(Vector2) getGlobalPosition;
		@GodotName("set_global_rotation") GodotMethod!(void, double) setGlobalRotation;
		@GodotName("get_global_rotation") GodotMethod!(double) getGlobalRotation;
		@GodotName("set_global_rotation_degrees") GodotMethod!(void, double) setGlobalRotationDegrees;
		@GodotName("get_global_rotation_degrees") GodotMethod!(double) getGlobalRotationDegrees;
		@GodotName("set_global_scale") GodotMethod!(void, Vector2) setGlobalScale;
		@GodotName("get_global_scale") GodotMethod!(Vector2) getGlobalScale;
		@GodotName("set_transform") GodotMethod!(void, Transform2D) setTransform;
		@GodotName("set_global_transform") GodotMethod!(void, Transform2D) setGlobalTransform;
		@GodotName("look_at") GodotMethod!(void, Vector2) lookAt;
		@GodotName("get_angle_to") GodotMethod!(double, Vector2) getAngleTo;
		@GodotName("to_local") GodotMethod!(Vector2, Vector2) toLocal;
		@GodotName("to_global") GodotMethod!(Vector2, Vector2) toGlobal;
		@GodotName("set_z_index") GodotMethod!(void, long) setZIndex;
		@GodotName("get_z_index") GodotMethod!(long) getZIndex;
		@GodotName("set_z_as_relative") GodotMethod!(void, bool) setZAsRelative;
		@GodotName("is_z_relative") GodotMethod!(bool) isZRelative;
		@GodotName("get_relative_transform_to_parent") GodotMethod!(Transform2D, Node) getRelativeTransformToParent;
	}
	bool opEquals(in Node2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Node2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Node2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Node2D");
		if(constructor is null) return typeof(this).init;
		return cast(Node2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPosition, _godot_object, position);
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
	void setRotationDegrees(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRotationDegrees, _godot_object, degrees);
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
	Vector2 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getPosition, _godot_object);
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
	double getRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRotationDegrees, _godot_object);
	}
	/**
	
	*/
	Vector2 getScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScale, _godot_object);
	}
	/**
	Applies a rotation to the node, in radians, starting from its current rotation.
	*/
	void rotate(in double radians)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.rotate, _godot_object, radians);
	}
	/**
	Applies a local translation on the node's X axis based on the $(D Node._process)'s `delta`. If `scaled` is `false`, normalizes the movement.
	*/
	void moveLocalX(in double delta, in bool scaled = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.moveLocalX, _godot_object, delta, scaled);
	}
	/**
	Applies a local translation on the node's Y axis based on the $(D Node._process)'s `delta`. If `scaled` is `false`, normalizes the movement.
	*/
	void moveLocalY(in double delta, in bool scaled = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.moveLocalY, _godot_object, delta, scaled);
	}
	/**
	Translates the node by the given `offset` in local coordinates.
	*/
	void translate(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.translate, _godot_object, offset);
	}
	/**
	Adds the 'offset' vector to the node's global position.
	*/
	void globalTranslate(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.globalTranslate, _godot_object, offset);
	}
	/**
	Multiplies the current scale by the 'ratio' vector.
	*/
	void applyScale(in Vector2 ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyScale, _godot_object, ratio);
	}
	/**
	
	*/
	void setGlobalPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlobalPosition, _godot_object, position);
	}
	/**
	
	*/
	Vector2 getGlobalPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getGlobalPosition, _godot_object);
	}
	/**
	
	*/
	void setGlobalRotation(in double radians)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlobalRotation, _godot_object, radians);
	}
	/**
	
	*/
	double getGlobalRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGlobalRotation, _godot_object);
	}
	/**
	
	*/
	void setGlobalRotationDegrees(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlobalRotationDegrees, _godot_object, degrees);
	}
	/**
	
	*/
	double getGlobalRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGlobalRotationDegrees, _godot_object);
	}
	/**
	
	*/
	void setGlobalScale(in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlobalScale, _godot_object, scale);
	}
	/**
	
	*/
	Vector2 getGlobalScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getGlobalScale, _godot_object);
	}
	/**
	
	*/
	void setTransform(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransform, _godot_object, xform);
	}
	/**
	
	*/
	void setGlobalTransform(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGlobalTransform, _godot_object, xform);
	}
	/**
	Rotates the node so it points towards the 'point'.
	*/
	void lookAt(in Vector2 point)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lookAt, _godot_object, point);
	}
	/**
	Returns the angle between the node and the 'point' in radians.
	*/
	double getAngleTo(in Vector2 point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAngleTo, _godot_object, point);
	}
	/**
	Converts a global point's coordinates to local coordinates.
	*/
	Vector2 toLocal(in Vector2 global_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.toLocal, _godot_object, global_point);
	}
	/**
	Converts a local point's coordinates to global coordinates.
	*/
	Vector2 toGlobal(in Vector2 local_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.toGlobal, _godot_object, local_point);
	}
	/**
	
	*/
	void setZIndex(in long z_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setZIndex, _godot_object, z_index);
	}
	/**
	
	*/
	long getZIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getZIndex, _godot_object);
	}
	/**
	
	*/
	void setZAsRelative(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setZAsRelative, _godot_object, enable);
	}
	/**
	
	*/
	bool isZRelative() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isZRelative, _godot_object);
	}
	/**
	Returns the $(D Transform2D) relative to this node's parent.
	*/
	Transform2D getRelativeTransformToParent(Node parent) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getRelativeTransformToParent, _godot_object, parent);
	}
	/**
	Position, relative to the node's parent.
	*/
	@property Vector2 position()
	{
		return getPosition();
	}
	/// ditto
	@property void position(Vector2 v)
	{
		setPosition(v);
	}
	/**
	Rotation in radians, relative to the node's parent.
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
	Rotation in degrees, relative to the node's parent.
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
	The node's scale. Unscaled value: `(1, 1)`
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
	Local $(D Transform2D).
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
	Global position.
	*/
	@property Vector2 globalPosition()
	{
		return getGlobalPosition();
	}
	/// ditto
	@property void globalPosition(Vector2 v)
	{
		setGlobalPosition(v);
	}
	/**
	Global rotation in radians.
	*/
	@property double globalRotation()
	{
		return getGlobalRotation();
	}
	/// ditto
	@property void globalRotation(double v)
	{
		setGlobalRotation(v);
	}
	/**
	Global rotation in degrees.
	*/
	@property double globalRotationDegrees()
	{
		return getGlobalRotationDegrees();
	}
	/// ditto
	@property void globalRotationDegrees(double v)
	{
		setGlobalRotationDegrees(v);
	}
	/**
	Global scale.
	*/
	@property Vector2 globalScale()
	{
		return getGlobalScale();
	}
	/// ditto
	@property void globalScale(Vector2 v)
	{
		setGlobalScale(v);
	}
	/**
	Global $(D Transform2D).
	*/
	@property Transform2D globalTransform()
	{
		return getGlobalTransform();
	}
	/// ditto
	@property void globalTransform(Transform2D v)
	{
		setGlobalTransform(v);
	}
	/**
	Z-index. Controls the order in which the nodes render. A node with a higher Z-index will display in front of others.
	*/
	@property long zIndex()
	{
		return getZIndex();
	}
	/// ditto
	@property void zIndex(long v)
	{
		setZIndex(v);
	}
	/**
	If `true`, the node's Z-index is relative to its parent's Z-index. If this node's Z-index is 2 and its parent's effective Z-index is 3, then this node's effective Z-index will be 2 + 3 = 5.
	*/
	@property bool zAsRelative()
	{
		return isZRelative();
	}
	/// ditto
	@property void zAsRelative(bool v)
	{
		setZAsRelative(v);
	}
}
