/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.regex;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.regexmatch;
/**

*/
@GodotBaseClass struct RegEx
{
	package(godot) enum string _GODOT_internal_name = "RegEx";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("compile") GodotMethod!(GodotError, String) compile;
		@GodotName("get_group_count") GodotMethod!(long) getGroupCount;
		@GodotName("get_names") GodotMethod!(Array) getNames;
		@GodotName("get_pattern") GodotMethod!(String) getPattern;
		@GodotName("is_valid") GodotMethod!(bool) isValid;
		@GodotName("search") GodotMethod!(RegExMatch, String, long, long) search;
		@GodotName("search_all") GodotMethod!(Array, String, long, long) searchAll;
		@GodotName("sub") GodotMethod!(String, String, String, bool, long, long) sub;
	}
	/// 
	pragma(inline, true) bool opEquals(in RegEx other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of RegEx.
	/// Note: use `memnew!RegEx` instead.
	static RegEx _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RegEx");
		if(constructor is null) return typeof(this).init;
		return cast(RegEx)(constructor());
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	GodotError compile(in String pattern)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.compile, _godot_object, pattern);
	}
	/**
	
	*/
	long getGroupCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getGroupCount, _godot_object);
	}
	/**
	
	*/
	Array getNames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getNames, _godot_object);
	}
	/**
	
	*/
	String getPattern() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPattern, _godot_object);
	}
	/**
	
	*/
	bool isValid() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isValid, _godot_object);
	}
	/**
	
	*/
	Ref!RegExMatch search(in String subject, in long offset = 0, in long end = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RegExMatch)(GDNativeClassBinding.search, _godot_object, subject, offset, end);
	}
	/**
	
	*/
	Array searchAll(in String subject, in long offset = 0, in long end = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.searchAll, _godot_object, subject, offset, end);
	}
	/**
	
	*/
	String sub(in String subject, in String replacement, in bool all = false, in long offset = 0, in long end = -1) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.sub, _godot_object, subject, replacement, all, offset, end);
	}
}
