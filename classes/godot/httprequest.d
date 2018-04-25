/**
A node with the ability to send HTTP requests.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.httprequest;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node;
import godot.httpclient;
/**
A node with the ability to send HTTP requests.

Uses $(D HTTPClient) internally.
Can be used to make HTTP requests, i.e. download or upload files or web content via HTTP.
*/
@GodotBaseClass struct HTTPRequest
{
	static immutable string _GODOT_internal_name = "HTTPRequest";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in HTTPRequest other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HTTPRequest opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Request failed due to connection(read/write) error.
		*/
		resultConnectionError = 4,
		/**
		Request failed on SSL handshake.
		*/
		resultSslHandshakeError = 5,
		/**
		Request does not have a response(yet).
		*/
		resultNoResponse = 6,
		/**
		Request exceeded its maximum size limit, see $(D setBodySizeLimit).
		*/
		resultBodySizeLimitExceeded = 7,
		/**
		Request failed. (Unused)
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
		Request reached its maximum redirect limit, see $(D setMaxRedirects).
		*/
		resultRedirectLimitReached = 11,
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
	}
	package(godot) static GodotMethod!(GodotError, String, PoolStringArray, bool, long, String) _GODOT_request;
	package(godot) alias _GODOT_methodBindInfo(string name : "request") = _GODOT_request;
	/**
	Creates request on the underlying $(D HTTPClient). If there is no configuration errors, it tries to connect using $(D HTTPClient.connectToHost) and passes parameters onto $(D HTTPClient.request).
	Returns `OK` if request is successfully created. (Does not imply that the server has responded), `ERR_UNCONFIGURED` if not in the tree, `ERR_BUSY` if still processing previous request, `ERR_INVALID_PARAMETER` if given string is not a valid URL format, or `ERR_CANT_CONNECT` if not using thread and the $(D HTTPClient) cannot connect to host.
	*/
	GodotError request(StringArg0, StringArg4)(in StringArg0 url, in PoolStringArray custom_headers = PoolStringArray.init, in bool ssl_validate_domain = true, in long method = 0, in StringArg4 request_data = "")
	{
		_GODOT_request.bind("HTTPRequest", "request");
		return ptrcall!(GodotError)(_GODOT_request, _godot_object, url, custom_headers, ssl_validate_domain, method, request_data);
	}
	package(godot) static GodotMethod!(void) _GODOT_cancel_request;
	package(godot) alias _GODOT_methodBindInfo(string name : "cancel_request") = _GODOT_cancel_request;
	/**
	Cancels the current request.
	*/
	void cancelRequest()
	{
		_GODOT_cancel_request.bind("HTTPRequest", "cancel_request");
		ptrcall!(void)(_GODOT_cancel_request, _godot_object);
	}
	package(godot) static GodotMethod!(HTTPClient.Status) _GODOT_get_http_client_status;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_http_client_status") = _GODOT_get_http_client_status;
	/**
	Returns the current status of the underlying $(D HTTPClient). See `STATUS_*` enum on $(D HTTPClient).
	*/
	HTTPClient.Status getHttpClientStatus() const
	{
		_GODOT_get_http_client_status.bind("HTTPRequest", "get_http_client_status");
		return ptrcall!(HTTPClient.Status)(_GODOT_get_http_client_status, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_threads;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_threads") = _GODOT_set_use_threads;
	/**
	
	*/
	void setUseThreads(in bool enable)
	{
		_GODOT_set_use_threads.bind("HTTPRequest", "set_use_threads");
		ptrcall!(void)(_GODOT_set_use_threads, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_threads;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_threads") = _GODOT_is_using_threads;
	/**
	
	*/
	bool isUsingThreads() const
	{
		_GODOT_is_using_threads.bind("HTTPRequest", "is_using_threads");
		return ptrcall!(bool)(_GODOT_is_using_threads, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_body_size_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_body_size_limit") = _GODOT_set_body_size_limit;
	/**
	
	*/
	void setBodySizeLimit(in long bytes)
	{
		_GODOT_set_body_size_limit.bind("HTTPRequest", "set_body_size_limit");
		ptrcall!(void)(_GODOT_set_body_size_limit, _godot_object, bytes);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_body_size_limit;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_body_size_limit") = _GODOT_get_body_size_limit;
	/**
	
	*/
	long getBodySizeLimit() const
	{
		_GODOT_get_body_size_limit.bind("HTTPRequest", "get_body_size_limit");
		return ptrcall!(long)(_GODOT_get_body_size_limit, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_max_redirects;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_redirects") = _GODOT_set_max_redirects;
	/**
	
	*/
	void setMaxRedirects(in long amount)
	{
		_GODOT_set_max_redirects.bind("HTTPRequest", "set_max_redirects");
		ptrcall!(void)(_GODOT_set_max_redirects, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_max_redirects;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_redirects") = _GODOT_get_max_redirects;
	/**
	
	*/
	long getMaxRedirects() const
	{
		_GODOT_get_max_redirects.bind("HTTPRequest", "get_max_redirects");
		return ptrcall!(long)(_GODOT_get_max_redirects, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_download_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_download_file") = _GODOT_set_download_file;
	/**
	
	*/
	void setDownloadFile(StringArg0)(in StringArg0 path)
	{
		_GODOT_set_download_file.bind("HTTPRequest", "set_download_file");
		ptrcall!(void)(_GODOT_set_download_file, _godot_object, path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_download_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_download_file") = _GODOT_get_download_file;
	/**
	
	*/
	String getDownloadFile() const
	{
		_GODOT_get_download_file.bind("HTTPRequest", "get_download_file");
		return ptrcall!(String)(_GODOT_get_download_file, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_downloaded_bytes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_downloaded_bytes") = _GODOT_get_downloaded_bytes;
	/**
	Returns the amount of bytes this HTTPRequest downloaded.
	*/
	long getDownloadedBytes() const
	{
		_GODOT_get_downloaded_bytes.bind("HTTPRequest", "get_downloaded_bytes");
		return ptrcall!(long)(_GODOT_get_downloaded_bytes, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_body_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_body_size") = _GODOT_get_body_size;
	/**
	Returns the response body length.
	*/
	long getBodySize() const
	{
		_GODOT_get_body_size.bind("HTTPRequest", "get_body_size");
		return ptrcall!(long)(_GODOT_get_body_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__redirect_request;
	package(godot) alias _GODOT_methodBindInfo(string name : "_redirect_request") = _GODOT__redirect_request;
	/**
	
	*/
	void _redirectRequest(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_redirect_request");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long, long, PoolStringArray, PoolByteArray) _GODOT__request_done;
	package(godot) alias _GODOT_methodBindInfo(string name : "_request_done") = _GODOT__request_done;
	/**
	
	*/
	void _requestDone(in long arg0, in long arg1, in PoolStringArray arg2, in PoolByteArray arg3)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_request_done");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	If `true` multithreading is used to improve performance.
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
}
