/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptglobalconstant;
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

*/
@GodotBaseClass struct VisualScriptGlobalConstant
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptGlobalConstant";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_global_constant") GodotMethod!(long) getGlobalConstant;
		@GodotName("set_global_constant") GodotMethod!(void, long) setGlobalConstant;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptGlobalConstant other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualScriptGlobalConstant opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualScriptGlobalConstant.
	/// Note: use `memnew!VisualScriptGlobalConstant` instead.
	static VisualScriptGlobalConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptGlobalConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptGlobalConstant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getGlobalConstant()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getGlobalConstant, _godot_object);
	}
	/**
	
	*/
	void setGlobalConstant(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalConstant, _godot_object, index);
	}
	/**
	
	*/
	@property long constant()
	{
		return getGlobalConstant();
	}
	/// ditto
	@property void constant(long v)
	{
		setGlobalConstant(v);
	}
}
