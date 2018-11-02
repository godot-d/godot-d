/**
Class for searching text for patterns using regular expressions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.regex;
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
import godot.regexmatch;
/**
Class for searching text for patterns using regular expressions.

Regular Expression (or regex) is a compact programming language that can be used to recognise strings that follow a specific pattern, such as URLs, email addresses, complete sentences, etc. For instance, a regex of `ab$(D 0-9)` would find any string that is `ab` followed by any number from `0` to `9`. For a more in-depth look, you can easily find various tutorials and detailed explanations on the Internet.
To begin, the RegEx object needs to be compiled with the search pattern using $(D compile) before it can be used.


var regex = RegEx.new()
regex.compile("\\w-(\\d+)")


The search pattern must be escaped first for gdscript before it is escaped for the expression. For example, `compile("\\d+")` would be read by RegEx as `\d+`. Similarly, `compile("\"(?:\\\\.|$(D ^\"))*\"")` would be read as `"(?:\\.|$(D ^"))*"`
Using $(D search) you can find the pattern within the given text. If a pattern is found, $(D RegExMatch) is returned and you can retrieve details of the results using functions such as $(D RegExMatch.getString) and $(D RegExMatch.getStart).


var regex = RegEx.new()
regex.compile("\\w-(\\d+)")
var result = regex.search("abc n-0123")
if result:
    print(result.get_string()) # Would print n-0123


The results of capturing groups `()` can be retrieved by passing the group number to the various functions in $(D RegExMatch). Group 0 is the default and would always refer to the entire pattern. In the above example, calling `result.get_string(1)` would give you `0123`.
This version of RegEx also supports named capturing groups, and the names can be used to retrieve the results. If two or more groups have the same name, the name would only refer to the first one with a match.


var regex = RegEx.new()
regex.compile("d(?&lt;digit&gt;$(D 0-9)+)|x(?&lt;digit&gt;$(D 0-9a-f)+)")
var result = regex.search("the number is x2f")
if result:
    print(result.get_string("digit")) # Would print 2f


If you need to process multiple results, $(D searchAll) generates a list of all non-overlapping results. This can be combined with a for-loop for convenience.


for result in regex.search_all("d01, d03, d0c, x3f and x42"):
    print(result.get_string("digit"))
# Would print 01 03 3f 42
# Note that d0c would not match


*/
@GodotBaseClass struct RegEx
{
	enum string _GODOT_internal_name = "RegEx";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("compile") GodotMethod!(GodotError, String) compile;
		@GodotName("search") GodotMethod!(RegExMatch, String, long, long) search;
		@GodotName("search_all") GodotMethod!(Array, String, long, long) searchAll;
		@GodotName("sub") GodotMethod!(String, String, String, bool, long, long) sub;
		@GodotName("is_valid") GodotMethod!(bool) isValid;
		@GodotName("get_pattern") GodotMethod!(String) getPattern;
		@GodotName("get_group_count") GodotMethod!(long) getGroupCount;
		@GodotName("get_names") GodotMethod!(Array) getNames;
	}
	bool opEquals(in RegEx other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RegEx opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RegEx _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RegEx");
		if(constructor is null) return typeof(this).init;
		return cast(RegEx)(constructor());
	}
	@disable new(size_t s);
	/**
	This method resets the state of the object, as it was freshly created. Namely, it unassigns the regular expression of this object.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Compiles and assign the search pattern to use. Returns OK if the compilation is successful. If an error is encountered the details are printed to STDOUT and FAILED is returned.
	*/
	GodotError compile(StringArg0)(in StringArg0 pattern)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.compile, _godot_object, pattern);
	}
	/**
	Searches the text for the compiled pattern. Returns a $(D RegExMatch) container of the first matching result if found, otherwise null. The region to search within can be specified without modifying where the start and end anchor would be.
	*/
	Ref!RegExMatch search(StringArg0)(in StringArg0 subject, in long offset = 0, in long end = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RegExMatch)(_classBinding.search, _godot_object, subject, offset, end);
	}
	/**
	Searches the text for the compiled pattern. Returns an array of $(D RegExMatch) containers for each non-overlapping result. If no results were found an empty array is returned instead. The region to search within can be specified without modifying where the start and end anchor would be.
	*/
	Array searchAll(StringArg0)(in StringArg0 subject, in long offset = 0, in long end = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.searchAll, _godot_object, subject, offset, end);
	}
	/**
	Searches the text for the compiled pattern and replaces it with the specified string. Escapes and backreferences such as `\1` and `\g&lt;name&gt;` expanded and resolved. By default only the first instance is replaced but it can be changed for all instances (global replacement). The region to search within can be specified without modifying where the start and end anchor would be.
	*/
	String sub(StringArg0, StringArg1)(in StringArg0 subject, in StringArg1 replacement, in bool all = false, in long offset = 0, in long end = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.sub, _godot_object, subject, replacement, all, offset, end);
	}
	/**
	Returns whether this object has a valid search pattern assigned.
	*/
	bool isValid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isValid, _godot_object);
	}
	/**
	Returns the original search pattern that was compiled.
	*/
	String getPattern() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPattern, _godot_object);
	}
	/**
	Returns the number of capturing groups in compiled pattern.
	*/
	long getGroupCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getGroupCount, _godot_object);
	}
	/**
	Returns an array of names of named capturing groups in the compiled pattern. They are ordered by appearance.
	*/
	Array getNames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getNames, _godot_object);
	}
}
