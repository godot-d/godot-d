/**
Most basic 3D game object, parent of all 3D related nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spatial;
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
import godot.world;
import godot.spatialgizmo;
/**
Most basic 3D game object, parent of all 3D related nodes.

Most basic 3D game object, with a 3D $(D Transform) and visibility settings. All other 3D game objects inherit from Spatial. Use Spatial as a parent node to move, scale, rotate and show/hide children in a 3D project.
Affine operations (rotate, scale, translate) happen in parent's local coordinate system, unless the Spatial object is set as top level. Affine operations in this coordinate system correspond to direct affine operations on the Spatial's transform. The word local below refers to this coordinate system. The coordinate system that is attached to the Spatial object itself is referred to as object-local coordinate system.
*/
@GodotBaseClass struct Spatial
{
	static immutable string _GODOT_internal_name = "Spatial";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Spatial other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Spatial opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Spatial _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Spatial");
		if(constructor is null) return typeof(this).init;
		return cast(Spatial)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		Spatial nodes receives this notification when their global transform changes. This means that either the current or a parent node changed its transform.
		In order for NOTIFICATION_TRANSFORM_CHANGED to work user first needs to ask for it, with set_notify_transform(true).
		*/
		notificationTransformChanged = 29,
		/**
		Spatial nodes receives this notification when they are registered to new $(D World) resource.
		*/
		notificationEnterWorld = 41,
		/**
		Spatial nodes receives this notification when they are unregistered from current $(D World) resource.
		*/
		notificationExitWorld = 42,
		/**
		Spatial nodes receives this notification when their visibility changes.
		*/
		notificationVisibilityChanged = 43,
	}
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_transform") = _GODOT_set_transform;
	/**
	
	*/
	void setTransform(in Transform local)
	{
		_GODOT_set_transform.bind("Spatial", "set_transform");
		ptrcall!(void)(_GODOT_set_transform, _godot_object, local);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_transform") = _GODOT_get_transform;
	/**
	
	*/
	Transform getTransform() const
	{
		_GODOT_get_transform.bind("Spatial", "get_transform");
		return ptrcall!(Transform)(_GODOT_get_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_translation") = _GODOT_set_translation;
	/**
	
	*/
	void setTranslation(in Vector3 translation)
	{
		_GODOT_set_translation.bind("Spatial", "set_translation");
		ptrcall!(void)(_GODOT_set_translation, _godot_object, translation);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_translation") = _GODOT_get_translation;
	/**
	
	*/
	Vector3 getTranslation() const
	{
		_GODOT_get_translation.bind("Spatial", "get_translation");
		return ptrcall!(Vector3)(_GODOT_get_translation, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation") = _GODOT_set_rotation;
	/**
	
	*/
	void setRotation(in Vector3 euler)
	{
		_GODOT_set_rotation.bind("Spatial", "set_rotation");
		ptrcall!(void)(_GODOT_set_rotation, _godot_object, euler);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation") = _GODOT_get_rotation;
	/**
	
	*/
	Vector3 getRotation() const
	{
		_GODOT_get_rotation.bind("Spatial", "get_rotation");
		return ptrcall!(Vector3)(_GODOT_get_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rotation_degrees") = _GODOT_set_rotation_degrees;
	/**
	
	*/
	void setRotationDegrees(in Vector3 euler_degrees)
	{
		_GODOT_set_rotation_degrees.bind("Spatial", "set_rotation_degrees");
		ptrcall!(void)(_GODOT_set_rotation_degrees, _godot_object, euler_degrees);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rotation_degrees") = _GODOT_get_rotation_degrees;
	/**
	
	*/
	Vector3 getRotationDegrees() const
	{
		_GODOT_get_rotation_degrees.bind("Spatial", "get_rotation_degrees");
		return ptrcall!(Vector3)(_GODOT_get_rotation_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scale") = _GODOT_set_scale;
	/**
	
	*/
	void setScale(in Vector3 scale)
	{
		_GODOT_set_scale.bind("Spatial", "set_scale");
		ptrcall!(void)(_GODOT_set_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scale") = _GODOT_get_scale;
	/**
	
	*/
	Vector3 getScale() const
	{
		_GODOT_get_scale.bind("Spatial", "get_scale");
		return ptrcall!(Vector3)(_GODOT_get_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_global_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_transform") = _GODOT_set_global_transform;
	/**
	
	*/
	void setGlobalTransform(in Transform global)
	{
		_GODOT_set_global_transform.bind("Spatial", "set_global_transform");
		ptrcall!(void)(_GODOT_set_global_transform, _godot_object, global);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_global_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_transform") = _GODOT_get_global_transform;
	/**
	
	*/
	Transform getGlobalTransform() const
	{
		_GODOT_get_global_transform.bind("Spatial", "get_global_transform");
		return ptrcall!(Transform)(_GODOT_get_global_transform, _godot_object);
	}
	package(godot) static GodotMethod!(Spatial) _GODOT_get_parent_spatial;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent_spatial") = _GODOT_get_parent_spatial;
	/**
	Returns the parent `Spatial`, or an empty $(D GodotObject) if no parent exists or parent is not of type `Spatial`.
	*/
	Spatial getParentSpatial() const
	{
		_GODOT_get_parent_spatial.bind("Spatial", "get_parent_spatial");
		return ptrcall!(Spatial)(_GODOT_get_parent_spatial, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ignore_transform_notification;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ignore_transform_notification") = _GODOT_set_ignore_transform_notification;
	/**
	Set whether the node ignores notification that its transformation (global or local) changed.
	*/
	void setIgnoreTransformNotification(in bool enabled)
	{
		_GODOT_set_ignore_transform_notification.bind("Spatial", "set_ignore_transform_notification");
		ptrcall!(void)(_GODOT_set_ignore_transform_notification, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_as_toplevel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_toplevel") = _GODOT_set_as_toplevel;
	/**
	Makes the node ignore its parents transformations. Node transformations are only in global space.
	*/
	void setAsToplevel(in bool enable)
	{
		_GODOT_set_as_toplevel.bind("Spatial", "set_as_toplevel");
		ptrcall!(void)(_GODOT_set_as_toplevel, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_set_as_toplevel;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_set_as_toplevel") = _GODOT_is_set_as_toplevel;
	/**
	Returns whether this node is set as Toplevel, that is whether it ignores its parent nodes transformations.
	*/
	bool isSetAsToplevel() const
	{
		_GODOT_is_set_as_toplevel.bind("Spatial", "is_set_as_toplevel");
		return ptrcall!(bool)(_GODOT_is_set_as_toplevel, _godot_object);
	}
	package(godot) static GodotMethod!(World) _GODOT_get_world;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world") = _GODOT_get_world;
	/**
	Returns the current $(D World) resource this Spatial node is registered to.
	*/
	Ref!World getWorld() const
	{
		_GODOT_get_world.bind("Spatial", "get_world");
		return ptrcall!(World)(_GODOT_get_world, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__update_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "_update_gizmo") = _GODOT__update_gizmo;
	/**
	
	*/
	void _updateGizmo()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_gizmo");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_update_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_gizmo") = _GODOT_update_gizmo;
	/**
	Updates the $(D SpatialGizmo) of this node.
	*/
	void updateGizmo()
	{
		_GODOT_update_gizmo.bind("Spatial", "update_gizmo");
		ptrcall!(void)(_GODOT_update_gizmo, _godot_object);
	}
	package(godot) static GodotMethod!(void, SpatialGizmo) _GODOT_set_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_gizmo") = _GODOT_set_gizmo;
	/**
	
	*/
	void setGizmo(SpatialGizmo gizmo)
	{
		_GODOT_set_gizmo.bind("Spatial", "set_gizmo");
		ptrcall!(void)(_GODOT_set_gizmo, _godot_object, gizmo);
	}
	package(godot) static GodotMethod!(SpatialGizmo) _GODOT_get_gizmo;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_gizmo") = _GODOT_get_gizmo;
	/**
	
	*/
	Ref!SpatialGizmo getGizmo() const
	{
		_GODOT_get_gizmo.bind("Spatial", "get_gizmo");
		return ptrcall!(SpatialGizmo)(_GODOT_get_gizmo, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visible") = _GODOT_set_visible;
	/**
	
	*/
	void setVisible(in bool visible)
	{
		_GODOT_set_visible.bind("Spatial", "set_visible");
		ptrcall!(void)(_GODOT_set_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_visible") = _GODOT_is_visible;
	/**
	
	*/
	bool isVisible() const
	{
		_GODOT_is_visible.bind("Spatial", "is_visible");
		return ptrcall!(bool)(_GODOT_is_visible, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_visible_in_tree;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_visible_in_tree") = _GODOT_is_visible_in_tree;
	/**
	Returns whether the node is visible, taking into consideration that its parents visibility.
	*/
	bool isVisibleInTree() const
	{
		_GODOT_is_visible_in_tree.bind("Spatial", "is_visible_in_tree");
		return ptrcall!(bool)(_GODOT_is_visible_in_tree, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_show;
	package(godot) alias _GODOT_methodBindInfo(string name : "show") = _GODOT_show;
	/**
	Enables rendering of this node. Change Spatial Visible property to "True".
	*/
	void show()
	{
		_GODOT_show.bind("Spatial", "show");
		ptrcall!(void)(_GODOT_show, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_hide;
	package(godot) alias _GODOT_methodBindInfo(string name : "hide") = _GODOT_hide;
	/**
	Disables rendering of this node. Change Spatial Visible property to false.
	*/
	void hide()
	{
		_GODOT_hide.bind("Spatial", "hide");
		ptrcall!(void)(_GODOT_hide, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_notify_local_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_notify_local_transform") = _GODOT_set_notify_local_transform;
	/**
	Set whether the node notifies about its local transformation changes. Spatial will not propagate this by default.
	*/
	void setNotifyLocalTransform(in bool enable)
	{
		_GODOT_set_notify_local_transform.bind("Spatial", "set_notify_local_transform");
		ptrcall!(void)(_GODOT_set_notify_local_transform, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_local_transform_notification_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_local_transform_notification_enabled") = _GODOT_is_local_transform_notification_enabled;
	/**
	Returns whether node notifies about its local transformation changes. Spatial will not propagate this by default.
	*/
	bool isLocalTransformNotificationEnabled() const
	{
		_GODOT_is_local_transform_notification_enabled.bind("Spatial", "is_local_transform_notification_enabled");
		return ptrcall!(bool)(_GODOT_is_local_transform_notification_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_notify_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_notify_transform") = _GODOT_set_notify_transform;
	/**
	Set whether the node notifies about its global and local transformation changes. Spatial will not propagate this by default.
	*/
	void setNotifyTransform(in bool enable)
	{
		_GODOT_set_notify_transform.bind("Spatial", "set_notify_transform");
		ptrcall!(void)(_GODOT_set_notify_transform, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_transform_notification_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_transform_notification_enabled") = _GODOT_is_transform_notification_enabled;
	/**
	Returns whether the node notifies about its global and local transformation changes. Spatial will not propagate this by default.
	*/
	bool isTransformNotificationEnabled() const
	{
		_GODOT_is_transform_notification_enabled.bind("Spatial", "is_transform_notification_enabled");
		return ptrcall!(bool)(_GODOT_is_transform_notification_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3, double) _GODOT_rotate;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate") = _GODOT_rotate;
	/**
	Rotates the local transformation around axis, a unit $(D Vector3), by specified angle in radians.
	*/
	void rotate(in Vector3 axis, in double angle)
	{
		_GODOT_rotate.bind("Spatial", "rotate");
		ptrcall!(void)(_GODOT_rotate, _godot_object, axis, angle);
	}
	package(godot) static GodotMethod!(void, Vector3, double) _GODOT_global_rotate;
	package(godot) alias _GODOT_methodBindInfo(string name : "global_rotate") = _GODOT_global_rotate;
	/**
	Rotates the global (world) transformation around axis, a unit $(D Vector3), by specified angle in radians. The rotation axis is in global coordinate system.
	*/
	void globalRotate(in Vector3 axis, in double angle)
	{
		_GODOT_global_rotate.bind("Spatial", "global_rotate");
		ptrcall!(void)(_GODOT_global_rotate, _godot_object, axis, angle);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_global_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "global_scale") = _GODOT_global_scale;
	/**
	
	*/
	void globalScale(in Vector3 scale)
	{
		_GODOT_global_scale.bind("Spatial", "global_scale");
		ptrcall!(void)(_GODOT_global_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_global_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "global_translate") = _GODOT_global_translate;
	/**
	Moves the global (world) transformation by $(D Vector3) offset. The offset is in global coordinate system.
	*/
	void globalTranslate(in Vector3 offset)
	{
		_GODOT_global_translate.bind("Spatial", "global_translate");
		ptrcall!(void)(_GODOT_global_translate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void, Vector3, double) _GODOT_rotate_object_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate_object_local") = _GODOT_rotate_object_local;
	/**
	Rotates the local transformation around axis, a unit $(D Vector3), by specified angle in radians. The rotation axis is in object-local coordinate system.
	*/
	void rotateObjectLocal(in Vector3 axis, in double angle)
	{
		_GODOT_rotate_object_local.bind("Spatial", "rotate_object_local");
		ptrcall!(void)(_GODOT_rotate_object_local, _godot_object, axis, angle);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_scale_object_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "scale_object_local") = _GODOT_scale_object_local;
	/**
	Scales the local transformation by given 3D scale factors in object-local coordinate system.
	*/
	void scaleObjectLocal(in Vector3 scale)
	{
		_GODOT_scale_object_local.bind("Spatial", "scale_object_local");
		ptrcall!(void)(_GODOT_scale_object_local, _godot_object, scale);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_translate_object_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "translate_object_local") = _GODOT_translate_object_local;
	/**
	
	*/
	void translateObjectLocal(in Vector3 offset)
	{
		_GODOT_translate_object_local.bind("Spatial", "translate_object_local");
		ptrcall!(void)(_GODOT_translate_object_local, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_rotate_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate_x") = _GODOT_rotate_x;
	/**
	Rotates the local transformation around the X axis by angle in radians
	*/
	void rotateX(in double angle)
	{
		_GODOT_rotate_x.bind("Spatial", "rotate_x");
		ptrcall!(void)(_GODOT_rotate_x, _godot_object, angle);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_rotate_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate_y") = _GODOT_rotate_y;
	/**
	Rotates the local transformation around the Y axis by angle in radians.
	*/
	void rotateY(in double angle)
	{
		_GODOT_rotate_y.bind("Spatial", "rotate_y");
		ptrcall!(void)(_GODOT_rotate_y, _godot_object, angle);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_rotate_z;
	package(godot) alias _GODOT_methodBindInfo(string name : "rotate_z") = _GODOT_rotate_z;
	/**
	Rotates the local transformation around the Z axis by angle in radians.
	*/
	void rotateZ(in double angle)
	{
		_GODOT_rotate_z.bind("Spatial", "rotate_z");
		ptrcall!(void)(_GODOT_rotate_z, _godot_object, angle);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "translate") = _GODOT_translate;
	/**
	Changes the node's position by given offset $(D Vector3).
	*/
	void translate(in Vector3 offset)
	{
		_GODOT_translate.bind("Spatial", "translate");
		ptrcall!(void)(_GODOT_translate, _godot_object, offset);
	}
	package(godot) static GodotMethod!(void) _GODOT_orthonormalize;
	package(godot) alias _GODOT_methodBindInfo(string name : "orthonormalize") = _GODOT_orthonormalize;
	/**
	Resets this node's transformations (like scale, skew and taper) preserving its rotation and translation by performing Gram-Schmidt orthonormalization on this node's $(D Transform3D).
	*/
	void orthonormalize()
	{
		_GODOT_orthonormalize.bind("Spatial", "orthonormalize");
		ptrcall!(void)(_GODOT_orthonormalize, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_set_identity;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_identity") = _GODOT_set_identity;
	/**
	Reset all transformations for this node. Set its $(D Transform3D) to identity matrix.
	*/
	void setIdentity()
	{
		_GODOT_set_identity.bind("Spatial", "set_identity");
		ptrcall!(void)(_GODOT_set_identity, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3, Vector3) _GODOT_look_at;
	package(godot) alias _GODOT_methodBindInfo(string name : "look_at") = _GODOT_look_at;
	/**
	Rotates itself so that the local -Z axis points towards the `target` position.
	The transform will first be rotated around the given `up` vector, and then fully aligned to the target by a further rotation around an axis perpendicular to both the `target` and `up` vectors.
	Operations take place in global space.
	*/
	void lookAt(in Vector3 target, in Vector3 up)
	{
		_GODOT_look_at.bind("Spatial", "look_at");
		ptrcall!(void)(_GODOT_look_at, _godot_object, target, up);
	}
	package(godot) static GodotMethod!(void, Vector3, Vector3, Vector3) _GODOT_look_at_from_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "look_at_from_position") = _GODOT_look_at_from_position;
	/**
	Moves the node to the specified `position`, and then rotates itself to point toward the `target` as per $(D lookAt). Operations take place in global space.
	*/
	void lookAtFromPosition(in Vector3 position, in Vector3 target, in Vector3 up)
	{
		_GODOT_look_at_from_position.bind("Spatial", "look_at_from_position");
		ptrcall!(void)(_GODOT_look_at_from_position, _godot_object, position, target, up);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_to_local;
	package(godot) alias _GODOT_methodBindInfo(string name : "to_local") = _GODOT_to_local;
	/**
	Transforms $(D Vector3) "global_point" from world space to this node's local space.
	*/
	Vector3 toLocal(in Vector3 global_point) const
	{
		_GODOT_to_local.bind("Spatial", "to_local");
		return ptrcall!(Vector3)(_GODOT_to_local, _godot_object, global_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector3) _GODOT_to_global;
	package(godot) alias _GODOT_methodBindInfo(string name : "to_global") = _GODOT_to_global;
	/**
	Transforms $(D Vector3) "local_point" from this node's local space to world space.
	*/
	Vector3 toGlobal(in Vector3 local_point) const
	{
		_GODOT_to_global.bind("Spatial", "to_global");
		return ptrcall!(Vector3)(_GODOT_to_global, _godot_object, local_point);
	}
	/**
	Local space $(D Transform) of this node, with respect to the parent node.
	*/
	@property Transform transform()
	{
		return getTransform();
	}
	/// ditto
	@property void transform(Transform v)
	{
		setTransform(v);
	}
	/**
	World space (global) $(D Transform) of this node.
	*/
	@property Transform globalTransform()
	{
		return getGlobalTransform();
	}
	/// ditto
	@property void globalTransform(Transform v)
	{
		setGlobalTransform(v);
	}
	/**
	Local translation of this node.
	*/
	@property Vector3 translation()
	{
		return getTranslation();
	}
	/// ditto
	@property void translation(Vector3 v)
	{
		setTranslation(v);
	}
	/**
	Rotation part of the local transformation, specified in terms of YXZ-Euler angles in the format (X-angle, Y-angle, Z-angle), in degrees.
	*/
	@property Vector3 rotationDegrees()
	{
		return getRotationDegrees();
	}
	/// ditto
	@property void rotationDegrees(Vector3 v)
	{
		setRotationDegrees(v);
	}
	/**
	Rotation part of the local transformation, specified in terms of YXZ-Euler angles in the format (X-angle, Y-angle, Z-angle), in radians.
	Note that in the mathematical sense, rotation is a matrix and not a vector. The three Euler angles, which are the three indepdent parameters of the Euler-angle parametrization of the rotation matrix, are stored in a $(D Vector3) data structure not because the rotation is a vector, but only because $(D Vector3) exists as a convenient data-structure to store 3 floating point numbers. Therefore, applying affine operations on the rotation "vector" is not meaningful.
	*/
	@property Vector3 rotation()
	{
		return getRotation();
	}
	/// ditto
	@property void rotation(Vector3 v)
	{
		setRotation(v);
	}
	/**
	Scale part of the local transformation.
	*/
	@property Vector3 scale()
	{
		return getScale();
	}
	/// ditto
	@property void scale(Vector3 v)
	{
		setScale(v);
	}
	/**
	Visibility of this node. Toggles if this node is rendered.
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
	The SpatialGizmo for this node. Used for example in $(D EditorSpatialGizmo) as custom visualization and editing handles in Editor.
	*/
	@property SpatialGizmo gizmo()
	{
		return getGizmo();
	}
	/// ditto
	@property void gizmo(SpatialGizmo v)
	{
		setGizmo(v);
	}
}
