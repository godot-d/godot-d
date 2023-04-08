/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourceformatsaver;
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
import godot.reference;
import godot.resource;
/**

*/
@GodotBaseClass struct ResourceFormatSaver
{
	package(godot) enum string _GODOT_internal_name = "ResourceFormatSaver";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_recognized_extensions") GodotMethod!(PoolStringArray, Resource) getRecognizedExtensions;
		@GodotName("recognize") GodotMethod!(bool, Resource) recognize;
		@GodotName("save") GodotMethod!(long, String, Resource, long) save;
	}
	/// 
	pragma(inline, true) bool opEquals(in ResourceFormatSaver other) const
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
	/// Construct a new instance of ResourceFormatSaver.
	/// Note: use `memnew!ResourceFormatSaver` instead.
	static ResourceFormatSaver _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ResourceFormatSaver");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceFormatSaver)(constructor());
	}
	/**
	
	*/
	PoolStringArray getRecognizedExtensions(Resource resource)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(resource);
		String _GODOT_method_name = String("get_recognized_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolStringArray);
	}
	/**
	
	*/
	bool recognize(Resource resource)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(resource);
		String _GODOT_method_name = String("recognize");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	long save(in String path, Resource resource, in long flags)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(path);
		_GODOT_args.append(resource);
		_GODOT_args.append(flags);
		String _GODOT_method_name = String("save");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
}
