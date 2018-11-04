/**
Hyper-text transfer protocol client.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.httpclient;
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
import godot.streampeer;
/**
Hyper-text transfer protocol client.

Hyper-text transfer protocol client (sometimes called "User Agent"). Used to make HTTP requests to download web content, upload files and other data or to communicate with various services, among other use cases.
Note that this client only needs to connect to a host once (see $(D connectToHost)) to send multiple requests. Because of this, methods that take URLs usually take just the part after the host instead of the full URL, as the client is already connected to a host. See $(D request) for a full example and to get started.
A `HTTPClient` should be reused between multiple requests or to connect to different hosts instead of creating one client per request. Supports SSL and SSL server certificate verification. HTTP status codes in the 2xx range indicate success, 3xx redirection (i.e. "try again, but over here"), 4xx something was wrong with the request, and 5xx something went wrong on the server's side.
For more information on HTTP, see https://developer.mozilla.org/en-US/docs/Web/HTTP (or read RFC 2616 to get it straight from the source: https://tools.ietf.org/html/rfc2616).
*/
@GodotBaseClass struct HTTPClient
{
	enum string _GODOT_internal_name = "HTTPClient";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("connect_to_host") GodotMethod!(GodotError, String, long, bool, bool) connectToHost;
		@GodotName("set_connection") GodotMethod!(void, StreamPeer) setConnection;
		@GodotName("get_connection") GodotMethod!(StreamPeer) getConnection;
		@GodotName("request_raw") GodotMethod!(GodotError, long, String, PoolStringArray, PoolByteArray) requestRaw;
		@GodotName("request") GodotMethod!(GodotError, long, String, PoolStringArray, String) request;
		@GodotName("close") GodotMethod!(void) close;
		@GodotName("has_response") GodotMethod!(bool) hasResponse;
		@GodotName("is_response_chunked") GodotMethod!(bool) isResponseChunked;
		@GodotName("get_response_code") GodotMethod!(long) getResponseCode;
		@GodotName("get_response_headers") GodotMethod!(PoolStringArray) getResponseHeaders;
		@GodotName("get_response_headers_as_dictionary") GodotMethod!(Dictionary) getResponseHeadersAsDictionary;
		@GodotName("get_response_body_length") GodotMethod!(long) getResponseBodyLength;
		@GodotName("read_response_body_chunk") GodotMethod!(PoolByteArray) readResponseBodyChunk;
		@GodotName("set_read_chunk_size") GodotMethod!(void, long) setReadChunkSize;
		@GodotName("set_blocking_mode") GodotMethod!(void, bool) setBlockingMode;
		@GodotName("is_blocking_mode_enabled") GodotMethod!(bool) isBlockingModeEnabled;
		@GodotName("get_status") GodotMethod!(HTTPClient.Status) getStatus;
		@GodotName("poll") GodotMethod!(GodotError) poll;
		@GodotName("query_string_from_dict") GodotMethod!(String, Dictionary) queryStringFromDict;
	}
	bool opEquals(in HTTPClient other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HTTPClient opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		Status: Disconnected from the server.
		*/
		statusDisconnected = 0,
		/**
		Status: Currently resolving the hostname for the given URL into an IP.
		*/
		statusResolving = 1,
		/**
		Status: DNS failure: Can't resolve the hostname for the given URL.
		*/
		statusCantResolve = 2,
		/**
		Status: Currently connecting to server.
		*/
		statusConnecting = 3,
		/**
		Status: Can't connect to the server.
		*/
		statusCantConnect = 4,
		/**
		Status: Connection established.
		*/
		statusConnected = 5,
		/**
		Status: Currently sending request.
		*/
		statusRequesting = 6,
		/**
		Status: HTTP body received.
		*/
		statusBody = 7,
		/**
		Status: Error in HTTP connection.
		*/
		statusConnectionError = 8,
		/**
		Status: Error in SSL handshake.
		*/
		statusSslHandshakeError = 9,
	}
	/// 
	enum Method : int
	{
		/**
		HTTP GET method. The GET method requests a representation of the specified resource. Requests using GET should only retrieve data.
		*/
		methodGet = 0,
		/**
		HTTP HEAD method. The HEAD method asks for a response identical to that of a GET request, but without the response body. This is useful to request metadata like HTTP headers or to check if a resource exists.
		*/
		methodHead = 1,
		/**
		HTTP POST method. The POST method is used to submit an entity to the specified resource, often causing a change in state or side effects on the server. This is often used for forms and submitting data or uploading files.
		*/
		methodPost = 2,
		/**
		HTTP PUT method. The PUT method asks to replace all current representations of the target resource with the request payload. (You can think of `POST` as "create or update" and `PUT` as "update", although many services tend to not make a clear distinction or change their meaning).
		*/
		methodPut = 3,
		/**
		HTTP DELETE method. The DELETE method requests to delete the specified resource.
		*/
		methodDelete = 4,
		/**
		HTTP OPTIONS method. The OPTIONS method asks for a description of the communication options for the target resource. Rarely used.
		*/
		methodOptions = 5,
		/**
		HTTP TRACE method. The TRACE method performs a message loop-back test along the path to the target resource. Returns the entire HTTP request received in the response body. Rarely used.
		*/
		methodTrace = 6,
		/**
		HTTP CONNECT method. The CONNECT method establishes a tunnel to the server identified by the target resource. Rarely used.
		*/
		methodConnect = 7,
		/**
		HTTP PATCH method. The PATCH method is used to apply partial modifications to a resource.
		*/
		methodPatch = 8,
		/**
		Marker for end of `METHOD_*` enum. Not used.
		*/
		methodMax = 9,
	}
	/// 
	enum ResponseCode : int
	{
		/**
		HTTP status code `100 Continue`. Interim response that indicates everything so far is OK and that the client should continue with the request (or ignore this status if already finished).
		*/
		responseContinue = 100,
		/**
		HTTP status code `101 Switching Protocol`. Sent in response to an `Upgrade` request header by the client. Indicates the protocol the server is switching to.
		*/
		responseSwitchingProtocols = 101,
		/**
		HTTP status code `102 Processing` (WebDAV). Indicates that the server has received and is processing the request, but no response is available yet.
		*/
		responseProcessing = 102,
		/**
		HTTP status code `200 OK`. The request has succeeded. Default response for successful requests. Meaning varies depending on the request. GET: The resource has been fetched and is transmitted in the message body. HEAD: The entity headers are in the message body. POST: The resource describing the result of the action is transmitted in the message body. TRACE: The message body contains the request message as received by the server.
		*/
		responseOk = 200,
		/**
		HTTP status code `201 Created`. The request has succeeded and a new resource has been created as a result of it. This is typically the response sent after a PUT request.
		*/
		responseCreated = 201,
		/**
		HTTP status code `202 Accepted`. The request has been received but not yet acted upon. It is non-committal, meaning that there is no way in HTTP to later send an asynchronous response indicating the outcome of processing the request. It is intended for cases where another process or server handles the request, or for batch processing.
		*/
		responseAccepted = 202,
		/**
		HTTP status code `203 Non-Authoritative Information`. This response code means returned meta-information set is not exact set as available from the origin server, but collected from a local or a third party copy. Except this condition, 200 OK response should be preferred instead of this response.
		*/
		responseNonAuthoritativeInformation = 203,
		/**
		HTTP status code `204 No Content`. There is no content to send for this request, but the headers may be useful. The user-agent may update its cached headers for this resource with the new ones.
		*/
		responseNoContent = 204,
		/**
		HTTP status code `205 Reset Content`. The server has fulfilled the request and desires that the client resets the "document view" that caused the request to be sent to its original state as received from the origin server.
		*/
		responseResetContent = 205,
		/**
		HTTP status code `206 Partial Content`. This response code is used because of a range header sent by the client to separate download into multiple streams.
		*/
		responsePartialContent = 206,
		/**
		HTTP status code `207 Multi-Status` (WebDAV). A Multi-Status response conveys information about multiple resources in situations where multiple status codes might be appropriate.
		*/
		responseMultiStatus = 207,
		/**
		HTTP status code `208 Already Reported` (WebDAV). Used inside a DAV: propstat response element to avoid enumerating the internal members of multiple bindings to the same collection repeatedly.
		*/
		responseAlreadyReported = 208,
		/**
		HTTP status code `226 IM Used` (WebDAV). The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.
		*/
		responseImUsed = 226,
		/**
		HTTP status code `300 Multiple Choice`. The request has more than one possible responses and there is no standardized way to choose one of the responses. User-agent or user should choose one of them.
		*/
		responseMultipleChoices = 300,
		/**
		HTTP status code `301 Moved Permanently`. Redirection. This response code means the URI of requested resource has been changed. The new URI is usually included in the response.
		*/
		responseMovedPermanently = 301,
		/**
		HTTP status code `302 Found`. Temporary redirection. This response code means the URI of requested resource has been changed temporarily. New changes in the URI might be made in the future. Therefore, this same URI should be used by the client in future requests.
		*/
		responseFound = 302,
		/**
		HTTP status code `303 See Other`. The server is redirecting the user agent to a different resource, as indicated by a URI in the Location header field, which is intended to provide an indirect response to the original request.
		*/
		responseSeeOther = 303,
		/**
		HTTP status code `304 Not Modified`. A conditional GET or HEAD request has been received and would have resulted in a 200 OK response if it were not for the fact that the condition evaluated to false.
		*/
		responseNotModified = 304,
		/**
		HTTP status code `305 Use Proxy`. Deprecated. Do not use.
		*/
		responseUseProxy = 305,
		/**
		HTTP status code `306 Switch Proxy`. Deprecated. Do not use.
		*/
		responseSwitchProxy = 306,
		/**
		HTTP status code `307 Temporary Redirect`. The target resource resides temporarily under a different URI and the user agent MUST NOT change the request method if it performs an automatic redirection to that URI.
		*/
		responseTemporaryRedirect = 307,
		/**
		HTTP status code `308 Permanent Redirect`. The target resource has been assigned a new permanent URI and any future references to this resource ought to use one of the enclosed URIs.
		*/
		responsePermanentRedirect = 308,
		/**
		HTTP status code `400 Bad Request`. The request was invalid. The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, invalid request contents, or deceptive request routing).
		*/
		responseBadRequest = 400,
		/**
		HTTP status code `401 Unauthorized`. Credentials required. The request has not been applied because it lacks valid authentication credentials for the target resource.
		*/
		responseUnauthorized = 401,
		/**
		HTTP status code `402 Payment Required`. This response code is reserved for future use. Initial aim for creating this code was using it for digital payment systems, however this is not currently used.
		*/
		responsePaymentRequired = 402,
		/**
		HTTP status code `403 Forbidden`. The client does not have access rights to the content, i.e. they are unauthorized, so server is rejecting to give proper response. Unlike `401`, the client's identity is known to the server.
		*/
		responseForbidden = 403,
		/**
		HTTP status code `404 Not Found`. The server can not find requested resource. Either the URL is not recognized or the endpoint is valid but the resource itself does not exist. May also be sent instead of 403 to hide existence of a resource if the client is not authorized.
		*/
		responseNotFound = 404,
		/**
		HTTP status code `405 Method Not Allowed`. The request's HTTP method is known by the server but has been disabled and cannot be used. For example, an API may forbid DELETE-ing a resource. The two mandatory methods, GET and HEAD, must never be disabled and should not return this error code.
		*/
		responseMethodNotAllowed = 405,
		/**
		HTTP status code `406 Not Acceptable`. The target resource does not have a current representation that would be acceptable to the user agent, according to the proactive negotiation header fields received in the request. Used when negotiation content.
		*/
		responseNotAcceptable = 406,
		/**
		HTTP status code `407 Proxy Authentication Required`. Similar to 401 Unauthorized, but it indicates that the client needs to authenticate itself in order to use a proxy.
		*/
		responseProxyAuthenticationRequired = 407,
		/**
		HTTP status code `408 Request Timeout`. The server did not receive a complete request message within the time that it was prepared to wait.
		*/
		responseRequestTimeout = 408,
		/**
		HTTP status code `409 Conflict`. The request could not be completed due to a conflict with the current state of the target resource. This code is used in situations where the user might be able to resolve the conflict and resubmit the request.
		*/
		responseConflict = 409,
		/**
		HTTP status code `410 Gone`. The target resource is no longer available at the origin server and this condition is likely permanent.
		*/
		responseGone = 410,
		/**
		HTTP status code `411 Length Required`. The server refuses to accept the request without a defined Content-Length header.
		*/
		responseLengthRequired = 411,
		/**
		HTTP status code `412 Precondition Failed`. One or more conditions given in the request header fields evaluated to false when tested on the server.
		*/
		responsePreconditionFailed = 412,
		/**
		HTTP status code `413 Entity Too Large`. The server is refusing to process a request because the request payload is larger than the server is willing or able to process.
		*/
		responseRequestEntityTooLarge = 413,
		/**
		HTTP status code `414 Request-URI Too Long`. The server is refusing to service the request because the request-target is longer than the server is willing to interpret.
		*/
		responseRequestUriTooLong = 414,
		/**
		HTTP status code `415 Unsupported Media Type`. The origin server is refusing to service the request because the payload is in a format not supported by this method on the target resource.
		*/
		responseUnsupportedMediaType = 415,
		/**
		HTTP status code `416 Requested Range Not Satisfiable`. None of the ranges in the request's Range header field overlap the current extent of the selected resource or the set of ranges requested has been rejected due to invalid ranges or an excessive request of small or overlapping ranges.
		*/
		responseRequestedRangeNotSatisfiable = 416,
		/**
		HTTP status code `417 Expectation Failed`. The expectation given in the request's Expect header field could not be met by at least one of the inbound servers.
		*/
		responseExpectationFailed = 417,
		/**
		HTTP status code `418 I'm A Teapot`. Any attempt to brew coffee with a teapot should result in the error code "418 I'm a teapot". The resulting entity body MAY be short and stout.
		*/
		responseImATeapot = 418,
		/**
		HTTP status code `421 Misdirected Request`. The request was directed at a server that is not able to produce a response. This can be sent by a server that is not configured to produce responses for the combination of scheme and authority that are included in the request URI.
		*/
		responseMisdirectedRequest = 421,
		/**
		HTTP status code `422 Unprocessable Entity` (WebDAV). The server understands the content type of the request entity (hence a 415 Unsupported Media Type status code is inappropriate), and the syntax of the request entity is correct (thus a 400 Bad Request status code is inappropriate) but was unable to process the contained instructions.
		*/
		responseUnprocessableEntity = 422,
		/**
		HTTP status code `423 Locked` (WebDAV). The source or destination resource of a method is locked.
		*/
		responseLocked = 423,
		/**
		HTTP status code `424 Failed Dependency` (WebDAV). The method could not be performed on the resource because the requested action depended on another action and that action failed.
		*/
		responseFailedDependency = 424,
		/**
		HTTP status code `426 Upgrade Required`. The server refuses to perform the request using the current protocol but might be willing to do so after the client upgrades to a different protocol.
		*/
		responseUpgradeRequired = 426,
		/**
		HTTP status code `428 Precondition Required`. The origin server requires the request to be conditional.
		*/
		responsePreconditionRequired = 428,
		/**
		HTTP status code `429 Too Many Requests`. The user has sent too many requests in a given amount of time (see "rate limiting"). Back off and increase time between requests or try again later.
		*/
		responseTooManyRequests = 429,
		/**
		HTTP status code `431 Request Header Fields Too Large`. The server is unwilling to process the request because its header fields are too large. The request MAY be resubmitted after reducing the size of the request header fields.
		*/
		responseRequestHeaderFieldsTooLarge = 431,
		/**
		HTTP status code `451 Response Unavailable For Legal Reasons`. The server is denying access to the resource as a consequence of a legal demand.
		*/
		responseUnavailableForLegalReasons = 451,
		/**
		HTTP status code `500 Internal Server Error`. The server encountered an unexpected condition that prevented it from fulfilling the request.
		*/
		responseInternalServerError = 500,
		/**
		HTTP status code `501 Not Implemented`. The server does not support the functionality required to fulfill the request.
		*/
		responseNotImplemented = 501,
		/**
		HTTP status code `502 Bad Gateway`. The server, while acting as a gateway or proxy, received an invalid response from an inbound server it accessed while attempting to fulfill the request. Usually returned by load balancers or proxies.
		*/
		responseBadGateway = 502,
		/**
		HTTP status code `503 Service Unavailable`. The server is currently unable to handle the request due to a temporary overload or scheduled maintenance, which will likely be alleviated after some delay. Try again later.
		*/
		responseServiceUnavailable = 503,
		/**
		HTTP status code `504 Gateway Timeout`. The server, while acting as a gateway or proxy, did not receive a timely response from an upstream server it needed to access in order to complete the request. Usually returned by load balancers or proxies.
		*/
		responseGatewayTimeout = 504,
		/**
		HTTP status code `505 HTTP Version Not Supported`. The server does not support, or refuses to support, the major version of HTTP that was used in the request message.
		*/
		responseHttpVersionNotSupported = 505,
		/**
		HTTP status code `506 Variant Also Negotiates`. The server has an internal configuration error: the chosen variant resource is configured to engage in transparent content negotiation itself, and is therefore not a proper end point in the negotiation process.
		*/
		responseVariantAlsoNegotiates = 506,
		/**
		HTTP status code `507 Insufficient Storage`. The method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request.
		*/
		responseInsufficientStorage = 507,
		/**
		HTTP status code `508 Loop Detected`. The server terminated an operation because it encountered an infinite loop while processing a request with "Depth: infinity". This status indicates that the entire operation failed.
		*/
		responseLoopDetected = 508,
		/**
		HTTP status code `510 Not Extended`. The policy for accessing the resource has not been met in the request. The server should send back all the information necessary for the client to issue an extended request.
		*/
		responseNotExtended = 510,
		/**
		HTTP status code `511 Network Authentication Required`. The client needs to authenticate to gain network access.
		*/
		responseNetworkAuthRequired = 511,
	}
	/// 
	enum Constants : int
	{
		methodGet = 0,
		statusDisconnected = 0,
		methodHead = 1,
		statusResolving = 1,
		statusCantResolve = 2,
		methodPost = 2,
		methodPut = 3,
		statusConnecting = 3,
		statusCantConnect = 4,
		methodDelete = 4,
		methodOptions = 5,
		statusConnected = 5,
		methodTrace = 6,
		statusRequesting = 6,
		methodConnect = 7,
		statusBody = 7,
		methodPatch = 8,
		statusConnectionError = 8,
		statusSslHandshakeError = 9,
		methodMax = 9,
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
	Connect to a host. This needs to be done before any requests are sent.
	The host should not have http:// prepended but will strip the protocol identifier if provided.
	If no `port` is specified (or `-1` is used), it is automatically set to 80 for HTTP and 443 for HTTPS (if `use_ssl` is enabled).
	`verify_host` will check the SSL identity of the host if set to `true`.
	*/
	GodotError connectToHost(in String host, in long port = -1, in bool use_ssl = false, in bool verify_host = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.connectToHost, _godot_object, host, port, use_ssl, verify_host);
	}
	/**
	
	*/
	void setConnection(StreamPeer connection)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConnection, _godot_object, connection);
	}
	/**
	
	*/
	Ref!StreamPeer getConnection() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StreamPeer)(_classBinding.getConnection, _godot_object);
	}
	/**
	Sends a raw request to the connected host. The URL parameter is just the part after the host, so for `http://somehost.com/index.php`, it is `index.php`.
	Headers are HTTP request headers. For available HTTP methods, see `METHOD_*`.
	Sends the body data raw, as a byte array and does not encode it in any way.
	*/
	GodotError requestRaw(in long method, in String url, in PoolStringArray headers, in PoolByteArray _body)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.requestRaw, _godot_object, method, url, headers, _body);
	}
	/**
	Sends a request to the connected host. The URL parameter is just the part after the host, so for `http://somehost.com/index.php`, it is `index.php`.
	Headers are HTTP request headers. For available HTTP methods, see `METHOD_*`.
	To create a POST request with query strings to push to the server, do:
	
	
	var fields = {"username" : "user", "password" : "pass"}
	var queryString = httpClient.query_string_from_dict(fields)
	var headers = $(D "Content-Type: application/x-www-form-urlencoded", "Content-Length: " + str(queryString.length()))
	var result = httpClient.request(httpClient.METHOD_POST, "index.php", headers, queryString)
	
	
	*/
	GodotError request(in long method, in String url, in PoolStringArray headers, in String _body = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.request, _godot_object, method, url, headers, _body);
	}
	/**
	Closes the current connection, allowing reuse of this `HTTPClient`.
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.close, _godot_object);
	}
	/**
	If `true` this `HTTPClient` has a response available.
	*/
	bool hasResponse() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasResponse, _godot_object);
	}
	/**
	If `true` this `HTTPClient` has a response that is chunked.
	*/
	bool isResponseChunked() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isResponseChunked, _godot_object);
	}
	/**
	Returns the response's HTTP status code.
	*/
	long getResponseCode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getResponseCode, _godot_object);
	}
	/**
	Returns the response headers.
	*/
	PoolStringArray getResponseHeaders()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getResponseHeaders, _godot_object);
	}
	/**
	Returns all response headers as dictionary where the case-sensitivity of the keys and values is kept like the server delivers it. A value is a simple String, this string can have more than one value where "; " is used as separator.
	Structure: ("key":"value1; value2")
	Example: (content-length:12), (Content-Type:application/json; charset=UTF-8)
	*/
	Dictionary getResponseHeadersAsDictionary()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getResponseHeadersAsDictionary, _godot_object);
	}
	/**
	Returns the response's body length.
	*/
	long getResponseBodyLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getResponseBodyLength, _godot_object);
	}
	/**
	Reads one chunk from the response.
	*/
	PoolByteArray readResponseBodyChunk()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.readResponseBodyChunk, _godot_object);
	}
	/**
	Sets the size of the buffer used and maximum bytes to read per iteration. see $(D readResponseBodyChunk)
	*/
	void setReadChunkSize(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setReadChunkSize, _godot_object, bytes);
	}
	/**
	
	*/
	void setBlockingMode(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlockingMode, _godot_object, enabled);
	}
	/**
	
	*/
	bool isBlockingModeEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBlockingModeEnabled, _godot_object);
	}
	/**
	Returns a STATUS_* enum constant. Need to call $(D poll) in order to get status updates.
	*/
	HTTPClient.Status getStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(HTTPClient.Status)(_classBinding.getStatus, _godot_object);
	}
	/**
	This needs to be called in order to have any request processed. Check results with $(D getStatus)
	*/
	GodotError poll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.poll, _godot_object);
	}
	/**
	Generates a GET/POST application/x-www-form-urlencoded style query string from a provided dictionary, e.g.:
	
	
	var fields = {"username": "user", "password": "pass"}
	String queryString = httpClient.query_string_from_dict(fields)
	returns:= "username=user&amp;password=pass"
	
	
	Furthermore, if a key has a null value, only the key itself is added, without equal sign and value. If the value is an array, for each value in it a pair with the same key is added.
	
	
	var fields = {"single": 123, "not_valued": null, "multiple": $(D 22, 33, 44)}
	String queryString = httpClient.query_string_from_dict(fields)
	returns:= "single=123&amp;not_valued&amp;multiple=22&amp;multiple=33&amp;multiple=44"
	
	
	*/
	String queryStringFromDict(in Dictionary fields)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.queryStringFromDict, _godot_object, fields);
	}
	/**
	If `true`, execution will block until all data is read from the response.
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
	The connection to use for this client.
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
}
