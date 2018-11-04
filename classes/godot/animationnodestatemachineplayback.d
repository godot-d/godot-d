/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodestatemachineplayback;
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
import godot.reference;
/**

*/
@GodotBaseClass struct AnimationNodeStateMachinePlayback
{
	enum string _GODOT_internal_name = "AnimationNodeStateMachinePlayback";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("travel") GodotMethod!(void, String) travel;
		@GodotName("start") GodotMethod!(void, String) start;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("get_current_node") GodotMethod!(String) getCurrentNode;
		@GodotName("get_travel_path") GodotMethod!(PoolStringArray) getTravelPath;
	}
	bool opEquals(in AnimationNodeStateMachinePlayback other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNodeStateMachinePlayback opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimationNodeStateMachinePlayback _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeStateMachinePlayback");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeStateMachinePlayback)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void travel(in String to_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.travel, _godot_object, to_node);
	}
	/**
	
	*/
	void start(in String node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.start, _godot_object, node);
	}
	/**
	
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stop, _godot_object);
	}
	/**
	
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPlaying, _godot_object);
	}
	/**
	
	*/
	String getCurrentNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCurrentNode, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getTravelPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getTravelPath, _godot_object);
	}
}
