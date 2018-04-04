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
/**
Camera which moves toward another node.

InterpolatedCamera is a $(D Camera) which smoothly moves to match a target node's position and rotation.
If it is not $(D enabled), or does not have a valid target set, InterpolatedCamera acts like a normal Camera.
*/
@GodotBaseClass struct InterpolatedCamera
{
	static immutable string _GODOT_internal_name = "InterpolatedCamera";
public:
@nogc nothrow:
	union { godot_object _godot_object; Camera _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_target_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_target_path") = _GODOT_set_target_path;
	/**
	
	*/
	void setTargetPath(NodePathArg0)(in NodePathArg0 target_path)
	{
		_GODOT_set_target_path.bind("InterpolatedCamera", "set_target_path");
		ptrcall!(void)(_GODOT_set_target_path, _godot_object, target_path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_target_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_target_path") = _GODOT_get_target_path;
	/**
	
	*/
	NodePath getTargetPath() const
	{
		_GODOT_get_target_path.bind("InterpolatedCamera", "get_target_path");
		return ptrcall!(NodePath)(_GODOT_get_target_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_target;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_target") = _GODOT_set_target;
	/**
	Set the node to move toward.
	*/
	void setTarget(GodotObject target)
	{
		_GODOT_set_target.bind("InterpolatedCamera", "set_target");
		ptrcall!(void)(_GODOT_set_target, _godot_object, target);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_speed") = _GODOT_set_speed;
	/**
	
	*/
	void setSpeed(in double speed)
	{
		_GODOT_set_speed.bind("InterpolatedCamera", "set_speed");
		ptrcall!(void)(_GODOT_set_speed, _godot_object, speed);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_speed") = _GODOT_get_speed;
	/**
	
	*/
	double getSpeed() const
	{
		_GODOT_get_speed.bind("InterpolatedCamera", "get_speed");
		return ptrcall!(double)(_GODOT_get_speed, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_interpolation_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_interpolation_enabled") = _GODOT_set_interpolation_enabled;
	/**
	
	*/
	void setInterpolationEnabled(in bool target_path)
	{
		_GODOT_set_interpolation_enabled.bind("InterpolatedCamera", "set_interpolation_enabled");
		ptrcall!(void)(_GODOT_set_interpolation_enabled, _godot_object, target_path);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_interpolation_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_interpolation_enabled") = _GODOT_is_interpolation_enabled;
	/**
	
	*/
	bool isInterpolationEnabled() const
	{
		_GODOT_is_interpolation_enabled.bind("InterpolatedCamera", "is_interpolation_enabled");
		return ptrcall!(bool)(_GODOT_is_interpolation_enabled, _godot_object);
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
	How quickly the camera moves.
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
