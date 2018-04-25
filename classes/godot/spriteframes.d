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
/**
Sprite frame library for AnimatedSprite.

Sprite frame library for $(D AnimatedSprite). Contains frames and animation data for playback.
*/
@GodotBaseClass struct SpriteFrames
{
	static immutable string _GODOT_internal_name = "SpriteFrames";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, String) _GODOT_add_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_animation") = _GODOT_add_animation;
	/**
	Adds a new animation to the the library.
	*/
	void addAnimation(StringArg0)(in StringArg0 anim)
	{
		_GODOT_add_animation.bind("SpriteFrames", "add_animation");
		ptrcall!(void)(_GODOT_add_animation, _godot_object, anim);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_animation") = _GODOT_has_animation;
	/**
	If `true` the named animation exists.
	*/
	bool hasAnimation(StringArg0)(in StringArg0 anim) const
	{
		_GODOT_has_animation.bind("SpriteFrames", "has_animation");
		return ptrcall!(bool)(_GODOT_has_animation, _godot_object, anim);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_animation") = _GODOT_remove_animation;
	/**
	Removes the given animation.
	*/
	void removeAnimation(StringArg0)(in StringArg0 anim)
	{
		_GODOT_remove_animation.bind("SpriteFrames", "remove_animation");
		ptrcall!(void)(_GODOT_remove_animation, _godot_object, anim);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_animation") = _GODOT_rename_animation;
	/**
	Changes the animation's name to `newname`.
	*/
	void renameAnimation(StringArg0, StringArg1)(in StringArg0 anim, in StringArg1 newname)
	{
		_GODOT_rename_animation.bind("SpriteFrames", "rename_animation");
		ptrcall!(void)(_GODOT_rename_animation, _godot_object, anim, newname);
	}
	package(godot) static GodotMethod!(void, String, double) _GODOT_set_animation_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_animation_speed") = _GODOT_set_animation_speed;
	/**
	The animation's speed in frames per second.
	*/
	void setAnimationSpeed(StringArg0)(in StringArg0 anim, in double speed)
	{
		_GODOT_set_animation_speed.bind("SpriteFrames", "set_animation_speed");
		ptrcall!(void)(_GODOT_set_animation_speed, _godot_object, anim, speed);
	}
	package(godot) static GodotMethod!(double, String) _GODOT_get_animation_speed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation_speed") = _GODOT_get_animation_speed;
	/**
	The animation's speed in frames per second.
	*/
	double getAnimationSpeed(StringArg0)(in StringArg0 anim) const
	{
		_GODOT_get_animation_speed.bind("SpriteFrames", "get_animation_speed");
		return ptrcall!(double)(_GODOT_get_animation_speed, _godot_object, anim);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_set_animation_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_animation_loop") = _GODOT_set_animation_loop;
	/**
	If `true` the animation will loop.
	*/
	void setAnimationLoop(StringArg0)(in StringArg0 anim, in bool loop)
	{
		_GODOT_set_animation_loop.bind("SpriteFrames", "set_animation_loop");
		ptrcall!(void)(_GODOT_set_animation_loop, _godot_object, anim, loop);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_get_animation_loop;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_animation_loop") = _GODOT_get_animation_loop;
	/**
	If `true` the given animation will loop.
	*/
	bool getAnimationLoop(StringArg0)(in StringArg0 anim) const
	{
		_GODOT_get_animation_loop.bind("SpriteFrames", "get_animation_loop");
		return ptrcall!(bool)(_GODOT_get_animation_loop, _godot_object, anim);
	}
	package(godot) static GodotMethod!(void, String, Texture, long) _GODOT_add_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_frame") = _GODOT_add_frame;
	/**
	Adds a frame to the given animation.
	*/
	void addFrame(StringArg0)(in StringArg0 anim, Texture frame, in long at_position = -1)
	{
		_GODOT_add_frame.bind("SpriteFrames", "add_frame");
		ptrcall!(void)(_GODOT_add_frame, _godot_object, anim, frame, at_position);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_get_frame_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame_count") = _GODOT_get_frame_count;
	/**
	Returns the number of frames in the animation.
	*/
	long getFrameCount(StringArg0)(in StringArg0 anim) const
	{
		_GODOT_get_frame_count.bind("SpriteFrames", "get_frame_count");
		return ptrcall!(long)(_GODOT_get_frame_count, _godot_object, anim);
	}
	package(godot) static GodotMethod!(Texture, String, long) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	/**
	Returns the animation's selected frame.
	*/
	Ref!Texture getFrame(StringArg0)(in StringArg0 anim, in long idx) const
	{
		_GODOT_get_frame.bind("SpriteFrames", "get_frame");
		return ptrcall!(Texture)(_GODOT_get_frame, _godot_object, anim, idx);
	}
	package(godot) static GodotMethod!(void, String, long, Texture) _GODOT_set_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame") = _GODOT_set_frame;
	/**
	Sets the texture of the given frame.
	*/
	void setFrame(StringArg0)(in StringArg0 anim, in long idx, Texture txt)
	{
		_GODOT_set_frame.bind("SpriteFrames", "set_frame");
		ptrcall!(void)(_GODOT_set_frame, _godot_object, anim, idx, txt);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_remove_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_frame") = _GODOT_remove_frame;
	/**
	Removes the animation's selected frame.
	*/
	void removeFrame(StringArg0)(in StringArg0 anim, in long idx)
	{
		_GODOT_remove_frame.bind("SpriteFrames", "remove_frame");
		ptrcall!(void)(_GODOT_remove_frame, _godot_object, anim, idx);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Removes all frames from the given animation.
	*/
	void clear(StringArg0)(in StringArg0 anim)
	{
		_GODOT_clear.bind("SpriteFrames", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object, anim);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_all;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_all") = _GODOT_clear_all;
	/**
	Removes all animations. A "default" animation will be created.
	*/
	void clearAll()
	{
		_GODOT_clear_all.bind("SpriteFrames", "clear_all");
		ptrcall!(void)(_GODOT_clear_all, _godot_object);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_frames") = _GODOT__set_frames;
	/**
	
	*/
	void _setFrames(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_frames");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_frames;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_frames") = _GODOT__get_frames;
	/**
	
	*/
	Array _getFrames() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_frames");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_animations;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_animations") = _GODOT__set_animations;
	/**
	
	*/
	void _setAnimations(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_animations");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_animations;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_animations") = _GODOT__get_animations;
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
