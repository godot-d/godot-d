/**
Gets a contant's value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptconstant;
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
Gets a contant's value.

This node returns a constant's value.
$(B Input Ports:)
none
$(B Output Ports:)
- Data (variant): `get`
*/
@GodotBaseClass struct VisualScriptConstant
{
	enum string _GODOT_internal_name = "VisualScriptConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_constant_type") GodotMethod!(void, long) setConstantType;
		@GodotName("get_constant_type") GodotMethod!(Variant.Type) getConstantType;
		@GodotName("set_constant_value") GodotMethod!(void, Variant) setConstantValue;
		@GodotName("get_constant_value") GodotMethod!(Variant) getConstantValue;
	}
	bool opEquals(in VisualScriptConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptConstant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setConstantType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstantType, _godot_object, type);
	}
	/**
	
	*/
	Variant.Type getConstantType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(_classBinding.getConstantType, _godot_object);
	}
	/**
	
	*/
	void setConstantValue(VariantArg0)(in VariantArg0 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstantValue, _godot_object, value);
	}
	/**
	
	*/
	Variant getConstantValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getConstantValue, _godot_object);
	}
	/**
	The constant's type.
	*/
	@property Variant.Type type()
	{
		return getConstantType();
	}
	/// ditto
	@property void type(long v)
	{
		setConstantType(v);
	}
	/**
	The constant's value.
	*/
	@property Variant value()
	{
		return getConstantValue();
	}
	/// ditto
	@property void value(Variant v)
	{
		setConstantValue(v);
	}
}
