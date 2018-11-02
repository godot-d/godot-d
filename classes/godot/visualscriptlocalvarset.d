/**
Changes a local variable's value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptlocalvarset;
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
Changes a local variable's value.

Changes a local variable's value to the given input. The new value is also provided on an output Data port.
$(B Input Ports:)
- Sequence
- Data (variant): `set`
$(B Output Ports:)
- Sequence
- Data (variant): `get`
*/
@GodotBaseClass struct VisualScriptLocalVarSet
{
	enum string _GODOT_internal_name = "VisualScriptLocalVarSet";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_var_name") GodotMethod!(void, String) setVarName;
		@GodotName("get_var_name") GodotMethod!(String) getVarName;
		@GodotName("set_var_type") GodotMethod!(void, long) setVarType;
		@GodotName("get_var_type") GodotMethod!(Variant.Type) getVarType;
	}
	bool opEquals(in VisualScriptLocalVarSet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptLocalVarSet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptLocalVarSet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptLocalVarSet");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptLocalVarSet)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setVarName(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVarName, _godot_object, name);
	}
	/**
	
	*/
	String getVarName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getVarName, _godot_object);
	}
	/**
	
	*/
	void setVarType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVarType, _godot_object, type);
	}
	/**
	
	*/
	Variant.Type getVarType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(_classBinding.getVarType, _godot_object);
	}
	/**
	The local variable's name.
	*/
	@property String varName()
	{
		return getVarName();
	}
	/// ditto
	@property void varName(String v)
	{
		setVarName(v);
	}
	/**
	The local variable's type.
	*/
	@property Variant.Type type()
	{
		return getVarType();
	}
	/// ditto
	@property void type(long v)
	{
		setVarType(v);
	}
}
