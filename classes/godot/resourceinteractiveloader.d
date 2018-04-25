/**
Interactive Resource Loader.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourceinteractiveloader;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
import godot.resource;
/**
Interactive Resource Loader.

This object is returned by ResourceLoader when performing an interactive load. It allows to load with high granularity, so this is mainly useful for displaying load bars/percentages.
*/
@GodotBaseClass struct ResourceInteractiveLoader
{
	static immutable string _GODOT_internal_name = "ResourceInteractiveLoader";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ResourceInteractiveLoader other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceInteractiveLoader opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ResourceInteractiveLoader _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ResourceInteractiveLoader");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceInteractiveLoader)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(Resource) _GODOT_get_resource;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_resource") = _GODOT_get_resource;
	/**
	Return the loaded resource (only if loaded). Otherwise, returns null.
	*/
	Ref!Resource getResource()
	{
		_GODOT_get_resource.bind("ResourceInteractiveLoader", "get_resource");
		return ptrcall!(Resource)(_GODOT_get_resource, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_poll;
	package(godot) alias _GODOT_methodBindInfo(string name : "poll") = _GODOT_poll;
	/**
	Poll the load. If OK is returned, this means poll will have to be called again. If ERR_FILE_EOF is returned, them the load has finished and the resource can be obtained by calling $(D getResource).
	*/
	GodotError poll()
	{
		_GODOT_poll.bind("ResourceInteractiveLoader", "poll");
		return ptrcall!(GodotError)(_GODOT_poll, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_wait;
	package(godot) alias _GODOT_methodBindInfo(string name : "wait") = _GODOT_wait;
	/**
	
	*/
	GodotError wait()
	{
		_GODOT_wait.bind("ResourceInteractiveLoader", "wait");
		return ptrcall!(GodotError)(_GODOT_wait, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_stage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stage") = _GODOT_get_stage;
	/**
	Return the load stage. The total amount of stages can be queried with $(D getStageCount)
	*/
	long getStage() const
	{
		_GODOT_get_stage.bind("ResourceInteractiveLoader", "get_stage");
		return ptrcall!(long)(_GODOT_get_stage, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_stage_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stage_count") = _GODOT_get_stage_count;
	/**
	Return the total amount of stages (calls to $(D poll)) needed to completely load this resource.
	*/
	long getStageCount() const
	{
		_GODOT_get_stage_count.bind("ResourceInteractiveLoader", "get_stage_count");
		return ptrcall!(long)(_GODOT_get_stage_count, _godot_object);
	}
}
