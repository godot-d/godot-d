/**


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
import godot.node;
/**

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
		@GodotName("set_margin") GodotMethod!(void, double) setMargin;
		@GodotName("get_margin") GodotMethod!(double) getMargin;
		@GodotName("set_process_mode") GodotMethod!(void, long) setProcessMode;
		@GodotName("get_process_mode") GodotMethod!(ClippedCamera.ProcessMode) getProcessMode;
		@GodotName("set_collision_mask") GodotMethod!(void, long) setCollisionMask;
		@GodotName("get_collision_mask") GodotMethod!(long) getCollisionMask;
		@GodotName("set_collision_mask_bit") GodotMethod!(void, long, bool) setCollisionMaskBit;
		@GodotName("get_collision_mask_bit") GodotMethod!(bool, long) getCollisionMaskBit;
		@GodotName("add_exception_rid") GodotMethod!(void, RID) addExceptionRid;
		@GodotName("add_exception") GodotMethod!(void, GodotObject) addException;
		@GodotName("remove_exception_rid") GodotMethod!(void, RID) removeExceptionRid;
		@GodotName("remove_exception") GodotMethod!(void, GodotObject) removeException;
		@GodotName("set_clip_to_areas") GodotMethod!(void, bool) setClipToAreas;
		@GodotName("is_clip_to_areas_enabled") GodotMethod!(bool) isClipToAreasEnabled;
		@GodotName("set_clip_to_bodies") GodotMethod!(void, bool) setClipToBodies;
		@GodotName("is_clip_to_bodies_enabled") GodotMethod!(bool) isClipToBodiesEnabled;
		@GodotName("clear_exceptions") GodotMethod!(void) clearExceptions;
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
		
		*/
		clipProcessPhysics = 0,
		/**
		
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
	
	*/
	void setMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMargin, _godot_object, margin);
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
	void setProcessMode(in long process_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProcessMode, _godot_object, process_mode);
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
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCollisionMask, _godot_object);
	}
	/**
	
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	void addExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addExceptionRid, _godot_object, rid);
	}
	/**
	
	*/
	void addException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addException, _godot_object, node);
	}
	/**
	
	*/
	void removeExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeExceptionRid, _godot_object, rid);
	}
	/**
	
	*/
	void removeException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeException, _godot_object, node);
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
	bool isClipToAreasEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClipToAreasEnabled, _godot_object);
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
	bool isClipToBodiesEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClipToBodiesEnabled, _godot_object);
	}
	/**
	
	*/
	void clearExceptions()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearExceptions, _godot_object);
	}
	/**
	
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
	/**
	
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
}
