/**
A node used to create a parallax scrolling background.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.parallaxbackground;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.canvaslayer;
/**
A node used to create a parallax scrolling background.

A ParallaxBackground uses one or more $(D ParallaxLayer) child nodes to create a parallax effect. Each $(D ParallaxLayer) can move at a different speed using $(D ParallaxLayer.motionOffset). This creates an illusion of depth in a 2D game. If not used with a $(D Camera2D), you must manually calculate the $(D scrollOffset).
*/
@GodotBaseClass struct ParallaxBackground
{
	static immutable string _GODOT_internal_name = "ParallaxBackground";
public:
@nogc nothrow:
	union { godot_object _godot_object; CanvasLayer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ParallaxBackground other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ParallaxBackground opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ParallaxBackground _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ParallaxBackground");
		if(constructor is null) return typeof(this).init;
		return cast(ParallaxBackground)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Transform2D, Vector2) _GODOT__camera_moved;
	package(godot) alias _GODOT_methodBindInfo(string name : "_camera_moved") = _GODOT__camera_moved;
	/**
	
	*/
	void _cameraMoved(in Transform2D arg0, in Vector2 arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_camera_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scroll_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_offset") = _GODOT_set_scroll_offset;
	/**
	
	*/
	void setScrollOffset(in Vector2 ofs)
	{
		_GODOT_set_scroll_offset.bind("ParallaxBackground", "set_scroll_offset");
		ptrcall!(void)(_GODOT_set_scroll_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll_offset") = _GODOT_get_scroll_offset;
	/**
	
	*/
	Vector2 getScrollOffset() const
	{
		_GODOT_get_scroll_offset.bind("ParallaxBackground", "get_scroll_offset");
		return ptrcall!(Vector2)(_GODOT_get_scroll_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scroll_base_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_base_offset") = _GODOT_set_scroll_base_offset;
	/**
	
	*/
	void setScrollBaseOffset(in Vector2 ofs)
	{
		_GODOT_set_scroll_base_offset.bind("ParallaxBackground", "set_scroll_base_offset");
		ptrcall!(void)(_GODOT_set_scroll_base_offset, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll_base_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll_base_offset") = _GODOT_get_scroll_base_offset;
	/**
	
	*/
	Vector2 getScrollBaseOffset() const
	{
		_GODOT_get_scroll_base_offset.bind("ParallaxBackground", "get_scroll_base_offset");
		return ptrcall!(Vector2)(_GODOT_get_scroll_base_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_scroll_base_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_base_scale") = _GODOT_set_scroll_base_scale;
	/**
	
	*/
	void setScrollBaseScale(in Vector2 scale)
	{
		_GODOT_set_scroll_base_scale.bind("ParallaxBackground", "set_scroll_base_scale");
		ptrcall!(void)(_GODOT_set_scroll_base_scale, _godot_object, scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_scroll_base_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_scroll_base_scale") = _GODOT_get_scroll_base_scale;
	/**
	
	*/
	Vector2 getScrollBaseScale() const
	{
		_GODOT_get_scroll_base_scale.bind("ParallaxBackground", "get_scroll_base_scale");
		return ptrcall!(Vector2)(_GODOT_get_scroll_base_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_limit_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit_begin") = _GODOT_set_limit_begin;
	/**
	
	*/
	void setLimitBegin(in Vector2 ofs)
	{
		_GODOT_set_limit_begin.bind("ParallaxBackground", "set_limit_begin");
		ptrcall!(void)(_GODOT_set_limit_begin, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_limit_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_limit_begin") = _GODOT_get_limit_begin;
	/**
	
	*/
	Vector2 getLimitBegin() const
	{
		_GODOT_get_limit_begin.bind("ParallaxBackground", "get_limit_begin");
		return ptrcall!(Vector2)(_GODOT_get_limit_begin, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_limit_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_limit_end") = _GODOT_set_limit_end;
	/**
	
	*/
	void setLimitEnd(in Vector2 ofs)
	{
		_GODOT_set_limit_end.bind("ParallaxBackground", "set_limit_end");
		ptrcall!(void)(_GODOT_set_limit_end, _godot_object, ofs);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_limit_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_limit_end") = _GODOT_get_limit_end;
	/**
	
	*/
	Vector2 getLimitEnd() const
	{
		_GODOT_get_limit_end.bind("ParallaxBackground", "get_limit_end");
		return ptrcall!(Vector2)(_GODOT_get_limit_end, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_ignore_camera_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ignore_camera_zoom") = _GODOT_set_ignore_camera_zoom;
	/**
	
	*/
	void setIgnoreCameraZoom(in bool ignore)
	{
		_GODOT_set_ignore_camera_zoom.bind("ParallaxBackground", "set_ignore_camera_zoom");
		ptrcall!(void)(_GODOT_set_ignore_camera_zoom, _godot_object, ignore);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ignore_camera_zoom;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ignore_camera_zoom") = _GODOT_is_ignore_camera_zoom;
	/**
	
	*/
	bool isIgnoreCameraZoom()
	{
		_GODOT_is_ignore_camera_zoom.bind("ParallaxBackground", "is_ignore_camera_zoom");
		return ptrcall!(bool)(_GODOT_is_ignore_camera_zoom, _godot_object);
	}
	/**
	The ParallaxBackground's scroll value. Calculated automatically when using a $(D Camera2D), but can be used to manually manage scrolling when no camera is present.
	*/
	@property Vector2 scrollOffset()
	{
		return getScrollOffset();
	}
	/// ditto
	@property void scrollOffset(Vector2 v)
	{
		setScrollOffset(v);
	}
	/**
	Base position offset of all $(D ParallaxLayer) children.
	*/
	@property Vector2 scrollBaseOffset()
	{
		return getScrollBaseOffset();
	}
	/// ditto
	@property void scrollBaseOffset(Vector2 v)
	{
		setScrollBaseOffset(v);
	}
	/**
	Base motion scale of all $(D ParallaxLayer) children.
	*/
	@property Vector2 scrollBaseScale()
	{
		return getScrollBaseScale();
	}
	/// ditto
	@property void scrollBaseScale(Vector2 v)
	{
		setScrollBaseScale(v);
	}
	/**
	Top left limits for scrolling to begin. If the camera is outside of this limit the background will stop scrolling. Must be lower than $(D scrollLimitEnd) to work.
	*/
	@property Vector2 scrollLimitBegin()
	{
		return getLimitBegin();
	}
	/// ditto
	@property void scrollLimitBegin(Vector2 v)
	{
		setLimitBegin(v);
	}
	/**
	Right bottom limits for scrolling to end. If the camera is outside of this limit the background will stop scrolling. Must be higher than $(D scrollLimitBegin) to work.
	*/
	@property Vector2 scrollLimitEnd()
	{
		return getLimitEnd();
	}
	/// ditto
	@property void scrollLimitEnd(Vector2 v)
	{
		setLimitEnd(v);
	}
	/**
	If `true` elements in $(D ParallaxLayer) child aren't affected by the zoom level of the camera.
	*/
	@property bool scrollIgnoreCameraZoom()
	{
		return isIgnoreCameraZoom();
	}
	/// ditto
	@property void scrollIgnoreCameraZoom(bool v)
	{
		setIgnoreCameraZoom(v);
	}
}
