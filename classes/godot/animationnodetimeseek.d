/**
A time-seeking animation node to be used with $(D AnimationTree).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodetimeseek;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.animationnode;
import godot.resource;
/**
A time-seeking animation node to be used with $(D AnimationTree).

This node can be used to cause a seek command to happen to any sub-children of the graph. After setting the time, this value returns to -1.
*/
@GodotBaseClass struct AnimationNodeTimeSeek
{
	package(godot) enum string _GODOT_internal_name = "AnimationNodeTimeSeek";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AnimationNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNodeTimeSeek other) const
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
	/// Construct a new instance of AnimationNodeTimeSeek.
	/// Note: use `memnew!AnimationNodeTimeSeek` instead.
	static AnimationNodeTimeSeek _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeTimeSeek");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeTimeSeek)(constructor());
	}
	@disable new(size_t s);
}
