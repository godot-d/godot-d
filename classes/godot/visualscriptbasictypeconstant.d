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
A Visual Script node representing a constant from the base types.

A Visual Script node representing a constant from base types, such as $(D constant Vector3.AXIS_X).
*/
@GodotBaseClass struct VisualScriptBasicTypeConstant
{
	enum string _GODOT_internal_name = "VisualScriptBasicTypeConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_basic_type") GodotMethod!(void, long) setBasicType;
		@GodotName("get_basic_type") GodotMethod!(Variant.Type) getBasicType;
		@GodotName("set_basic_type_constant") GodotMethod!(void, String) setBasicTypeConstant;
		@GodotName("get_basic_type_constant") GodotMethod!(String) getBasicTypeConstant;
	}
	bool opEquals(in VisualScriptBasicTypeConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptBasicTypeConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setBasicType(in long name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBasicType, _godot_object, name);
	}
	/**
	
	*/
	Variant.Type getBasicType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(_classBinding.getBasicType, _godot_object);
	}
	/**
	
	*/
	void setBasicTypeConstant(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBasicTypeConstant, _godot_object, name);
	}
	/**
	
	*/
	String getBasicTypeConstant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBasicTypeConstant, _godot_object);
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
