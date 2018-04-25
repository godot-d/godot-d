/**
Class that has everything pertaining to a 2D world.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.world2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.physics2ddirectspacestate;
/**
Class that has everything pertaining to a 2D world.

A physics space, a visual scenario and a sound space. 2D nodes register their resources into the current 2D world.
*/
@GodotBaseClass struct World2D
{
	static immutable string _GODOT_internal_name = "World2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in World2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	World2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static World2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("World2D");
		if(constructor is null) return typeof(this).init;
		return cast(World2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(RID) _GODOT_get_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_canvas") = _GODOT_get_canvas;
	/**
	
	*/
	RID getCanvas()
	{
		_GODOT_get_canvas.bind("World2D", "get_canvas");
		return ptrcall!(RID)(_GODOT_get_canvas, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space") = _GODOT_get_space;
	/**
	
	*/
	RID getSpace()
	{
		_GODOT_get_space.bind("World2D", "get_space");
		return ptrcall!(RID)(_GODOT_get_space, _godot_object);
	}
	package(godot) static GodotMethod!(Physics2DDirectSpaceState) _GODOT_get_direct_space_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_direct_space_state") = _GODOT_get_direct_space_state;
	/**
	
	*/
	Physics2DDirectSpaceState getDirectSpaceState()
	{
		_GODOT_get_direct_space_state.bind("World2D", "get_direct_space_state");
		return ptrcall!(Physics2DDirectSpaceState)(_GODOT_get_direct_space_state, _godot_object);
	}
	/**
	The $(D RID) of this world's canvas resource. Used by the $(D VisualServer) for 2D drawing.
	*/
	@property RID canvas()
	{
		return getCanvas();
	}
	/**
	The $(D RID) of this world's physics space resource. Used by the $(D Physics2DServer) for 2D physics, treating it as both a space and an area.
	*/
	@property RID space()
	{
		return getSpace();
	}
	/**
	The state of this world's physics space. This allows arbitrary querying for collision.
	*/
	@property Physics2DDirectSpaceState directSpaceState()
	{
		return getDirectSpaceState();
	}
}
