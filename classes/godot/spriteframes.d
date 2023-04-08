/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spriteframes;
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
import godot.texture;
/**

*/
@GodotBaseClass struct SpriteFrames
{
	package(godot) enum string _GODOT_internal_name = "SpriteFrames";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_animations") GodotMethod!(Array) _getAnimations;
		@GodotName("_get_frames") GodotMethod!(Array) _getFrames;
		@GodotName("_set_animations") GodotMethod!(void, Array) _setAnimations;
		@GodotName("_set_frames") GodotMethod!(void, Array) _setFrames;
		@GodotName("add_animation") GodotMethod!(void, String) addAnimation;
		@GodotName("add_frame") GodotMethod!(void, String, Texture, long) addFrame;
		@GodotName("clear") GodotMethod!(void, String) clear;
		@GodotName("clear_all") GodotMethod!(void) clearAll;
		@GodotName("get_animation_loop") GodotMethod!(bool, String) getAnimationLoop;
		@GodotName("get_animation_names") GodotMethod!(PoolStringArray) getAnimationNames;
		@GodotName("get_animation_speed") GodotMethod!(double, String) getAnimationSpeed;
		@GodotName("get_frame") GodotMethod!(Texture, String, long) getFrame;
		@GodotName("get_frame_count") GodotMethod!(long, String) getFrameCount;
		@GodotName("has_animation") GodotMethod!(bool, String) hasAnimation;
		@GodotName("remove_animation") GodotMethod!(void, String) removeAnimation;
		@GodotName("remove_frame") GodotMethod!(void, String, long) removeFrame;
		@GodotName("rename_animation") GodotMethod!(void, String, String) renameAnimation;
		@GodotName("set_animation_loop") GodotMethod!(void, String, bool) setAnimationLoop;
		@GodotName("set_animation_speed") GodotMethod!(void, String, double) setAnimationSpeed;
		@GodotName("set_frame") GodotMethod!(void, String, long, Texture) setFrame;
	}
	/// 
	pragma(inline, true) bool opEquals(in SpriteFrames other) const
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
	/// Construct a new instance of SpriteFrames.
	/// Note: use `memnew!SpriteFrames` instead.
	static SpriteFrames _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpriteFrames");
		if(constructor is null) return typeof(this).init;
		return cast(SpriteFrames)(constructor());
	}
	/**
	
	*/
	Array _getAnimations() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_animations");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	Array _getFrames() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_frames");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setAnimations(in Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_animations");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setFrames(in Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_frames");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addAnimation(in String anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addAnimation, _godot_object, anim);
	}
	/**
	
	*/
	void addFrame(in String anim, Texture frame, in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addFrame, _godot_object, anim, frame, at_position);
	}
	/**
	
	*/
	void clear(in String anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object, anim);
	}
	/**
	
	*/
	void clearAll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearAll, _godot_object);
	}
	/**
	
	*/
	bool getAnimationLoop(in String anim) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAnimationLoop, _godot_object, anim);
	}
	/**
	
	*/
	PoolStringArray getAnimationNames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getAnimationNames, _godot_object);
	}
	/**
	
	*/
	double getAnimationSpeed(in String anim) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAnimationSpeed, _godot_object, anim);
	}
	/**
	
	*/
	Ref!Texture getFrame(in String anim, in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getFrame, _godot_object, anim, idx);
	}
	/**
	
	*/
	long getFrameCount(in String anim) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFrameCount, _godot_object, anim);
	}
	/**
	
	*/
	bool hasAnimation(in String anim) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAnimation, _godot_object, anim);
	}
	/**
	
	*/
	void removeAnimation(in String anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeAnimation, _godot_object, anim);
	}
	/**
	
	*/
	void removeFrame(in String anim, in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeFrame, _godot_object, anim, idx);
	}
	/**
	
	*/
	void renameAnimation(in String anim, in String newname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameAnimation, _godot_object, anim, newname);
	}
	/**
	
	*/
	void setAnimationLoop(in String anim, in bool loop)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnimationLoop, _godot_object, anim, loop);
	}
	/**
	
	*/
	void setAnimationSpeed(in String anim, in double speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnimationSpeed, _godot_object, anim, speed);
	}
	/**
	
	*/
	void setFrame(in String anim, in long idx, Texture txt)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrame, _godot_object, anim, idx, txt);
	}
	/**
	
	*/
	@property Array animations()
	{
		return _getAnimations();
	}
	/// ditto
	@property void animations(Array v)
	{
		_setAnimations(v);
	}
	/**
	
	*/
	@property Array frames()
	{
		return _getFrames();
	}
	/// ditto
	@property void frames(Array v)
	{
		_setFrames(v);
	}
}
