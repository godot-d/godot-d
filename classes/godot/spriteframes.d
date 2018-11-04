/**
Sprite frame library for AnimatedSprite.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spriteframes;
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
import godot.texture;
import godot.reference;
/**
Sprite frame library for AnimatedSprite.

Sprite frame library for $(D AnimatedSprite). Contains frames and animation data for playback.
*/
@GodotBaseClass struct SpriteFrames
{
	enum string _GODOT_internal_name = "SpriteFrames";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_animation") GodotMethod!(void, String) addAnimation;
		@GodotName("has_animation") GodotMethod!(bool, String) hasAnimation;
		@GodotName("remove_animation") GodotMethod!(void, String) removeAnimation;
		@GodotName("rename_animation") GodotMethod!(void, String, String) renameAnimation;
		@GodotName("get_animation_names") GodotMethod!(PoolStringArray) getAnimationNames;
		@GodotName("set_animation_speed") GodotMethod!(void, String, double) setAnimationSpeed;
		@GodotName("get_animation_speed") GodotMethod!(double, String) getAnimationSpeed;
		@GodotName("set_animation_loop") GodotMethod!(void, String, bool) setAnimationLoop;
		@GodotName("get_animation_loop") GodotMethod!(bool, String) getAnimationLoop;
		@GodotName("add_frame") GodotMethod!(void, String, Texture, long) addFrame;
		@GodotName("get_frame_count") GodotMethod!(long, String) getFrameCount;
		@GodotName("get_frame") GodotMethod!(Texture, String, long) getFrame;
		@GodotName("set_frame") GodotMethod!(void, String, long, Texture) setFrame;
		@GodotName("remove_frame") GodotMethod!(void, String, long) removeFrame;
		@GodotName("clear") GodotMethod!(void, String) clear;
		@GodotName("clear_all") GodotMethod!(void) clearAll;
		@GodotName("_set_frames") GodotMethod!(void, Array) _setFrames;
		@GodotName("_get_frames") GodotMethod!(Array) _getFrames;
		@GodotName("_set_animations") GodotMethod!(void, Array) _setAnimations;
		@GodotName("_get_animations") GodotMethod!(Array) _getAnimations;
	}
	bool opEquals(in SpriteFrames other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpriteFrames opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpriteFrames _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpriteFrames");
		if(constructor is null) return typeof(this).init;
		return cast(SpriteFrames)(constructor());
	}
	@disable new(size_t s);
	/**
	Adds a new animation to the library.
	*/
	void addAnimation(in String anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addAnimation, _godot_object, anim);
	}
	/**
	If `true` the named animation exists.
	*/
	bool hasAnimation(in String anim) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasAnimation, _godot_object, anim);
	}
	/**
	Removes the given animation.
	*/
	void removeAnimation(in String anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeAnimation, _godot_object, anim);
	}
	/**
	Changes the animation's name to `newname`.
	*/
	void renameAnimation(in String anim, in String newname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameAnimation, _godot_object, anim, newname);
	}
	/**
	Returns an array containing the names associated to each animation. Values are placed in alphabetical order.
	*/
	PoolStringArray getAnimationNames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getAnimationNames, _godot_object);
	}
	/**
	The animation's speed in frames per second.
	*/
	void setAnimationSpeed(in String anim, in double speed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnimationSpeed, _godot_object, anim, speed);
	}
	/**
	The animation's speed in frames per second.
	*/
	double getAnimationSpeed(in String anim) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAnimationSpeed, _godot_object, anim);
	}
	/**
	If `true` the animation will loop.
	*/
	void setAnimationLoop(in String anim, in bool loop)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAnimationLoop, _godot_object, anim, loop);
	}
	/**
	If `true` the given animation will loop.
	*/
	bool getAnimationLoop(in String anim) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAnimationLoop, _godot_object, anim);
	}
	/**
	Adds a frame to the given animation.
	*/
	void addFrame(in String anim, Texture frame, in long at_position = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addFrame, _godot_object, anim, frame, at_position);
	}
	/**
	Returns the number of frames in the animation.
	*/
	long getFrameCount(in String anim) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFrameCount, _godot_object, anim);
	}
	/**
	Returns the animation's selected frame.
	*/
	Ref!Texture getFrame(in String anim, in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getFrame, _godot_object, anim, idx);
	}
	/**
	Sets the texture of the given frame.
	*/
	void setFrame(in String anim, in long idx, Texture txt)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFrame, _godot_object, anim, idx, txt);
	}
	/**
	Removes the animation's selected frame.
	*/
	void removeFrame(in String anim, in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeFrame, _godot_object, anim, idx);
	}
	/**
	Removes all frames from the given animation.
	*/
	void clear(in String anim)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object, anim);
	}
	/**
	Removes all animations. A "default" animation will be created.
	*/
	void clearAll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearAll, _godot_object);
	}
	/**
	
	*/
	void _setFrames(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_frames");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getFrames() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_frames");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setAnimations(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_animations");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getAnimations() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_animations");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
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
}
