/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.httpclient;
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
import godot.streampeer;
/**

*/
@GodotBaseClass struct HTTPClient
{
	package(godot) enum string _GODOT_internal_name = "HTTPClient";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("close") GodotMethod!(void) close;
		@GodotName("connect_to_host") GodotMethod!(GodotError, String, long, bool, bool) connectToHost;
		@GodotName("get_connection") GodotMethod!(StreamPeer) getConnection;
		@GodotName("get_read_chunk_size") GodotMethod!(long) getReadChunkSize;
		@GodotName("get_response_body_length") GodotMethod!(long) getResponseBodyLength;
		@GodotName("get_response_code") GodotMethod!(long) getResponseCode;
		@GodotName("get_response_headers") GodotMethod!(PoolStringArray) getResponseHeaders;
		@GodotName("get_response_headers_as_dictionary") GodotMethod!(Dictionary) getResponseHeadersAsDictionary;
		@GodotName("get_status") GodotMethod!(HTTPClient.Status) getStatus;
		@GodotName("has_response") GodotMethod!(bool) hasResponse;
		@GodotName("is_blocking_mode_enabled") GodotMethod!(bool) isBlockingModeEnabled;
		@GodotName("is_response_chunked") GodotMethod!(bool) isResponseChunked;
		@GodotName("poll") GodotMethod!(GodotError) poll;
		@GodotName("query_string_from_dict") GodotMethod!(String, Dictionary) queryStringFromDict;
		@GodotName("read_response_body_chunk") GodotMethod!(PoolByteArray) readResponseBodyChunk;
		@GodotName("request") GodotMethod!(GodotError, long, String, PoolStringArray, String) request;
		@GodotName("request_raw") GodotMethod!(GodotError, long, String, PoolStringArray, PoolByteArray) requestRaw;
		@GodotName("set_blocking_mode") GodotMethod!(void, bool) setBlockingMode;
		@GodotName("set_connection") GodotMethod!(void, StreamPeer) setConnection;
		@GodotName("set_http_proxy") GodotMethod!(void, String, long) setHttpProxy;
		@GodotName("set_https_proxy") GodotMethod!(void, String, long) setHttpsProxy;
		@GodotName("set_read_chunk_size") GodotMethod!(void, long) setReadChunkSize;
	}
	/// 
	pragma(inline, true) bool opEquals(in HTTPClient other) const
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
	/// Construct a new instance of HTTPClient.
	/// Note: use `memnew!HTTPClient` instead.
	static HTTPClient _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("HTTPClient");
		if(constructor is null) return typeof(this).init;
		return cast(HTTPClient)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Status : int
	{
		/** */
		statusDisconnected = 0,
		/** */
		statusResolving = 1,
		/** */
		statusCantResolve = 2,
		/** */
		statusConnecting = 3,
		/** */
		statusCantConnect = 4,
		/** */
		statusConnected = 5,
		/** */
		statusRequesting = 6,
		/** */
		statusBody = 7,
		/** */
		statusConnectionError = 8,
		/** */
		statusSslHandshakeError = 9,
	}
	/// 
	enum Method : int
	{
		/** */
		methodGet = 0,
		/** */
		methodHead = 1,
		/** */
		methodPost = 2,
		/** */
		methodPut = 3,
		/** */
		methodDelete = 4,
		/** */
		methodOptions = 5,
		/** */
		methodTrace = 6,
		/** */
		methodConnect = 7,
		/** */
		methodPatch = 8,
		/** */
		methodMax = 9,
	}
	/// 
	enum ResponseCode : int
	{
		/** */
		responseContinue = 100,
		/** */
		responseSwitchingProtocols = 101,
		/** */
		responseProcessing = 102,
		/** */
		responseOk = 200,
		/** */
		responseCreated = 201,
		/** */
		responseAccepted = 202,
		/** */
		responseNonAuthoritativeInformation = 203,
		/** */
		responseNoContent = 204,
		/** */
		responseResetContent = 205,
		/** */
		responsePartialContent = 206,
		/** */
		responseMultiStatus = 207,
		/** */
		responseAlreadyReported = 208,
		/** */
		responseImUsed = 226,
		/** */
		responseMultipleChoices = 300,
		/** */
		responseMovedPermanently = 301,
		/** */
		responseFound = 302,
		/** */
		responseSeeOther = 303,
		/** */
		responseNotModified = 304,
		/** */
		responseUseProxy = 305,
		/** */
		responseSwitchProxy = 306,
		/** */
		responseTemporaryRedirect = 307,
		/** */
		responsePermanentRedirect = 308,
		/** */
		responseBadRequest = 400,
		/** */
		responseUnauthorized = 401,
		/** */
		responsePaymentRequired = 402,
		/** */
		responseForbidden = 403,
		/** */
		responseNotFound = 404,
		/** */
		responseMethodNotAllowed = 405,
		/** */
		responseNotAcceptable = 406,
		/** */
		responseProxyAuthenticationRequired = 407,
		/** */
		responseRequestTimeout = 408,
		/** */
		responseConflict = 409,
		/** */
		responseGone = 410,
		/** */
		responseLengthRequired = 411,
		/** */
		responsePreconditionFailed = 412,
		/** */
		responseRequestEntityTooLarge = 413,
		/** */
		responseRequestUriTooLong = 414,
		/** */
		responseUnsupportedMediaType = 415,
		/** */
		responseRequestedRangeNotSatisfiable = 416,
		/** */
		responseExpectationFailed = 417,
		/** */
		responseImATeapot = 418,
		/** */
		responseMisdirectedRequest = 421,
		/** */
		responseUnprocessableEntity = 422,
		/** */
		responseLocked = 423,
		/** */
		responseFailedDependency = 424,
		/** */
		responseUpgradeRequired = 426,
		/** */
		responsePreconditionRequired = 428,
		/** */
		responseTooManyRequests = 429,
		/** */
		responseRequestHeaderFieldsTooLarge = 431,
		/** */
		responseUnavailableForLegalReasons = 451,
		/** */
		responseInternalServerError = 500,
		/** */
		responseNotImplemented = 501,
		/** */
		responseBadGateway = 502,
		/** */
		responseServiceUnavailable = 503,
		/** */
		responseGatewayTimeout = 504,
		/** */
		responseHttpVersionNotSupported = 505,
		/** */
		responseVariantAlsoNegotiates = 506,
		/** */
		responseInsufficientStorage = 507,
		/** */
		responseLoopDetected = 508,
		/** */
		responseNotExtended = 510,
		/** */
		responseNetworkAuthRequired = 511,
	}
	/// 
	enum Constants : int
	{
		methodGet = 0,
		statusDisconnected = 0,
		methodHead = 1,
		statusResolving = 1,
		methodPost = 2,
		statusCantResolve = 2,
		methodPut = 3,
		statusConnecting = 3,
		statusCantConnect = 4,
		methodDelete = 4,
		statusConnected = 5,
		methodOptions = 5,
		statusRequesting = 6,
		methodTrace = 6,
		methodConnect = 7,
		statusBody = 7,
		methodPatch = 8,
		statusConnectionError = 8,
		methodMax = 9,
		statusSslHandshakeError = 9,
		responseContinue = 100,
		responseSwitchingProtocols = 101,
		responseProcessing = 102,
		responseOk = 200,
		responseCreated = 201,
		responseAccepted = 202,
		responseNonAuthoritativeInformation = 203,
		responseNoContent = 204,
		responseResetContent = 205,
		responsePartialContent = 206,
		responseMultiStatus = 207,
		responseAlreadyReported = 208,
		responseImUsed = 226,
		responseMultipleChoices = 300,
		responseMovedPermanently = 301,
		responseFound = 302,
		responseSeeOther = 303,
		responseNotModified = 304,
		responseUseProxy = 305,
		responseSwitchProxy = 306,
		responseTemporaryRedirect = 307,
		responsePermanentRedirect = 308,
		responseBadRequest = 400,
		responseUnauthorized = 401,
		responsePaymentRequired = 402,
		responseForbidden = 403,
		responseNotFound = 404,
		responseMethodNotAllowed = 405,
		responseNotAcceptable = 406,
		responseProxyAuthenticationRequired = 407,
		responseRequestTimeout = 408,
		responseConflict = 409,
		responseGone = 410,
		responseLengthRequired = 411,
		responsePreconditionFailed = 412,
		responseRequestEntityTooLarge = 413,
		responseRequestUriTooLong = 414,
		responseUnsupportedMediaType = 415,
		responseRequestedRangeNotSatisfiable = 416,
		responseExpectationFailed = 417,
		responseImATeapot = 418,
		responseMisdirectedRequest = 421,
		responseUnprocessableEntity = 422,
		responseLocked = 423,
		responseFailedDependency = 424,
		responseUpgradeRequired = 426,
		responsePreconditionRequired = 428,
		responseTooManyRequests = 429,
		responseRequestHeaderFieldsTooLarge = 431,
		responseUnavailableForLegalReasons = 451,
		responseInternalServerError = 500,
		responseNotImplemented = 501,
		responseBadGateway = 502,
		responseServiceUnavailable = 503,
		responseGatewayTimeout = 504,
		responseHttpVersionNotSupported = 505,
		responseVariantAlsoNegotiates = 506,
		responseInsufficientStorage = 507,
		responseLoopDetected = 508,
		responseNotExtended = 510,
		responseNetworkAuthRequired = 511,
	}
	/**
	
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object);
	}
	/**
	
	*/
	GodotError connectToHost(in String host, in long port = -1, in bool use_ssl = false, in bool verify_host = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.connectToHost, _godot_object, host, port, use_ssl, verify_host);
	}
	/**
	
	*/
	Ref!StreamPeer getConnection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeer)(GDNativeClassBinding.getConnection, _godot_object);
	}
	/**
	
	*/
	long getReadChunkSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getReadChunkSize, _godot_object);
	}
	/**
	
	*/
	long getResponseBodyLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getResponseBodyLength, _godot_object);
	}
	/**
	
	*/
	long getResponseCode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getResponseCode, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getResponseHeaders()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getResponseHeaders, _godot_object);
	}
	/**
	
	*/
	Dictionary getResponseHeadersAsDictionary()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getResponseHeadersAsDictionary, _godot_object);
	}
	/**
	
	*/
	HTTPClient.Status getStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(HTTPClient.Status)(GDNativeClassBinding.getStatus, _godot_object);
	}
	/**
	
	*/
	bool hasResponse() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasResponse, _godot_object);
	}
	/**
	
	*/
	bool isBlockingModeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBlockingModeEnabled, _godot_object);
	}
	/**
	
	*/
	bool isResponseChunked() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isResponseChunked, _godot_object);
	}
	/**
	
	*/
	GodotError poll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.poll, _godot_object);
	}
	/**
	
	*/
	String queryStringFromDict(in Dictionary fields)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.queryStringFromDict, _godot_object, fields);
	}
	/**
	
	*/
	PoolByteArray readResponseBodyChunk()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.readResponseBodyChunk, _godot_object);
	}
	/**
	
	*/
	GodotError request(in long method, in String url, in PoolStringArray headers, in String _body = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.request, _godot_object, method, url, headers, _body);
	}
	/**
	
	*/
	GodotError requestRaw(in long method, in String url, in PoolStringArray headers, in PoolByteArray _body)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.requestRaw, _godot_object, method, url, headers, _body);
	}
	/**
	
	*/
	void setBlockingMode(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlockingMode, _godot_object, enabled);
	}
	/**
	
	*/
	void setConnection(StreamPeer connection)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConnection, _godot_object, connection);
	}
	/**
	
	*/
	void setHttpProxy(in String host, in long port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHttpProxy, _godot_object, host, port);
	}
	/**
	
	*/
	void setHttpsProxy(in String host, in long port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHttpsProxy, _godot_object, host, port);
	}
	/**
	
	*/
	void setReadChunkSize(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setReadChunkSize, _godot_object, bytes);
	}
	/**
	
	*/
	@property bool blockingModeEnabled()
	{
		return isBlockingModeEnabled();
	}
	/// ditto
	@property void blockingModeEnabled(bool v)
	{
		setBlockingMode(v);
	}
	/**
	
	*/
	@property StreamPeer connection()
	{
		return getConnection();
	}
	/// ditto
	@property void connection(StreamPeer v)
	{
		setConnection(v);
	}
	/**
	
	*/
	@property long readChunkSize()
	{
		return getReadChunkSize();
	}
	/// ditto
	@property void readChunkSize(long v)
	{
		setReadChunkSize(v);
	}
}
