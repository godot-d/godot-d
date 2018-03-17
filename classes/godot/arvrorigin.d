/**
Our origin point in AR/VR.

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
Our origin point in AR/VR.

This is a special node within the AR/VR system that maps the physical location of the center of our tracking space to the virtual location within our game world.
There should be only one of these nodes in your scene and you must have one. All the ARVRCamera, ARVRController and ARVRAnchor nodes should be direct children of this node for spatial tracking to work correctly.
It is the position of this node that you update when you're character needs to move through your game world while we're not moving in the real world. Movement in the real world is always in relation to this origin point.
So say that your character is driving a car, the ARVROrigin node should be a child node of this car. If you implement a teleport system to move your character, you change the position of this node. Etc.
*/
@GodotBaseClass struct ARVROrigin
{
	static immutable string _GODOT_internal_name = "ARVROrigin";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ARVROrigin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVROrigin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVROrigin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVROrigin");
		if(constructor is null) return typeof(this).init;
		return cast(ARVROrigin)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_world_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_world_scale") = _GODOT_set_world_scale;
	/**
	
	*/
	void setWorldScale(in double world_scale)
	{
		_GODOT_set_world_scale.bind("ARVROrigin", "set_world_scale");
		ptrcall!(void)(_GODOT_set_world_scale, _godot_object, world_scale);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_world_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_world_scale") = _GODOT_get_world_scale;
	/**
	
	*/
	double getWorldScale() const
	{
		_GODOT_get_world_scale.bind("ARVROrigin", "get_world_scale");
		return ptrcall!(double)(_GODOT_get_world_scale, _godot_object);
	}
	/**
	Allows you to adjust the scale to your game's units. Most AR/VR platforms assume a scale of 1 game world unit = 1 meter in the real world.
	Note that this method is a passthrough to the $(D ARVRServer) itself.
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
