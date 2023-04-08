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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.resource;
/**

*/
@GodotBaseClass struct AnimationNodeStateMachinePlayback
{
	package(godot) enum string _GODOT_internal_name = "AnimationNodeStateMachinePlayback";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_current_length") GodotMethod!(double) getCurrentLength;
		@GodotName("get_current_node") GodotMethod!(String) getCurrentNode;
		@GodotName("get_current_play_position") GodotMethod!(double) getCurrentPlayPosition;
		@GodotName("get_travel_path") GodotMethod!(PoolStringArray) getTravelPath;
		@GodotName("is_playing") GodotMethod!(bool) isPlaying;
		@GodotName("start") GodotMethod!(void, String) start;
		@GodotName("stop") GodotMethod!(void) stop;
		@GodotName("travel") GodotMethod!(void, String) travel;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNodeStateMachinePlayback other) const
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
	/// Construct a new instance of AnimationNodeStateMachinePlayback.
	/// Note: use `memnew!AnimationNodeStateMachinePlayback` instead.
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
	double getCurrentLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCurrentLength, _godot_object);
	}
	/**
	
	*/
	String getCurrentNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentNode, _godot_object);
	}
	/**
	
	*/
	double getCurrentPlayPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCurrentPlayPosition, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getTravelPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getTravelPath, _godot_object);
	}
	/**
	
	*/
	bool isPlaying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPlaying, _godot_object);
	}
	/**
	
	*/
	void start(in String node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.start, _godot_object, node);
	}
	/**
	
	*/
	void stop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.stop, _godot_object);
	}
	/**
	
	*/
	void travel(in String to_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.travel, _godot_object, to_node);
	}
}
