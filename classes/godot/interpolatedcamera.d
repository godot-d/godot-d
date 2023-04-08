/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.interpolatedcamera;
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
@GodotBaseClass struct InterpolatedCamera
{
	package(godot) enum string _GODOT_internal_name = "InterpolatedCamera";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Camera _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_process_mode") GodotMethod!(InterpolatedCamera.InterpolatedCameraProcessMode) getProcessMode;
		@GodotName("get_speed") GodotMethod!(double) getSpeed;
		@GodotName("get_target_path") GodotMethod!(NodePath) getTargetPath;
		@GodotName("is_interpolation_enabled") GodotMethod!(bool) isInterpolationEnabled;
		@GodotName("set_interpolation_enabled") GodotMethod!(void, bool) setInterpolationEnabled;
		@GodotName("set_process_mode") GodotMethod!(void, long) setProcessMode;
		@GodotName("set_speed") GodotMethod!(void, double) setSpeed;
		@GodotName("set_target") GodotMethod!(void, GodotObject) setTarget;
		@GodotName("set_target_path") GodotMethod!(void, NodePath) setTargetPath;
	}
	/// 
	pragma(inline, true) bool opEquals(in InterpolatedCamera other) const
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
	/// Construct a new instance of InterpolatedCamera.
	/// Note: use `memnew!InterpolatedCamera` instead.
	static InterpolatedCamera _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InterpolatedCamera");
		if(constructor is null) return typeof(this).init;
		return cast(InterpolatedCamera)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum InterpolatedCameraProcessMode : int
	{
		/** */
		interpolatedCameraProcessPhysics = 0,
		/** */
		interpolatedCameraProcessIdle = 1,
	}
	/// 
	enum Constants : int
	{
		interpolatedCameraProcessPhysics = 0,
		interpolatedCameraProcessIdle = 1,
	}
	/**
	
	*/
	InterpolatedCamera.InterpolatedCameraProcessMode getProcessMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(InterpolatedCamera.InterpolatedCameraProcessMode)(GDNativeClassBinding.getProcessMode, _godot_object);
	}
	/**
	
	*/
	double getSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSpeed, _godot_object);
	}
	/**
	
	*/
	NodePath getTargetPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getTargetPath, _godot_object);
	}
	/**
	
	*/
	bool isInterpolationEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInterpolationEnabled, _godot_object);
	}
	/**
	
	*/
	void setInterpolationEnabled(in bool target_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInterpolationEnabled, _godot_object, target_path);
	}
	/**
	
	*/
	void setProcessMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProcessMode, _godot_object, mode);
	}
	/**
	
	*/
	void setSpeed(in double speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpeed, _godot_object, speed);
	}
	/**
	
	*/
	void setTarget(GodotObject target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTarget, _godot_object, target);
	}
	/**
	
	*/
	void setTargetPath(NodePathArg0)(in NodePathArg0 target_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTargetPath, _godot_object, target_path);
	}
	/**
	
	*/
	@property bool enabled()
	{
		return isInterpolationEnabled();
	}
	/// ditto
	@property void enabled(bool v)
	{
		setInterpolationEnabled(v);
	}
	/**
	
	*/
	@property InterpolatedCamera.InterpolatedCameraProcessMode processMode()
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
	@property double speed()
	{
		return getSpeed();
	}
	/// ditto
	@property void speed(double v)
	{
		setSpeed(v);
	}
	/**
	
	*/
	@property NodePath target()
	{
		return getTargetPath();
	}
	/// ditto
	@property void target(NodePath v)
	{
		setTargetPath(v);
	}
}
