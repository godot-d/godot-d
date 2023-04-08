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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.camera;
import godot.spatial;
/**

*/
@GodotBaseClass struct ClippedCamera
{
	package(godot) enum string _GODOT_internal_name = "ClippedCamera";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Camera _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in ClippedCamera other) const
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
	/// Construct a new instance of ClippedCamera.
	/// Note: use `memnew!ClippedCamera` instead.
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
		/** */
		clipProcessPhysics = 0,
		/** */
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
	void addException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addException, _godot_object, node);
	}
	/**
	
	*/
	void addExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addExceptionRid, _godot_object, rid);
	}
	/**
	
	*/
	void clearExceptions()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearExceptions, _godot_object);
	}
	/**
	
	*/
	double getClipOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getClipOffset, _godot_object);
	}
	/**
	
	*/
	long getCollisionMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCollisionMask, _godot_object);
	}
	/**
	
	*/
	bool getCollisionMaskBit(in long bit) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getCollisionMaskBit, _godot_object, bit);
	}
	/**
	
	*/
	double getMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMargin, _godot_object);
	}
	/**
	
	*/
	ClippedCamera.ProcessMode getProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ClippedCamera.ProcessMode)(GDNativeClassBinding.getProcessMode, _godot_object);
	}
	/**
	
	*/
	bool isClipToAreasEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClipToAreasEnabled, _godot_object);
	}
	/**
	
	*/
	bool isClipToBodiesEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClipToBodiesEnabled, _godot_object);
	}
	/**
	
	*/
	void removeException(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeException, _godot_object, node);
	}
	/**
	
	*/
	void removeExceptionRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeExceptionRid, _godot_object, rid);
	}
	/**
	
	*/
	void setClipToAreas(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClipToAreas, _godot_object, enable);
	}
	/**
	
	*/
	void setClipToBodies(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClipToBodies, _godot_object, enable);
	}
	/**
	
	*/
	void setCollisionMask(in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMask, _godot_object, mask);
	}
	/**
	
	*/
	void setCollisionMaskBit(in long bit, in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollisionMaskBit, _godot_object, bit, value);
	}
	/**
	
	*/
	void setMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setProcessMode(in long process_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessMode, _godot_object, process_mode);
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
}
