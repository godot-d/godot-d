/**
Access to basic engine properties.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.engine;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.mainloop;
/**
Access to basic engine properties.

The `Engine` class allows you to query and modify the game's run-time parameters, such as frames per second, time scale, and others.
*/
@GodotBaseClass struct EngineSingleton
{
	static immutable string _GODOT_internal_name = "_Engine";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Engine";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EngineSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EngineSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EngineSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Engine");
		if(constructor is null) return typeof(this).init;
		return cast(EngineSingleton)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_set_iterations_per_second;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_iterations_per_second") = _GODOT_set_iterations_per_second;
	/**
	
	*/
	void setIterationsPerSecond(in long iterations_per_second)
	{
		_GODOT_set_iterations_per_second.bind("_Engine", "set_iterations_per_second");
		ptrcall!(void)(_GODOT_set_iterations_per_second, _godot_object, iterations_per_second);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_iterations_per_second;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_iterations_per_second") = _GODOT_get_iterations_per_second;
	/**
	
	*/
	long getIterationsPerSecond() const
	{
		_GODOT_get_iterations_per_second.bind("_Engine", "get_iterations_per_second");
		return ptrcall!(long)(_GODOT_get_iterations_per_second, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_target_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_target_fps") = _GODOT_set_target_fps;
	/**
	
	*/
	void setTargetFps(in long target_fps)
	{
		_GODOT_set_target_fps.bind("_Engine", "set_target_fps");
		ptrcall!(void)(_GODOT_set_target_fps, _godot_object, target_fps);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_target_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_target_fps") = _GODOT_get_target_fps;
	/**
	
	*/
	long getTargetFps() const
	{
		_GODOT_get_target_fps.bind("_Engine", "get_target_fps");
		return ptrcall!(long)(_GODOT_get_target_fps, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_time_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_time_scale") = _GODOT_set_time_scale;
	/**
	
	*/
	void setTimeScale(in double time_scale)
	{
		_GODOT_set_time_scale.bind("_Engine", "set_time_scale");
		ptrcall!(void)(_GODOT_set_time_scale, _godot_object, time_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_time_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_time_scale") = _GODOT_get_time_scale;
	/**
	
	*/
	double getTimeScale()
	{
		_GODOT_get_time_scale.bind("_Engine", "get_time_scale");
		return ptrcall!(double)(_GODOT_get_time_scale, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_frames_drawn;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frames_drawn") = _GODOT_get_frames_drawn;
	/**
	Returns the total number of frames drawn.
	*/
	long getFramesDrawn()
	{
		_GODOT_get_frames_drawn.bind("_Engine", "get_frames_drawn");
		return ptrcall!(long)(_GODOT_get_frames_drawn, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_frames_per_second;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frames_per_second") = _GODOT_get_frames_per_second;
	/**
	Returns the frames per second of the running game.
	*/
	double getFramesPerSecond() const
	{
		_GODOT_get_frames_per_second.bind("_Engine", "get_frames_per_second");
		return ptrcall!(double)(_GODOT_get_frames_per_second, _godot_object);
	}
	package(godot) static GodotMethod!(MainLoop) _GODOT_get_main_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_main_loop") = _GODOT_get_main_loop;
	/**
	Returns the main loop object (see $(D MainLoop) and $(D SceneTree)).
	*/
	MainLoop getMainLoop() const
	{
		_GODOT_get_main_loop.bind("_Engine", "get_main_loop");
		return ptrcall!(MainLoop)(_GODOT_get_main_loop, _godot_object);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_version_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_version_info") = _GODOT_get_version_info;
	/**
	Returns the current engine version information in a Dictionary.
	
	"major"    - Holds the major version number as a String
	"minor"    - Holds the minor version number as a String
	"patch"    - Holds the patch version number as a String
	"status"   - Holds the status (e.g. "beta", "rc1", "rc2", ... "stable") as a String
	"build"    - Holds the build name (e.g. "custom-build") as a String
	"string"   - major + minor + patch + status + build in a single String
	*/
	Dictionary getVersionInfo() const
	{
		_GODOT_get_version_info.bind("_Engine", "get_version_info");
		return ptrcall!(Dictionary)(_GODOT_get_version_info, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_in_physics_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_in_physics_frame") = _GODOT_is_in_physics_frame;
	/**
	Returns `true` if the game is inside the fixed process and physics phase of the game loop.
	*/
	bool isInPhysicsFrame() const
	{
		_GODOT_is_in_physics_frame.bind("_Engine", "is_in_physics_frame");
		return ptrcall!(bool)(_GODOT_is_in_physics_frame, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_singleton") = _GODOT_has_singleton;
	/**
	
	*/
	bool hasSingleton(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_singleton.bind("_Engine", "has_singleton");
		return ptrcall!(bool)(_GODOT_has_singleton, _godot_object, name);
	}
	package(godot) static GodotMethod!(GodotObject, String) _GODOT_get_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_singleton") = _GODOT_get_singleton;
	/**
	
	*/
	GodotObject getSingleton(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_singleton.bind("_Engine", "get_singleton");
		return ptrcall!(GodotObject)(_GODOT_get_singleton, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editor_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editor_hint") = _GODOT_set_editor_hint;
	/**
	
	*/
	void setEditorHint(in bool enabled)
	{
		_GODOT_set_editor_hint.bind("_Engine", "set_editor_hint");
		ptrcall!(void)(_GODOT_set_editor_hint, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editor_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editor_hint") = _GODOT_is_editor_hint;
	/**
	
	*/
	bool isEditorHint() const
	{
		_GODOT_is_editor_hint.bind("_Engine", "is_editor_hint");
		return ptrcall!(bool)(_GODOT_is_editor_hint, _godot_object);
	}
	/**
	If `true`, it is running inside the editor. Useful for tool scripts.
	*/
	@property bool editorHint()
	{
		return isEditorHint();
	}
	/// ditto
	@property void editorHint(bool v)
	{
		setEditorHint(v);
	}
	/**
	The number of fixed iterations per second (for fixed process and physics).
	*/
	@property long iterationsPerSecond()
	{
		return getIterationsPerSecond();
	}
	/// ditto
	@property void iterationsPerSecond(long v)
	{
		setIterationsPerSecond(v);
	}
	/**
	The desired frames per second. If the hardware cannot keep up, this setting may not be respected. Defaults to 0, which indicates no limit.
	*/
	@property long targetFps()
	{
		return getTargetFps();
	}
	/// ditto
	@property void targetFps(long v)
	{
		setTargetFps(v);
	}
	/**
	Controls how fast or slow the in-game clock ticks versus the real life one. It defaults to 1.0. A value of 2.0 means the game moves twice as fast as real life, whilst a value of 0.5 means the game moves at half the regular speed.
	*/
	@property double timeScale()
	{
		return getTimeScale();
	}
	/// ditto
	@property void timeScale(double v)
	{
		setTimeScale(v);
	}
}
/// Returns: the EngineSingleton
@property @nogc nothrow pragma(inline, true)
EngineSingleton Engine()
{
	return EngineSingleton._GODOT_singleton();
}
