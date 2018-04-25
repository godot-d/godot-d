/**
Detects when the node is visible on screen.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visibilitynotifier2d;
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
Detects when the node is visible on screen.

The VisibilityNotifier2D detects when it is visible on the screen. It also notifies when its bounding rectangle enters or exits the screen or a viewport.
*/
@GodotBaseClass struct VisibilityNotifier2D
{
	static immutable string _GODOT_internal_name = "VisibilityNotifier2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisibilityNotifier2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisibilityNotifier2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisibilityNotifier2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisibilityNotifier2D");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityNotifier2D)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rect") = _GODOT_set_rect;
	/**
	
	*/
	void setRect(in Rect2 rect)
	{
		_GODOT_set_rect.bind("VisibilityNotifier2D", "set_rect");
		ptrcall!(void)(_GODOT_set_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rect") = _GODOT_get_rect;
	/**
	
	*/
	Rect2 getRect() const
	{
		_GODOT_get_rect.bind("VisibilityNotifier2D", "get_rect");
		return ptrcall!(Rect2)(_GODOT_get_rect, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_on_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_on_screen") = _GODOT_is_on_screen;
	/**
	If `true` the bounding rectangle is on the screen.
	*/
	bool isOnScreen() const
	{
		_GODOT_is_on_screen.bind("VisibilityNotifier2D", "is_on_screen");
		return ptrcall!(bool)(_GODOT_is_on_screen, _godot_object);
	}
	/**
	The VisibilityNotifier2D's bounding rectangle.
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
