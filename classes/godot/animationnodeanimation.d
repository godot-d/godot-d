/**
Input animation to use in an $(D AnimationNodeBlendTree).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodeanimation;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.animationrootnode;
/**
Input animation to use in an $(D AnimationNodeBlendTree).

A resource to add to an $(D AnimationNodeBlendTree). Only features one output set using the $(D animation) property. Use it as an input for $(D AnimationNode) that blend animations together.
*/
@GodotBaseClass struct AnimationNodeAnimation
{
	enum string _GODOT_internal_name = "AnimationNodeAnimation";
public:
@nogc nothrow:
	union { godot_object _godot_object; AnimationRootNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_animation") GodotMethod!(String) getAnimation;
		@GodotName("set_animation") GodotMethod!(void, String) setAnimation;
	}
	bool opEquals(in AnimationNodeAnimation other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNodeAnimation opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimationNodeAnimation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeAnimation");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeAnimation)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getAnimation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAnimation, _godot_object);
	}
	/**
	
	*/
	void setAnimation(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnimation, _godot_object, name);
	}
	/**
	Animation to use as an output. It is one of the animations provided by $(D AnimationTree.animPlayer).
	*/
	@property String animation()
	{
		return getAnimation();
	}
	/// ditto
	@property void animation(String v)
	{
		setAnimation(v);
	}
}
