/*************************************************************************/
/*  godot.core.string                                                    */
/*************************************************************************/
/*                       This file is part of:                           */
/*                           GODOT ENGINE                                */
/*                    http://www.godotengine.org                         */
/*************************************************************************/
/* Copyright (c) 2007-2017 Juan Linietsky, Ariel Manzur.                 */
/* Copyright (c) 2014-2017 Godot Engine contributors (cf. AUTHORS.md)    */
/*                                                                       */
/* Permission is hereby granted, free of charge, to any person obtaining */
/* a copy of this software and associated documentation files (the       */
/* "Software"), to deal in the Software without restriction, including   */
/* without limitation the rights to use, copy, modify, merge, publish,   */
/* distribute, sublicense, and/or sell copies of the Software, and to    */
/* permit persons to whom the Software is furnished to do so, subject to */
/* the following conditions:                                             */
/*                                                                       */
/* The above copyright notice and this permission notice shall be        */
/* included in all copies or substantial portions of the Software.       */
/*                                                                       */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       */
/* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF    */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.*/
/* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY  */
/* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,  */
/* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE     */
/* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                */
/*************************************************************************/
module godot.core.string;

import core.stdc.stddef : wchar_t;
import core.stdc.string : strlen;
import godot.c;

struct String
{
	package(godot) godot_string _godot_string;
	
	/// disable implicit copying; use $(D dup) to explicitly create a copy
	@disable this(this);
	
	/// disable default construction to prevent null Strings; use $(D empty) instead
	@disable this();
	
	/// create an empty string
	static String empty()
	{
		String ret = void;
		godot_string_new(&ret._godot_string);
		return ret;
	}
	
	this(in char* contents)
	{
		godot_string_new_data(&_godot_string, contents, cast(int)strlen(contents));
	}
	
	this(in string contents)
	{
		godot_string_new_data(&_godot_string, contents.ptr, cast(int)contents.length);
	}
	
	String dup() const
	{
		String ret = void;
		godot_string_new(&ret._godot_string);
		godot_string_copy_string(&ret._godot_string, &_godot_string);
		return ret;
	}
	
	~this()
	{
		godot_string_destroy(&_godot_string);
	}
	
	
	void opAssign(in ref String other)
	{
		godot_string_copy_string(&_godot_string, &other._godot_string);
	}
	
	
	/+String substr(int p_from,int p_chars) const
	{
		return String.empty; // todo
	}
	
	alias opSlice = substr;+/
	
	
	ref wchar_t opIndex(in int idx)
	{
		return *godot_string_operator_index(&_godot_string, idx);
	}
	
	wchar_t opIndex(in int idx) const
	{
		return *godot_string_operator_index(cast(godot_string*) &_godot_string, idx);
	}
	
	int length() const
	{
		int len = 0;
		godot_string_get_data(&_godot_string, null, &len);
		return len;
	}
	
	int opCmp(in ref String s)
	{
		auto equal = godot_string_operator_equal(&_godot_string, &s._godot_string);
		if(equal) return 0;
		auto less = godot_string_operator_less(&_godot_string, &s._godot_string);
		return less?(-1):1;
	}
	
	String opBinary(string op : "~")(in ref String other) const
	{
		String ret = void;
		godot_string_operator_plus(&ret._godot_string, &_godot_string, &other._godot_string);
		
		return ret;
	}
	
	void opOpAssign(string op : "~")(in ref String other)
	{
		godot_string_operator_plus(&_godot_string, &_godot_string, &other._godot_string);
	}
	
	/+NodePath opCast(T : NodePath)() const
	{
		return NodePath(*this);
	}+/
	
	const(char*) c_string() const
	{
		return godot_string_c_str(&_godot_string);
	}
	
	/*const(char[]) d_string() const
	{
		return godot_string_c_str(&_godot_string)[0..length];
	}*/
}

 
