/**
A Visual Script node which deconstructs a base type instance into its parts.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptdeconstruct;
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
A Visual Script node which deconstructs a base type instance into its parts.


*/
@GodotBaseClass struct VisualScriptDeconstruct
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptDeconstruct";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_elem_cache") GodotMethod!(Array) _getElemCache;
		@GodotName("_set_elem_cache") GodotMethod!(void, Array) _setElemCache;
		@GodotName("get_deconstruct_type") GodotMethod!(Variant.Type) getDeconstructType;
		@GodotName("set_deconstruct_type") GodotMethod!(void, long) setDeconstructType;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptDeconstruct other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualScriptDeconstruct opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualScriptDeconstruct.
	/// Note: use `memnew!VisualScriptDeconstruct` instead.
	static VisualScriptDeconstruct _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptDeconstruct");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptDeconstruct)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array _getElemCache() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_elem_cache");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setElemCache(in Array _cache)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(_cache);
		String _GODOT_method_name = String("_set_elem_cache");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Variant.Type getDeconstructType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(GDNativeClassBinding.getDeconstructType, _godot_object);
	}
	/**
	
	*/
	void setDeconstructType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDeconstructType, _godot_object, type);
	}
	/**
	
	*/
	@property Array elemCache()
	{
		return _getElemCache();
	}
	/// ditto
	@property void elemCache(Array v)
	{
		_setElemCache(v);
	}
	/**
	The type to deconstruct.
	*/
	@property Variant.Type type()
	{
		return getDeconstructType();
	}
	/// ditto
	@property void type(long v)
	{
		setDeconstructType(v);
	}
}
