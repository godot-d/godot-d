/**
A node with the ability to send HTTP(S) requests.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.httprequest;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.httpclient;
/**
A node with the ability to send HTTP(S) requests.

A node with the ability to send HTTP requests. Uses $(D HTTPClient) internally.
Can be used to make HTTP requests, i.e. download or upload files or web content via HTTP.
$(B Example of contacting a REST API and printing one of its returned fields:)


func _ready():
    # Create an HTTP request node and connect its completion signal.
    var http_request = HTTPRequest.new()
    add_child(http_request)
    http_request.connect("request_completed", self, "_http_request_completed")

    # Perform a GET request. The URL below returns JSON as of writing.
    var error = http_request.request("https://httpbin.org/get")
    if error != OK:
        push_error("An error occurred in the HTTP request.")

    # Perform a POST request. The URL below returns JSON as of writing.
    # Note: Don't make simultaneous requests using a single HTTPRequest node.
    # The snippet below is provided for reference only.
    var body = {"name": "Godette"}
    error = http_request.request("https://httpbin.org/post", [], true, HTTPClient.METHOD_POST, body)
    if error != OK:
        push_error("An error occurred in the HTTP request.")


# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
    var response = parse_json(body.get_string_from_utf8())

    # Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
    print(response.headers$(D "User-Agent"))


$(B Example of loading and displaying an image using HTTPRequest:)


func _ready():
    # Create an HTTP request node and connect its completion signal.
    var http_request = HTTPRequest.new()
    add_child(http_request)
    http_request.connect("request_completed", self, "_http_request_completed")

    # Perform the HTTP request. The URL below returns a PNG image as of writing.
    var error = http_request.request("https://via.placeholder.com/512")
    if error != OK:
        push_error("An error occurred in the HTTP request.")


# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
    var image = Image.new()
    var error = image.load_png_from_buffer(body)
    if error != OK:
        push_error("Couldn't load the image.")

    var texture = ImageTexture.new()
    texture.create_from_image(image)

    # Display the image in a TextureRect node.
    var texture_rect = TextureRect.new()
    add_child(texture_rect)
    texture_rect.texture = texture


$(B Note:) When performing HTTP requests from a project exported to HTML5, keep in mind the remote server may not allow requests from foreign origins due to $(D url=https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)CORS$(D /url). If you host the server in question, you should modify its backend to allow requests from foreign origins by adding the `Access-Control-Allow-Origin: *` HTTP header.
$(B Note:) SSL/TLS support is currently limited to TLS 1.0, TLS 1.1, and TLS 1.2. Attempting to connect to a TLS 1.3-only server will return an error.
*/
@GodotBaseClass struct HTTPRequest
{
	package(godot) enum string _GODOT_internal_name = "HTTPRequest";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_redirect_request") GodotMethod!(void, String) _redirectRequest;
		@GodotName("_request_done") GodotMethod!(void, long, long, PoolStringArray, PoolByteArray) _requestDone;
		@GodotName("_timeout") GodotMethod!(void) _timeout;
		@GodotName("cancel_request") GodotMethod!(void) cancelRequest;
		@GodotName("get_body_size") GodotMethod!(long) getBodySize;
		@GodotName("get_body_size_limit") GodotMethod!(long) getBodySizeLimit;
		@GodotName("get_download_chunk_size") GodotMethod!(long) getDownloadChunkSize;
		@GodotName("get_download_file") GodotMethod!(String) getDownloadFile;
		@GodotName("get_downloaded_bytes") GodotMethod!(long) getDownloadedBytes;
		@GodotName("get_http_client_status") GodotMethod!(HTTPClient.Status) getHttpClientStatus;
		@GodotName("get_max_redirects") GodotMethod!(long) getMaxRedirects;
		@GodotName("get_timeout") GodotMethod!(long) getTimeout;
		@GodotName("is_using_threads") GodotMethod!(bool) isUsingThreads;
		@GodotName("request") GodotMethod!(GodotError, String, PoolStringArray, bool, long, String) request;
		@GodotName("set_body_size_limit") GodotMethod!(void, long) setBodySizeLimit;
		@GodotName("set_download_chunk_size") GodotMethod!(void, long) setDownloadChunkSize;
		@GodotName("set_download_file") GodotMethod!(void, String) setDownloadFile;
		@GodotName("set_max_redirects") GodotMethod!(void, long) setMaxRedirects;
		@GodotName("set_timeout") GodotMethod!(void, long) setTimeout;
		@GodotName("set_use_threads") GodotMethod!(void, bool) setUseThreads;
	}
	/// 
	pragma(inline, true) bool opEquals(in HTTPRequest other) const
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
	/// Construct a new instance of HTTPRequest.
	/// Note: use `memnew!HTTPRequest` instead.
	static HTTPRequest _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("HTTPRequest");
		if(constructor is null) return typeof(this).init;
		return cast(HTTPRequest)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Result : int
	{
		/**
		Request successful.
		*/
		resultSuccess = 0,
		/**
		
		*/
		resultChunkedBodySizeMismatch = 1,
		/**
		Request failed while connecting.
		*/
		resultCantConnect = 2,
		/**
		Request failed while resolving.
		*/
		resultCantResolve = 3,
		/**
		Request failed due to connection (read/write) error.
		*/
		resultConnectionError = 4,
		/**
		Request failed on SSL handshake.
		*/
		resultSslHandshakeError = 5,
		/**
		Request does not have a response (yet).
		*/
		resultNoResponse = 6,
		/**
		Request exceeded its maximum size limit, see $(D bodySizeLimit).
		*/
		resultBodySizeLimitExceeded = 7,
		/**
		Request failed (currently unused).
		*/
		resultRequestFailed = 8,
		/**
		HTTPRequest couldn't open the download file.
		*/
		resultDownloadFileCantOpen = 9,
		/**
		HTTPRequest couldn't write to the download file.
		*/
		resultDownloadFileWriteError = 10,
		/**
		Request reached its maximum redirect limit, see $(D maxRedirects).
		*/
		resultRedirectLimitReached = 11,
		/**
		
		*/
		resultTimeout = 12,
	}
	/// 
	enum Constants : int
	{
		resultSuccess = 0,
		resultChunkedBodySizeMismatch = 1,
		resultCantConnect = 2,
		resultCantResolve = 3,
		resultConnectionError = 4,
		resultSslHandshakeError = 5,
		resultNoResponse = 6,
		resultBodySizeLimitExceeded = 7,
		resultRequestFailed = 8,
		resultDownloadFileCantOpen = 9,
		resultDownloadFileWriteError = 10,
		resultRedirectLimitReached = 11,
		resultTimeout = 12,
	}
	/**
	
	*/
	void _redirectRequest(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_redirect_request");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _requestDone(in long arg0, in long arg1, in PoolStringArray arg2, in PoolByteArray arg3)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_request_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _timeout()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_timeout");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Cancels the current request.
	*/
	void cancelRequest()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cancelRequest, _godot_object);
	}
	/**
	Returns the response body length.
	$(B Note:) Some Web servers may not send a body length. In this case, the value returned will be `-1`. If using chunked transfer encoding, the body length will also be `-1`.
	*/
	long getBodySize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBodySize, _godot_object);
	}
	/**
	
	*/
	long getBodySizeLimit() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBodySizeLimit, _godot_object);
	}
	/**
	
	*/
	long getDownloadChunkSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDownloadChunkSize, _godot_object);
	}
	/**
	
	*/
	String getDownloadFile() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDownloadFile, _godot_object);
	}
	/**
	Returns the amount of bytes this HTTPRequest downloaded.
	*/
	long getDownloadedBytes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDownloadedBytes, _godot_object);
	}
	/**
	Returns the current status of the underlying $(D HTTPClient). See $(D HTTPClient.status).
	*/
	HTTPClient.Status getHttpClientStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(HTTPClient.Status)(GDNativeClassBinding.getHttpClientStatus, _godot_object);
	}
	/**
	
	*/
	long getMaxRedirects() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxRedirects, _godot_object);
	}
	/**
	
	*/
	long getTimeout()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTimeout, _godot_object);
	}
	/**
	
	*/
	bool isUsingThreads() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingThreads, _godot_object);
	}
	/**
	Creates request on the underlying $(D HTTPClient). If there is no configuration errors, it tries to connect using $(D HTTPClient.connectToHost) and passes parameters onto $(D HTTPClient.request).
	Returns $(D constant OK) if request is successfully created. (Does not imply that the server has responded), $(D constant ERR_UNCONFIGURED) if not in the tree, $(D constant ERR_BUSY) if still processing previous request, $(D constant ERR_INVALID_PARAMETER) if given string is not a valid URL format, or $(D constant ERR_CANT_CONNECT) if not using thread and the $(D HTTPClient) cannot connect to host.
	$(B Note:) The `request_data` parameter is ignored if `method` is $(D constant HTTPClient.METHOD_GET). This is because GET methods can't contain request data. As a workaround, you can pass request data as a query string in the URL. See $(D String.httpEscape) for an example.
	*/
	GodotError request(in String url, in PoolStringArray custom_headers = PoolStringArray.init, in bool ssl_validate_domain = true, in long method = 0, in String request_data = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.request, _godot_object, url, custom_headers, ssl_validate_domain, method, request_data);
	}
	/**
	
	*/
	void setBodySizeLimit(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBodySizeLimit, _godot_object, bytes);
	}
	/**
	
	*/
	void setDownloadChunkSize(in long arg0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDownloadChunkSize, _godot_object, arg0);
	}
	/**
	
	*/
	void setDownloadFile(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDownloadFile, _godot_object, path);
	}
	/**
	
	*/
	void setMaxRedirects(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxRedirects, _godot_object, amount);
	}
	/**
	
	*/
	void setTimeout(in long timeout)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTimeout, _godot_object, timeout);
	}
	/**
	
	*/
	void setUseThreads(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseThreads, _godot_object, enable);
	}
	/**
	Maximum allowed size for response bodies.
	*/
	@property long bodySizeLimit()
	{
		return getBodySizeLimit();
	}
	/// ditto
	@property void bodySizeLimit(long v)
	{
		setBodySizeLimit(v);
	}
	/**
	The size of the buffer used and maximum bytes to read per iteration. See $(D HTTPClient.readChunkSize).
	Set this to a lower value (e.g. 4096 for 4 KiB) when downloading small files to decrease memory usage at the cost of download speeds.
	*/
	@property long downloadChunkSize()
	{
		return getDownloadChunkSize();
	}
	/// ditto
	@property void downloadChunkSize(long v)
	{
		setDownloadChunkSize(v);
	}
	/**
	The file to download into. Will output any received file into it.
	*/
	@property String downloadFile()
	{
		return getDownloadFile();
	}
	/// ditto
	@property void downloadFile(String v)
	{
		setDownloadFile(v);
	}
	/**
	Maximum number of allowed redirects.
	*/
	@property long maxRedirects()
	{
		return getMaxRedirects();
	}
	/// ditto
	@property void maxRedirects(long v)
	{
		setMaxRedirects(v);
	}
	/**
	
	*/
	@property long timeout()
	{
		return getTimeout();
	}
	/// ditto
	@property void timeout(long v)
	{
		setTimeout(v);
	}
	/**
	If `true`, multithreading is used to improve performance.
	*/
	@property bool useThreads()
	{
		return isUsingThreads();
	}
	/// ditto
	@property void useThreads(bool v)
	{
		setUseThreads(v);
	}
}
