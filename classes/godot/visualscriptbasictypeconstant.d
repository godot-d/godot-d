/**
A Visual Script node representing a constant from the base types.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptbasictypeconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**
A Visual Script node representing a constant from the base types.

A Visual Script node representing a constant from base types, such as $(D constant Vector3.AXIS_X).
*/
@GodotBaseClass struct VisualScriptBasicTypeConstant
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptBasicTypeConstant";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_basic_type") GodotMethod!(Variant.Type) getBasicType;
		@GodotName("get_basic_type_constant") GodotMethod!(String) getBasicTypeConstant;
		@GodotName("set_basic_type") GodotMethod!(void, long) setBasicType;
		@GodotName("set_basic_type_constant") GodotMethod!(void, String) setBasicTypeConstant;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptBasicTypeConstant other) const
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
	/// Construct a new instance of VisualScriptBasicTypeConstant.
	/// Note: use `memnew!VisualScriptBasicTypeConstant` instead.
	static VisualScriptBasicTypeConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptBasicTypeConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptBasicTypeConstant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Variant.Type getBasicType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(GDNativeClassBinding.getBasicType, _godot_object);
	}
	/**
	
	*/
	String getBasicTypeConstant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBasicTypeConstant, _godot_object);
	}
	/**
	
	*/
	void setBasicType(in long name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBasicType, _godot_object, name);
	}
	/**
	
	*/
	void setBasicTypeConstant(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBasicTypeConstant, _godot_object, name);
	}
	/**
	The type to get the constant from.
	*/
	@property Variant.Type basicType()
	{
		return getBasicType();
	}
	/// ditto
	@property void basicType(long v)
	{
		setBasicType(v);
	}
	/**
	The name of the constant to return.
	*/
	@property String constant()
	{
		return getBasicTypeConstant();
	}
	/// ditto
	@property void constant(String v)
	{
		setBasicTypeConstant(v);
	}
}
