/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.node;
import godot.spatialgizmo;
import godot.world;
/**

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
		@GodotName("get_global_rotation") GodotMethod!(Vector3) getGlobalRotation;
		@GodotName("get_global_transform") GodotMethod!(Transform) getGlobalTransform;
		@GodotName("get_global_transform_interpolated") GodotMethod!(Transform) getGlobalTransformInterpolated;
		@GodotName("get_global_translation") GodotMethod!(Vector3) getGlobalTranslation;
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
		@GodotName("set_global_rotation") GodotMethod!(void, Vector3) setGlobalRotation;
		@GodotName("set_global_transform") GodotMethod!(void, Transform) setGlobalTransform;
		@GodotName("set_global_translation") GodotMethod!(void, Vector3) setGlobalTranslation;
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
		/** */
		notificationEnterWorld = 41,
		/** */
		notificationExitWorld = 42,
		/** */
		notificationVisibilityChanged = 43,
		/** */
		notificationEnterGameplay = 45,
		/** */
		notificationExitGameplay = 46,
		/** */
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
	Vector3 getGlobalRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getGlobalRotation, _godot_object);
	}
	/**
	
	*/
	Transform getGlobalTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getGlobalTransform, _godot_object);
	}
	/**
	
	*/
	Transform getGlobalTransformInterpolated()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getGlobalTransformInterpolated, _godot_object);
	}
	/**
	
	*/
	Vector3 getGlobalTranslation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getGlobalTranslation, _godot_object);
	}
	/**
	
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
	
	*/
	Ref!World getWorld() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(World)(GDNativeClassBinding.getWorld, _godot_object);
	}
	/**
	
	*/
	void globalRotate(in Vector3 axis, in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalRotate, _godot_object, axis, angle);
	}
	/**
	
	*/
	void globalScale(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalScale, _godot_object, scale);
	}
	/**
	
	*/
	void globalTranslate(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalTranslate, _godot_object, offset);
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
	bool isLocalTransformNotificationEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isLocalTransformNotificationEnabled, _godot_object);
	}
	/**
	
	*/
	bool isScaleDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isScaleDisabled, _godot_object);
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
	void lookAt(in Vector3 target, in Vector3 up)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lookAt, _godot_object, target, up);
	}
	/**
	
	*/
	void lookAtFromPosition(in Vector3 position, in Vector3 target, in Vector3 up)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lookAtFromPosition, _godot_object, position, target, up);
	}
	/**
	
	*/
	void orthonormalize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.orthonormalize, _godot_object);
	}
	/**
	
	*/
	void rotate(in Vector3 axis, in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotate, _godot_object, axis, angle);
	}
	/**
	
	*/
	void rotateObjectLocal(in Vector3 axis, in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotateObjectLocal, _godot_object, axis, angle);
	}
	/**
	
	*/
	void rotateX(in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotateX, _godot_object, angle);
	}
	/**
	
	*/
	void rotateY(in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotateY, _godot_object, angle);
	}
	/**
	
	*/
	void rotateZ(in double angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotateZ, _godot_object, angle);
	}
	/**
	
	*/
	void scaleObjectLocal(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scaleObjectLocal, _godot_object, scale);
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
	void setGlobalRotation(in Vector3 radians)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalRotation, _godot_object, radians);
	}
	/**
	
	*/
	void setGlobalTransform(in Transform global)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalTransform, _godot_object, global);
	}
	/**
	
	*/
	void setGlobalTranslation(in Vector3 translation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalTranslation, _godot_object, translation);
	}
	/**
	
	*/
	void setIdentity()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIdentity, _godot_object);
	}
	/**
	
	*/
	void setIgnoreTransformNotification(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIgnoreTransformNotification, _godot_object, enabled);
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
	
	*/
	void show()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.show, _godot_object);
	}
	/**
	
	*/
	Vector3 toGlobal(in Vector3 local_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.toGlobal, _godot_object, local_point);
	}
	/**
	
	*/
	Vector3 toLocal(in Vector3 global_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.toLocal, _godot_object, global_point);
	}
	/**
	
	*/
	void translate(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.translate, _godot_object, offset);
	}
	/**
	
	*/
	void translateObjectLocal(in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.translateObjectLocal, _godot_object, offset);
	}
	/**
	
	*/
	void updateGizmo()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateGizmo, _godot_object);
	}
	/**
	
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
	
	*/
	@property Vector3 globalRotation()
	{
		return getGlobalRotation();
	}
	/// ditto
	@property void globalRotation(Vector3 v)
	{
		setGlobalRotation(v);
	}
	/**
	
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
	
	*/
	@property Vector3 globalTranslation()
	{
		return getGlobalTranslation();
	}
	/// ditto
	@property void globalTranslation(Vector3 v)
	{
		setGlobalTranslation(v);
	}
	/**
	
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
