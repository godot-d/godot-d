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
import godot.d.traits;
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

Camera is a special node that displays what is visible from its current location. Cameras register themselves in the nearest $(D Viewport) node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the camera will register in the global viewport. In other words, a camera just provides 3D display capabilities to a $(D Viewport), and, without one, a scene registered in that $(D Viewport) (or higher viewports) can't be displayed.
*/
@GodotBaseClass struct Camera
{
	package(godot) enum string _GODOT_internal_name = "Camera";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("clear_current") GodotMethod!(void, bool) clearCurrent;
		@GodotName("get_camera_rid") GodotMethod!(RID) getCameraRid;
		@GodotName("get_camera_transform") GodotMethod!(Transform) getCameraTransform;
		@GodotName("get_cull_mask") GodotMethod!(long) getCullMask;
		@GodotName("get_cull_mask_bit") GodotMethod!(bool, long) getCullMaskBit;
		@GodotName("get_doppler_tracking") GodotMethod!(Camera.DopplerTracking) getDopplerTracking;
		@GodotName("get_environment") GodotMethod!(Environment) getEnvironment;
		@GodotName("get_fov") GodotMethod!(double) getFov;
		@GodotName("get_frustum") GodotMethod!(Array) getFrustum;
		@GodotName("get_frustum_offset") GodotMethod!(Vector2) getFrustumOffset;
		@GodotName("get_h_offset") GodotMethod!(double) getHOffset;
		@GodotName("get_keep_aspect_mode") GodotMethod!(Camera.KeepAspect) getKeepAspectMode;
		@GodotName("get_projection") GodotMethod!(Camera.Projection) getProjection;
		@GodotName("get_size") GodotMethod!(double) getSize;
		@GodotName("get_v_offset") GodotMethod!(double) getVOffset;
		@GodotName("get_zfar") GodotMethod!(double) getZfar;
		@GodotName("get_znear") GodotMethod!(double) getZnear;
		@GodotName("is_current") GodotMethod!(bool) isCurrent;
		@GodotName("is_position_behind") GodotMethod!(bool, Vector3) isPositionBehind;
		@GodotName("make_current") GodotMethod!(void) makeCurrent;
		@GodotName("project_local_ray_normal") GodotMethod!(Vector3, Vector2) projectLocalRayNormal;
		@GodotName("project_position") GodotMethod!(Vector3, Vector2, double) projectPosition;
		@GodotName("project_ray_normal") GodotMethod!(Vector3, Vector2) projectRayNormal;
		@GodotName("project_ray_origin") GodotMethod!(Vector3, Vector2) projectRayOrigin;
		@GodotName("set_cull_mask") GodotMethod!(void, long) setCullMask;
		@GodotName("set_cull_mask_bit") GodotMethod!(void, long, bool) setCullMaskBit;
		@GodotName("set_current") GodotMethod!(void, bool) setCurrent;
		@GodotName("set_doppler_tracking") GodotMethod!(void, long) setDopplerTracking;
		@GodotName("set_environment") GodotMethod!(void, Environment) setEnvironment;
		@GodotName("set_fov") GodotMethod!(void, double) setFov;
		@GodotName("set_frustum") GodotMethod!(void, double, Vector2, double, double) setFrustum;
		@GodotName("set_frustum_offset") GodotMethod!(void, Vector2) setFrustumOffset;
		@GodotName("set_h_offset") GodotMethod!(void, double) setHOffset;
		@GodotName("set_keep_aspect_mode") GodotMethod!(void, long) setKeepAspectMode;
		@GodotName("set_orthogonal") GodotMethod!(void, double, double, double) setOrthogonal;
		@GodotName("set_perspective") GodotMethod!(void, double, double, double) setPerspective;
		@GodotName("set_projection") GodotMethod!(void, long) setProjection;
		@GodotName("set_size") GodotMethod!(void, double) setSize;
		@GodotName("set_v_offset") GodotMethod!(void, double) setVOffset;
		@GodotName("set_zfar") GodotMethod!(void, double) setZfar;
		@GodotName("set_znear") GodotMethod!(void, double) setZnear;
		@GodotName("unproject_position") GodotMethod!(Vector2, Vector3) unprojectPosition;
	}
	/// 
	pragma(inline, true) bool opEquals(in Camera other) const
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
	/// Construct a new instance of Camera.
	/// Note: use `memnew!Camera` instead.
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
		Preserves the horizontal aspect ratio; also known as Vert- scaling. This is usually the best option for projects running in portrait mode, as taller aspect ratios will benefit from a wider vertical FOV.
		*/
		keepWidth = 0,
		/**
		Preserves the vertical aspect ratio; also known as Hor+ scaling. This is usually the best option for projects running in landscape mode, as wider aspect ratios will automatically benefit from a wider horizontal FOV.
		*/
		keepHeight = 1,
	}
	/// 
	enum Projection : int
	{
		/**
		Perspective projection. Objects on the screen becomes smaller when they are far away.
		*/
		projectionPerspective = 0,
		/**
		Orthogonal projection, also known as orthographic projection. Objects remain the same size on the screen no matter how far away they are.
		*/
		projectionOrthogonal = 1,
		/**
		Frustum projection. This mode allows adjusting $(D frustumOffset) to create "tilted frustum" effects.
		*/
		projectionFrustum = 2,
	}
	/// 
	enum DopplerTracking : int
	{
		/**
		Disables $(D url=https://en.wikipedia.org/wiki/Doppler_effect)Doppler effect$(D /url) simulation (default).
		*/
		dopplerTrackingDisabled = 0,
		/**
		Simulate $(D url=https://en.wikipedia.org/wiki/Doppler_effect)Doppler effect$(D /url) by tracking positions of objects that are changed in `_process`. Changes in the relative velocity of this camera compared to those objects affect how Audio is perceived (changing the Audio's `pitch shift`).
		*/
		dopplerTrackingIdleStep = 1,
		/**
		Simulate $(D url=https://en.wikipedia.org/wiki/Doppler_effect)Doppler effect$(D /url) by tracking positions of objects that are changed in `_physics_process`. Changes in the relative velocity of this camera compared to those objects affect how Audio is perceived (changing the Audio's `pitch shift`).
		*/
		dopplerTrackingPhysicsStep = 2,
	}
	/// 
	enum Constants : int
	{
		keepWidth = 0,
		dopplerTrackingDisabled = 0,
		projectionPerspective = 0,
		keepHeight = 1,
		dopplerTrackingIdleStep = 1,
		projectionOrthogonal = 1,
		projectionFrustum = 2,
		dopplerTrackingPhysicsStep = 2,
	}
	/**
	If this is the current camera, remove it from being current. If `enable_next` is `true`, request to make the next camera current, if any.
	*/
	void clearCurrent(in bool enable_next = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCurrent, _godot_object, enable_next);
	}
	/**
	Returns the camera's RID from the $(D VisualServer).
	*/
	RID getCameraRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getCameraRid, _godot_object);
	}
	/**
	Gets the camera transform. Subclassed cameras such as $(D InterpolatedCamera) may provide different transforms than the $(D Node) transform.
	*/
	Transform getCameraTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getCameraTransform, _godot_object);
	}
	/**
	
	*/
	long getCullMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCullMask, _godot_object);
	}
	/**
	Returns `true` if the given `layer` in the $(D cullMask) is enabled, `false` otherwise.
	*/
	bool getCullMaskBit(in long layer) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCullMaskBit, _godot_object, layer);
	}
	/**
	
	*/
	Camera.DopplerTracking getDopplerTracking() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera.DopplerTracking)(GDNativeClassBinding.getDopplerTracking, _godot_object);
	}
	/**
	
	*/
	Ref!Environment getEnvironment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment)(GDNativeClassBinding.getEnvironment, _godot_object);
	}
	/**
	
	*/
	double getFov() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFov, _godot_object);
	}
	/**
	Returns the camera's frustum planes in world-space units as an array of $(D Plane)s in the following order: near, far, left, top, right, bottom. Not to be confused with $(D frustumOffset).
	*/
	Array getFrustum() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getFrustum, _godot_object);
	}
	/**
	
	*/
	Vector2 getFrustumOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getFrustumOffset, _godot_object);
	}
	/**
	
	*/
	double getHOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHOffset, _godot_object);
	}
	/**
	
	*/
	Camera.KeepAspect getKeepAspectMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera.KeepAspect)(GDNativeClassBinding.getKeepAspectMode, _godot_object);
	}
	/**
	
	*/
	Camera.Projection getProjection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera.Projection)(GDNativeClassBinding.getProjection, _godot_object);
	}
	/**
	
	*/
	double getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	
	*/
	double getVOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getVOffset, _godot_object);
	}
	/**
	
	*/
	double getZfar() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getZfar, _godot_object);
	}
	/**
	
	*/
	double getZnear() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getZnear, _godot_object);
	}
	/**
	
	*/
	bool isCurrent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCurrent, _godot_object);
	}
	/**
	Returns `true` if the given position is behind the camera.
	$(B Note:) A position which returns `false` may still be outside the camera's field of view.
	*/
	bool isPositionBehind(in Vector3 world_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPositionBehind, _godot_object, world_point);
	}
	/**
	Makes this camera the current camera for the $(D Viewport) (see class description). If the camera node is outside the scene tree, it will attempt to become current once it's added.
	*/
	void makeCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeCurrent, _godot_object);
	}
	/**
	Returns a normal vector from the screen point location directed along the camera. Orthogonal cameras are normalized. Perspective cameras account for perspective, screen width/height, etc.
	*/
	Vector3 projectLocalRayNormal(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.projectLocalRayNormal, _godot_object, screen_point);
	}
	/**
	Returns the 3D point in worldspace that maps to the given 2D coordinate in the $(D Viewport) rectangle on a plane that is the given `z_depth` distance into the scene away from the camera.
	*/
	Vector3 projectPosition(in Vector2 screen_point, in double z_depth) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.projectPosition, _godot_object, screen_point, z_depth);
	}
	/**
	Returns a normal vector in worldspace, that is the result of projecting a point on the $(D Viewport) rectangle by the camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.
	*/
	Vector3 projectRayNormal(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.projectRayNormal, _godot_object, screen_point);
	}
	/**
	Returns a 3D position in worldspace, that is the result of projecting a point on the $(D Viewport) rectangle by the camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.
	*/
	Vector3 projectRayOrigin(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.projectRayOrigin, _godot_object, screen_point);
	}
	/**
	
	*/
	void setCullMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCullMask, _godot_object, mask);
	}
	/**
	Enables or disables the given `layer` in the $(D cullMask).
	*/
	void setCullMaskBit(in long layer, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCullMaskBit, _godot_object, layer, enable);
	}
	/**
	
	*/
	void setCurrent(in bool arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrent, _godot_object, arg0);
	}
	/**
	
	*/
	void setDopplerTracking(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDopplerTracking, _godot_object, mode);
	}
	/**
	
	*/
	void setEnvironment(Environment env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnvironment, _godot_object, env);
	}
	/**
	
	*/
	void setFov(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFov, _godot_object, arg0);
	}
	/**
	Sets the camera projection to frustum mode (see $(D constant PROJECTION_FRUSTUM)), by specifying a `size`, an `offset`, and the `z_near` and `z_far` clip planes in world-space units.
	*/
	void setFrustum(in double size, in Vector2 offset, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrustum, _godot_object, size, offset, z_near, z_far);
	}
	/**
	
	*/
	void setFrustumOffset(in Vector2 arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrustumOffset, _godot_object, arg0);
	}
	/**
	
	*/
	void setHOffset(in double ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHOffset, _godot_object, ofs);
	}
	/**
	
	*/
	void setKeepAspectMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setKeepAspectMode, _godot_object, mode);
	}
	/**
	Sets the camera projection to orthogonal mode (see $(D constant PROJECTION_ORTHOGONAL)), by specifying a `size`, and the `z_near` and `z_far` clip planes in world-space units. (As a hint, 2D games often use this projection, with values specified in pixels.)
	*/
	void setOrthogonal(in double size, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOrthogonal, _godot_object, size, z_near, z_far);
	}
	/**
	Sets the camera projection to perspective mode (see $(D constant PROJECTION_PERSPECTIVE)), by specifying a `fov` (field of view) angle in degrees, and the `z_near` and `z_far` clip planes in world-space units.
	*/
	void setPerspective(in double fov, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPerspective, _godot_object, fov, z_near, z_far);
	}
	/**
	
	*/
	void setProjection(in long arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProjection, _godot_object, arg0);
	}
	/**
	
	*/
	void setSize(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, arg0);
	}
	/**
	
	*/
	void setVOffset(in double ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVOffset, _godot_object, ofs);
	}
	/**
	
	*/
	void setZfar(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setZfar, _godot_object, arg0);
	}
	/**
	
	*/
	void setZnear(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setZnear, _godot_object, arg0);
	}
	/**
	Returns the 2D coordinate in the $(D Viewport) rectangle that maps to the given 3D point in worldspace.
	$(B Note:) When using this to position GUI elements over a 3D viewport, use $(D isPositionBehind) to prevent them from appearing if the 3D point is behind the camera:
	
	
	# This code block is part of a script that inherits from Spatial.
	# `control` is a reference to a node inheriting from Control.
	control.visible = not get_viewport().get_camera().is_position_behind(global_transform.origin)
	control.rect_position = get_viewport().get_camera().unproject_position(global_transform.origin)
	
	
	*/
	Vector2 unprojectPosition(in Vector3 world_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.unprojectPosition, _godot_object, world_point);
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
	If `true`, the ancestor $(D Viewport) is currently using this camera.
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
	If not $(D constant DOPPLER_TRACKING_DISABLED), this camera will simulate the $(D url=https://en.wikipedia.org/wiki/Doppler_effect)Doppler effect$(D /url) for objects changed in particular `_process` methods. See $(D dopplertracking) for possible values.
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
	The $(D Environment) to use for this camera.
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
	The distance to the far culling boundary for this camera relative to its local Z axis.
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
	/**
	The camera's field of view angle (in degrees). Only applicable in perspective mode. Since $(D keepAspect) locks one axis, `fov` sets the other axis' field of view angle.
	For reference, the default vertical field of view value (`75.0`) is equivalent to a horizontal FOV of:
	- ~91.31 degrees in a 4:3 viewport
	- ~101.67 degrees in a 16:10 viewport
	- ~107.51 degrees in a 16:9 viewport
	- ~121.63 degrees in a 21:9 viewport
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
	The camera's frustum offset. This can be changed from the default to create "tilted frustum" effects such as $(D url=https://zdoom.org/wiki/Y-shearing)Y-shearing$(D /url).
	*/
	@property Vector2 frustumOffset()
	{
		return getFrustumOffset();
	}
	/// ditto
	@property void frustumOffset(Vector2 v)
	{
		setFrustumOffset(v);
	}
	/**
	The horizontal (X) offset of the camera viewport.
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
	The axis to lock during $(D fov)/$(D size) adjustments. Can be either $(D constant KEEP_WIDTH) or $(D constant KEEP_HEIGHT).
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
	The distance to the near culling boundary for this camera relative to its local Z axis.
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
	The camera's projection mode. In $(D constant PROJECTION_PERSPECTIVE) mode, objects' Z distance from the camera's local space scales their perceived size.
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
	The vertical (Y) offset of the camera viewport.
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
}
