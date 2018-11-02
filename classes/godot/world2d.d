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
import godot.reference;
/**
Class that has everything pertaining to a 2D world.

A physics space, a visual scenario and a sound space. 2D nodes register their resources into the current 2D world.
*/
@GodotBaseClass struct World2D
{
	enum string _GODOT_internal_name = "World2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_canvas") GodotMethod!(RID) getCanvas;
		@GodotName("get_space") GodotMethod!(RID) getSpace;
		@GodotName("get_direct_space_state") GodotMethod!(Physics2DDirectSpaceState) getDirectSpaceState;
	}
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
	/**
	
	*/
	RID getCanvas()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getCanvas, _godot_object);
	}
	/**
	
	*/
	RID getSpace()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getSpace, _godot_object);
	}
	/**
	
	*/
	Physics2DDirectSpaceState getDirectSpaceState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectSpaceState)(_classBinding.getDirectSpaceState, _godot_object);
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
