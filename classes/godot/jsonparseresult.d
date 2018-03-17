/**
Data class wrapper for decoded JSON.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.jsonparseresult;
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
Data class wrapper for decoded JSON.

Returned by $(D JSON.parse), `JSONParseResult` contains decoded JSON or error information if JSON source not successfully parsed. You can check if JSON source was successfully parsed with `if json_result.error == OK`.
*/
@GodotBaseClass struct JSONParseResult
{
	static immutable string _GODOT_internal_name = "JSONParseResult";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in JSONParseResult other) const { return _godot_object.ptr is other._godot_object.ptr; }
	JSONParseResult opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static JSONParseResult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("JSONParseResult");
		if(constructor is null) return typeof(this).init;
		return cast(JSONParseResult)(constructor());
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_get_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_error") = _GODOT_get_error;
	/**
	
	*/
	GodotError getError() const
	{
		_GODOT_get_error.bind("JSONParseResult", "get_error");
		return ptrcall!(GodotError)(_GODOT_get_error, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_error_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_error_string") = _GODOT_get_error_string;
	/**
	
	*/
	String getErrorString() const
	{
		_GODOT_get_error_string.bind("JSONParseResult", "get_error_string");
		return ptrcall!(String)(_GODOT_get_error_string, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_error_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_error_line") = _GODOT_get_error_line;
	/**
	
	*/
	long getErrorLine() const
	{
		_GODOT_get_error_line.bind("JSONParseResult", "get_error_line");
		return ptrcall!(long)(_GODOT_get_error_line, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_result;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_result") = _GODOT_get_result;
	/**
	
	*/
	Variant getResult() const
	{
		_GODOT_get_result.bind("JSONParseResult", "get_result");
		return ptrcall!(Variant)(_GODOT_get_result, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_error") = _GODOT_set_error;
	/**
	
	*/
	void setError(in long error)
	{
		_GODOT_set_error.bind("JSONParseResult", "set_error");
		ptrcall!(void)(_GODOT_set_error, _godot_object, error);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_error_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_error_string") = _GODOT_set_error_string;
	/**
	
	*/
	void setErrorString(StringArg0)(in StringArg0 error_string)
	{
		_GODOT_set_error_string.bind("JSONParseResult", "set_error_string");
		ptrcall!(void)(_GODOT_set_error_string, _godot_object, error_string);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_error_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_error_line") = _GODOT_set_error_line;
	/**
	
	*/
	void setErrorLine(in long error_line)
	{
		_GODOT_set_error_line.bind("JSONParseResult", "set_error_line");
		ptrcall!(void)(_GODOT_set_error_line, _godot_object, error_line);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_set_result;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_result") = _GODOT_set_result;
	/**
	
	*/
	void setResult(VariantArg0)(in VariantArg0 result)
	{
		_GODOT_set_result.bind("JSONParseResult", "set_result");
		ptrcall!(void)(_GODOT_set_result, _godot_object, result);
	}
	/**
	The error type if JSON source was not successfully parsed. See $(D @GlobalScope) ERR_* constants.
	*/
	@property GodotError error()
	{
		return getError();
	}
	/// ditto
	@property void error(long v)
	{
		setError(v);
	}
	/**
	The error message if JSON source was not successfully parsed. See $(D @GlobalScope) ERR_* constants.
	*/
	@property String errorString()
	{
		return getErrorString();
	}
	/// ditto
	@property void errorString(String v)
	{
		setErrorString(v);
	}
	/**
	The line number where the error occurred if JSON source was not successfully parsed.
	*/
	@property long errorLine()
	{
		return getErrorLine();
	}
	/// ditto
	@property void errorLine(long v)
	{
		setErrorLine(v);
	}
	/**
	A $(D Variant) containing the parsed JSON. Use typeof() to check if it is what you expect. For example, if JSON source starts with curly braces (`{}`) a $(D Dictionary) will be returned, if JSON source starts with braces (`$(D ]`) an [Array) will be returned.
	$(D i)Be aware that the JSON specification does not define integer or float types, but only a number type. Therefore, parsing a JSON text will convert all numerical values to float types.
	Note that JSON objects do not preserve key order like Godot dictionaries, thus you should not rely on keys being in a certain order if a dictionary is constructed from JSON. In contrast, JSON arrays retain the order of their elements:$(D /i)
	---
	var p = JSON.parse('$(D "hello", "world", "!")')
	if typeof(p.result) == TYPE_ARRAY:
	    print(p.result$(D 0)) # prints 'hello'
	else:
	    print("unexpected results")
	---
	*/
	@property Variant result()
	{
		return getResult();
	}
	/// ditto
	@property void result(Variant v)
	{
		setResult(v);
	}
}
