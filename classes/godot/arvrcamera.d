/**
A camera node with a few overrules for AR/VR applied such as location tracking.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvrcamera;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.camera;
/**
A camera node with a few overrules for AR/VR applied such as location tracking.

This is a helper spatial node for our camera, note that if stereoscopic rendering is applicable (VR-HMD) most of the camera properties are ignored as the HMD information overrides them. The only properties that can be trusted are the near and far planes.
The position and orientation of this node is automatically updated by the ARVR Server to represent the location of the HMD if such tracking is available and can thus be used by game logic. Note that in contrast to the ARVR Controller the render thread has access to the most up to date tracking data of the HMD and the location of the ARVRCamera can lag a few milliseconds behind what is used for rendering as a result.
*/
@GodotBaseClass struct ARVRCamera
{
	static immutable string _GODOT_internal_name = "ARVRCamera";
public:
@nogc nothrow:
	union { godot_object _godot_object; Camera _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ARVRCamera other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRCamera opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRCamera _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVRCamera");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRCamera)(constructor());
	}
}
