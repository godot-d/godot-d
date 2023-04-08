/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.engine;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.mainloop;
/**

*/
@GodotBaseClass struct EngineSingleton
{
	package(godot) enum string _GODOT_internal_name = "_Engine";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "Engine";
		@GodotName("get_author_info") GodotMethod!(Dictionary) getAuthorInfo;
		@GodotName("get_copyright_info") GodotMethod!(Array) getCopyrightInfo;
		@GodotName("get_donor_info") GodotMethod!(Dictionary) getDonorInfo;
		@GodotName("get_frames_drawn") GodotMethod!(long) getFramesDrawn;
		@GodotName("get_frames_per_second") GodotMethod!(double) getFramesPerSecond;
		@GodotName("get_idle_frames") GodotMethod!(long) getIdleFrames;
		@GodotName("get_iterations_per_second") GodotMethod!(long) getIterationsPerSecond;
		@GodotName("get_license_info") GodotMethod!(Dictionary) getLicenseInfo;
		@GodotName("get_license_text") GodotMethod!(String) getLicenseText;
		@GodotName("get_main_loop") GodotMethod!(MainLoop) getMainLoop;
		@GodotName("get_physics_frames") GodotMethod!(long) getPhysicsFrames;
		@GodotName("get_physics_interpolation_fraction") GodotMethod!(double) getPhysicsInterpolationFraction;
		@GodotName("get_physics_jitter_fix") GodotMethod!(double) getPhysicsJitterFix;
		@GodotName("get_singleton") GodotMethod!(GodotObject, String) getSingleton;
		@GodotName("get_target_fps") GodotMethod!(long) getTargetFps;
		@GodotName("get_time_scale") GodotMethod!(double) getTimeScale;
		@GodotName("get_version_info") GodotMethod!(Dictionary) getVersionInfo;
		@GodotName("has_singleton") GodotMethod!(bool, String) hasSingleton;
		@GodotName("is_editor_hint") GodotMethod!(bool) isEditorHint;
		@GodotName("is_in_physics_frame") GodotMethod!(bool) isInPhysicsFrame;
		@GodotName("is_printing_error_messages") GodotMethod!(bool) isPrintingErrorMessages;
		@GodotName("set_editor_hint") GodotMethod!(void, bool) setEditorHint;
		@GodotName("set_iterations_per_second") GodotMethod!(void, long) setIterationsPerSecond;
		@GodotName("set_physics_jitter_fix") GodotMethod!(void, double) setPhysicsJitterFix;
		@GodotName("set_print_error_messages") GodotMethod!(void, bool) setPrintErrorMessages;
		@GodotName("set_target_fps") GodotMethod!(void, long) setTargetFps;
		@GodotName("set_time_scale") GodotMethod!(void, double) setTimeScale;
	}
	/// 
	pragma(inline, true) bool opEquals(in EngineSingleton other) const
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
	/// Construct a new instance of EngineSingleton.
	/// Note: use `memnew!EngineSingleton` instead.
	static EngineSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Engine");
		if(constructor is null) return typeof(this).init;
		return cast(EngineSingleton)(constructor());
	}
	/**
	
	*/
	Dictionary getAuthorInfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getAuthorInfo, _godot_object);
	}
	/**
	
	*/
	Array getCopyrightInfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getCopyrightInfo, _godot_object);
	}
	/**
	
	*/
	Dictionary getDonorInfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDonorInfo, _godot_object);
	}
	/**
	
	*/
	long getFramesDrawn()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFramesDrawn, _godot_object);
	}
	/**
	
	*/
	double getFramesPerSecond() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFramesPerSecond, _godot_object);
	}
	/**
	
	*/
	long getIdleFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getIdleFrames, _godot_object);
	}
	/**
	
	*/
	long getIterationsPerSecond() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getIterationsPerSecond, _godot_object);
	}
	/**
	
	*/
	Dictionary getLicenseInfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getLicenseInfo, _godot_object);
	}
	/**
	
	*/
	String getLicenseText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLicenseText, _godot_object);
	}
	/**
	
	*/
	MainLoop getMainLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MainLoop)(GDNativeClassBinding.getMainLoop, _godot_object);
	}
	/**
	
	*/
	long getPhysicsFrames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPhysicsFrames, _godot_object);
	}
	/**
	
	*/
	double getPhysicsInterpolationFraction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPhysicsInterpolationFraction, _godot_object);
	}
	/**
	
	*/
	double getPhysicsJitterFix() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPhysicsJitterFix, _godot_object);
	}
	/**
	
	*/
	GodotObject getSingleton(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(GDNativeClassBinding.getSingleton, _godot_object, name);
	}
	/**
	
	*/
	long getTargetFps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTargetFps, _godot_object);
	}
	/**
	
	*/
	double getTimeScale()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimeScale, _godot_object);
	}
	/**
	
	*/
	Dictionary getVersionInfo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getVersionInfo, _godot_object);
	}
	/**
	
	*/
	bool hasSingleton(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSingleton, _godot_object, name);
	}
	/**
	
	*/
	bool isEditorHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEditorHint, _godot_object);
	}
	/**
	
	*/
	bool isInPhysicsFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInPhysicsFrame, _godot_object);
	}
	/**
	
	*/
	bool isPrintingErrorMessages() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPrintingErrorMessages, _godot_object);
	}
	/**
	
	*/
	void setEditorHint(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEditorHint, _godot_object, enabled);
	}
	/**
	
	*/
	void setIterationsPerSecond(in long iterations_per_second)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIterationsPerSecond, _godot_object, iterations_per_second);
	}
	/**
	
	*/
	void setPhysicsJitterFix(in double physics_jitter_fix)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsJitterFix, _godot_object, physics_jitter_fix);
	}
	/**
	
	*/
	void setPrintErrorMessages(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPrintErrorMessages, _godot_object, enabled);
	}
	/**
	
	*/
	void setTargetFps(in long target_fps)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTargetFps, _godot_object, target_fps);
	}
	/**
	
	*/
	void setTimeScale(in double time_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTimeScale, _godot_object, time_scale);
	}
	/**
	
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
	
	*/
	@property double physicsJitterFix()
	{
		return getPhysicsJitterFix();
	}
	/// ditto
	@property void physicsJitterFix(double v)
	{
		setPhysicsJitterFix(v);
	}
	/**
	
	*/
	@property bool printErrorMessages()
	{
		return isPrintingErrorMessages();
	}
	/// ditto
	@property void printErrorMessages(bool v)
	{
		setPrintErrorMessages(v);
	}
	/**
	
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
	checkClassBinding!EngineSingleton();
	return EngineSingleton(EngineSingleton.GDNativeClassBinding._singleton);
}
