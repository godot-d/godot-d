/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptcomment;
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
import godot.visualscriptnode;
/**

*/
@GodotBaseClass struct VisualScriptComment
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptComment";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_description") GodotMethod!(String) getDescription;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("get_title") GodotMethod!(String) getTitle;
		@GodotName("set_description") GodotMethod!(void, String) setDescription;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
		@GodotName("set_title") GodotMethod!(void, String) setTitle;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptComment other) const
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
	/// Construct a new instance of VisualScriptComment.
	/// Note: use `memnew!VisualScriptComment` instead.
	static VisualScriptComment _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptComment");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptComment)(constructor());
	}
	/**
	
	*/
	String getDescription() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDescription, _godot_object);
	}
	/**
	
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	
	*/
	String getTitle() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTitle, _godot_object);
	}
	/**
	
	*/
	void setDescription(in String description)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDescription, _godot_object, description);
	}
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	void setTitle(in String title)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTitle, _godot_object, title);
	}
	/**
	
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
	/**
	
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
}
