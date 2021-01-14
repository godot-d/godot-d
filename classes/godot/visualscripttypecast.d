/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscripttypecast;
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
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualScriptTypeCast
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptTypeCast";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_base_script") GodotMethod!(String) getBaseScript;
		@GodotName("get_base_type") GodotMethod!(String) getBaseType;
		@GodotName("set_base_script") GodotMethod!(void, String) setBaseScript;
		@GodotName("set_base_type") GodotMethod!(void, String) setBaseType;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptTypeCast other) const
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
	/// Construct a new instance of VisualScriptTypeCast.
	/// Note: use `memnew!VisualScriptTypeCast` instead.
	static VisualScriptTypeCast _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptTypeCast");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptTypeCast)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getBaseScript() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBaseScript, _godot_object);
	}
	/**
	
	*/
	String getBaseType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBaseType, _godot_object);
	}
	/**
	
	*/
	void setBaseScript(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBaseScript, _godot_object, path);
	}
	/**
	
	*/
	void setBaseType(in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBaseType, _godot_object, type);
	}
	/**
	
	*/
	@property String baseScript()
	{
		return getBaseScript();
	}
	/// ditto
	@property void baseScript(String v)
	{
		setBaseScript(v);
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
}
