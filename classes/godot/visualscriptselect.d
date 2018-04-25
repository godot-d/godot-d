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
	static immutable string _GODOT_internal_name = "VisualScriptSelect";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptSelect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptSelect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptSelect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptSelect");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSelect)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_set_typed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_typed") = _GODOT_set_typed;
	/**
	
	*/
	void setTyped(in long type)
	{
		_GODOT_set_typed.bind("VisualScriptSelect", "set_typed");
		ptrcall!(void)(_GODOT_set_typed, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_typed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_typed") = _GODOT_get_typed;
	/**
	
	*/
	Variant.Type getTyped() const
	{
		_GODOT_get_typed.bind("VisualScriptSelect", "get_typed");
		return ptrcall!(Variant.Type)(_GODOT_get_typed, _godot_object);
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
