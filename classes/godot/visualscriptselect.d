/**
Chooses between two input values.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptselect;
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
Chooses between two input values.

Chooses between two input values based on a Boolean condition.
$(B Input Ports:)
- Data (boolean): `cond`
- Data (variant): `a`
- Data (variant): `b`
$(B Output Ports:)
- Data (variant): `out`
*/
@GodotBaseClass struct VisualScriptSelect
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptSelect";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_typed") GodotMethod!(Variant.Type) getTyped;
		@GodotName("set_typed") GodotMethod!(void, long) setTyped;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptSelect other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualScriptSelect opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualScriptSelect.
	/// Note: use `memnew!VisualScriptSelect` instead.
	static VisualScriptSelect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptSelect");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSelect)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Variant.Type getTyped() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(GDNativeClassBinding.getTyped, _godot_object);
	}
	/**
	
	*/
	void setTyped(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTyped, _godot_object, type);
	}
	/**
	The input variables' type.
	*/
	@property Variant.Type type()
	{
		return getTyped();
	}
	/// ditto
	@property void type(long v)
	{
		setTyped(v);
	}
}