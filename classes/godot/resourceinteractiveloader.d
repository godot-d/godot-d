/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourceinteractiveloader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.reference;
import godot.resource;
/**

*/
@GodotBaseClass struct ResourceInteractiveLoader
{
	package(godot) enum string _GODOT_internal_name = "ResourceInteractiveLoader";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_resource") GodotMethod!(Resource) getResource;
		@GodotName("get_stage") GodotMethod!(long) getStage;
		@GodotName("get_stage_count") GodotMethod!(long) getStageCount;
		@GodotName("poll") GodotMethod!(GodotError) poll;
		@GodotName("wait") GodotMethod!(GodotError) wait;
	}
	/// 
	pragma(inline, true) bool opEquals(in ResourceInteractiveLoader other) const
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
	/// Construct a new instance of ResourceInteractiveLoader.
	/// Note: use `memnew!ResourceInteractiveLoader` instead.
	static ResourceInteractiveLoader _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ResourceInteractiveLoader");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceInteractiveLoader)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!Resource getResource()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(GDNativeClassBinding.getResource, _godot_object);
	}
	/**
	
	*/
	long getStage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStage, _godot_object);
	}
	/**
	
	*/
	long getStageCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStageCount, _godot_object);
	}
	/**
	
	*/
	GodotError poll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.poll, _godot_object);
	}
	/**
	
	*/
	GodotError wait()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.wait, _godot_object);
	}
}
