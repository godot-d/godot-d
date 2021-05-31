/**
Most basic 3D game object, parent of all 3D-related nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spatial;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.spatialgizmo;
import godot.world;
/**
Most basic 3D game object, parent of all 3D-related nodes.

Most basic 3D game object, with a 3D $(D Transform) and visibility settings. All other 3D game objects inherit from Spatial. Use $(D Spatial) as a parent node to move, scale, rotate and show/hide children in a 3D project.
Affine operations (rotate, scale, translate) happen in parent's local coordinate system, unless the $(D Spatial) object is set as top-level. Affine operations in this coordinate system correspond to direct affine operations on the $(D Spatial)'s transform. The word local below refers to this coordinate system. The coordinate system that is attached to the $(D Spatial) object itself is referred to as object-local coordinate system.
$(B Note:) Unless otherwise specified, all methods that have angle parameters must have angles specified as $(I radians). To convert degrees to radians, use $(D @GDScript.deg2rad).
*/
@GodotBaseClass struct Spatial
{
	package(godot) enum string _GODOT_internal_name = "Spatial";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_update_gizmo") GodotMethod!(void) _updateGizmo;
		@GodotName("force_update_transform") GodotMethod!(void) forceUpdateTransform;
		@GodotName("get_gizmo") GodotMethod!(SpatialGizmo) getGizmo;
		@GodotName("get_global_transform") GodotMethod!(Transform) getGlobalTransform;
		@GodotName("get_parent_spatial") GodotMethod!(Spatial) getParentSpatial;
		@GodotName("get_rotation") GodotMethod!(Vector3) getRotation;
		@GodotName("get_rotation_degrees") GodotMethod!(Vector3) getRotationDegrees;
		@GodotName("get_scale") GodotMethod!(Vector3) getScale;
		@GodotName("get_transform") GodotMethod!(Transform) getTransform;
		@GodotName("get_translation") GodotMethod!(Vector3) getTranslation;
		@GodotName("get_world") GodotMethod!(World) getWorld;
		@GodotName("global_rotate") GodotMethod!(void, Vector3, double) globalRotate;
		@GodotName("global_scale") GodotMethod!(void, Vector3) globalScale;
		@GodotName("global_translate") GodotMethod!(void, Vector3) globalTranslate;
		@GodotName("hide") GodotMethod!(void) hide;
		@GodotName("is_local_transform_notification_enabled") GodotMethod!(bool) isLocalTransformNotificationEnabled;
		@GodotName("is_scale_disabled") GodotMethod!(bool) isScaleDisabled;
		@GodotName("is_set_as_toplevel") GodotMethod!(bool) isSetAsToplevel;
		@GodotName("is_transform_notification_enabled") GodotMethod!(bool) isTransformNotificationEnabled;
		@GodotName("is_visible") GodotMethod!(bool) isVisible;
		@GodotName("is_visible_in_tree") GodotMethod!(bool) isVisibleInTree;
		@GodotName("look_at") GodotMethod!(void, Vector3, Vector3) lookAt;
		@GodotName("look_at_from_position") GodotMethod!(void, Vector3, Vector3, Vector3) lookAtFromPosition;
		@GodotName("orthonormalize") GodotMethod!(void) orthonormalize;
		@GodotName("rotate") GodotMethod!(void, Vector3, double) rotate;
		@GodotName("rotate_object_local") GodotMethod!(void, Vector3, double) rotateObjectLocal;
		@GodotName("rotate_x") GodotMethod!(void, double) rotateX;
		@GodotName("rotate_y") GodotMethod!(void, double) rotateY;
		@GodotName("rotate_z") GodotMethod!(void, double) rotateZ;
		@GodotName("scale_object_local") GodotMethod!(void, Vector3) scaleObjectLocal;
		@GodotName("set_as_toplevel") GodotMethod!(void, bool) setAsToplevel;
		@GodotName("set_disable_scale") GodotMethod!(void, bool) setDisableScale;
		@GodotName("set_gizmo") GodotMethod!(void, SpatialGizmo) setGizmo;
		@GodotName("set_global_transform") GodotMethod!(void, Transform) setGlobalTransform;
		@GodotName("set_identity") GodotMethod!(void) setIdentity;
		@GodotName("set_ignore_transform_notification") GodotMethod!(void, bool) setIgnoreTransformNotification;
		@GodotName("set_notify_local_transform") GodotMethod!(void, bool) setNotifyLocalTransform;
		@GodotName("set_notify_transform") GodotMethod!(void, bool) setNotifyTransform;
		@GodotName("set_rotation") GodotMethod!(void, Vector3) setRotation;
		@GodotName("set_rotation_degrees") GodotMethod!(void, Vector3) setRotationDegrees;
		@GodotName("set_scale") GodotMethod!(void, Vector3) setScale;
		@GodotName("set_transform") GodotMethod!(void, Transform) setTransform;
		@GodotName("set_translation") GodotMethod!(void, Vector3) setTranslation;
		@GodotName("set_visible") GodotMethod!(void, bool) setVisible;
		@GodotName("show") GodotMethod!(void) show;
		@GodotName("to_global") GodotMethod!(Vector3, Vector3) toGlobal;
		@GodotName("to_local") GodotMethod!(Vector3, Vector3) toLocal;
		@GodotName("translate") GodotMethod!(void, Vector3) translate;
		@GodotName("translate_object_local") GodotMethod!(void, Vector3) translateObjectLocal;
		@GodotName("update_gizmo") GodotMethod!(void) updateGizmo;
	}
	/// 
	pragma(inline, true) bool opEquals(in Spatial other) const
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
	/// Construct a new instance of Spatial.
	/// Note: use `memnew!Spatial` instead.
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
		/**
		Spatial nodes receives this notification when their global transform changes. This means that either the current or a parent node changed its transform.
		In order for $(D constant NOTIFICATION_TRANSFORM_CHANGED) to work, users first need to ask for it, with $(D setNotifyTransform). The notification is also sent if the node is in the editor context and it has a valid gizmo.
		*/
		notificationTransformChanged = 2000,
	}
	/**
	
	*/
	void _updateGizmo()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_gizmo");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Forces the transform to update. Transform changes in physics are not instant for performance reasons. Transforms are accumulated and then set. Use this if you need an up-to-date transform when doing physics operations.
	*/
	void forceUpdateTransform()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceUpdateTransform, _godot_object);
	}
	/**
	
	*/
	Ref!SpatialGizmo getGizmo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialGizmo)(GDNativeClassBinding.getGizmo, _godot_object);
	}
	/**
	
	*/
	Transform getGlobalTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getGlobalTransform, _godot_object);
	}
	/**
	Returns the parent $(D Spatial), or an empty $(D GodotObject) if no parent exists or parent is not of type $(D Spatial).
	*/
	Spatial getParentSpatial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Spatial)(GDNativeClassBinding.getParentSpatial, _godot_object);
	}
	/**
	
	*/
	Vector3 getRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getRotation, _godot_object);
	}
	/**
	
	*/
	Vector3 getRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getRotationDegrees, _godot_object);
	}
	/**
	
	*/
	Vector3 getScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getScale, _godot_object);
	}
	/**
	
	*/
	Transform getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getTransform, _godot_object);
	}
	/**
	
	*/
	Vector3 getTranslation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getTranslation, _godot_object);
	}
	/**
	Returns the current $(D World) resource this $(D Spatial) node is registered to.
	*/
	Ref!World getWorld() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World)(GDNativeClassBinding.getWorld, _godot_object);
	}
	/**
	Rotates the global (world) transformation around axis, a unit $(D Vector3), by specified angle in radians. The rotation axis is in global coordinate system.
	*/
	void globalRotate(in Vector3 axis, in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalRotate, _godot_object, axis, angle);
	}
	/**
	Scales the global (world) transformation by the given $(D Vector3) scale factors.
	*/
	void globalScale(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalScale, _godot_object, scale);
	}
	/**
	Moves the global (world) transformation by $(D Vector3) offset. The offset is in global coordinate system.
	*/
	void globalTranslate(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalTranslate, _godot_object, offset);
	}
	/**
	Disables rendering of this node. Changes $(D visible) to `false`.
	*/
	void hide()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.hide, _godot_object);
	}
	/**
	Returns whether node notifies about its local transformation changes. $(D Spatial) will not propagate this by default.
	*/
	bool isLocalTransformNotificationEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isLocalTransformNotificationEnabled, _godot_object);
	}
	/**
	Returns whether this node uses a scale of `(1, 1, 1)` or its local transformation scale.
	*/
	bool isScaleDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isScaleDisabled, _godot_object);
	}
	/**
	Returns whether this node is set as Toplevel, that is whether it ignores its parent nodes transformations.
	*/
	bool isSetAsToplevel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSetAsToplevel, _godot_object);
	}
	/**
	Returns whether the node notifies about its global and local transformation changes. $(D Spatial) will not propagate this by default.
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
	Returns `true` if the node is present in the $(D SceneTree), its $(D visible) property is `true` and all its antecedents are also visible. If any antecedent is hidden, this node will not be visible in the scene tree.
	*/
	bool isVisibleInTree() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVisibleInTree, _godot_object);
	}
	/**
	Rotates itself so that the local -Z axis points towards the `target` position.
	The transform will first be rotated around the given `up` vector, and then fully aligned to the target by a further rotation around an axis perpendicular to both the `target` and `up` vectors.
	Operations take place in global space.
	*/
	void lookAt(in Vector3 target, in Vector3 up)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lookAt, _godot_object, target, up);
	}
	/**
	Moves the node to the specified `position`, and then rotates itself to point toward the `target` as per $(D lookAt). Operations take place in global space.
	*/
	void lookAtFromPosition(in Vector3 position, in Vector3 target, in Vector3 up)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lookAtFromPosition, _godot_object, position, target, up);
	}
	/**
	Resets this node's transformations (like scale, skew and taper) preserving its rotation and translation by performing Gram-Schmidt orthonormalization on this node's $(D Transform).
	*/
	void orthonormalize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.orthonormalize, _godot_object);
	}
	/**
	Rotates the local transformation around axis, a unit $(D Vector3), by specified angle in radians.
	*/
	void rotate(in Vector3 axis, in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotate, _godot_object, axis, angle);
	}
	/**
	Rotates the local transformation around axis, a unit $(D Vector3), by specified angle in radians. The rotation axis is in object-local coordinate system.
	*/
	void rotateObjectLocal(in Vector3 axis, in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotateObjectLocal, _godot_object, axis, angle);
	}
	/**
	Rotates the local transformation around the X axis by angle in radians.
	*/
	void rotateX(in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotateX, _godot_object, angle);
	}
	/**
	Rotates the local transformation around the Y axis by angle in radians.
	*/
	void rotateY(in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotateY, _godot_object, angle);
	}
	/**
	Rotates the local transformation around the Z axis by angle in radians.
	*/
	void rotateZ(in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotateZ, _godot_object, angle);
	}
	/**
	Scales the local transformation by given 3D scale factors in object-local coordinate system.
	*/
	void scaleObjectLocal(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scaleObjectLocal, _godot_object, scale);
	}
	/**
	Makes the node ignore its parents transformations. Node transformations are only in global space.
	*/
	void setAsToplevel(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsToplevel, _godot_object, enable);
	}
	/**
	Sets whether the node uses a scale of `(1, 1, 1)` or its local transformation scale. Changes to the local transformation scale are preserved.
	*/
	void setDisableScale(in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisableScale, _godot_object, disable);
	}
	/**
	
	*/
	void setGizmo(SpatialGizmo gizmo)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGizmo, _godot_object, gizmo);
	}
	/**
	
	*/
	void setGlobalTransform(in Transform global)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalTransform, _godot_object, global);
	}
	/**
	Reset all transformations for this node (sets its $(D Transform) to the identity matrix).
	*/
	void setIdentity()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIdentity, _godot_object);
	}
	/**
	Sets whether the node ignores notification that its transformation (global or local) changed.
	*/
	void setIgnoreTransformNotification(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIgnoreTransformNotification, _godot_object, enabled);
	}
	/**
	Sets whether the node notifies about its local transformation changes. $(D Spatial) will not propagate this by default.
	*/
	void setNotifyLocalTransform(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNotifyLocalTransform, _godot_object, enable);
	}
	/**
	Sets whether the node notifies about its global and local transformation changes. $(D Spatial) will not propagate this by default, unless it is in the editor context and it has a valid gizmo.
	*/
	void setNotifyTransform(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNotifyTransform, _godot_object, enable);
	}
	/**
	
	*/
	void setRotation(in Vector3 euler)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRotation, _godot_object, euler);
	}
	/**
	
	*/
	void setRotationDegrees(in Vector3 euler_degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRotationDegrees, _godot_object, euler_degrees);
	}
	/**
	
	*/
	void setScale(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScale, _godot_object, scale);
	}
	/**
	
	*/
	void setTransform(in Transform local)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransform, _godot_object, local);
	}
	/**
	
	*/
	void setTranslation(in Vector3 translation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTranslation, _godot_object, translation);
	}
	/**
	
	*/
	void setVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVisible, _godot_object, visible);
	}
	/**
	Enables rendering of this node. Changes $(D visible) to `true`.
	*/
	void show()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.show, _godot_object);
	}
	/**
	Transforms `local_point` from this node's local space to world space.
	*/
	Vector3 toGlobal(in Vector3 local_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.toGlobal, _godot_object, local_point);
	}
	/**
	Transforms `global_point` from world space to this node's local space.
	*/
	Vector3 toLocal(in Vector3 global_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.toLocal, _godot_object, global_point);
	}
	/**
	Changes the node's position by the given offset $(D Vector3).
	Note that the translation `offset` is affected by the node's scale, so if scaled by e.g. `(10, 1, 1)`, a translation by an offset of `(2, 0, 0)` would actually add 20 (`2 * 10`) to the X coordinate.
	*/
	void translate(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.translate, _godot_object, offset);
	}
	/**
	Changes the node's position by the given offset $(D Vector3) in local space.
	*/
	void translateObjectLocal(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.translateObjectLocal, _godot_object, offset);
	}
	/**
	Updates the $(D SpatialGizmo) of this node.
	*/
	void updateGizmo()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateGizmo, _godot_object);
	}
	/**
	The $(D SpatialGizmo) for this node. Used for example in $(D EditorSpatialGizmo) as custom visualization and editing handles in Editor.
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
	Rotation part of the local transformation in radians, specified in terms of YXZ-Euler angles in the format (X angle, Y angle, Z angle).
	$(B Note:) In the mathematical sense, rotation is a matrix and not a vector. The three Euler angles, which are the three independent parameters of the Euler-angle parametrization of the rotation matrix, are stored in a $(D Vector3) data structure not because the rotation is a vector, but only because $(D Vector3) exists as a convenient data-structure to store 3 floating-point numbers. Therefore, applying affine operations on the rotation "vector" is not meaningful.
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
	Rotation part of the local transformation in degrees, specified in terms of YXZ-Euler angles in the format (X angle, Y angle, Z angle).
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
	If `true`, this node is drawn. The node is only visible if all of its antecedents are visible as well (in other words, $(D isVisibleInTree) must return `true`).
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
