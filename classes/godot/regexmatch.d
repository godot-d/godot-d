/**
Contains the results of a regex search.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.regexmatch;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
Contains the results of a regex search.

Contains the results of a single regex match returned by $(D RegEx.search) and $(D RegEx.searchAll). It can be used to find the position and range of the match and its capturing groups, and it can extract its sub-string for you.
*/
@GodotBaseClass struct RegExMatch
{
	static immutable string _GODOT_internal_name = "RegExMatch";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in RegExMatch other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RegExMatch opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RegExMatch _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RegExMatch");
		if(constructor is null) return typeof(this).init;
		return cast(RegExMatch)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(String) _GODOT_get_subject;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subject") = _GODOT_get_subject;
	/**
	
	*/
	String getSubject() const
	{
		_GODOT_get_subject.bind("RegExMatch", "get_subject");
		return ptrcall!(String)(_GODOT_get_subject, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_group_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_group_count") = _GODOT_get_group_count;
	/**
	Returns the number of capturing groups.
	*/
	long getGroupCount() const
	{
		_GODOT_get_group_count.bind("RegExMatch", "get_group_count");
		return ptrcall!(long)(_GODOT_get_group_count, _godot_object);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_names;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_names") = _GODOT_get_names;
	/**
	
	*/
	Dictionary getNames() const
	{
		_GODOT_get_names.bind("RegExMatch", "get_names");
		return ptrcall!(Dictionary)(_GODOT_get_names, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_strings;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_strings") = _GODOT_get_strings;
	/**
	
	*/
	Array getStrings() const
	{
		_GODOT_get_strings.bind("RegExMatch", "get_strings");
		return ptrcall!(Array)(_GODOT_get_strings, _godot_object);
	}
	package(godot) static GodotMethod!(String, Variant) _GODOT_get_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_string") = _GODOT_get_string;
	/**
	Returns the substring of the match from the source string. Capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
	Returns an empty string if the group did not match or doesn't exist.
	*/
	String getString(VariantArg0)(in VariantArg0 name = 0) const
	{
		_GODOT_get_string.bind("RegExMatch", "get_string");
		return ptrcall!(String)(_GODOT_get_string, _godot_object, name);
	}
	package(godot) static GodotMethod!(long, Variant) _GODOT_get_start;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_start") = _GODOT_get_start;
	/**
	Returns the starting position of the match within the source string. The starting position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
	Returns -1 if the group did not match or doesn't exist.
	*/
	long getStart(VariantArg0)(in VariantArg0 name = 0) const
	{
		_GODOT_get_start.bind("RegExMatch", "get_start");
		return ptrcall!(long)(_GODOT_get_start, _godot_object, name);
	}
	package(godot) static GodotMethod!(long, Variant) _GODOT_get_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_end") = _GODOT_get_end;
	/**
	Returns the end position of the match within the source string. The end position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
	Returns -1 if the group did not match or doesn't exist.
	*/
	long getEnd(VariantArg0)(in VariantArg0 name = 0) const
	{
		_GODOT_get_end.bind("RegExMatch", "get_end");
		return ptrcall!(long)(_GODOT_get_end, _godot_object, name);
	}
	/**
	The source string used with the search pattern to find this matching result.
	*/
	@property String subject()
	{
		return getSubject();
	}
	/**
	A dictionary of named groups and its corresponding group number. Only groups with that were matched are included. If multiple groups have the same name, that name would refer to the first matching one.
	*/
	@property Dictionary names()
	{
		return getNames();
	}
	/**
	An $(D Array) of the match and its capturing groups.
	*/
	@property Array strings()
	{
		return getStrings();
	}
}
