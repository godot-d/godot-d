/**
Gets a local variable's value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptlocalvar;
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
Gets a local variable's value.

Returns a local variable's value. "Var Name" must be supplied, with an optional type.
$(B Input Ports:)
none
$(B Output Ports:)
- Data (variant): `get`
*/
@GodotBaseClass struct VisualScriptLocalVar
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptLocalVar";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_var_name") GodotMethod!(String) getVarName;
		@GodotName("get_var_type") GodotMethod!(Variant.Type) getVarType;
		@GodotName("set_var_name") GodotMethod!(void, String) setVarName;
		@GodotName("set_var_type") GodotMethod!(void, long) setVarType;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptLocalVar other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualScriptLocalVar opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualScriptLocalVar.
	/// Note: use `memnew!VisualScriptLocalVar` instead.
	static VisualScriptLocalVar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptLocalVar");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptLocalVar)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getVarName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVarName, _godot_object);
	}
	/**
	
	*/
	Variant.Type getVarType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(GDNativeClassBinding.getVarType, _godot_object);
	}
	/**
	
	*/
	void setVarName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVarName, _godot_object, name);
	}
	/**
	
	*/
	void setVarType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVarType, _godot_object, type);
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
}