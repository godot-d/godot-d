/**
A helper to handle dictionaries which look like JSONRPC documents.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.jsonrpc;
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
/**
A helper to handle dictionaries which look like JSONRPC documents.

$(D url=https://www.jsonrpc.org/)JSON-RPC$(D /url) is a standard which wraps a method call in a $(D JSON) object. The object has a particular structure and identifies which method is called, the parameters to that function, and carries an ID to keep track of responses. This class implements that standard on top of $(D Dictionary); you will have to convert between a $(D Dictionary) and $(D JSON) with other functions.
*/
@GodotBaseClass struct JSONRPC
{
	package(godot) enum string _GODOT_internal_name = "JSONRPC";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("make_notification") GodotMethod!(Dictionary, String, Variant) makeNotification;
		@GodotName("make_request") GodotMethod!(Dictionary, String, Variant, Variant) makeRequest;
		@GodotName("make_response") GodotMethod!(Dictionary, Variant, Variant) makeResponse;
		@GodotName("make_response_error") GodotMethod!(Dictionary, long, String, Variant) makeResponseError;
		@GodotName("process_action") GodotMethod!(Variant, Variant, bool) processAction;
		@GodotName("process_string") GodotMethod!(String, String) processString;
		@GodotName("set_scope") GodotMethod!(void, String, GodotObject) setScope;
	}
	/// 
	pragma(inline, true) bool opEquals(in JSONRPC other) const
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
	/// Construct a new instance of JSONRPC.
	/// Note: use `memnew!JSONRPC` instead.
	static JSONRPC _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("JSONRPC");
		if(constructor is null) return typeof(this).init;
		return cast(JSONRPC)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ErrorCode : int
	{
		/**
		
		*/
		parseError = -32700,
		/**
		
		*/
		internalError = -32603,
		/**
		
		*/
		invalidParams = -32602,
		/**
		A method call was requested but no function of that name existed in the JSONRPC subclass.
		*/
		methodNotFound = -32601,
		/**
		
		*/
		invalidRequest = -32600,
	}
	/// 
	enum Constants : int
	{
		parseError = -32700,
		internalError = -32603,
		invalidParams = -32602,
		methodNotFound = -32601,
		invalidRequest = -32600,
	}
	/**
	Returns a dictionary in the form of a JSON-RPC notification. Notifications are one-shot messages which do not expect a response.
	- `method`: Name of the method being called.
	- `params`: An array or dictionary of parameters being passed to the method.
	*/
	Dictionary makeNotification(VariantArg1)(in String method, in VariantArg1 params)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.makeNotification, _godot_object, method, params);
	}
	/**
	Returns a dictionary in the form of a JSON-RPC request. Requests are sent to a server with the expectation of a response. The ID field is used for the server to specify which exact request it is responding to.
	- `method`: Name of the method being called.
	- `params`: An array or dictionary of parameters being passed to the method.
	- `id`: Uniquely identifies this request. The server is expected to send a response with the same ID.
	*/
	Dictionary makeRequest(VariantArg1, VariantArg2)(in String method, in VariantArg1 params, in VariantArg2 id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.makeRequest, _godot_object, method, params, id);
	}
	/**
	When a server has received and processed a request, it is expected to send a response. If you did not want a response then you need to have sent a Notification instead.
	- `result`: The return value of the function which was called.
	- `id`: The ID of the request this response is targeted to.
	*/
	Dictionary makeResponse(VariantArg0, VariantArg1)(in VariantArg0 result, in VariantArg1 id)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.makeResponse, _godot_object, result, id);
	}
	/**
	Creates a response which indicates a previous reply has failed in some way.
	- `code`: The error code corresponding to what kind of error this is. See the $(D errorcode) constants.
	- `message`: A custom message about this error.
	- `id`: The request this error is a response to.
	*/
	Dictionary makeResponseError(VariantArg2)(in long code, in String message, in VariantArg2 id = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.makeResponseError, _godot_object, code, message, id);
	}
	/**
	Given a Dictionary which takes the form of a JSON-RPC request: unpack the request and run it. Methods are resolved by looking at the field called "method" and looking for an equivalently named function in the JSONRPC object. If one is found that method is called.
	To add new supported methods extend the JSONRPC class and call $(D processAction) on your subclass.
	`action`: The action to be run, as a Dictionary in the form of a JSON-RPC request or notification.
	*/
	Variant processAction(VariantArg0)(in VariantArg0 action, in bool recurse = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.processAction, _godot_object, action, recurse);
	}
	/**
	
	*/
	String processString(in String action)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.processString, _godot_object, action);
	}
	/**
	
	*/
	void setScope(in String _scope, GodotObject target)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScope, _godot_object, _scope, target);
	}
}
