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
import godot.node;
/**
Camera node, displays from a point of view.

Camera is a special node that displays what is visible from its current location. Cameras register themselves in the nearest $(D Viewport) node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the Camera will register in the global viewport. In other words, a Camera just provides $(I 3D) display capabilities to a $(D Viewport), and, without one, a scene registered in that $(D Viewport) (or higher viewports) can't be displayed.
*/
@GodotBaseClass struct Camera
{
	enum string _GODOT_internal_name = "Camera";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("project_ray_normal") GodotMethod!(Vector3, Vector2) projectRayNormal;
		@GodotName("project_local_ray_normal") GodotMethod!(Vector3, Vector2) projectLocalRayNormal;
		@GodotName("project_ray_origin") GodotMethod!(Vector3, Vector2) projectRayOrigin;
		@GodotName("unproject_position") GodotMethod!(Vector2, Vector3) unprojectPosition;
		@GodotName("is_position_behind") GodotMethod!(bool, Vector3) isPositionBehind;
		@GodotName("project_position") GodotMethod!(Vector3, Vector2) projectPosition;
		@GodotName("set_perspective") GodotMethod!(void, double, double, double) setPerspective;
		@GodotName("set_orthogonal") GodotMethod!(void, double, double, double) setOrthogonal;
		@GodotName("make_current") GodotMethod!(void) makeCurrent;
		@GodotName("clear_current") GodotMethod!(void, bool) clearCurrent;
		@GodotName("set_current") GodotMethod!(void, bool) setCurrent;
		@GodotName("is_current") GodotMethod!(bool) isCurrent;
		@GodotName("get_camera_transform") GodotMethod!(Transform) getCameraTransform;
		@GodotName("get_fov") GodotMethod!(double) getFov;
		@GodotName("get_size") GodotMethod!(double) getSize;
		@GodotName("get_zfar") GodotMethod!(double) getZfar;
		@GodotName("get_znear") GodotMethod!(double) getZnear;
		@GodotName("set_fov") GodotMethod!(void, double) setFov;
		@GodotName("set_size") GodotMethod!(void, double) setSize;
		@GodotName("set_zfar") GodotMethod!(void, double) setZfar;
		@GodotName("set_znear") GodotMethod!(void, double) setZnear;
		@GodotName("get_projection") GodotMethod!(Camera.Projection) getProjection;
		@GodotName("set_projection") GodotMethod!(void, long) setProjection;
		@GodotName("set_h_offset") GodotMethod!(void, double) setHOffset;
		@GodotName("get_h_offset") GodotMethod!(double) getHOffset;
		@GodotName("set_v_offset") GodotMethod!(void, double) setVOffset;
		@GodotName("get_v_offset") GodotMethod!(double) getVOffset;
		@GodotName("set_cull_mask") GodotMethod!(void, long) setCullMask;
		@GodotName("get_cull_mask") GodotMethod!(long) getCullMask;
		@GodotName("set_environment") GodotMethod!(void, Environment) setEnvironment;
		@GodotName("get_environment") GodotMethod!(Environment) getEnvironment;
		@GodotName("set_keep_aspect_mode") GodotMethod!(void, long) setKeepAspectMode;
		@GodotName("get_keep_aspect_mode") GodotMethod!(Camera.KeepAspect) getKeepAspectMode;
		@GodotName("set_doppler_tracking") GodotMethod!(void, long) setDopplerTracking;
		@GodotName("get_doppler_tracking") GodotMethod!(Camera.DopplerTracking) getDopplerTracking;
		@GodotName("get_frustum") GodotMethod!(Array) getFrustum;
		@GodotName("set_cull_mask_bit") GodotMethod!(void, long, bool) setCullMaskBit;
		@GodotName("get_cull_mask_bit") GodotMethod!(bool, long) getCullMaskBit;
	}
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
		keepWidth = 0,
		dopplerTrackingDisabled = 0,
		projectionPerspective = 0,
		keepHeight = 1,
		dopplerTrackingIdleStep = 1,
		projectionOrthogonal = 1,
		dopplerTrackingPhysicsStep = 2,
	}
	/**
	Returns a normal vector in worldspace, that is the result of projecting a point on the $(D Viewport) rectangle by the camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.
	*/
	Vector3 projectRayNormal(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.projectRayNormal, _godot_object, screen_point);
	}
	/**
	Returns a normal vector from the screen point location directed along the camera. Orthogonal cameras are normalized. Perspective cameras account for perspective, screen width/height, etc.
	*/
	Vector3 projectLocalRayNormal(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.projectLocalRayNormal, _godot_object, screen_point);
	}
	/**
	Returns a 3D position in worldspace, that is the result of projecting a point on the $(D Viewport) rectangle by the camera projection. This is useful for casting rays in the form of (origin, normal) for object intersection or picking.
	*/
	Vector3 projectRayOrigin(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.projectRayOrigin, _godot_object, screen_point);
	}
	/**
	Returns the 2D coordinate in the $(D Viewport) rectangle that maps to the given 3D point in worldspace.
	*/
	Vector2 unprojectPosition(in Vector3 world_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.unprojectPosition, _godot_object, world_point);
	}
	/**
	Returns `true` if the given position is behind the Camera. Note that a position which returns `false` may still be outside the Camera's field of view.
	*/
	bool isPositionBehind(in Vector3 world_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPositionBehind, _godot_object, world_point);
	}
	/**
	Returns the 3D point in worldspace that maps to the given 2D coordinate in the $(D Viewport) rectangle.
	*/
	Vector3 projectPosition(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.projectPosition, _godot_object, screen_point);
	}
	/**
	Sets the camera projection to perspective mode, by specifying a $(I FOV) Y angle in degrees (FOV means Field of View), and the $(I near) and $(I far) clip planes in worldspace units.
	*/
	void setPerspective(in double fov, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPerspective, _godot_object, fov, z_near, z_far);
	}
	/**
	Sets the camera projection to orthogonal mode, by specifying a width and the $(I near) and $(I far) clip planes in worldspace units. (As a hint, 2D games often use this projection, with values specified in pixels)
	*/
	void setOrthogonal(in double size, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOrthogonal, _godot_object, size, z_near, z_far);
	}
	/**
	Makes this camera the current Camera for the $(D Viewport) (see class description). If the Camera Node is outside the scene tree, it will attempt to become current once it's added.
	*/
	void makeCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.makeCurrent, _godot_object);
	}
	/**
	If this is the current Camera, remove it from being current. If `enable_next` is `true`, request to make the next Camera current, if any.
	*/
	void clearCurrent(in bool enable_next = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearCurrent, _godot_object, enable_next);
	}
	/**
	
	*/
	void setCurrent(in bool arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCurrent, _godot_object, arg0);
	}
	/**
	
	*/
	bool isCurrent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCurrent, _godot_object);
	}
	/**
	Gets the camera transform. Subclassed cameras (such as CharacterCamera) may provide different transforms than the $(D Node) transform.
	*/
	Transform getCameraTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getCameraTransform, _godot_object);
	}
	/**
	
	*/
	double getFov() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFov, _godot_object);
	}
	/**
	
	*/
	double getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSize, _godot_object);
	}
	/**
	
	*/
	double getZfar() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getZfar, _godot_object);
	}
	/**
	
	*/
	double getZnear() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getZnear, _godot_object);
	}
	/**
	
	*/
	void setFov(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFov, _godot_object, arg0);
	}
	/**
	
	*/
	void setSize(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSize, _godot_object, arg0);
	}
	/**
	
	*/
	void setZfar(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setZfar, _godot_object, arg0);
	}
	/**
	
	*/
	void setZnear(in double arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setZnear, _godot_object, arg0);
	}
	/**
	
	*/
	Camera.Projection getProjection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera.Projection)(_classBinding.getProjection, _godot_object);
	}
	/**
	
	*/
	void setProjection(in long arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProjection, _godot_object, arg0);
	}
	/**
	
	*/
	void setHOffset(in double ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHOffset, _godot_object, ofs);
	}
	/**
	
	*/
	double getHOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getHOffset, _godot_object);
	}
	/**
	
	*/
	void setVOffset(in double ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVOffset, _godot_object, ofs);
	}
	/**
	
	*/
	double getVOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getVOffset, _godot_object);
	}
	/**
	
	*/
	void setCullMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCullMask, _godot_object, mask);
	}
	/**
	
	*/
	long getCullMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCullMask, _godot_object);
	}
	/**
	
	*/
	void setEnvironment(Environment env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnvironment, _godot_object, env);
	}
	/**
	
	*/
	Ref!Environment getEnvironment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment)(_classBinding.getEnvironment, _godot_object);
	}
	/**
	
	*/
	void setKeepAspectMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setKeepAspectMode, _godot_object, mode);
	}
	/**
	
	*/
	Camera.KeepAspect getKeepAspectMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera.KeepAspect)(_classBinding.getKeepAspectMode, _godot_object);
	}
	/**
	
	*/
	void setDopplerTracking(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDopplerTracking, _godot_object, mode);
	}
	/**
	
	*/
	Camera.DopplerTracking getDopplerTracking() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Camera.DopplerTracking)(_classBinding.getDopplerTracking, _godot_object);
	}
	/**
	
	*/
	Array getFrustum() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getFrustum, _godot_object);
	}
	/**
	
	*/
	void setCullMaskBit(in long layer, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCullMaskBit, _godot_object, layer, enable);
	}
	/**
	
	*/
	bool getCullMaskBit(in long layer) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCullMaskBit, _godot_object, layer);
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
	If `true`, the ancestor $(D Viewport) is currently using this Camera. Default value: `false`.
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
