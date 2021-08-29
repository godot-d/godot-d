/**
Blends two of three animations additively inside of an $(D AnimationNodeBlendTree).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodeadd3;
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
import godot.animationnode;
import godot.resource;
/**
Blends two of three animations additively inside of an $(D AnimationNodeBlendTree).

A resource to add to an $(D AnimationNodeBlendTree). Blends two animations together additively out of three based on a value in the `$(D -1.0, 1.0)` range.
This node has three inputs:
- The base animation to add to
- A -add animation to blend with when the blend amount is in the `$(D -1.0, 0.0)` range.
- A +add animation to blend with when the blend amount is in the `$(D 0.0, 1.0)` range
*/
@GodotBaseClass struct AnimationNodeAdd3
{
	package(godot) enum string _GODOT_internal_name = "AnimationNodeAdd3";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AnimationNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("is_using_sync") GodotMethod!(bool) isUsingSync;
		@GodotName("set_use_sync") GodotMethod!(void, bool) setUseSync;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNodeAdd3 other) const
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
	/// Construct a new instance of AnimationNodeAdd3.
	/// Note: use `memnew!AnimationNodeAdd3` instead.
	static AnimationNodeAdd3 _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeAdd3");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeAdd3)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool isUsingSync() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingSync, _godot_object);
	}
	/**
	
	*/
	void setUseSync(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseSync, _godot_object, enable);
	}
	/**
	If `true`, sets the `optimization` to `false` when calling $(D AnimationNode.blendInput), forcing the blended animations to update every frame.
	*/
	@property bool sync()
	{
		return isUsingSync();
	}
	/// ditto
	@property void sync(bool v)
	{
		setUseSync(v);
	}
}
