/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodeanimation;
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
import godot.animationrootnode;
/**

*/
@GodotBaseClass struct AnimationNodeAnimation
{
	package(godot) enum string _GODOT_internal_name = "AnimationNodeAnimation";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AnimationRootNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_animation") GodotMethod!(String) getAnimation;
		@GodotName("set_animation") GodotMethod!(void, String) setAnimation;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNodeAnimation other) const
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
	/// Construct a new instance of AnimationNodeAnimation.
	/// Note: use `memnew!AnimationNodeAnimation` instead.
	static AnimationNodeAnimation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeAnimation");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeAnimation)(constructor());
	}
	/**
	
	*/
	String getAnimation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAnimation, _godot_object);
	}
	/**
	
	*/
	void setAnimation(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnimation, _godot_object, name);
	}
	/**
	
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
