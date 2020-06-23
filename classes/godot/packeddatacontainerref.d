/**
Reference version of $(D PackedDataContainer).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packeddatacontainerref;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**
Reference version of $(D PackedDataContainer).
*/
@GodotBaseClass struct PackedDataContainerRef
{
	package(godot) enum string _GODOT_internal_name = "PackedDataContainerRef";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_is_dictionary") GodotMethod!(bool) _isDictionary;
		@GodotName("_iter_get") GodotMethod!(Variant, Variant) _iterGet;
		@GodotName("_iter_init") GodotMethod!(Variant, Array) _iterInit;
		@GodotName("_iter_next") GodotMethod!(Variant, Array) _iterNext;
		@GodotName("size") GodotMethod!(long) size;
	}
	/// 
	pragma(inline, true) bool opEquals(in PackedDataContainerRef other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) PackedDataContainerRef opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of PackedDataContainerRef.
	/// Note: use `memnew!PackedDataContainerRef` instead.
	static PackedDataContainerRef _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PackedDataContainerRef");
		if(constructor is null) return typeof(this).init;
		return cast(PackedDataContainerRef)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool _isDictionary() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_is_dictionary");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	Variant _iterGet(VariantArg0)(in VariantArg0 arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_get");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Variant _iterInit(in Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_init");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Variant _iterNext(in Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_next");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long size() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.size, _godot_object);
	}
}
