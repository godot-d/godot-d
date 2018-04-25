/**
Copies a region of the screen (or the whole screen) to a buffer so it can be accessed with the texscreen() shader instruction.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.backbuffercopy;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
/**
Copies a region of the screen (or the whole screen) to a buffer so it can be accessed with the texscreen() shader instruction.

Node for back-buffering the currently displayed screen. The region defined in the BackBufferCopy node is bufferized with the content of the screen it covers, or the entire screen according to the copy mode set. Accessing this buffer is done with the texscreen() shader instruction.
*/
@GodotBaseClass struct BackBufferCopy
{
	static immutable string _GODOT_internal_name = "BackBufferCopy";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in BackBufferCopy other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BackBufferCopy opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BackBufferCopy _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BackBufferCopy");
		if(constructor is null) return typeof(this).init;
		return cast(BackBufferCopy)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum CopyMode : int
	{
		/**
		Disables the buffering mode. This means the BackBufferCopy node will directly use the portion of screen it covers.
		*/
		copyModeDisabled = 0,
		/**
		BackBufferCopy buffers a rectangular region.
		*/
		copyModeRect = 1,
		/**
		BackBufferCopy buffers the entire screen.
		*/
		copyModeViewport = 2,
	}
	/// 
	enum Constants : int
	{
		copyModeDisabled = 0,
		copyModeRect = 1,
		copyModeViewport = 2,
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rect") = _GODOT_set_rect;
	/**
	
	*/
	void setRect(in Rect2 rect)
	{
		_GODOT_set_rect.bind("BackBufferCopy", "set_rect");
		ptrcall!(void)(_GODOT_set_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rect") = _GODOT_get_rect;
	/**
	
	*/
	Rect2 getRect() const
	{
		_GODOT_get_rect.bind("BackBufferCopy", "get_rect");
		return ptrcall!(Rect2)(_GODOT_get_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_copy_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_copy_mode") = _GODOT_set_copy_mode;
	/**
	
	*/
	void setCopyMode(in long copy_mode)
	{
		_GODOT_set_copy_mode.bind("BackBufferCopy", "set_copy_mode");
		ptrcall!(void)(_GODOT_set_copy_mode, _godot_object, copy_mode);
	}
	package(godot) static GodotMethod!(BackBufferCopy.CopyMode) _GODOT_get_copy_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_copy_mode") = _GODOT_get_copy_mode;
	/**
	
	*/
	BackBufferCopy.CopyMode getCopyMode() const
	{
		_GODOT_get_copy_mode.bind("BackBufferCopy", "get_copy_mode");
		return ptrcall!(BackBufferCopy.CopyMode)(_GODOT_get_copy_mode, _godot_object);
	}
	/**
	Buffer mode. See `COPY_MODE_*` constants.
	*/
	@property BackBufferCopy.CopyMode copyMode()
	{
		return getCopyMode();
	}
	/// ditto
	@property void copyMode(long v)
	{
		setCopyMode(v);
	}
	/**
	The area covered by the BackBufferCopy. Only used if `copy_mode` is `COPY_MODE_RECT`.
	*/
	@property Rect2 rect()
	{
		return getRect();
	}
	/// ditto
	@property void rect(Rect2 v)
	{
		setRect(v);
	}
}
