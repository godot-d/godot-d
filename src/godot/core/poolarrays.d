module godot.core.poolarrays;

import godot.c;
//import godot.core.array;
import godot.core.defs;
import godot.core.string;
import godot.core.color;
import godot.core.vector2;
import godot.core.vector3;

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

private template nameOverride(T)
{
	import std.uni : toLower;
	static if(is(T==ubyte)) enum string nameOverride = "byte";
	else static if(is(T==real_t)) enum string nameOverride = "real";
	else enum string nameOverride = T.stringof.toLower;
}

private enum string typeName(T) = "godot_pool_"~(nameOverride!T)~"_array";

alias PoolByteArray = PoolArray!ubyte;
alias PoolIntArray = PoolArray!int;
alias PoolRealArray = PoolArray!real_t;
alias PoolStringArray = PoolArray!String;
alias PoolVector2Array = PoolArray!Vector2;
alias PoolVector3Array = PoolArray!Vector3;
alias PoolColorArray = PoolArray!Color;

struct PoolArray(T)
{
	static assert(staticIndexOf!(T, PoolArrayTypes) != -1,
		"Cannot make a Godot PoolArray for a non-Godot type");
	
	mixin("package(godot) "~(typeName!T)~" _godot_array;");
	
	@disable this(this);
	@disable this();
	
	/++
	C API type to pass to/from C functions
	+/
	static if(is(T==Vector2)) private alias InternalType = godot_vector2;
	else static if(is(T==Vector3)) private alias InternalType = godot_vector3;
	else static if(is(T==Color)) private alias InternalType = godot_color;
	else private alias InternalType = T;
	
	static PoolArray empty()
	{
		PoolArray ret = void;
		mixin("alias n = "~(typeName!T)~"_new;");
		n(&ret._godot_array);
		return ret;
	}
	
	/+this(Array arr)
	{
		mixin("alias n = "~(typeName!T)~"_new_with_array;");
		n(&_godot_array, &arr._godot_array);
	}+/
	
	void append_array(in ref PoolArray arr)
	{
		mixin("alias a = "~(typeName!T)~"_append_array;");
		a(&_godot_array, &arr._godot_array);
	}
	
	void invert()
	{
		mixin("alias i = "~(typeName!T)~"_invert;");
		i(&_godot_array);
	}
	
	void remove(int idx)
	{
		mixin("alias r = "~(typeName!T)~"_remove;");
		r(&_godot_array, idx);
	}
	
	void resize(int size)
	{
		mixin("alias r = "~(typeName!T)~"_resize;");
		r(&_godot_array, size);
	}
	
	void size()
	{
		mixin("alias s = "~(typeName!T)~"_size;");
		s(&_godot_array);
	}
	alias length = size; // D-style name for size
	
	~this()
	{
		mixin("alias d = "~(typeName!T)~"_destroy;");
		d(&_godot_array);
	}
	
	
	// a few functions are different for Strings than for the others:
	static if(is(T == String))
	{
		void push_back(in ref String data)
		{
			godot_pool_string_array_push_back(&_godot_array, &data._godot_string);
		}
		void insert(int idx, in ref String data)
		{
			godot_pool_string_array_insert(&_godot_array, idx, &data._godot_string);
		}
		void set(int idx, in ref String data)
		{
			godot_pool_string_array_set(&_godot_array, idx, &data._godot_string);
		}
		void opIndexAssign(in ref String data, int idx)
		{
			godot_pool_string_array_set(&_godot_array, idx, &data._godot_string);
		}
		String opIndex(int idx)
		{
			String ret = void;
			ret._godot_string = godot_pool_string_array_get(&_godot_array, idx);
			return ret;
		}
	}
	else
	{
		void push_back(in T data)
		{
			mixin("alias p = "~(typeName!T)~"_push_back;");
			static if(is(T==Vector2) || is(T==Vector3) || is(T==Color))
				p(&_godot_array, cast(InternalType*)&data);
			else p(&_godot_array, data);
		}
		void insert(int idx, in T data)
		{
			mixin("alias i = "~(typeName!T)~"_insert;");
			static if(is(T==Vector2) || is(T==Vector3) || is(T==Color))
				i(&_godot_array, idx, cast(InternalType*)&data);
			else i(&_godot_array, idx, data);
		}
		void set(int idx, in T data)
		{
			mixin("alias s = "~(typeName!T)~"_set;");
			static if(is(T==Vector2) || is(T==Vector3) || is(T==Color))
				s(&_godot_array, idx, cast(InternalType*)&data);
			else s(&_godot_array, idx, data);
		}
		void opIndexAssign(in T data, int idx)
		{
			mixin("alias s = "~(typeName!T)~"_set;");
			static if(is(T==Vector2) || is(T==Vector3) || is(T==Color))
				s(&_godot_array, idx, cast(InternalType*)&data);
			else s(&_godot_array, idx, data);
		}
		T opIndex(int idx)
		{
			mixin("alias g = "~(typeName!T)~"_get;");
			static union V
			{
				T t;
				InternalType r;
			}
			V v;
			v.r = g(&_godot_array, idx);
			return v.t;
		}
	}
	
	alias append = push_back;
}

