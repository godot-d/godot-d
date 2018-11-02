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
	enum string _GODOT_internal_name = "RegExMatch";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_subject") GodotMethod!(String) getSubject;
		@GodotName("get_group_count") GodotMethod!(long) getGroupCount;
		@GodotName("get_names") GodotMethod!(Dictionary) getNames;
		@GodotName("get_strings") GodotMethod!(Array) getStrings;
		@GodotName("get_string") GodotMethod!(String, Variant) getString;
		@GodotName("get_start") GodotMethod!(long, Variant) getStart;
		@GodotName("get_end") GodotMethod!(long, Variant) getEnd;
	}
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
	/**
	
	*/
	String getSubject() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSubject, _godot_object);
	}
	/**
	Returns the number of capturing groups.
	*/
	long getGroupCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getGroupCount, _godot_object);
	}
	/**
	
	*/
	Dictionary getNames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getNames, _godot_object);
	}
	/**
	
	*/
	Array getStrings() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getStrings, _godot_object);
	}
	/**
	Returns the substring of the match from the source string. Capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
	Returns an empty string if the group did not match or doesn't exist.
	*/
	String getString(VariantArg0)(in VariantArg0 name = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getString, _godot_object, name);
	}
	/**
	Returns the starting position of the match within the source string. The starting position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
	Returns -1 if the group did not match or doesn't exist.
	*/
	long getStart(VariantArg0)(in VariantArg0 name = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getStart, _godot_object, name);
	}
	/**
	Returns the end position of the match within the source string. The end position of capturing groups can be retrieved by providing its group number as an integer or its string name (if it's a named group). The default value of 0 refers to the whole pattern.
	Returns -1 if the group did not match or doesn't exist.
	*/
	long getEnd(VariantArg0)(in VariantArg0 name = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getEnd, _godot_object, name);
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
