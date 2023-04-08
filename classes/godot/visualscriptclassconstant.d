/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptclassconstant;
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
/**

*/
@GodotBaseClass struct VisualScriptClassConstant
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptClassConstant";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_base_type") GodotMethod!(String) getBaseType;
		@GodotName("get_class_constant") GodotMethod!(String) getClassConstant;
		@GodotName("set_base_type") GodotMethod!(void, String) setBaseType;
		@GodotName("set_class_constant") GodotMethod!(void, String) setClassConstant;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptClassConstant other) const
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
	/// Construct a new instance of VisualScriptClassConstant.
	/// Note: use `memnew!VisualScriptClassConstant` instead.
	static VisualScriptClassConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptClassConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptClassConstant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getBaseType()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBaseType, _godot_object);
	}
	/**
	
	*/
	String getClassConstant()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getClassConstant, _godot_object);
	}
	/**
	
	*/
	void setBaseType(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBaseType, _godot_object, name);
	}
	/**
	
	*/
	void setClassConstant(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClassConstant, _godot_object, name);
	}
	/**
	
	*/
	@property String baseType()
	{
		return getBaseType();
	}
	/// ditto
	@property void baseType(String v)
	{
		setBaseType(v);
	}
	/**
	
	*/
	@property String constant()
	{
		return getClassConstant();
	}
	/// ditto
	@property void constant(String v)
	{
		setClassConstant(v);
	}
}
