/**
Default environment properties for the entire scene (post-processing effects, lighting and background settings).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.worldenvironment;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.environment;
/**
Default environment properties for the entire scene (post-processing effects, lighting and background settings).

The $(D WorldEnvironment) node is used to configure the default $(D Environment) for the scene.
The parameters defined in the $(D WorldEnvironment) can be overridden by an $(D Environment) node set on the current $(D Camera). Additionally, only one $(D WorldEnvironment) may be instanced in a given scene at a time.
The $(D WorldEnvironment) allows the user to specify default lighting parameters (e.g. ambient lighting), various post-processing effects (e.g. SSAO, DOF, Tonemapping), and how to draw the background (e.g. solid color, skybox). Usually, these are added in order to improve the realism/color balance of the scene.
*/
@GodotBaseClass struct WorldEnvironment
{
	enum string _GODOT_internal_name = "WorldEnvironment";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_environment") GodotMethod!(Environment) getEnvironment;
		@GodotName("set_environment") GodotMethod!(void, Environment) setEnvironment;
	}
	bool opEquals(in WorldEnvironment other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WorldEnvironment opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WorldEnvironment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WorldEnvironment");
		if(constructor is null) return typeof(this).init;
		return cast(WorldEnvironment)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!Environment getEnvironment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Environment)(_classBinding.getEnvironment, _godot_object);
	}
	/**
	
	*/
	void setEnvironment(Environment env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnvironment, _godot_object, env);
	}
	/**
	The $(D Environment) resource used by this $(D WorldEnvironment), defining the default properties.
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
}
