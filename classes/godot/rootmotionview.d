/**
Editor-only helper for setting up root motion in $(D AnimationTree).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.rootmotionview;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.visualinstance;
/**
Editor-only helper for setting up root motion in $(D AnimationTree).

$(I Root motion) refers to an animation technique where a mesh's skeleton is used to give impulse to a character. When working with 3D animations, a popular technique is for animators to use the root skeleton bone to give motion to the rest of the skeleton. This allows animating characters in a way where steps actually match the floor below. It also allows precise interaction with objects during cinematics. See also $(D AnimationTree).
$(B Note:) $(D RootMotionView) is only visible in the editor. It will be hidden automatically in the running project, and will also be converted to a plain $(D Node) in the running project. This means a script attached to a $(D RootMotionView) node $(I must) have `extends Node` instead of `extends RootMotionView`. Additionally, it must not be a `@tool` script.
*/
@GodotBaseClass struct RootMotionView
{
	package(godot) enum string _GODOT_internal_name = "RootMotionView";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in RootMotionView other) const
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
	/// Construct a new instance of RootMotionView.
	/// Note: use `memnew!RootMotionView` instead.
	static RootMotionView _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RootMotionView");
		if(constructor is null) return typeof(this).init;
		return cast(RootMotionView)(constructor());
	}
	@disable new(size_t s);
}
