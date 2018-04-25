/**
Camera node, displays from a point of view.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.camera;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.environment;
/**
Camera node, displays from a point of view.

Camera is a special node that displays what is visible from its current location. Cameras register themselves in the nearest $(D Viewport) node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the Camera will register in the global viewport. In other words, a Camera just provides $(I 3D) display capabilities to a $(D Viewport), and, without one, a scene registered in that $(D Viewport) (or higher viewports) can't be displayed.
*/
@GodotBaseClass struct Camera
{
	static immutable string _GODOT_internal_name = "Camera";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Camera other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Camera opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Camera _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Camera");
		if(constructor is null) return typeof(this).init;
		return cast(Camera)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum KeepAspect : int
	{
		/**
		Preserves the horizontal aspect ratio.
		*/
		keepWidth = 0,
		/**
		Preserves the vertical aspect ratio.
		*/
		keepHeight = 1,
	}
	/// 
	enum Projection : int
	{
		/**
		Perspective Projection (object's size on the screen becomes smaller when far away).
		*/
		projectionPerspective = 0,
		/**
		Orthogonal Projection (objects remain the same size on the screen no matter how far away they are).
		*/
		projectionOrthogonal = 1,
	}
	/// 
	enum DopplerTracking : int
	{
		/**
		Disable Doppler effect simulation (default).
		*/
		dopplerTrackingDisabled = 0,
		/**
		Simulate Doppler effect by tracking positions of objects that are changed in `_process`. Changes in the relative velocity of this Camera compared to those objects affect how Audio is perceived (changing the Audio's `pitch shift`).
		*/
		dopplerTrackingIdleStep = 1,
		/**
		Simulate Doppler effect by tracking positions of objects that are changed in `_physics_process`. Changes in the relative velocity of this Camera compared to those objects affect how Audio is perceived (changing the Audio's `pitch shift`).
		*/
		dopplerTrackingPhysicsStep = 2,
	}
	/// 
	enum Constants : int
	{
		projectionPerspective = 0,
		keepWidth = 0,
		dopplerTrackingDisabled = 0,
		dopplerTrackingIdleStep = 1,
		keepHeight = 1,
		projectionOrthogonal = 1,
		dopplerTrackingPhysicsStep = 2,
	}
	package(godot) static GodotMethod!(Vector3, Vector2) _GODOT_project_ray_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "project_ray_normal") = _GODOT_project_ray_normal;
	/**
	Returns a normal vector in worldspace, that is the result of projecting a point on the $(D Viewport) rectangle by the camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.
	*/
	Vector3 projectRayNormal(in Vector2 screen_point) const
	{
		_GODOT_project_ray_normal.bind("Camera", "project_ray_normal");
		return ptrcall!(Vector3)(_GODOT_project_ray_normal, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector2) _GODOT_project_local_ray_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "project_local_ray_normal") = _GODOT_project_local_ray_normal;
	/**
	Returns a normal vector from the screen point location directed along the camera. Orthogonal cameras are normalized. Perspective cameras account for perspective, screen width/height, etc.
	*/
	Vector3 projectLocalRayNormal(in Vector2 screen_point) const
	{
		_GODOT_project_local_ray_normal.bind("Camera", "project_local_ray_normal");
		return ptrcall!(Vector3)(_GODOT_project_local_ray_normal, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector2) _GODOT_project_ray_origin;
	package(godot) alias _GODOT_methodBindInfo(string name : "project_ray_origin") = _GODOT_project_ray_origin;
	/**
	Returns a 3D position in worldspace, that is the result of projecting a point on the $(D Viewport) rectangle by the camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.
	*/
	Vector3 projectRayOrigin(in Vector2 screen_point) const
	{
		_GODOT_project_ray_origin.bind("Camera", "project_ray_origin");
		return ptrcall!(Vector3)(_GODOT_project_ray_origin, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(Vector2, Vector3) _GODOT_unproject_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "unproject_position") = _GODOT_unproject_position;
	/**
	Returns the 2D coordinate in the $(D Viewport) rectangle that maps to the given 3D point in worldspace.
	*/
	Vector2 unprojectPosition(in Vector3 world_point) const
	{
		_GODOT_unproject_position.bind("Camera", "unproject_position");
		return ptrcall!(Vector2)(_GODOT_unproject_position, _godot_object, world_point);
	}
	package(godot) static GodotMethod!(bool, Vector3) _GODOT_is_position_behind;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_position_behind") = _GODOT_is_position_behind;
	/**
	Returns `true` if the given position is behind the Camera. Note that a position which returns `false` may still be outside the Camera's field of view.
	*/
	bool isPositionBehind(in Vector3 world_point) const
	{
		_GODOT_is_position_behind.bind("Camera", "is_position_behind");
		return ptrcall!(bool)(_GODOT_is_position_behind, _godot_object, world_point);
	}
	package(godot) static GodotMethod!(Vector3, Vector2) _GODOT_project_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "project_position") = _GODOT_project_position;
	/**
	Returns the 3D point in worldspace that maps to the given 2D coordinate in the $(D Viewport) rectangle.
	*/
	Vector3 projectPosition(in Vector2 screen_point) const
	{
		_GODOT_project_position.bind("Camera", "project_position");
		return ptrcall!(Vector3)(_GODOT_project_position, _godot_object, screen_point);
	}
	package(godot) static GodotMethod!(void, double, double, double) _GODOT_set_perspective;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_perspective") = _GODOT_set_perspective;
	/**
	Sets the camera projection to perspective mode, by specifying a $(I FOV) Y angle in degrees (FOV means Field of View), and the $(I near) and $(I far) clip planes in worldspace units.
	*/
	void setPerspective(in double fov, in double z_near, in double z_far)
	{
		_GODOT_set_perspective.bind("Camera", "set_perspective");
		ptrcall!(void)(_GODOT_set_perspective, _godot_object, fov, z_near, z_far);
	}
	package(godot) static GodotMethod!(void, double, double, double) _GODOT_set_orthogonal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_orthogonal") = _GODOT_set_orthogonal;
	/**
	Sets the camera projection to orthogonal mode, by specifying a width and the $(I near) and $(I far) clip planes in worldspace units. (As a hint, 2D games often use this projection, with values specified in pixels)
	*/
	void setOrthogonal(in double size, in double z_near, in double z_far)
	{
		_GODOT_set_orthogonal.bind("Camera", "set_orthogonal");
		ptrcall!(void)(_GODOT_set_orthogonal, _godot_object, size, z_near, z_far);
	}
	package(godot) static GodotMethod!(void) _GODOT_make_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_current") = _GODOT_make_current;
	/**
	Makes this camera the current Camera for the $(D Viewport) (see class description). If the Camera Node is outside the scene tree, it will attempt to become current once it's added.
	*/
	void makeCurrent()
	{
		_GODOT_make_current.bind("Camera", "make_current");
		ptrcall!(void)(_GODOT_make_current, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_clear_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_current") = _GODOT_clear_current;
	/**
	If this is the current Camera, remove it from being current. If `enable_next` is true, request to make the next Camera current, if any.
	*/
	void clearCurrent(in bool enable_next = true)
	{
		_GODOT_clear_current.bind("Camera", "clear_current");
		ptrcall!(void)(_GODOT_clear_current, _godot_object, enable_next);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_current") = _GODOT_set_current;
	/**
	
	*/
	void setCurrent(in bool arg0)
	{
		_GODOT_set_current.bind("Camera", "set_current");
		ptrcall!(void)(_GODOT_set_current, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_current;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_current") = _GODOT_is_current;
	/**
	
	*/
	bool isCurrent() const
	{
		_GODOT_is_current.bind("Camera", "is_current");
		return ptrcall!(bool)(_GODOT_is_current, _godot_object);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_camera_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_camera_transform") = _GODOT_get_camera_transform;
	/**
	Gets the camera transform. Subclassed cameras (such as CharacterCamera) may provide different transforms than the $(D Node) transform.
	*/
	Transform getCameraTransform() const
	{
		_GODOT_get_camera_transform.bind("Camera", "get_camera_transform");
		return ptrcall!(Transform)(_GODOT_get_camera_transform, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_fov;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fov") = _GODOT_get_fov;
	/**
	
	*/
	double getFov() const
	{
		_GODOT_get_fov.bind("Camera", "get_fov");
		return ptrcall!(double)(_GODOT_get_fov, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	
	*/
	double getSize() const
	{
		_GODOT_get_size.bind("Camera", "get_size");
		return ptrcall!(double)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_zfar;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_zfar") = _GODOT_get_zfar;
	/**
	
	*/
	double getZfar() const
	{
		_GODOT_get_zfar.bind("Camera", "get_zfar");
		return ptrcall!(double)(_GODOT_get_zfar, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_znear;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_znear") = _GODOT_get_znear;
	/**
	
	*/
	double getZnear() const
	{
		_GODOT_get_znear.bind("Camera", "get_znear");
		return ptrcall!(double)(_GODOT_get_znear, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_fov;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fov") = _GODOT_set_fov;
	/**
	
	*/
	void setFov(in double arg0)
	{
		_GODOT_set_fov.bind("Camera", "set_fov");
		ptrcall!(void)(_GODOT_set_fov, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	/**
	
	*/
	void setSize(in double arg0)
	{
		_GODOT_set_size.bind("Camera", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_zfar;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_zfar") = _GODOT_set_zfar;
	/**
	
	*/
	void setZfar(in double arg0)
	{
		_GODOT_set_zfar.bind("Camera", "set_zfar");
		ptrcall!(void)(_GODOT_set_zfar, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_znear;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_znear") = _GODOT_set_znear;
	/**
	
	*/
	void setZnear(in double arg0)
	{
		_GODOT_set_znear.bind("Camera", "set_znear");
		ptrcall!(void)(_GODOT_set_znear, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(Camera.Projection) _GODOT_get_projection;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_projection") = _GODOT_get_projection;
	/**
	
	*/
	Camera.Projection getProjection() const
	{
		_GODOT_get_projection.bind("Camera", "get_projection");
		return ptrcall!(Camera.Projection)(_GODOT_get_projection, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_projection;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_projection") = _GODOT_set_projection;
	/**
	
	*/
	void setProjection(in long arg0)
	{
		_GODOT_set_projection.bind("Camera", "set_projection");
		ptrcall!(void)(_GODOT_set_projection, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_h_offset") = _GODOT_set_h_offset;
	/**
	
	*/
	void setHOffset(in double ofs)
	{
		_GODOT_set_h_offset.bind("Camera", "set_h_offset");
		ptrcall!(void)(_GODOT_set_h_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_h_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_h_offset") = _GODOT_get_h_offset;
	/**
	
	*/
	double getHOffset() const
	{
		_GODOT_get_h_offset.bind("Camera", "get_h_offset");
		return ptrcall!(double)(_GODOT_get_h_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_v_offset") = _GODOT_set_v_offset;
	/**
	
	*/
	void setVOffset(in double ofs)
	{
		_GODOT_set_v_offset.bind("Camera", "set_v_offset");
		ptrcall!(void)(_GODOT_set_v_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_v_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_offset") = _GODOT_get_v_offset;
	/**
	
	*/
	double getVOffset() const
	{
		_GODOT_get_v_offset.bind("Camera", "get_v_offset");
		return ptrcall!(double)(_GODOT_get_v_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cull_mask") = _GODOT_set_cull_mask;
	/**
	
	*/
	void setCullMask(in long mask)
	{
		_GODOT_set_cull_mask.bind("Camera", "set_cull_mask");
		ptrcall!(void)(_GODOT_set_cull_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cull_mask") = _GODOT_get_cull_mask;
	/**
	
	*/
	long getCullMask() const
	{
		_GODOT_get_cull_mask.bind("Camera", "get_cull_mask");
		return ptrcall!(long)(_GODOT_get_cull_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Environment) _GODOT_set_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_environment") = _GODOT_set_environment;
	/**
	
	*/
	void setEnvironment(Environment env)
	{
		_GODOT_set_environment.bind("Camera", "set_environment");
		ptrcall!(void)(_GODOT_set_environment, _godot_object, env);
	}
	package(godot) static GodotMethod!(Environment) _GODOT_get_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_environment") = _GODOT_get_environment;
	/**
	
	*/
	Ref!Environment getEnvironment() const
	{
		_GODOT_get_environment.bind("Camera", "get_environment");
		return ptrcall!(Environment)(_GODOT_get_environment, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_keep_aspect_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_keep_aspect_mode") = _GODOT_set_keep_aspect_mode;
	/**
	
	*/
	void setKeepAspectMode(in long mode)
	{
		_GODOT_set_keep_aspect_mode.bind("Camera", "set_keep_aspect_mode");
		ptrcall!(void)(_GODOT_set_keep_aspect_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Camera.KeepAspect) _GODOT_get_keep_aspect_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_keep_aspect_mode") = _GODOT_get_keep_aspect_mode;
	/**
	
	*/
	Camera.KeepAspect getKeepAspectMode() const
	{
		_GODOT_get_keep_aspect_mode.bind("Camera", "get_keep_aspect_mode");
		return ptrcall!(Camera.KeepAspect)(_GODOT_get_keep_aspect_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_doppler_tracking;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_doppler_tracking") = _GODOT_set_doppler_tracking;
	/**
	
	*/
	void setDopplerTracking(in long mode)
	{
		_GODOT_set_doppler_tracking.bind("Camera", "set_doppler_tracking");
		ptrcall!(void)(_GODOT_set_doppler_tracking, _godot_object, mode);
	}
	package(godot) static GodotMethod!(Camera.DopplerTracking) _GODOT_get_doppler_tracking;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_doppler_tracking") = _GODOT_get_doppler_tracking;
	/**
	
	*/
	Camera.DopplerTracking getDopplerTracking() const
	{
		_GODOT_get_doppler_tracking.bind("Camera", "get_doppler_tracking");
		return ptrcall!(Camera.DopplerTracking)(_GODOT_get_doppler_tracking, _godot_object);
	}
	/**
	The axis to lock during $(D fov)/$(D size) adjustments. Can be either `KEEP_WIDTH` or `KEEP_HEIGHT`.
	*/
	@property Camera.KeepAspect keepAspect()
	{
		return getKeepAspectMode();
	}
	/// ditto
	@property void keepAspect(long v)
	{
		setKeepAspectMode(v);
	}
	/**
	The culling mask that describes which 3D render layers are rendered by this camera.
	*/
	@property long cullMask()
	{
		return getCullMask();
	}
	/// ditto
	@property void cullMask(long v)
	{
		setCullMask(v);
	}
	/**
	The $(D Environment) to use for this Camera.
	*/
	@property Environment environment()
	{
		return getEnvironment();
	}
	/// ditto
	@property void environment(Environment v)
	{
		setEnvironment(v);
	}
	/**
	The horizontal (X) offset of the Camera viewport.
	*/
	@property double hOffset()
	{
		return getHOffset();
	}
	/// ditto
	@property void hOffset(double v)
	{
		setHOffset(v);
	}
	/**
	The vertical (Y) offset of the Camera viewport.
	*/
	@property double vOffset()
	{
		return getVOffset();
	}
	/// ditto
	@property void vOffset(double v)
	{
		setVOffset(v);
	}
	/**
	If not `DOPPLER_TRACKING_DISABLED` this Camera will simulate the Doppler effect for objects changed in particular `_process` methods. Default value: `DOPPLER_TRACKING_DISABLED`.
	*/
	@property Camera.DopplerTracking dopplerTracking()
	{
		return getDopplerTracking();
	}
	/// ditto
	@property void dopplerTracking(long v)
	{
		setDopplerTracking(v);
	}
	/**
	The camera's projection mode. In `PROJECTION_PERSPECTIVE` mode, objects' z-distance from the camera's local space scales their perceived size.
	*/
	@property Camera.Projection projection()
	{
		return getProjection();
	}
	/// ditto
	@property void projection(long v)
	{
		setProjection(v);
	}
	/**
	If `true` the ancestor $(D Viewport) is currently using this Camera. Default value: `false`.
	*/
	@property bool current()
	{
		return isCurrent();
	}
	/// ditto
	@property void current(bool v)
	{
		setCurrent(v);
	}
	/**
	The camera's field of view angle (in degrees). Only applicable in perspective mode. Since $(D keepAspect) locks one axis, `fov` sets the other axis' field of view angle.
	*/
	@property double fov()
	{
		return getFov();
	}
	/// ditto
	@property void fov(double v)
	{
		setFov(v);
	}
	/**
	The camera's size measured as 1/2 the width or height. Only applicable in orthogonal mode. Since $(D keepAspect) locks on axis, `size` sets the other axis' size length.
	*/
	@property double size()
	{
		return getSize();
	}
	/// ditto
	@property void size(double v)
	{
		setSize(v);
	}
	/**
	The distance to the near culling boundary for this Camera relative to its local z-axis.
	*/
	@property double near()
	{
		return getZnear();
	}
	/// ditto
	@property void near(double v)
	{
		setZnear(v);
	}
	/**
	The distance to the far culling boundary for this Camera relative to its local z-axis.
	*/
	@property double far()
	{
		return getZfar();
	}
	/// ditto
	@property void far(double v)
	{
		setZfar(v);
	}
}
