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
	enum string _GODOT_internal_name = "PackedDataContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_get_data") GodotMethod!(PoolByteArray) _getData;
		@GodotName("_iter_get") GodotMethod!(Variant, Variant) _iterGet;
		@GodotName("_iter_init") GodotMethod!(Variant, Array) _iterInit;
		@GodotName("_iter_next") GodotMethod!(Variant, Array) _iterNext;
		@GodotName("_set_data") GodotMethod!(void, PoolByteArray) _setData;
		@GodotName("pack") GodotMethod!(GodotError, Variant) pack;
		@GodotName("size") GodotMethod!(long) size;
	}
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
	/**
	
	*/
	PoolByteArray _getData() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolByteArray);
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
	void _setData(in PoolByteArray arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	GodotError pack(VariantArg0)(in VariantArg0 value)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.pack, _godot_object, value);
	}
	/**
	
	*/
	long size() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.size, _godot_object);
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
