/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.environment;
/**

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
	/// 
	enum KeepAspect : int
	{
		/** */
		keepWidth = 0,
		/** */
		keepHeight = 1,
	}
	/// 
	enum Projection : int
	{
		/** */
		projectionPerspective = 0,
		/** */
		projectionOrthogonal = 1,
		/** */
		projectionFrustum = 2,
	}
	/// 
	enum DopplerTracking : int
	{
		/** */
		dopplerTrackingDisabled = 0,
		/** */
		dopplerTrackingIdleStep = 1,
		/** */
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
	
	*/
	void clearCurrent(in bool enable_next = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearCurrent, _godot_object, enable_next);
	}
	/**
	
	*/
	RID getCameraRid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getCameraRid, _godot_object);
	}
	/**
	
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
	
	*/
	bool isPositionBehind(in Vector3 world_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPositionBehind, _godot_object, world_point);
	}
	/**
	
	*/
	void makeCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.makeCurrent, _godot_object);
	}
	/**
	
	*/
	Vector3 projectLocalRayNormal(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.projectLocalRayNormal, _godot_object, screen_point);
	}
	/**
	
	*/
	Vector3 projectPosition(in Vector2 screen_point, in double z_depth) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.projectPosition, _godot_object, screen_point, z_depth);
	}
	/**
	
	*/
	Vector3 projectRayNormal(in Vector2 screen_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.projectRayNormal, _godot_object, screen_point);
	}
	/**
	
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
	
	*/
	void setCullMaskBit(in long layer, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCullMaskBit, _godot_object, layer, enable);
	}
	/**
	
	*/
	void setCurrent(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurrent, _godot_object, enable);
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
	void setFov(in double fov)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFov, _godot_object, fov);
	}
	/**
	
	*/
	void setFrustum(in double size, in Vector2 offset, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrustum, _godot_object, size, offset, z_near, z_far);
	}
	/**
	
	*/
	void setFrustumOffset(in Vector2 frustum_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrustumOffset, _godot_object, frustum_offset);
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
	
	*/
	void setOrthogonal(in double size, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOrthogonal, _godot_object, size, z_near, z_far);
	}
	/**
	
	*/
	void setPerspective(in double fov, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPerspective, _godot_object, fov, z_near, z_far);
	}
	/**
	
	*/
	void setProjection(in long projection)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProjection, _godot_object, projection);
	}
	/**
	
	*/
	void setSize(in double size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size);
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
	void setZfar(in double zfar)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setZfar, _godot_object, zfar);
	}
	/**
	
	*/
	void setZnear(in double znear)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setZnear, _godot_object, znear);
	}
	/**
	
	*/
	Vector2 unprojectPosition(in Vector3 world_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.unprojectPosition, _godot_object, world_point);
	}
	/**
	
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
