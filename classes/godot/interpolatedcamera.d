/**
Camera which moves toward another node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.interpolatedcamera;
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
Camera which moves toward another node.

InterpolatedCamera is a $(D Camera) which smoothly moves to match a target node's position and rotation.
If it is not $(D enabled) or does not have a valid target set, InterpolatedCamera acts like a normal Camera.
*/
@GodotBaseClass struct InterpolatedCamera
{
	enum string _GODOT_internal_name = "InterpolatedCamera";
public:
@nogc nothrow:
	union { godot_object _godot_object; Camera _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_target_path") GodotMethod!(void, NodePath) setTargetPath;
		@GodotName("get_target_path") GodotMethod!(NodePath) getTargetPath;
		@GodotName("set_target") GodotMethod!(void, GodotObject) setTarget;
		@GodotName("set_speed") GodotMethod!(void, double) setSpeed;
		@GodotName("get_speed") GodotMethod!(double) getSpeed;
		@GodotName("set_interpolation_enabled") GodotMethod!(void, bool) setInterpolationEnabled;
		@GodotName("is_interpolation_enabled") GodotMethod!(bool) isInterpolationEnabled;
	}
	bool opEquals(in InterpolatedCamera other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InterpolatedCamera opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InterpolatedCamera _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InterpolatedCamera");
		if(constructor is null) return typeof(this).init;
		return cast(InterpolatedCamera)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setTargetPath(NodePathArg0)(in NodePathArg0 target_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTargetPath, _godot_object, target_path);
	}
	/**
	
	*/
	NodePath getTargetPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getTargetPath, _godot_object);
	}
	/**
	Sets the node to move toward and orient with.
	*/
	void setTarget(GodotObject target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTarget, _godot_object, target);
	}
	/**
	
	*/
	void setSpeed(in double speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpeed, _godot_object, speed);
	}
	/**
	
	*/
	double getSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpeed, _godot_object);
	}
	/**
	
	*/
	void setInterpolationEnabled(in bool target_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInterpolationEnabled, _godot_object, target_path);
	}
	/**
	
	*/
	bool isInterpolationEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInterpolationEnabled, _godot_object);
	}
	/**
	The target's $(D NodePath).
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
	/**
	How quickly the camera moves toward its target. Higher values will result in tighter camera motion.
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
	If `true`, and a target is set, the camera will move automatically.
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
}
