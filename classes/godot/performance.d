/**
Exposes performance related data.

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
Exposes performance related data.

This class provides access to a number of different monitors related to performance, such as memory usage, draw calls, and FPS. These are the same as the values displayed in the $(I Monitor) tab in the editor's $(I Debugger) panel. By using the $(D getMonitor) method of this class, you can access this data from your code. Note that a few of these monitors are only available in debug mode and will always return 0 when used in a release build.
Many of these monitors are not updated in real-time, so there may be a short delay between changes.
*/
@GodotBaseClass struct PerformanceSingleton
{
	static immutable string _GODOT_internal_name = "Performance";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "Performance";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PerformanceSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PerformanceSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Frames per second.
		*/
		timeFps = 0,
		/**
		Time it took to complete one frame.
		*/
		timeProcess = 1,
		/**
		Time it took to complete one physics frame.
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
		Number of nodes currently instanced. This also includes the root node, as well as any nodes not in the scene tree.
		*/
		objectNodeCount = 10,
		/**
		3D objects drawn per frame.
		*/
		renderObjectsInFrame = 11,
		/**
		Vertices drawn per frame. 3D only.
		*/
		renderVerticesInFrame = 12,
		/**
		Material changes per frame. 3D only
		*/
		renderMaterialChangesInFrame = 13,
		/**
		Shader changes per frame. 3D only.
		*/
		renderShaderChangesInFrame = 14,
		/**
		Render surface changes per frame. 3D only.
		*/
		renderSurfaceChangesInFrame = 15,
		/**
		Draw calls per frame. 3D only.
		*/
		renderDrawCallsInFrame = 16,
		/**
		Video memory used. Includes both texture and vertex memory.
		*/
		renderVideoMemUsed = 17,
		/**
		Texture memory used.
		*/
		renderTextureMemUsed = 18,
		/**
		Vertex memory used.
		*/
		renderVertexMemUsed = 19,
		/**
		
		*/
		renderUsageVideoMemTotal = 20,
		/**
		Number of active $(D RigidBody2D) nodes in the game.
		*/
		physics2dActiveObjects = 21,
		/**
		Number of collision pairs in the 2D physics engine.
		*/
		physics2dCollisionPairs = 22,
		/**
		Number of islands in the 2D physics engine.
		*/
		physics2dIslandCount = 23,
		/**
		Number of active $(D RigidBody) and $(D VehicleBody) nodes in the game.
		*/
		physics3dActiveObjects = 24,
		/**
		Number of collision pairs in the 3D physics engine.
		*/
		physics3dCollisionPairs = 25,
		/**
		Number of islands in the 3D physics engine.
		*/
		physics3dIslandCount = 26,
		/**
		
		*/
		monitorMax = 27,
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
		renderObjectsInFrame = 11,
		renderVerticesInFrame = 12,
		renderMaterialChangesInFrame = 13,
		renderShaderChangesInFrame = 14,
		renderSurfaceChangesInFrame = 15,
		renderDrawCallsInFrame = 16,
		renderVideoMemUsed = 17,
		renderTextureMemUsed = 18,
		renderVertexMemUsed = 19,
		renderUsageVideoMemTotal = 20,
		physics2dActiveObjects = 21,
		physics2dCollisionPairs = 22,
		physics2dIslandCount = 23,
		physics3dActiveObjects = 24,
		physics3dCollisionPairs = 25,
		physics3dIslandCount = 26,
		monitorMax = 27,
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_monitor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_monitor") = _GODOT_get_monitor;
	/**
	Returns the value of one of the available monitors. You should provide one of this class's constants as the argument, like this:
	
	
	print(Performance.get_monitor(Performance.TIME_FPS)) # Prints the FPS to the console
	
	
	*/
	double getMonitor(in long monitor) const
	{
		_GODOT_get_monitor.bind("Performance", "get_monitor");
		return ptrcall!(double)(_GODOT_get_monitor, _godot_object, monitor);
	}
}
/// Returns: the PerformanceSingleton
@property @nogc nothrow pragma(inline, true)
PerformanceSingleton Performance()
{
	return PerformanceSingleton._GODOT_singleton();
}
