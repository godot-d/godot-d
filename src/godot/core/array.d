/**
Dynamic Variant array.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.core.array;

import godot.c;
import godot.core.variant;
import godot.core.poolarrays;

/**
Generic array, contains several elements of any type, accessible by numerical index starting at 0. Negative indices can be used to count from the right, like in Python. Arrays are always passed by reference.
*/
struct Array
{
	int opApply(int delegate(size_t, ref Variant) dg)
	{
		foreach(i; 0..length)
		{
			Variant* v = cast(Variant*)&(this[i]);
			int res = dg(cast(size_t)i, *v);
			if(res) return res;
		}
		return 0;
	}
	
	int opApply(int delegate(size_t, const(Variant)) dg) const
	{
		foreach(i; 0..length)
		{
			int res = dg(cast(size_t)i, this[i]);
			if(res) return res;
		}
		return 0;
	}
	
	int opApply(int delegate(ref Variant) dg)
	{
		foreach(i; 0..length)
		{
			Variant* v = cast(Variant*)&(this[i]);
			int res = dg(*v);
			if(res) return res;
		}
		return 0;
	}
	
	int opApply(int delegate(const(Variant)) dg) const
	{
		foreach(i; 0..length)
		{
			int res = dg(this[i]);
			if(res) return res;
		}
		return 0;
	}
	
	
	@nogc nothrow:
	
	package(godot) godot_array _godot_array;
	
	@disable this();
	
	this(this)
	{
		const godot_array tmp = _godot_array;
		_godot_api.godot_array_new_copy(&_godot_array, &tmp);
	}
	
	Array opAssign(in Array other)
	{
		_godot_api.godot_array_destroy(&_godot_array);
		_godot_api.godot_array_new_copy(&_godot_array, &other._godot_array);
		return this;
	}
	
	/++
	Assigning null empties the Array variable, but unlike `clear`, does not
	destroy the original memory unless it was the only remaining reference.
	
	Equivalent to assigning empty_array.
	+/
	Array opAssign(in typeof(null) n)
	{
		return opAssign(empty_array);
	}
	
	static Array empty_array()
	{
		Array ret = void;
		_godot_api.godot_array_new(&ret._godot_array);
		return ret;
	}
	
	this(in typeof(null) n)
	{
		_godot_api.godot_array_new(&_godot_array);
	}
	
	this(in PoolByteArray a)
	{
		_godot_api.godot_array_new_pool_byte_array(&_godot_array, &a._godot_array);
	}
	
	this(in PoolIntArray a)
	{
		_godot_api.godot_array_new_pool_int_array(&_godot_array, &a._godot_array);
	}
	
	this(in PoolRealArray a)
	{
		_godot_api.godot_array_new_pool_real_array(&_godot_array, &a._godot_array);
	}
	
	this(in PoolStringArray a)
	{
		_godot_api.godot_array_new_pool_string_array(&_godot_array, &a._godot_array);
	}
	
	this(in PoolVector2Array a)
	{
		_godot_api.godot_array_new_pool_vector2_array(&_godot_array, &a._godot_array);
	}
	
	this(in PoolVector3Array a)
	{
		_godot_api.godot_array_new_pool_vector3_array(&_godot_array, &a._godot_array);
	}
	
	this(in PoolColorArray a)
	{
		_godot_api.godot_array_new_pool_color_array(&_godot_array, &a._godot_array);
	}
	
	auto ref inout(Variant) opIndex(size_t idx) inout
	{
		godot_variant* v = _godot_api.godot_array_operator_index(cast(godot_array*)&_godot_array, cast(int)idx);
		return *cast(inout(Variant)*)v;
	}
	
	void opIndexAssign(T)(auto ref T value, in size_t idx) if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		Variant v = Variant(value);
		_godot_api.godot_array_set(&_godot_array, cast(int)idx, &v._godot_variant);
	}
	
	void append(T)(auto ref T t) if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		Variant v = Variant(t);
		_godot_api.godot_array_append(&_godot_array, &v._godot_variant);
	}
	alias opOpAssign(string op : "~") = append;
	
	void clear()
	{
		_godot_api.godot_array_clear(&_godot_array);
	}
	
	size_t count(in Variant v)
	{
		return _godot_api.godot_array_count(&_godot_array, &v._godot_variant);
	}
	
	bool empty() const
	{
		return cast(bool)_godot_api.godot_array_empty(&_godot_array);
	}
	
	void erase(T)(T v)  if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		Variant vv = v;
		_godot_api.godot_array_erase(&_godot_array, &vv._godot_variant);
	}
	
	Variant front() const
	{
		godot_variant v = _godot_api.godot_array_front(&_godot_array);
		return cast(Variant)v;
	}
	
	Variant back() const
	{
		godot_variant v = _godot_api.godot_array_back(&_godot_array);
		return cast(Variant)v;
	}
	
	int find(T)(in T what, size_t from) const if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		const Variant vv = what;
		return _godot_api.godot_array_find(&_godot_array, &vv._godot_variant, cast(int)from);
	}
	
	int findLast(T)(in T what) const if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		const Variant vv = what;
		return _godot_api.godot_array_find_last(&_godot_array, &vv._godot_variant);
	}
	
	bool has(T)(in T what) const if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		const Variant vv = what;
		return cast(bool)_godot_api.godot_array_has(&_godot_array, &vv._godot_variant);
	}
	
	uint hash() const
	{
		return _godot_api.godot_array_hash(&_godot_array);
	}
	
	void insert(T)(const size_t pos, T value) if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		Variant vv = value;
		_godot_api.godot_array_insert(&_godot_array, cast(int)pos, &vv._godot_variant);
	}
	
	void invert()
	{
		_godot_api.godot_array_invert(&_godot_array);
	}
	
	Variant popBack()
	{
		godot_variant v = _godot_api.godot_array_pop_back(&_godot_array);
		return cast(Variant)v;
	}
	
	Variant popFront()
	{
		godot_variant v = _godot_api.godot_array_pop_front(&_godot_array);
		return cast(Variant)v;
	}
	
	void pushBack(T)(T v) if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		Variant vv = v;
		_godot_api.godot_array_push_back(&_godot_array, &vv._godot_variant);
	}
	
	void pushFront(T)(T v) if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		Variant vv = v;
		_godot_api.godot_array_push_front(&_godot_array, &vv._godot_variant);
	}
	
	void remove(size_t idx)
	{
		_godot_api.godot_array_remove(&_godot_array, cast(int)idx);
	}
	
	size_t size() const
	{
		return _godot_api.godot_array_size(&_godot_array);
	}
	alias length = size; // D-style `length`
	
	void resize(size_t size)
	{
		_godot_api.godot_array_resize(&_godot_array, cast(int)size);
	}
	
	int rfind(T)(in T what, size_t from) const if(is(T : Variant) || Variant.compatibleToGodot!T)
	{
		const Variant vv = what;
		return _godot_api.godot_array_rfind(&_godot_array, &vv._godot_variant, cast(int)from);
	}
	
	void sort()
	{
		_godot_api.godot_array_sort(&_godot_array);
	}
	
	/+void sort_custom(godot.Object obj, in ref String func)
	{
		_godot_api.godot_array_sort_custom(&_godot_array, obj, &func._godot_string);
	}+/
	
	/// Allocate a new separate copy of the Array
	Array dup() const
	{
		Array ret = empty_array;
		size_t l = size();
		ret.resize(l);
		foreach(vi; 0..l)
		{
			ret[vi] = this[vi];
		}
		return ret;
	}
	
	~this()
	{
		_godot_api.godot_array_destroy(&_godot_array);
	}
}




