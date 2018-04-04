/**
Godot's ref-counted wchar_t String class.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.core.string;

import core.stdc.stddef : wchar_t;
import godot.c;
import std.traits;

struct CharString
{
	@nogc nothrow:
	
	package(godot) godot_char_string _char_string;
	
	immutable(char)* ptr() const
	{
		return cast(typeof(return))_godot_api.godot_char_string_get_data(&_char_string);
	}
	
	size_t length() const
	{
		return _godot_api.godot_char_string_length(&_char_string);
	}
	
	immutable(char)[] data() const
	{
		return ptr[0..length];
	}
	
	~this()
	{
		_godot_api.godot_char_string_destroy(&_char_string);
	}
}

/**
This is the built-in string class (and the one used by GDScript). It supports Unicode and provides all necessary means for string handling. Strings are reference counted and use a copy-on-write approach, so passing them around is cheap in resources.
*/
struct String
{
	@nogc nothrow:
	
	package(godot) godot_string _godot_string;
	
	/// postblit (Vector is CoW, so no data copying is done)
	this(this)
	{
		godot_string other = _godot_string;
		_godot_api.godot_string_new_copy(&_godot_string, &other);
	}
	
	package(godot) this(in godot_string str)
	{
		_godot_string = str;
	}
	
	/++
	wchar_t constructor. S can be a slice or a null-terminated pointer.
	+/
	this(S)(in S str) if(isImplicitlyConvertible!(S, const(wchar_t)[]) ||
		isImplicitlyConvertible!(S, const(wchar_t)*))
	{
		static if(isImplicitlyConvertible!(S, const(wchar_t)[]))
		{
			const(wchar_t)[] contents = str;
			_godot_api.godot_string_new_with_wide_string(&_godot_string, contents.ptr, cast(int)contents.length);
		}
		else
		{
			import core.stdc.wchar_ : wcslen;
			const(wchar_t)* contents = str;
			_godot_api.godot_string_new_with_wide_string(&_godot_string, contents, cast(int)wcslen(contents));
		}
	}
	
	/++
	UTF-8 constructor. S can be a slice (like `string`) or a null-terminated pointer.
	+/
	this(S)(in S str) if(isImplicitlyConvertible!(S, const(char)[]) ||
		isImplicitlyConvertible!(S, const(char)*))
	{
		static if(isImplicitlyConvertible!(S, const(char)[]))
		{
			import std.experimental.allocator, std.experimental.allocator.mallocator;
			char[] contents = Mallocator.instance.makeArray!char(str.length+1);
			scope(exit) Mallocator.instance.deallocate(cast(void[])contents);
			contents[0..str.length] = str;
			contents[str.length] = '\0';
			_godot_api.godot_string_parse_utf8(&_godot_string, contents.ptr);
		}
		else
		{
			const(char)* contents = str;
			_godot_api.godot_string_parse_utf8(&_godot_string, contents);
		}
	}
	
	~this()
	{
		_godot_api.godot_string_destroy(&_godot_string);
	}
	
	
	void opAssign(in String other)
	{
		_godot_api.godot_string_destroy(&_godot_string);
		_godot_api.godot_string_new_copy(&_godot_string, &other._godot_string);
	}
	
	
	/+String substr(int p_from,int p_chars) const
	{
		return String.empty; // todo
	}
	
	alias opSlice = substr;+/
	
	
	ref wchar_t opIndex(in size_t idx)
	{
		return *_godot_api.godot_string_operator_index(&_godot_string, cast(int)idx);
	}
	
	wchar_t opIndex(in size_t idx) const
	{
		return *_godot_api.godot_string_operator_index(cast(godot_string*) &_godot_string, cast(int)idx);
	}
	
	/// Returns the length of the wchar_t array, minus the zero terminator.
	size_t length() const
	{
		return _godot_api.godot_string_length(&_godot_string);
	}
	
	/// Returns: $(D true) if length is 0
	bool empty()
	{
		return length == 0;
	}
	
	int opCmp(in ref String s)
	{
		auto equal = _godot_api.godot_string_operator_equal(&_godot_string, &s._godot_string);
		if(equal) return 0;
		auto less = _godot_api.godot_string_operator_less(&_godot_string, &s._godot_string);
		return less?(-1):1;
	}
	
	String opBinary(string op : "~")(in String other) const
	{
		String ret = void;
		ret._godot_string = _godot_api.godot_string_operator_plus(&_godot_string, &other._godot_string);
		
		return ret;
	}
	
	void opOpAssign(string op : "~")(in String other)
	{
		_godot_string = _godot_api.godot_string_operator_plus(&_godot_string, &other._godot_string);
	}
	
	/// Returns a pointer to the wchar_t data. Always zero-terminated.
	immutable(wchar_t)* ptr() const
	{
		return cast(typeof(return))_godot_api.godot_string_wide_str(&_godot_string);
	}

	/// Returns a slice of the wchar_t data without the zero terminator.
	immutable(wchar_t)[] data() const
	{
		return ptr[0..length];
	}
	alias toString = data;
	
	CharString utf8() const
	{
		CharString ret = void;
		ret._char_string = _godot_api.godot_string_utf8(&_godot_string);
		return ret;
	}
}

 
