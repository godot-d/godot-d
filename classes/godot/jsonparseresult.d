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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
Data class wrapper for decoded JSON.

Returned by $(D JSON.parse), $(D JSONParseResult) contains the decoded JSON or error information if the JSON source wasn't successfully parsed. You can check if the JSON source was successfully parsed with `if json_result.error == OK`.
*/
@GodotBaseClass struct JSONParseResult
{
	package(godot) enum string _GODOT_internal_name = "JSONParseResult";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_error") GodotMethod!(GodotError) getError;
		@GodotName("get_error_line") GodotMethod!(long) getErrorLine;
		@GodotName("get_error_string") GodotMethod!(String) getErrorString;
		@GodotName("get_result") GodotMethod!(Variant) getResult;
		@GodotName("set_error") GodotMethod!(void, long) setError;
		@GodotName("set_error_line") GodotMethod!(void, long) setErrorLine;
		@GodotName("set_error_string") GodotMethod!(void, String) setErrorString;
		@GodotName("set_result") GodotMethod!(void, Variant) setResult;
	}
	/// 
	pragma(inline, true) bool opEquals(in JSONParseResult other) const
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
	/// Construct a new instance of JSONParseResult.
	/// Note: use `memnew!JSONParseResult` instead.
	static JSONParseResult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("JSONParseResult");
		if(constructor is null) return typeof(this).init;
		return cast(JSONParseResult)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	GodotError getError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.getError, _godot_object);
	}
	/**
	
	*/
	long getErrorLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getErrorLine, _godot_object);
	}
	/**
	
	*/
	String getErrorString() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getErrorString, _godot_object);
	}
	/**
	
	*/
	Variant getResult() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getResult, _godot_object);
	}
	/**
	
	*/
	void setError(in long error)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setError, _godot_object, error);
	}
	/**
	
	*/
	void setErrorLine(in long error_line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setErrorLine, _godot_object, error_line);
	}
	/**
	
	*/
	void setErrorString(in String error_string)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setErrorString, _godot_object, error_string);
	}
	/**
	
	*/
	void setResult(VariantArg0)(in VariantArg0 result)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setResult, _godot_object, result);
	}
	/**
	The error type if the JSON source was not successfully parsed. See the $(D error) constants.
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
	The line number where the error occurred if the JSON source was not successfully parsed.
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
	The error message if the JSON source was not successfully parsed. See the $(D error) constants.
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
	A $(D Variant) containing the parsed JSON. Use $(D @GDScript.typeof) or the `is` keyword to check if it is what you expect. For example, if the JSON source starts with curly braces (`{}`), a $(D Dictionary) will be returned. If the JSON source starts with brackets (`$(D ]`), an [Array) will be returned.
	$(B Note:) The JSON specification does not define integer or float types, but only a $(I number) type. Therefore, parsing a JSON text will convert all numerical values to $(D double) types.
	$(B Note:) JSON objects do not preserve key order like Godot dictionaries, thus, you should not rely on keys being in a certain order if a dictionary is constructed from JSON. In contrast, JSON arrays retain the order of their elements:
	
	
	var p = JSON.parse('$(D "hello", "world", "!")')
	if typeof(p.result) == TYPE_ARRAY:
	    print(p.result$(D 0)) # Prints "hello"
	else:
	    push_error("Unexpected results.")
	
	
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
