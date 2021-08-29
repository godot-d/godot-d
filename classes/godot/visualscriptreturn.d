/**
Exits a function and returns an optional value.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptreturn;
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
Exits a function and returns an optional value.

Ends the execution of a function and returns control to the calling function. Optionally, it can return a $(D Variant) value.
$(B Input Ports:)
- Sequence
- Data (variant): `result` (optional)
$(B Output Ports:)
none
*/
@GodotBaseClass struct VisualScriptReturn
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptReturn";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_return_type") GodotMethod!(Variant.Type) getReturnType;
		@GodotName("is_return_value_enabled") GodotMethod!(bool) isReturnValueEnabled;
		@GodotName("set_enable_return_value") GodotMethod!(void, bool) setEnableReturnValue;
		@GodotName("set_return_type") GodotMethod!(void, long) setReturnType;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptReturn other) const
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
	/// Construct a new instance of VisualScriptReturn.
	/// Note: use `memnew!VisualScriptReturn` instead.
	static VisualScriptReturn _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptReturn");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptReturn)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Variant.Type getReturnType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(GDNativeClassBinding.getReturnType, _godot_object);
	}
	/**
	
	*/
	bool isReturnValueEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isReturnValueEnabled, _godot_object);
	}
	/**
	
	*/
	void setEnableReturnValue(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnableReturnValue, _godot_object, enable);
	}
	/**
	
	*/
	void setReturnType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setReturnType, _godot_object, type);
	}
	/**
	If `true`, the `return` input port is available.
	*/
	@property bool returnEnabled()
	{
		return isReturnValueEnabled();
	}
	/// ditto
	@property void returnEnabled(bool v)
	{
		setEnableReturnValue(v);
	}
	/**
	The return value's data type.
	*/
	@property Variant.Type returnType()
	{
		return getReturnType();
	}
	/// ditto
	@property void returnType(long v)
	{
		setReturnType(v);
	}
}
