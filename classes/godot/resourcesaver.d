/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourcesaver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
/**

*/
@GodotBaseClass struct ResourceSaverSingleton
{
	package(godot) enum string _GODOT_internal_name = "_ResourceSaver";
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
		immutable char* _singletonName = "ResourceSaver";
		@GodotName("get_recognized_extensions") GodotMethod!(PoolStringArray, Resource) getRecognizedExtensions;
		@GodotName("save") GodotMethod!(GodotError, String, Resource, long) save;
	}
	/// 
	pragma(inline, true) bool opEquals(in ResourceSaverSingleton other) const
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
	/// Construct a new instance of ResourceSaverSingleton.
	/// Note: use `memnew!ResourceSaverSingleton` instead.
	static ResourceSaverSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_ResourceSaver");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceSaverSingleton)(constructor());
	}
	/// 
	enum SaverFlags : int
	{
		/** */
		flagRelativePaths = 1,
		/** */
		flagBundleResources = 2,
		/** */
		flagChangePath = 4,
		/** */
		flagOmitEditorProperties = 8,
		/** */
		flagSaveBigEndian = 16,
		/** */
		flagCompress = 32,
		/** */
		flagReplaceSubresourcePaths = 64,
	}
	/// 
	enum Constants : int
	{
		flagRelativePaths = 1,
		flagBundleResources = 2,
		flagChangePath = 4,
		flagOmitEditorProperties = 8,
		flagSaveBigEndian = 16,
		flagCompress = 32,
		flagReplaceSubresourcePaths = 64,
	}
	/**
	
	*/
	PoolStringArray getRecognizedExtensions(Resource type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getRecognizedExtensions, _godot_object, type);
	}
	/**
	
	*/
	GodotError save(in String path, Resource resource, in long flags = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.save, _godot_object, path, resource, flags);
	}
}
/// Returns: the ResourceSaverSingleton
@property @nogc nothrow pragma(inline, true)
ResourceSaverSingleton ResourceSaver()
{
	checkClassBinding!ResourceSaverSingleton();
	return ResourceSaverSingleton(ResourceSaverSingleton.GDNativeClassBinding._singleton);
}
