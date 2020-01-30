/**
Memory-pool-based dynamic arrays. Optimized for memory usage, can’t fragment the memory.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.core.poolarrays;

import godot.c;
import godot.core.array;
import godot.core.defs;
import godot.core.string;
import godot.core.color;
import godot.core.vector2;
import godot.core.vector3;

import std.range.primitives;
import std.meta, std.traits;

private alias PoolArrayTypes = AliasSeq!(
	ubyte,
	int,
	real_t,
	String,
	Vector2,
	Vector3,
	Color
);

private enum string nameOverride(T) = AliasSeq!(
	"byte", "int", "real", "string", "vector2", "vector3", "color")[staticIndexOf!(T, PoolArrayTypes)];

private enum string typeName(T) = "godot_pool_"~(nameOverride!T)~"_array";
private enum string readName(T) = "godot_pool_"~(nameOverride!T)~"_array_read_access";
private enum string writeName(T) = "godot_pool_"~(nameOverride!T)~"_array_write_access";

alias PoolByteArray = PoolArray!ubyte;
alias PoolIntArray = PoolArray!int;
alias PoolRealArray = PoolArray!real_t;
alias PoolStringArray = PoolArray!String;
alias PoolVector2Array = PoolArray!Vector2;
alias PoolVector3Array = PoolArray!Vector3;
alias PoolColorArray = PoolArray!Color;

/++
Copy-on-write array for some Godot types, allocated with a memory pool.
+/
struct PoolArray(T)
{
	@nogc nothrow:
	
	static assert(staticIndexOf!(T, PoolArrayTypes) != -1,
		"Cannot make a Godot PoolArray for a non-Godot type");
	
	mixin("package(godot) "~(typeName!T)~" _godot_array;");
	
	this(this)
	{
		mixin("auto n = _godot_api."~(typeName!T)~"_new_copy;");
		const auto tmp = _godot_array;
		n(&_godot_array, &tmp);
	}
	
	PoolArray opAssign(in PoolArray other)
	{
		mixin("auto d = _godot_api."~(typeName!T)~"_destroy;");
		mixin("auto n = _godot_api."~(typeName!T)~"_new_copy;");
		d(&_godot_array);
		n(&_godot_array, &other._godot_array);
		return this;
	}
	
	/++
	C API type to pass to/from C functions
	+/
	static if(is(T==Vector2)) private alias InternalType = godot_vector2;
	else static if(is(T==Vector3)) private alias InternalType = godot_vector3;
	else static if(is(T==Color)) private alias InternalType = godot_color;
	else private alias InternalType = T;
	
	this(Array arr)
	{
		mixin("auto n = _godot_api."~(typeName!T)~"_new_with_array;");
		n(&_godot_array, &arr._godot_array);
	}
	
	void append_array(in ref PoolArray arr)
	{
		mixin("auto a = _godot_api."~(typeName!T)~"_append_array;");
		a(&_godot_array, &arr._godot_array);
	}
	
	void invert()
	{
		mixin("auto i = _godot_api."~(typeName!T)~"_invert;");
		i(&_godot_array);
	}
	
	void remove(size_t idx)
	{
		mixin("auto r = _godot_api."~(typeName!T)~"_remove;");
		r(&_godot_array, cast(int)idx);
	}
	
	void resize(size_t size)
	{
		mixin("auto r = _godot_api."~(typeName!T)~"_resize;");
		r(&_godot_array, cast(int)size);
	}
	
	size_t size() const
	{
		mixin("auto s = _godot_api."~(typeName!T)~"_size;");
		return s(&_godot_array);
	}
	alias length = size; // D-style name for size
	alias opDollar = size;
	
	/// Returns: true if length is 0.
	bool empty() const
	{
		return length == 0;
	}
	
	~this()
	{
		mixin("auto d = _godot_api."~(typeName!T)~"_destroy;");
		d(&_godot_array);
	}
	
	
	// a few functions are different for Strings than for the others:
	static if(is(T == String))
	{
		void pushBack(in String data)
		{
			_godot_api.godot_pool_string_array_push_back(&_godot_array, &data._godot_string);
		}
		void insert(size_t idx, in String data)
		{
			_godot_api.godot_pool_string_array_insert(&_godot_array, cast(int)idx, &data._godot_string);
		}
		void set(size_t idx, in String data)
		{
			_godot_api.godot_pool_string_array_set(&_godot_array, cast(int)idx, &data._godot_string);
		}
		void opIndexAssign(in String data, size_t idx)
		{
			_godot_api.godot_pool_string_array_set(&_godot_array, cast(int)idx, &data._godot_string);
		}
		String opIndex(size_t idx) const
		{
			String ret = void;
			ret._godot_string = _godot_api.godot_pool_string_array_get(&_godot_array, cast(int)idx);
			return ret;
		}
	}
	else
	{
		void pushBack(in T data)
		{
			mixin("auto p = _godot_api."~(typeName!T)~"_push_back;");
			static if(is(T==Vector2) || is(T==Vector3) || is(T==Color))
				p(&_godot_array, cast(InternalType*)&data);
			else p(&_godot_array, data);
		}
		void insert(size_t idx, in T data)
		{
			mixin("auto i = _godot_api."~(typeName!T)~"_insert;");
			static if(is(T==Vector2) || is(T==Vector3) || is(T==Color))
				i(&_godot_array, cast(int)idx, cast(InternalType*)&data);
			else i(&_godot_array, cast(int)idx, data);
		}
		void set(size_t idx, in T data)
		{
			mixin("auto s = _godot_api."~(typeName!T)~"_set;");
			static if(is(T==Vector2) || is(T==Vector3) || is(T==Color))
				s(&_godot_array, cast(int)idx, cast(InternalType*)&data);
			else s(&_godot_array, cast(int)idx, data);
		}
		void opIndexAssign(in T data, size_t idx)
		{
			mixin("auto s = _godot_api."~(typeName!T)~"_set;");
			static if(is(T==Vector2) || is(T==Vector3) || is(T==Color))
				s(&_godot_array, cast(int)idx, cast(InternalType*)&data);
			else s(&_godot_array, cast(int)idx, data);
		}
		T opIndex(size_t idx) const
		{
			mixin("auto g = _godot_api."~(typeName!T)~"_get;");
			static union V
			{
				T t;
				InternalType r;
			}
			V v;
			v.r = g(&_godot_array, cast(int)idx);
			return v.t;
		}
	}
	
	alias append = pushBack;
	template opOpAssign(string op) if(op == "~" || op == "+")
	{
		alias opOpAssign = pushBack;
	}
	
	/// Slice-like view of the PoolArray
	/// TODO: implement this with Read/Write?
	static struct Range
	{
		private
		{
			PoolArray* arr;
			size_t start, end;
		}
		
		bool empty() const { return start == end; }
		size_t length() const { return end - start; }
		alias opDollar = length;
		T front() { return (*arr)[start]; }
		void popFront() { ++start; }
		T back() { return (*arr)[end-1]; }
		void popBack() { --end; }
		T opIndex(size_t index) { return (*arr)[index+start]; }
		
		Range save() { return this; }
	}
	static assert(isRandomAccessRange!Range);
	
	Range opSlice() { return Range(&this, 0, length); }
	Range opSlice(size_t start, size_t end) { return Range(&this, start, end); }
}

