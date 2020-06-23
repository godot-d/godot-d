/**
Interactive $(D Resource) loader.

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
Interactive $(D Resource) loader.

This object is returned by $(D ResourceLoader) when performing an interactive load. It allows loading resources with high granularity, which makes it mainly useful for displaying loading bars or percentages.
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
	pragma(inline, true) ResourceInteractiveLoader opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
	Returns the loaded resource if the load operation completed successfully, `null` otherwise.
	*/
	Ref!Resource getResource()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(GDNativeClassBinding.getResource, _godot_object);
	}
	/**
	Returns the load stage. The total amount of stages can be queried with $(D getStageCount).
	*/
	long getStage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStage, _godot_object);
	}
	/**
	Returns the total amount of stages (calls to $(D poll)) needed to completely load this resource.
	*/
	long getStageCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStageCount, _godot_object);
	}
	/**
	Polls the loading operation, i.e. loads a data chunk up to the next stage.
	Returns $(D constant OK) if the poll is successful but the load operation has not finished yet (intermediate stage). This means $(D poll) will have to be called again until the last stage is completed.
	Returns $(D constant ERR_FILE_EOF) if the load operation has completed successfully. The loaded resource can be obtained by calling $(D getResource).
	Returns another $(D error) code if the poll has failed.
	*/
	GodotError poll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.poll, _godot_object);
	}
	/**
	Polls the loading operation successively until the resource is completely loaded or a $(D poll) fails.
	Returns $(D constant ERR_FILE_EOF) if the load operation has completed successfully. The loaded resource can be obtained by calling $(D getResource).
	Returns another $(D error) code if a poll has failed, aborting the operation.
	*/
	GodotError wait()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.wait, _godot_object);
	}
}
