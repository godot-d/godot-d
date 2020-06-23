/**
Plays an animation once in $(D AnimationNodeBlendTree).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodeoneshot;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.animationnode;
import godot.resource;
/**
Plays an animation once in $(D AnimationNodeBlendTree).

A resource to add to an $(D AnimationNodeBlendTree). This node will execute a sub-animation and return once it finishes. Blend times for fading in and out can be customized, as well as filters.
*/
@GodotBaseClass struct AnimationNodeOneShot
{
	package(godot) enum string _GODOT_internal_name = "AnimationNodeOneShot";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AnimationNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_autorestart_delay") GodotMethod!(double) getAutorestartDelay;
		@GodotName("get_autorestart_random_delay") GodotMethod!(double) getAutorestartRandomDelay;
		@GodotName("get_fadein_time") GodotMethod!(double) getFadeinTime;
		@GodotName("get_fadeout_time") GodotMethod!(double) getFadeoutTime;
		@GodotName("get_mix_mode") GodotMethod!(AnimationNodeOneShot.MixMode) getMixMode;
		@GodotName("has_autorestart") GodotMethod!(bool) hasAutorestart;
		@GodotName("is_using_sync") GodotMethod!(bool) isUsingSync;
		@GodotName("set_autorestart") GodotMethod!(void, bool) setAutorestart;
		@GodotName("set_autorestart_delay") GodotMethod!(void, double) setAutorestartDelay;
		@GodotName("set_autorestart_random_delay") GodotMethod!(void, double) setAutorestartRandomDelay;
		@GodotName("set_fadein_time") GodotMethod!(void, double) setFadeinTime;
		@GodotName("set_fadeout_time") GodotMethod!(void, double) setFadeoutTime;
		@GodotName("set_mix_mode") GodotMethod!(void, long) setMixMode;
		@GodotName("set_use_sync") GodotMethod!(void, bool) setUseSync;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNodeOneShot other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) AnimationNodeOneShot opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of AnimationNodeOneShot.
	/// Note: use `memnew!AnimationNodeOneShot` instead.
	static AnimationNodeOneShot _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeOneShot");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeOneShot)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum MixMode : int
	{
		/**
		
		*/
		mixModeBlend = 0,
		/**
		
		*/
		mixModeAdd = 1,
	}
	/// 
	enum Constants : int
	{
		mixModeBlend = 0,
		mixModeAdd = 1,
	}
	/**
	
	*/
	double getAutorestartDelay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAutorestartDelay, _godot_object);
	}
	/**
	
	*/
	double getAutorestartRandomDelay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAutorestartRandomDelay, _godot_object);
	}
	/**
	
	*/
	double getFadeinTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFadeinTime, _godot_object);
	}
	/**
	
	*/
	double getFadeoutTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFadeoutTime, _godot_object);
	}
	/**
	
	*/
	AnimationNodeOneShot.MixMode getMixMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNodeOneShot.MixMode)(GDNativeClassBinding.getMixMode, _godot_object);
	}
	/**
	
	*/
	bool hasAutorestart() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAutorestart, _godot_object);
	}
	/**
	
	*/
	bool isUsingSync() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingSync, _godot_object);
	}
	/**
	
	*/
	void setAutorestart(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutorestart, _godot_object, enable);
	}
	/**
	
	*/
	void setAutorestartDelay(in double enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutorestartDelay, _godot_object, enable);
	}
	/**
	
	*/
	void setAutorestartRandomDelay(in double enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutorestartRandomDelay, _godot_object, enable);
	}
	/**
	
	*/
	void setFadeinTime(in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFadeinTime, _godot_object, time);
	}
	/**
	
	*/
	void setFadeoutTime(in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFadeoutTime, _godot_object, time);
	}
	/**
	
	*/
	void setMixMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMixMode, _godot_object, mode);
	}
	/**
	
	*/
	void setUseSync(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseSync, _godot_object, enable);
	}
	/**
	If `true`, the sub-animation will restart automatically after finishing.
	*/
	@property bool autorestart()
	{
		return hasAutorestart();
	}
	/// ditto
	@property void autorestart(bool v)
	{
		setAutorestart(v);
	}
	/**
	The delay after which the automatic restart is triggered, in seconds.
	*/
	@property double autorestartDelay()
	{
		return getAutorestartDelay();
	}
	/// ditto
	@property void autorestartDelay(double v)
	{
		setAutorestartDelay(v);
	}
	/**
	If $(D autorestart) is `true`, a random additional delay (in seconds) between 0 and this value will be added to $(D autorestartDelay).
	*/
	@property double autorestartRandomDelay()
	{
		return getAutorestartRandomDelay();
	}
	/// ditto
	@property void autorestartRandomDelay(double v)
	{
		setAutorestartRandomDelay(v);
	}
	/**
	
	*/
	@property double fadeinTime()
	{
		return getFadeinTime();
	}
	/// ditto
	@property void fadeinTime(double v)
	{
		setFadeinTime(v);
	}
	/**
	
	*/
	@property double fadeoutTime()
	{
		return getFadeoutTime();
	}
	/// ditto
	@property void fadeoutTime(double v)
	{
		setFadeoutTime(v);
	}
	/**
	
	*/
	@property bool sync()
	{
		return isUsingSync();
	}
	/// ditto
	@property void sync(bool v)
	{
		setUseSync(v);
	}
}
