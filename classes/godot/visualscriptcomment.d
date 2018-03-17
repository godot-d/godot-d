/**
A Visual Script node used to annotate the script.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptcomment;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**
A Visual Script node used to annotate the script.

A Visual Script node used to display annotations in the script, so that code may be documented.
Comment nodes can be resized so they encompass a group of nodes.
*/
@GodotBaseClass struct VisualScriptComment
{
	static immutable string _GODOT_internal_name = "VisualScriptComment";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptComment other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptComment opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptComment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptComment");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptComment)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_title") = _GODOT_set_title;
	/**
	
	*/
	void setTitle(StringArg0)(in StringArg0 title)
	{
		_GODOT_set_title.bind("VisualScriptComment", "set_title");
		ptrcall!(void)(_GODOT_set_title, _godot_object, title);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_title;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_title") = _GODOT_get_title;
	/**
	
	*/
	String getTitle() const
	{
		_GODOT_get_title.bind("VisualScriptComment", "get_title");
		return ptrcall!(String)(_GODOT_get_title, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_description;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_description") = _GODOT_set_description;
	/**
	
	*/
	void setDescription(StringArg0)(in StringArg0 description)
	{
		_GODOT_set_description.bind("VisualScriptComment", "set_description");
		ptrcall!(void)(_GODOT_set_description, _godot_object, description);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_description;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_description") = _GODOT_get_description;
	/**
	
	*/
	String getDescription() const
	{
		_GODOT_get_description.bind("VisualScriptComment", "get_description");
		return ptrcall!(String)(_GODOT_get_description, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		_GODOT_set_size.bind("VisualScriptComment", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	
	*/
	Vector2 getSize() const
	{
		_GODOT_get_size.bind("VisualScriptComment", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	/**
	The comment node's title.
	*/
	@property String title()
	{
		return getTitle();
	}
	/// ditto
	@property void title(String v)
	{
		setTitle(v);
	}
	/**
	The text inside the comment node.
	*/
	@property String description()
	{
		return getDescription();
	}
	/// ditto
	@property void description(String v)
	{
		setDescription(v);
	}
	/**
	The comment node's size (in pixels).
	*/
	@property Vector2 size()
	{
		return getSize();
	}
	/// ditto
	@property void size(Vector2 v)
	{
		setSize(v);
	}
}
