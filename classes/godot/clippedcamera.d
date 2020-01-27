/**
A $(D Camera) that includes collision.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.clippedcamera;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.camera;
import godot.spatial;
/**
A $(D Camera) that includes collision.

This node extends $(D Camera) to add collisions with $(D Area) and/or $(D PhysicsBody) nodes. The camera cannot move through colliding objects.
*/
@GodotBaseClass struct ClippedCamera
{
	enum string _GODOT_internal_name = "ClippedCamera";
public:
@nogc nothrow:
	union { godot_object _godot_object; Camera _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_exception") GodotMethod!(void, GodotObject) addException;
		@GodotName("add_exception_rid") GodotMethod!(void, RID) addExceptionRid;
		@GodotName("clear_exceptions") GodotMethod!(void) clearExceptions;
		@GodotName("get_clip_offset") GodotMethod!(double) getClipOffset;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("get_margin") GodotMethod!(double) getMargin;
		@GodotName("get_process_mode") GodotMethod!(ClippedCamera.ProcessMode) getProcessMode;
		@GodotName("is_clip_to_areas_enabled") GodotMethod!(bool) isClipToAreasEnabled;
		@GodotName("is_clip_to_bodies_enabled") GodotMethod!(bool) isClipToBodiesEnabled;
		@GodotName("remove_exception") GodotMethod!(void, GodotObject) removeException;
		@GodotName("remove_exception_rid") GodotMethod!(void, RID) removeExceptionRid;
		@GodotName("set_clip_to_areas") GodotMethod!(void, bool) setClipToAreas;
		@GodotName("set_clip_to_bodies") GodotMethod!(void, bool) setClipToBodies;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("set_margin") GodotMethod!(void, double) setMargin;
		@GodotName("set_process_mode") GodotMethod!(void, long) setProcessMode;
	}
	bool opEquals(in ClippedCamera other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ClippedCamera opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ClippedCamera _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ClippedCamera");
		if(constructor is null) return typeof(this).init;
		return cast(ClippedCamera)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ProcessMode : int
	{
		/**
		The camera updates with the `_physics_process` callback.
		*/
		clipProcessPhysics = 0,
		/**
		The camera updates with the `_process` callback.
		*/
		clipProcessIdle = 1,
	}
	/// 
	enum Constants : int
	{
		clipProcessPhysics = 0,
		clipProcessIdle = 1,
	}
	/**
	Adds a collision exception so the camera does not collide with the specified node.
	*/
	void addException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addException, _godot_object, node);
	}
	/**
	Adds a collision exception so the camera does not collide with the specified $(D RID).
	*/
	void addExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addExceptionRid, _godot_object, rid);
	}
	/**
	Removes all collision exceptions.
	*/
	void clearExceptions()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearExceptions, _godot_object);
	}
	/**
	Returns the distance the camera has been offset due to a collision.
	*/
	double getClipOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getClipOffset, _godot_object);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
	}
	/**
	Returns `true` if the specified bit index is on.
	$(B Note:) Bit indices range from 0-19.
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	double getMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMargin, _godot_object);
	}
	/**
	
	*/
	ClippedCamera.ProcessMode getProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ClippedCamera.ProcessMode)(_classBinding.getProcessMode, _godot_object);
	}
	/**
	
	*/
	bool isClipToAreasEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClipToAreasEnabled, _godot_object);
	}
	/**
	
	*/
	bool isClipToBodiesEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClipToBodiesEnabled, _godot_object);
	}
	/**
	Removes a collision exception with the specified node.
	*/
	void removeException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeException, _godot_object, node);
	}
	/**
	Removes a collision exception with the specified $(D RID).
	*/
	void removeExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeExceptionRid, _godot_object, rid);
	}
	/**
	
	*/
	void setClipToAreas(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClipToAreas, _godot_object, enable);
	}
	/**
	
	*/
	void setClipToBodies(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClipToBodies, _godot_object, enable);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	Sets the specified bit index to the `value`.
	$(B Note:) Bit indices range from 0-19.
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setProcessMode(in long process_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessMode, _godot_object, process_mode);
	}
	/**
	If `true`, the camera stops on contact with $(D Area)s.
	*/
	@property bool clipToAreas()
	{
		return isClipToAreasEnabled();
	}
	/// ditto
	@property void clipToAreas(bool v)
	{
		setClipToAreas(v);
	}
	/**
	If `true`, the camera stops on contact with $(D PhysicsBody)s.
	*/
	@property bool clipToBodies()
	{
		return isClipToBodiesEnabled();
	}
	/// ditto
	@property void clipToBodies(bool v)
	{
		setClipToBodies(v);
	}
	/**
	The camera's collision mask. Only objects in at least one collision layer matching the mask will be detected.
	*/
	@property long collisionMask()
	{
		return getCollisionMask();
	}
	/// ditto
	@property void collisionMask(long v)
	{
		setCollisionMask(v);
	}
	/**
	The camera's collision margin. The camera can't get closer than this distance to a colliding object.
	*/
	@property double margin()
	{
		return getMargin();
	}
	/// ditto
	@property void margin(double v)
	{
		setMargin(v);
	}
	/**
	The camera's process callback. See $(D processmode).
	*/
	@property ClippedCamera.ProcessMode processMode()
	{
		return getProcessMode();
	}
	/// ditto
	@property void processMode(long v)
	{
		setProcessMode(v);
	}
}
