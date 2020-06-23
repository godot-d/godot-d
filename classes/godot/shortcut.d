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
import godot.reference;
import godot.inputevent;
/**
A shortcut for binding input.

Shortcuts are commonly used for interacting with a $(D Control) element from a $(D InputEvent).
*/
@GodotBaseClass struct ShortCut
{
	package(godot) enum string _GODOT_internal_name = "ShortCut";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_as_text") GodotMethod!(String) getAsText;
		@GodotName("get_shortcut") GodotMethod!(InputEvent) getShortcut;
		@GodotName("is_shortcut") GodotMethod!(bool, InputEvent) isShortcut;
		@GodotName("is_valid") GodotMethod!(bool) isValid;
		@GodotName("set_shortcut") GodotMethod!(void, InputEvent) setShortcut;
	}
	/// 
	pragma(inline, true) bool opEquals(in ShortCut other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) ShortCut opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ShortCut.
	/// Note: use `memnew!ShortCut` instead.
	static ShortCut _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ShortCut");
		if(constructor is null) return typeof(this).init;
		return cast(ShortCut)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the shortcut's $(D InputEvent) as a $(D String).
	*/
	String getAsText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAsText, _godot_object);
	}
	/**
	
	*/
	Ref!InputEvent getShortcut() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(InputEvent)(GDNativeClassBinding.getShortcut, _godot_object);
	}
	/**
	Returns `true` if the shortcut's $(D InputEvent) equals `event`.
	*/
	bool isShortcut(InputEvent event) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isShortcut, _godot_object, event);
	}
	/**
	If `true`, this shortcut is valid.
	*/
	bool isValid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isValid, _godot_object);
	}
	/**
	
	*/
	void setShortcut(InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShortcut, _godot_object, event);
	}
	/**
	The shortcut's $(D InputEvent).
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