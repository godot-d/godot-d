/**
A parallax scrolling layer to be used with $(D ParallaxBackground).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.parallaxlayer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
A parallax scrolling layer to be used with $(D ParallaxBackground).

A ParallaxLayer must be the child of a $(D ParallaxBackground) node. Each ParallaxLayer can be set to move at different speeds relative to the camera movement or the $(D ParallaxBackground.scrollOffset) value.
This node's children will be affected by its scroll offset.
$(B Note:) Any changes to this node's position and scale made after it enters the scene will be ignored.
*/
@GodotBaseClass struct ParallaxLayer
{
	package(godot) enum string _GODOT_internal_name = "ParallaxLayer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_mirroring") GodotMethod!(Vector2) getMirroring;
		@GodotName("get_motion_offset") GodotMethod!(Vector2) getMotionOffset;
		@GodotName("get_motion_scale") GodotMethod!(Vector2) getMotionScale;
		@GodotName("set_mirroring") GodotMethod!(void, Vector2) setMirroring;
		@GodotName("set_motion_offset") GodotMethod!(void, Vector2) setMotionOffset;
		@GodotName("set_motion_scale") GodotMethod!(void, Vector2) setMotionScale;
	}
	/// 
	pragma(inline, true) bool opEquals(in ParallaxLayer other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) ParallaxLayer opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ParallaxLayer.
	/// Note: use `memnew!ParallaxLayer` instead.
	static ParallaxLayer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ParallaxLayer");
		if(constructor is null) return typeof(this).init;
		return cast(ParallaxLayer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Vector2 getMirroring() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMirroring, _godot_object);
	}
	/**
	
	*/
	Vector2 getMotionOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMotionOffset, _godot_object);
	}
	/**
	
	*/
	Vector2 getMotionScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMotionScale, _godot_object);
	}
	/**
	
	*/
	void setMirroring(in Vector2 mirror)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMirroring, _godot_object, mirror);
	}
	/**
	
	*/
	void setMotionOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMotionOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setMotionScale(in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMotionScale, _godot_object, scale);
	}
	/**
	The ParallaxLayer's $(D Texture) mirroring. Useful for creating an infinite scrolling background. If an axis is set to `0`, the $(D Texture) will not be mirrored.
	*/
	@property Vector2 motionMirroring()
	{
		return getMirroring();
	}
	/// ditto
	@property void motionMirroring(Vector2 v)
	{
		setMirroring(v);
	}
	/**
	The ParallaxLayer's offset relative to the parent ParallaxBackground's $(D ParallaxBackground.scrollOffset).
	*/
	@property Vector2 motionOffset()
	{
		return getMotionOffset();
	}
	/// ditto
	@property void motionOffset(Vector2 v)
	{
		setMotionOffset(v);
	}
	/**
	Multiplies the ParallaxLayer's motion. If an axis is set to `0`, it will not scroll.
	*/
	@property Vector2 motionScale()
	{
		return getMotionScale();
	}
	/// ditto
	@property void motionScale(Vector2 v)
	{
		setMotionScale(v);
	}
}
