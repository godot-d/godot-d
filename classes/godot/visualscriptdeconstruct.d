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
import godot.resource;
import godot.reference;
/**
A Visual Script node which deconstructs a base type instance into its parts.


*/
@GodotBaseClass struct VisualScriptDeconstruct
{
	enum string _GODOT_internal_name = "VisualScriptDeconstruct";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_deconstruct_type") GodotMethod!(void, long) setDeconstructType;
		@GodotName("get_deconstruct_type") GodotMethod!(Variant.Type) getDeconstructType;
		@GodotName("_set_elem_cache") GodotMethod!(void, Array) _setElemCache;
		@GodotName("_get_elem_cache") GodotMethod!(Array) _getElemCache;
	}
	bool opEquals(in VisualScriptDeconstruct other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptDeconstruct opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setDeconstructType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDeconstructType, _godot_object, type);
	}
	/**
	
	*/
	Variant.Type getDeconstructType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(_classBinding.getDeconstructType, _godot_object);
	}
	/**
	
	*/
	void _setElemCache(in Array _cache)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(_cache);
		String _GODOT_method_name = String("_set_elem_cache");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getElemCache() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_elem_cache");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
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
}
