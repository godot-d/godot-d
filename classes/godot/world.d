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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.environment;
import godot.physicsdirectspacestate;
/**
Class that has everything pertaining to a world.

A physics space, a visual scenario and a sound space. Spatial nodes register their resources into the current world.
*/
@GodotBaseClass struct World
{
	static immutable string _GODOT_internal_name = "World";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in World other) const { return _godot_object.ptr is other._godot_object.ptr; }
	World opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static World _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("World");
		if(constructor is null) return typeof(this).init;
		return cast(World)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(RID) _GODOT_get_space;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_space") = _GODOT_get_space;
	/**
	
	*/
	RID getSpace() const
	{
		_GODOT_get_space.bind("World", "get_space");
		return ptrcall!(RID)(_GODOT_get_space, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_scenario;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scenario") = _GODOT_get_scenario;
	/**
	
	*/
	RID getScenario() const
	{
		_GODOT_get_scenario.bind("World", "get_scenario");
		return ptrcall!(RID)(_GODOT_get_scenario, _godot_object);
	}
	package(godot) static GodotMethod!(void, Environment) _GODOT_set_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_environment") = _GODOT_set_environment;
	/**
	
	*/
	void setEnvironment(Environment env)
	{
		_GODOT_set_environment.bind("World", "set_environment");
		ptrcall!(void)(_GODOT_set_environment, _godot_object, env);
	}
	package(godot) static GodotMethod!(Environment) _GODOT_get_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_environment") = _GODOT_get_environment;
	/**
	
	*/
	Ref!Environment getEnvironment() const
	{
		_GODOT_get_environment.bind("World", "get_environment");
		return ptrcall!(Environment)(_GODOT_get_environment, _godot_object);
	}
	package(godot) static GodotMethod!(void, Environment) _GODOT_set_fallback_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fallback_environment") = _GODOT_set_fallback_environment;
	/**
	
	*/
	void setFallbackEnvironment(Environment env)
	{
		_GODOT_set_fallback_environment.bind("World", "set_fallback_environment");
		ptrcall!(void)(_GODOT_set_fallback_environment, _godot_object, env);
	}
	package(godot) static GodotMethod!(Environment) _GODOT_get_fallback_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fallback_environment") = _GODOT_get_fallback_environment;
	/**
	
	*/
	Ref!Environment getFallbackEnvironment() const
	{
		_GODOT_get_fallback_environment.bind("World", "get_fallback_environment");
		return ptrcall!(Environment)(_GODOT_get_fallback_environment, _godot_object);
	}
	package(godot) static GodotMethod!(PhysicsDirectSpaceState) _GODOT_get_direct_space_state;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_direct_space_state") = _GODOT_get_direct_space_state;
	/**
	
	*/
	PhysicsDirectSpaceState getDirectSpaceState()
	{
		_GODOT_get_direct_space_state.bind("World", "get_direct_space_state");
		return ptrcall!(PhysicsDirectSpaceState)(_GODOT_get_direct_space_state, _godot_object);
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
	The World's physics space.
	*/
	@property RID space()
	{
		return getSpace();
	}
	/**
	The World's visual scenario.
	*/
	@property RID scenario()
	{
		return getScenario();
	}
	/**
	The World's physics direct space state, used for making various queries. Might be used only during `_physics_process`.
	*/
	@property PhysicsDirectSpaceState directSpaceState()
	{
		return getDirectSpaceState();
	}
}
