/**
Boolean matrix.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.bitmap;
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
import godot.image;
/**
Boolean matrix.

A two-dimensional array of boolean values, can be used to efficiently store a binary matrix (every matrix element takes only one bit) and query the values using natural cartesian coordinates.
*/
@GodotBaseClass struct BitMap
{
	static immutable string _GODOT_internal_name = "BitMap";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in BitMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BitMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BitMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BitMap");
		if(constructor is null) return typeof(this).init;
		return cast(BitMap)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Vector2) _GODOT_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "create") = _GODOT_create;
	/**
	Creates a bitmap with the specified size, filled with false.
	*/
	void create(in Vector2 size)
	{
		_GODOT_create.bind("BitMap", "create");
		ptrcall!(void)(_GODOT_create, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT_create_from_image_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_image_alpha") = _GODOT_create_from_image_alpha;
	/**
	Creates a bitmap that matches the given image dimensions, every element of the bitmap is set to false if the alpha value of the image at that position is equal to `threshold` or less, and true in other case.
	*/
	void createFromImageAlpha(Image image)
	{
		_GODOT_create_from_image_alpha.bind("BitMap", "create_from_image_alpha");
		ptrcall!(void)(_GODOT_create_from_image_alpha, _godot_object, image);
	}
	package(godot) static GodotMethod!(void, Vector2, bool) _GODOT_set_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bit") = _GODOT_set_bit;
	/**
	Sets the bitmap's element at the specified position, to the specified value.
	*/
	void setBit(in Vector2 position, in bool bit)
	{
		_GODOT_set_bit.bind("BitMap", "set_bit");
		ptrcall!(void)(_GODOT_set_bit, _godot_object, position, bit);
	}
	package(godot) static GodotMethod!(bool, Vector2) _GODOT_get_bit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bit") = _GODOT_get_bit;
	/**
	Returns bitmap's value at the specified position.
	*/
	bool getBit(in Vector2 position) const
	{
		_GODOT_get_bit.bind("BitMap", "get_bit");
		return ptrcall!(bool)(_GODOT_get_bit, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, Rect2, bool) _GODOT_set_bit_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bit_rect") = _GODOT_set_bit_rect;
	/**
	Sets a rectangular portion of the bitmap to the specified value.
	*/
	void setBitRect(in Rect2 p_rect, in bool bit)
	{
		_GODOT_set_bit_rect.bind("BitMap", "set_bit_rect");
		ptrcall!(void)(_GODOT_set_bit_rect, _godot_object, p_rect, bit);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_true_bit_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_true_bit_count") = _GODOT_get_true_bit_count;
	/**
	Returns the amount of bitmap elements that are set to true.
	*/
	long getTrueBitCount() const
	{
		_GODOT_get_true_bit_count.bind("BitMap", "get_true_bit_count");
		return ptrcall!(long)(_GODOT_get_true_bit_count, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	Returns bitmap's dimensions.
	*/
	Vector2 getSize() const
	{
		_GODOT_get_size.bind("BitMap", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	/**
	
	*/
	void _setData(in Dictionary arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	@property Dictionary data()
	{
		return _getData();
	}
	/// ditto
	@property void data(Dictionary v)
	{
		_setData(v);
	}
}
