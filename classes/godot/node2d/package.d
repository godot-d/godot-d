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
/**
A 2D game object, parent of all 2D related nodes. Has a position, rotation, scale and Z-index.

A 2D game object, with a position, rotation and scale. All 2D physics nodes and sprites inherit from Node2D. Use Node2D as a parent node to move, scale and rotate children in a 2D project. Also gives control on the node's render order.
*/
@GodotBaseClass struct Node2D
{
	static immutable string _GODOT_internal_name = "Node2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; CanvasItem _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_position") = _GODOT_set_position;
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		_GODOT_set_position.bind("Node2D", "set_position");
		ptrcall!(void)(_GODOT_set_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation") = _GODOT_set_rotation;
	/**
	
	*/
	void setRotation(in double radians)
	{
		_GODOT_set_rotation.bind("Node2D", "set_rotation");
		ptrcall!(void)(_GODOT_set_rotation, _godot_object, radians);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation_degrees") = _GODOT_set_rotation_degrees;
	/**
	
	*/
	void setRotationDegrees(in double degrees)
	{
		_GODOT_set_rotation_degrees.bind("Node2D", "set_rotation_degrees");
		ptrcall!(void)(_GODOT_set_rotation_degrees, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scale") = _GODOT_set_scale;
	/**
	
	*/
	void setScale(in Vector2 scale)
	{
		_GODOT_set_scale.bind("Node2D", "set_scale");
		ptrcall!(void)(_GODOT_set_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	/**
	
	*/
	Vector2 getPosition() const
	{
		_GODOT_get_position.bind("Node2D", "get_position");
		return ptrcall!(Vector2)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation") = _GODOT_get_rotation;
	/**
	
	*/
	double getRotation() const
	{
		_GODOT_get_rotation.bind("Node2D", "get_rotation");
		return ptrcall!(double)(_GODOT_get_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation_degrees") = _GODOT_get_rotation_degrees;
	/**
	
	*/
	double getRotationDegrees() const
	{
		_GODOT_get_rotation_degrees.bind("Node2D", "get_rotation_degrees");
		return ptrcall!(double)(_GODOT_get_rotation_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scale") = _GODOT_get_scale;
	/**
	
	*/
	Vector2 getScale() const
	{
		_GODOT_get_scale.bind("Node2D", "get_scale");
		return ptrcall!(Vector2)(_GODOT_get_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_rotate;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate") = _GODOT_rotate;
	/**
	Applies a rotation to the node, in radians, starting from its current rotation.
	*/
	void rotate(in double radians)
	{
		_GODOT_rotate.bind("Node2D", "rotate");
		ptrcall!(void)(_GODOT_rotate, _godot_object, radians);
	}
	package(godot) static GodotMethod!(void, double, bool) _GODOT_move_local_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_local_x") = _GODOT_move_local_x;
	/**
	Applies a local translation on the node's X axis based on the $(D Node._process)'s `delta`. If `scaled` is false, normalizes the movement.
	*/
	void moveLocalX(in double delta, in bool scaled = false)
	{
		_GODOT_move_local_x.bind("Node2D", "move_local_x");
		ptrcall!(void)(_GODOT_move_local_x, _godot_object, delta, scaled);
	}
	package(godot) static GodotMethod!(void, double, bool) _GODOT_move_local_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "move_local_y") = _GODOT_move_local_y;
	/**
	Applies a local translation on the node's Y axis based on the $(D Node._process)'s `delta`. If `scaled` is false, normalizes the movement.
	*/
	void moveLocalY(in double delta, in bool scaled = false)
	{
		_GODOT_move_local_y.bind("Node2D", "move_local_y");
		ptrcall!(void)(_GODOT_move_local_y, _godot_object, delta, scaled);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "translate") = _GODOT_translate;
	/**
	Translates the node by the given `offset` in local coordinates.
	*/
	void translate(in Vector2 offset)
	{
		_GODOT_translate.bind("Node2D", "translate");
		ptrcall!(void)(_GODOT_translate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_global_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "global_translate") = _GODOT_global_translate;
	/**
	Adds the 'offset' vector to the node's global position.
	*/
	void globalTranslate(in Vector2 offset)
	{
		_GODOT_global_translate.bind("Node2D", "global_translate");
		ptrcall!(void)(_GODOT_global_translate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_apply_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "apply_scale") = _GODOT_apply_scale;
	/**
	Multiplies the current scale by the 'ratio' vector.
	*/
	void applyScale(in Vector2 ratio)
	{
		_GODOT_apply_scale.bind("Node2D", "apply_scale");
		ptrcall!(void)(_GODOT_apply_scale, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_position") = _GODOT_set_global_position;
	/**
	
	*/
	void setGlobalPosition(in Vector2 position)
	{
		_GODOT_set_global_position.bind("Node2D", "set_global_position");
		ptrcall!(void)(_GODOT_set_global_position, _godot_object, position);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_position") = _GODOT_get_global_position;
	/**
	
	*/
	Vector2 getGlobalPosition() const
	{
		_GODOT_get_global_position.bind("Node2D", "get_global_position");
		return ptrcall!(Vector2)(_GODOT_get_global_position, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_global_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_rotation") = _GODOT_set_global_rotation;
	/**
	
	*/
	void setGlobalRotation(in double radians)
	{
		_GODOT_set_global_rotation.bind("Node2D", "set_global_rotation");
		ptrcall!(void)(_GODOT_set_global_rotation, _godot_object, radians);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_global_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_rotation") = _GODOT_get_global_rotation;
	/**
	
	*/
	double getGlobalRotation() const
	{
		_GODOT_get_global_rotation.bind("Node2D", "get_global_rotation");
		return ptrcall!(double)(_GODOT_get_global_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_global_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_rotation_degrees") = _GODOT_set_global_rotation_degrees;
	/**
	
	*/
	void setGlobalRotationDegrees(in double degrees)
	{
		_GODOT_set_global_rotation_degrees.bind("Node2D", "set_global_rotation_degrees");
		ptrcall!(void)(_GODOT_set_global_rotation_degrees, _godot_object, degrees);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_global_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_rotation_degrees") = _GODOT_get_global_rotation_degrees;
	/**
	
	*/
	double getGlobalRotationDegrees() const
	{
		_GODOT_get_global_rotation_degrees.bind("Node2D", "get_global_rotation_degrees");
		return ptrcall!(double)(_GODOT_get_global_rotation_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_global_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_scale") = _GODOT_set_global_scale;
	/**
	
	*/
	void setGlobalScale(in Vector2 scale)
	{
		_GODOT_set_global_scale.bind("Node2D", "set_global_scale");
		ptrcall!(void)(_GODOT_set_global_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_global_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_scale") = _GODOT_get_global_scale;
	/**
	
	*/
	Vector2 getGlobalScale() const
	{
		_GODOT_get_global_scale.bind("Node2D", "get_global_scale");
		return ptrcall!(Vector2)(_GODOT_get_global_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	/**
	
	*/
	void setTransform(in Transform2D xform)
	{
		_GODOT_set_transform.bind("Node2D", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, xform);
	}
	package(godot) static GodotMethod!(void, Transform2D) _GODOT_set_global_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_transform") = _GODOT_set_global_transform;
	/**
	
	*/
	void setGlobalTransform(in Transform2D xform)
	{
		_GODOT_set_global_transform.bind("Node2D", "set_global_transform");
		ptrcall!(void)(_GODOT_set_global_transform, _godot_object, xform);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_look_at;
	package(godot) alias _GODOT_methodBindInfo(string name : "look_at") = _GODOT_look_at;
	/**
	Rotates the node so it points towards the 'point'.
	*/
	void lookAt(in Vector2 point)
	{
		_GODOT_look_at.bind("Node2D", "look_at");
		ptrcall!(void)(_GODOT_look_at, _godot_object, point);
	}
	package(godot) static GodotMethod!(double, Vector2) _GODOT_get_angle_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_angle_to") = _GODOT_get_angle_to;
	/**
	Returns the angle between the node and the 'point' in radians.
	*/
	double getAngleTo(in Vector2 point) const
	{
		_GODOT_get_angle_to.bind("Node2D", "get_angle_to");
		return ptrcall!(double)(_GODOT_get_angle_to, _godot_object, point);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_to_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "to_local") = _GODOT_to_local;
	/**
	Converts a global point's coordinates to local coordinates.
	*/
	Vector2 toLocal(in Vector2 global_point) const
	{
		_GODOT_to_local.bind("Node2D", "to_local");
		return ptrcall!(Vector2)(_GODOT_to_local, _godot_object, global_point);
	}
	package(godot) static GodotMethod!(Vector2, Vector2) _GODOT_to_global;
	package(godot) alias _GODOT_methodBindInfo(string name : "to_global") = _GODOT_to_global;
	/**
	Converts a local point's coordinates to global coordinates.
	*/
	Vector2 toGlobal(in Vector2 local_point) const
	{
		_GODOT_to_global.bind("Node2D", "to_global");
		return ptrcall!(Vector2)(_GODOT_to_global, _godot_object, local_point);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_z_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_z_index") = _GODOT_set_z_index;
	/**
	
	*/
	void setZIndex(in long z_index)
	{
		_GODOT_set_z_index.bind("Node2D", "set_z_index");
		ptrcall!(void)(_GODOT_set_z_index, _godot_object, z_index);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_z_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_z_index") = _GODOT_get_z_index;
	/**
	
	*/
	long getZIndex() const
	{
		_GODOT_get_z_index.bind("Node2D", "get_z_index");
		return ptrcall!(long)(_GODOT_get_z_index, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_z_as_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_z_as_relative") = _GODOT_set_z_as_relative;
	/**
	
	*/
	void setZAsRelative(in bool enable)
	{
		_GODOT_set_z_as_relative.bind("Node2D", "set_z_as_relative");
		ptrcall!(void)(_GODOT_set_z_as_relative, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_z_relative;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_z_relative") = _GODOT_is_z_relative;
	/**
	
	*/
	bool isZRelative() const
	{
		_GODOT_is_z_relative.bind("Node2D", "is_z_relative");
		return ptrcall!(bool)(_GODOT_is_z_relative, _godot_object);
	}
	package(godot) static GodotMethod!(Transform2D, GodotObject) _GODOT_get_relative_transform_to_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_relative_transform_to_parent") = _GODOT_get_relative_transform_to_parent;
	/**
	Returns the $(D Transform2D) relative to this node's parent.
	*/
	Transform2D getRelativeTransformToParent(GodotObject parent) const
	{
		_GODOT_get_relative_transform_to_parent.bind("Node2D", "get_relative_transform_to_parent");
		return ptrcall!(Transform2D)(_GODOT_get_relative_transform_to_parent, _godot_object, parent);
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
	If `true` the node's Z-index is relative to its parent's Z-index. If this node's Z-index is 2 and its parent's effective Z-index is 3, then this node's effective Z-index will be 2 + 3 = 5.
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
