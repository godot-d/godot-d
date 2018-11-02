/**
Helper class for parsing JSON data.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.json;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.jsonparseresult;
/**
Helper class for parsing JSON data.

For usage example and other important hints, see $(D JSONParseResult).
*/
@GodotBaseClass struct JSONSingleton
{
	enum string _GODOT_internal_name = "_JSON";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "JSON";
		@GodotName("print") GodotMethod!(String, Variant, String, bool) print;
		@GodotName("parse") GodotMethod!(JSONParseResult, String) parse;
	}
	bool opEquals(in JSONSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	JSONSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static JSONSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_JSON");
		if(constructor is null) return typeof(this).init;
		return cast(JSONSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	Converts a Variant var to JSON text and returns the result. Useful for serializing data to store or send over the network.
	*/
	String print(VariantArg0, StringArg1)(in VariantArg0 value, in StringArg1 indent = "", in bool sort_keys = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.print, _godot_object, value, indent, sort_keys);
	}
	/**
	Parses a JSON encoded string and returns a $(D JSONParseResult) containing the result.
	*/
	Ref!JSONParseResult parse(StringArg0)(in StringArg0 json)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(JSONParseResult)(_classBinding.parse, _godot_object, json);
	}
}
/// Returns: the JSONSingleton
@property @nogc nothrow pragma(inline, true)
JSONSingleton JSON()
{
	checkClassBinding!JSONSingleton();
	return JSONSingleton(JSONSingleton._classBinding._singleton);
}
