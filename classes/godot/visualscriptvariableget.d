/**
Gets a variable's value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptvariableget;
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
import godot.resource;
import godot.reference;
/**
Gets a variable's value.

Returns a variable's value. "Var Name" must be supplied, with an optional type.
$(B Input Ports:)
none
$(B Output Ports:)
- Data (variant): `value`
*/
@GodotBaseClass struct VisualScriptVariableGet
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptVariableGet";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_variable") GodotMethod!(String) getVariable;
		@GodotName("set_variable") GodotMethod!(void, String) setVariable;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptVariableGet other) const
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
	/// Construct a new instance of VisualScriptVariableGet.
	/// Note: use `memnew!VisualScriptVariableGet` instead.
	static VisualScriptVariableGet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptVariableGet");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptVariableGet)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getVariable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVariable, _godot_object);
	}
	/**
	
	*/
	void setVariable(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVariable, _godot_object, name);
	}
	/**
	The variable's name.
	*/
	@property String varName()
	{
		return getVariable();
	}
	/// ditto
	@property void varName(String v)
	{
		setVariable(v);
	}
}
