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
import godot.reference;
/**
Class that has everything pertaining to a world.

A physics space, a visual scenario and a sound space. Spatial nodes register their resources into the current world.
*/
@GodotBaseClass struct World
{
	enum string _GODOT_internal_name = "World";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_space") GodotMethod!(RID) getSpace;
		@GodotName("get_scenario") GodotMethod!(RID) getScenario;
		@GodotName("set_environment") GodotMethod!(void, Environment) setEnvironment;
		@GodotName("get_environment") GodotMethod!(Environment) getEnvironment;
		@GodotName("set_fallback_environment") GodotMethod!(void, Environment) setFallbackEnvironment;
		@GodotName("get_fallback_environment") GodotMethod!(Environment) getFallbackEnvironment;
		@GodotName("get_direct_space_state") GodotMethod!(PhysicsDirectSpaceState) getDirectSpaceState;
	}
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
	/**
	
	*/
	RID getSpace() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getSpace, _godot_object);
	}
	/**
	
	*/
	RID getScenario() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getScenario, _godot_object);
	}
	/**
	
	*/
	void setEnvironment(Environment env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnvironment, _godot_object, env);
	}
	/**
	
	*/
	Ref!Environment getEnvironment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment)(_classBinding.getEnvironment, _godot_object);
	}
	/**
	
	*/
	void setFallbackEnvironment(Environment env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFallbackEnvironment, _godot_object, env);
	}
	/**
	
	*/
	Ref!Environment getFallbackEnvironment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment)(_classBinding.getFallbackEnvironment, _godot_object);
	}
	/**
	
	*/
	PhysicsDirectSpaceState getDirectSpaceState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsDirectSpaceState)(_classBinding.getDirectSpaceState, _godot_object);
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
