/**
Exposes performance-related data.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.performance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Exposes performance-related data.

This class provides access to a number of different monitors related to performance, such as memory usage, draw calls, and FPS. These are the same as the values displayed in the $(B Monitor) tab in the editor's $(B Debugger) panel. By using the $(D getMonitor) method of this class, you can access this data from your code.
$(B Note:) A few of these monitors are only available in debug mode and will always return 0 when used in a release build.
$(B Note:) Many of these monitors are not updated in real-time, so there may be a short delay between changes.
*/
@GodotBaseClass struct PerformanceSingleton
{
	package(godot) enum string _GODOT_internal_name = "Performance";
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
		immutable char* _singletonName = "Performance";
		@GodotName("get_monitor") GodotMethod!(double, long) getMonitor;
	}
	/// 
	pragma(inline, true) bool opEquals(in PerformanceSingleton other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) PerformanceSingleton opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of PerformanceSingleton.
	/// Note: use `memnew!PerformanceSingleton` instead.
	static PerformanceSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Performance");
		if(constructor is null) return typeof(this).init;
		return cast(PerformanceSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Monitor : int
	{
		/**
		Number of frames per second.
		*/
		timeFps = 0,
		/**
		Time it took to complete one frame, in seconds.
		*/
		timeProcess = 1,
		/**
		Time it took to complete one physics frame, in seconds.
		*/
		timePhysicsProcess = 2,
		/**
		Static memory currently used, in bytes. Not available in release builds.
		*/
		memoryStatic = 3,
		/**
		Dynamic memory currently used, in bytes. Not available in release builds.
		*/
		memoryDynamic = 4,
		/**
		Available static memory. Not available in release builds.
		*/
		memoryStaticMax = 5,
		/**
		Available dynamic memory. Not available in release builds.
		*/
		memoryDynamicMax = 6,
		/**
		Largest amount of memory the message queue buffer has used, in bytes. The message queue is used for deferred functions calls and notifications.
		*/
		memoryMessageBufferMax = 7,
		/**
		Number of objects currently instanced (including nodes).
		*/
		objectCount = 8,
		/**
		Number of resources currently used.
		*/
		objectResourceCount = 9,
		/**
		Number of nodes currently instanced in the scene tree. This also includes the root node.
		*/
		objectNodeCount = 10,
		/**
		Number of orphan nodes, i.e. nodes which are not parented to a node of the scene tree.
		*/
		objectOrphanNodeCount = 11,
		/**
		3D objects drawn per frame.
		*/
		renderObjectsInFrame = 12,
		/**
		Vertices drawn per frame. 3D only.
		*/
		renderVerticesInFrame = 13,
		/**
		Material changes per frame. 3D only.
		*/
		renderMaterialChangesInFrame = 14,
		/**
		Shader changes per frame. 3D only.
		*/
		renderShaderChangesInFrame = 15,
		/**
		Render surface changes per frame. 3D only.
		*/
		renderSurfaceChangesInFrame = 16,
		/**
		Draw calls per frame. 3D only.
		*/
		renderDrawCallsInFrame = 17,
		/**
		The amount of video memory used, i.e. texture and vertex memory combined.
		*/
		renderVideoMemUsed = 18,
		/**
		The amount of texture memory used.
		*/
		renderTextureMemUsed = 19,
		/**
		The amount of vertex memory used.
		*/
		renderVertexMemUsed = 20,
		/**
		Unimplemented in the GLES2 and GLES3 rendering backends, always returns 0.
		*/
		renderUsageVideoMemTotal = 21,
		/**
		Number of active $(D RigidBody2D) nodes in the game.
		*/
		physics2dActiveObjects = 22,
		/**
		Number of collision pairs in the 2D physics engine.
		*/
		physics2dCollisionPairs = 23,
		/**
		Number of islands in the 2D physics engine.
		*/
		physics2dIslandCount = 24,
		/**
		Number of active $(D RigidBody) and $(D VehicleBody) nodes in the game.
		*/
		physics3dActiveObjects = 25,
		/**
		Number of collision pairs in the 3D physics engine.
		*/
		physics3dCollisionPairs = 26,
		/**
		Number of islands in the 3D physics engine.
		*/
		physics3dIslandCount = 27,
		/**
		Output latency of the $(D AudioServer).
		*/
		audioOutputLatency = 28,
		/**
		Represents the size of the $(D monitor) enum.
		*/
		monitorMax = 29,
	}
	/// 
	enum Constants : int
	{
		timeFps = 0,
		timeProcess = 1,
		timePhysicsProcess = 2,
		memoryStatic = 3,
		memoryDynamic = 4,
		memoryStaticMax = 5,
		memoryDynamicMax = 6,
		memoryMessageBufferMax = 7,
		objectCount = 8,
		objectResourceCount = 9,
		objectNodeCount = 10,
		objectOrphanNodeCount = 11,
		renderObjectsInFrame = 12,
		renderVerticesInFrame = 13,
		renderMaterialChangesInFrame = 14,
		renderShaderChangesInFrame = 15,
		renderSurfaceChangesInFrame = 16,
		renderDrawCallsInFrame = 17,
		renderVideoMemUsed = 18,
		renderTextureMemUsed = 19,
		renderVertexMemUsed = 20,
		renderUsageVideoMemTotal = 21,
		physics2dActiveObjects = 22,
		physics2dCollisionPairs = 23,
		physics2dIslandCount = 24,
		physics3dActiveObjects = 25,
		physics3dCollisionPairs = 26,
		physics3dIslandCount = 27,
		audioOutputLatency = 28,
		monitorMax = 29,
	}
	/**
	Returns the value of one of the available monitors. You should provide one of the $(D monitor) constants as the argument, like this:
	
	
	print(Performance.get_monitor(Performance.TIME_FPS)) # Prints the FPS to the console
	
	
	*/
	double getMonitor(in long monitor) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMonitor, _godot_object, monitor);
	}
}
/// Returns: the PerformanceSingleton
@property @nogc nothrow pragma(inline, true)
PerformanceSingleton Performance()
{
	checkClassBinding!PerformanceSingleton();
	return PerformanceSingleton(PerformanceSingleton.GDNativeClassBinding._singleton);
}
