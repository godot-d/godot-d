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
import godot.resource;
import godot.reference;
/**
A Visual Script node used to annotate the script.

A Visual Script node used to display annotations in the script, so that code may be documented.
Comment nodes can be resized so they encompass a group of nodes.
*/
@GodotBaseClass struct VisualScriptComment
{
	enum string _GODOT_internal_name = "VisualScriptComment";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_title") GodotMethod!(void, String) setTitle;
		@GodotName("get_title") GodotMethod!(String) getTitle;
		@GodotName("set_description") GodotMethod!(void, String) setDescription;
		@GodotName("get_description") GodotMethod!(String) getDescription;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setTitle(in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTitle, _godot_object, title);
	}
	/**
	
	*/
	String getTitle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTitle, _godot_object);
	}
	/**
	
	*/
	void setDescription(in String description)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDescription, _godot_object, description);
	}
	/**
	
	*/
	String getDescription() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getDescription, _godot_object);
	}
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSize, _godot_object);
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
