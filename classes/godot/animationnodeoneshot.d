/**


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
import godot.reference;
/**

*/
@GodotBaseClass struct AnimationNodeOneShot
{
	enum string _GODOT_internal_name = "AnimationNodeOneShot";
public:
@nogc nothrow:
	union { godot_object _godot_object; AnimationNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_fadein_time") GodotMethod!(void, double) setFadeinTime;
		@GodotName("get_fadein_time") GodotMethod!(double) getFadeinTime;
		@GodotName("set_fadeout_time") GodotMethod!(void, double) setFadeoutTime;
		@GodotName("get_fadeout_time") GodotMethod!(double) getFadeoutTime;
		@GodotName("set_autorestart") GodotMethod!(void, bool) setAutorestart;
		@GodotName("has_autorestart") GodotMethod!(bool) hasAutorestart;
		@GodotName("set_autorestart_delay") GodotMethod!(void, double) setAutorestartDelay;
		@GodotName("get_autorestart_delay") GodotMethod!(double) getAutorestartDelay;
		@GodotName("set_autorestart_random_delay") GodotMethod!(void, double) setAutorestartRandomDelay;
		@GodotName("get_autorestart_random_delay") GodotMethod!(double) getAutorestartRandomDelay;
		@GodotName("set_mix_mode") GodotMethod!(void, long) setMixMode;
		@GodotName("get_mix_mode") GodotMethod!(AnimationNodeOneShot.MixMode) getMixMode;
		@GodotName("set_use_sync") GodotMethod!(void, bool) setUseSync;
		@GodotName("is_using_sync") GodotMethod!(bool) isUsingSync;
	}
	bool opEquals(in AnimationNodeOneShot other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNodeOneShot opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setFadeinTime(in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFadeinTime, _godot_object, time);
	}
	/**
	
	*/
	double getFadeinTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFadeinTime, _godot_object);
	}
	/**
	
	*/
	void setFadeoutTime(in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFadeoutTime, _godot_object, time);
	}
	/**
	
	*/
	double getFadeoutTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFadeoutTime, _godot_object);
	}
	/**
	
	*/
	void setAutorestart(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutorestart, _godot_object, enable);
	}
	/**
	
	*/
	bool hasAutorestart() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasAutorestart, _godot_object);
	}
	/**
	
	*/
	void setAutorestartDelay(in double enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutorestartDelay, _godot_object, enable);
	}
	/**
	
	*/
	double getAutorestartDelay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAutorestartDelay, _godot_object);
	}
	/**
	
	*/
	void setAutorestartRandomDelay(in double enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutorestartRandomDelay, _godot_object, enable);
	}
	/**
	
	*/
	double getAutorestartRandomDelay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAutorestartRandomDelay, _godot_object);
	}
	/**
	
	*/
	void setMixMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMixMode, _godot_object, mode);
	}
	/**
	
	*/
	AnimationNodeOneShot.MixMode getMixMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNodeOneShot.MixMode)(_classBinding.getMixMode, _godot_object);
	}
	/**
	
	*/
	void setUseSync(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseSync, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsingSync() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingSync, _godot_object);
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
