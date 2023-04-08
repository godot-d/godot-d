/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.performance;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
/**

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
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
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
	/// 
	enum Monitor : int
	{
		/** */
		timeFps = 0,
		/** */
		timeProcess = 1,
		/** */
		timePhysicsProcess = 2,
		/** */
		memoryStatic = 3,
		/** */
		memoryDynamic = 4,
		/** */
		memoryStaticMax = 5,
		/** */
		memoryDynamicMax = 6,
		/** */
		memoryMessageBufferMax = 7,
		/** */
		objectCount = 8,
		/** */
		objectResourceCount = 9,
		/** */
		objectNodeCount = 10,
		/** */
		objectOrphanNodeCount = 11,
		/** */
		renderObjectsInFrame = 12,
		/** */
		renderVerticesInFrame = 13,
		/** */
		renderMaterialChangesInFrame = 14,
		/** */
		renderShaderChangesInFrame = 15,
		/** */
		renderSurfaceChangesInFrame = 16,
		/** */
		renderDrawCallsInFrame = 17,
		/** */
		render2dItemsInFrame = 18,
		/** */
		render2dDrawCallsInFrame = 19,
		/** */
		renderVideoMemUsed = 20,
		/** */
		renderTextureMemUsed = 21,
		/** */
		renderVertexMemUsed = 22,
		/** */
		renderUsageVideoMemTotal = 23,
		/** */
		physics2dActiveObjects = 24,
		/** */
		physics2dCollisionPairs = 25,
		/** */
		physics2dIslandCount = 26,
		/** */
		physics3dActiveObjects = 27,
		/** */
		physics3dCollisionPairs = 28,
		/** */
		physics3dIslandCount = 29,
		/** */
		audioOutputLatency = 30,
		/** */
		monitorMax = 31,
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
		render2dItemsInFrame = 18,
		render2dDrawCallsInFrame = 19,
		renderVideoMemUsed = 20,
		renderTextureMemUsed = 21,
		renderVertexMemUsed = 22,
		renderUsageVideoMemTotal = 23,
		physics2dActiveObjects = 24,
		physics2dCollisionPairs = 25,
		physics2dIslandCount = 26,
		physics3dActiveObjects = 27,
		physics3dCollisionPairs = 28,
		physics3dIslandCount = 29,
		audioOutputLatency = 30,
		monitorMax = 31,
	}
	/**
	
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
