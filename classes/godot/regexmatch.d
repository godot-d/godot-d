/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.regexmatch;
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
/**

*/
@GodotBaseClass struct RegExMatch
{
	package(godot) enum string _GODOT_internal_name = "RegExMatch";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_end") GodotMethod!(long, Variant) getEnd;
		@GodotName("get_group_count") GodotMethod!(long) getGroupCount;
		@GodotName("get_names") GodotMethod!(Dictionary) getNames;
		@GodotName("get_start") GodotMethod!(long, Variant) getStart;
		@GodotName("get_string") GodotMethod!(String, Variant) getString;
		@GodotName("get_strings") GodotMethod!(Array) getStrings;
		@GodotName("get_subject") GodotMethod!(String) getSubject;
	}
	/// 
	pragma(inline, true) bool opEquals(in RegExMatch other) const
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
	/// Construct a new instance of RegExMatch.
	/// Note: use `memnew!RegExMatch` instead.
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
	long getEnd(VariantArg0)(in VariantArg0 name = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getEnd, _godot_object, name);
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
	Dictionary getNames() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getNames, _godot_object);
	}
	/**
	
	*/
	long getStart(VariantArg0)(in VariantArg0 name = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStart, _godot_object, name);
	}
	/**
	
	*/
	String getString(VariantArg0)(in VariantArg0 name = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getString, _godot_object, name);
	}
	/**
	
	*/
	Array getStrings() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getStrings, _godot_object);
	}
	/**
	
	*/
	String getSubject() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSubject, _godot_object);
	}
	/**
	
	*/
	@property Dictionary names()
	{
		return getNames();
	}
	/**
	
	*/
	@property Array strings()
	{
		return getStrings();
	}
	/**
	
	*/
	@property String subject()
	{
		return getSubject();
	}
}
