/**
A shortcut for binding input.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.shortcut;
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
import godot.inputevent;
/**
A shortcut for binding input.

Shortcuts are commonly used for interacting with a $(D Control) element from a $(D InputEvent).
*/
@GodotBaseClass struct ShortCut
{
	static immutable string _GODOT_internal_name = "ShortCut";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ShortCut other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ShortCut opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ShortCut _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ShortCut");
		if(constructor is null) return typeof(this).init;
		return cast(ShortCut)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, InputEvent) _GODOT_set_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shortcut") = _GODOT_set_shortcut;
	/**
	
	*/
	void setShortcut(InputEvent event)
	{
		_GODOT_set_shortcut.bind("ShortCut", "set_shortcut");
		ptrcall!(void)(_GODOT_set_shortcut, _godot_object, event);
	}
	package(godot) static GodotMethod!(InputEvent) _GODOT_get_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shortcut") = _GODOT_get_shortcut;
	/**
	
	*/
	Ref!InputEvent getShortcut() const
	{
		_GODOT_get_shortcut.bind("ShortCut", "get_shortcut");
		return ptrcall!(InputEvent)(_GODOT_get_shortcut, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_valid;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_valid") = _GODOT_is_valid;
	/**
	If `true` this Shortcut is valid.
	*/
	bool isValid() const
	{
		_GODOT_is_valid.bind("ShortCut", "is_valid");
		return ptrcall!(bool)(_GODOT_is_valid, _godot_object);
	}
	package(godot) static GodotMethod!(bool, InputEvent) _GODOT_is_shortcut;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shortcut") = _GODOT_is_shortcut;
	/**
	Returns `true` if the Shortcut's $(D InputEvent) equals `event`.
	*/
	bool isShortcut(InputEvent event) const
	{
		_GODOT_is_shortcut.bind("ShortCut", "is_shortcut");
		return ptrcall!(bool)(_GODOT_is_shortcut, _godot_object, event);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_as_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_as_text") = _GODOT_get_as_text;
	/**
	Returns the Shortcut's $(D InputEvent) as a $(D String).
	*/
	String getAsText() const
	{
		_GODOT_get_as_text.bind("ShortCut", "get_as_text");
		return ptrcall!(String)(_GODOT_get_as_text, _godot_object);
	}
	/**
	The Shortcut's $(D InputEvent).
	Generally the $(D InputEvent) is a keyboard key, though it can be any $(D InputEvent).
	*/
	@property InputEvent shortcut()
	{
		return getShortcut();
	}
	/// ditto
	@property void shortcut(InputEvent v)
	{
		setShortcut(v);
	}
}
