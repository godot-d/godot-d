/**
Class that has everything pertaining to a world.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.world;
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
import godot.physicsdirectspacestate;
import godot.environment;
/**
Class that has everything pertaining to a world.

A physics space, a visual scenario and a sound space. Spatial nodes register their resources into the current world.
*/
@GodotBaseClass struct World
{
	package(godot) enum string _GODOT_internal_name = "World";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_direct_space_state") GodotMethod!(PhysicsDirectSpaceState) getDirectSpaceState;
		@GodotName("get_environment") GodotMethod!(Environment) getEnvironment;
		@GodotName("get_fallback_environment") GodotMethod!(Environment) getFallbackEnvironment;
		@GodotName("get_scenario") GodotMethod!(RID) getScenario;
		@GodotName("get_space") GodotMethod!(RID) getSpace;
		@GodotName("set_environment") GodotMethod!(void, Environment) setEnvironment;
		@GodotName("set_fallback_environment") GodotMethod!(void, Environment) setFallbackEnvironment;
	}
	/// 
	pragma(inline, true) bool opEquals(in World other) const
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
	/// Construct a new instance of World.
	/// Note: use `memnew!World` instead.
	static World _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("World");
		if(constructor is null) return typeof(this).init;
		return cast(World)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	PhysicsDirectSpaceState getDirectSpaceState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsDirectSpaceState)(GDNativeClassBinding.getDirectSpaceState, _godot_object);
	}
	/**
	
	*/
	Ref!Environment getEnvironment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment)(GDNativeClassBinding.getEnvironment, _godot_object);
	}
	/**
	
	*/
	Ref!Environment getFallbackEnvironment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment)(GDNativeClassBinding.getFallbackEnvironment, _godot_object);
	}
	/**
	
	*/
	RID getScenario() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getScenario, _godot_object);
	}
	/**
	
	*/
	RID getSpace() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getSpace, _godot_object);
	}
	/**
	
	*/
	void setEnvironment(Environment env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnvironment, _godot_object, env);
	}
	/**
	
	*/
	void setFallbackEnvironment(Environment env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFallbackEnvironment, _godot_object, env);
	}
	/**
	Direct access to the world's physics 3D space state. Used for querying current and potential collisions.
	*/
	@property PhysicsDirectSpaceState directSpaceState()
	{
		return getDirectSpaceState();
	}
	/**
	The World's $(D Environment).
	*/
	@property Environment environment()
	{
		return getEnvironment();
	}
	/// ditto
	@property void environment(Environment v)
	{
		setEnvironment(v);
	}
	/**
	The World's fallback_environment will be used if the World's $(D Environment) fails or is missing.
	*/
	@property Environment fallbackEnvironment()
	{
		return getFallbackEnvironment();
	}
	/// ditto
	@property void fallbackEnvironment(Environment v)
	{
		setFallbackEnvironment(v);
	}
	/**
	The World's visual scenario.
	*/
	@property RID scenario()
	{
		return getScenario();
	}
	/**
	The World's physics space.
	*/
	@property RID space()
	{
		return getSpace();
	}
}
