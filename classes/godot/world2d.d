/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.world2d;
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
import godot.resource;
import godot.reference;
import godot.physics2ddirectspacestate;
/**

*/
@GodotBaseClass struct World2D
{
	package(godot) enum string _GODOT_internal_name = "World2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_canvas") GodotMethod!(RID) getCanvas;
		@GodotName("get_direct_space_state") GodotMethod!(Physics2DDirectSpaceState) getDirectSpaceState;
		@GodotName("get_navigation_map") GodotMethod!(RID) getNavigationMap;
		@GodotName("get_space") GodotMethod!(RID) getSpace;
	}
	/// 
	pragma(inline, true) bool opEquals(in World2D other) const
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
	/// Construct a new instance of World2D.
	/// Note: use `memnew!World2D` instead.
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
		return ptrcall!(RID)(GDNativeClassBinding.getCanvas, _godot_object);
	}
	/**
	
	*/
	Physics2DDirectSpaceState getDirectSpaceState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectSpaceState)(GDNativeClassBinding.getDirectSpaceState, _godot_object);
	}
	/**
	
	*/
	RID getNavigationMap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getNavigationMap, _godot_object);
	}
	/**
	
	*/
	RID getSpace()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getSpace, _godot_object);
	}
	/**
	
	*/
	@property RID canvas()
	{
		return getCanvas();
	}
	/**
	
	*/
	@property Physics2DDirectSpaceState directSpaceState()
	{
		return getDirectSpaceState();
	}
	/**
	
	*/
	@property RID navigationMap()
	{
		return getNavigationMap();
	}
	/**
	
	*/
	@property RID space()
	{
		return getSpace();
	}
}
