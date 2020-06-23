/**
The origin point in AR/VR.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrorigin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
/**
The origin point in AR/VR.

This is a special node within the AR/VR system that maps the physical location of the center of our tracking space to the virtual location within our game world.
There should be only one of these nodes in your scene and you must have one. All the ARVRCamera, ARVRController and ARVRAnchor nodes should be direct children of this node for spatial tracking to work correctly.
It is the position of this node that you update when your character needs to move through your game world while we're not moving in the real world. Movement in the real world is always in relation to this origin point.
For example, if your character is driving a car, the ARVROrigin node should be a child node of this car. Or, if you're implementing a teleport system to move your character, you should change the position of this node.
*/
@GodotBaseClass struct ARVROrigin
{
	package(godot) enum string _GODOT_internal_name = "ARVROrigin";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_world_scale") GodotMethod!(double) getWorldScale;
		@GodotName("set_world_scale") GodotMethod!(void, double) setWorldScale;
	}
	/// 
	pragma(inline, true) bool opEquals(in ARVROrigin other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) ARVROrigin opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ARVROrigin.
	/// Note: use `memnew!ARVROrigin` instead.
	static ARVROrigin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVROrigin");
		if(constructor is null) return typeof(this).init;
		return cast(ARVROrigin)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getWorldScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWorldScale, _godot_object);
	}
	/**
	
	*/
	void setWorldScale(in double world_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWorldScale, _godot_object, world_scale);
	}
	/**
	Allows you to adjust the scale to your game's units. Most AR/VR platforms assume a scale of 1 game world unit = 1 real world meter.
	$(B Note:) This method is a passthrough to the $(D ARVRServer) itself.
	*/
	@property double worldScale()
	{
		return getWorldScale();
	}
	/// ditto
	@property void worldScale(double v)
	{
		setWorldScale(v);
	}
}
