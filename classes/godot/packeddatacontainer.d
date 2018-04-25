/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packeddatacontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
/**

*/
@GodotBaseClass struct PackedDataContainer
{
	static immutable string _GODOT_internal_name = "PackedDataContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in PackedDataContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PackedDataContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PackedDataContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PackedDataContainer");
		if(constructor is null) return typeof(this).init;
		return cast(PackedDataContainer)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	/**
	
	*/
	void _setData(in PoolByteArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	/**
	
	*/
	PoolByteArray _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolByteArray);
	}
	package(godot) static GodotMethod!(Variant, Array) _GODOT__iter_init;
	package(godot) alias _GODOT_methodBindInfo(string name : "_iter_init") = _GODOT__iter_init;
	/**
	
	*/
	Variant _iterInit(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_init");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, Variant) _GODOT__iter_get;
	package(godot) alias _GODOT_methodBindInfo(string name : "_iter_get") = _GODOT__iter_get;
	/**
	
	*/
	Variant _iterGet(VariantArg0)(in VariantArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_get");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, Array) _GODOT__iter_next;
	package(godot) alias _GODOT_methodBindInfo(string name : "_iter_next") = _GODOT__iter_next;
	/**
	
	*/
	Variant _iterNext(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_iter_next");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(GodotError, Variant) _GODOT_pack;
	package(godot) alias _GODOT_methodBindInfo(string name : "pack") = _GODOT_pack;
	/**
	
	*/
	GodotError pack(VariantArg0)(in VariantArg0 value)
	{
		_GODOT_pack.bind("PackedDataContainer", "pack");
		return ptrcall!(GodotError)(_GODOT_pack, _godot_object, value);
	}
	package(godot) static GodotMethod!(long) _GODOT_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "size") = _GODOT_size;
	/**
	
	*/
	long size() const
	{
		_GODOT_size.bind("PackedDataContainer", "size");
		return ptrcall!(long)(_GODOT_size, _godot_object);
	}
	/**
	
	*/
	@property PoolByteArray _Data()
	{
		return _getData();
	}
	/// ditto
	@property void _Data(PoolByteArray v)
	{
		_setData(v);
	}
}
