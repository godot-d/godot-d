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
	enum string _GODOT_internal_name = "HTTPRequest";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("request") GodotMethod!(GodotError, String, PoolStringArray, bool, long, String) request;
		@GodotName("cancel_request") GodotMethod!(void) cancelRequest;
		@GodotName("get_http_client_status") GodotMethod!(HTTPClient.Status) getHttpClientStatus;
		@GodotName("set_use_threads") GodotMethod!(void, bool) setUseThreads;
		@GodotName("is_using_threads") GodotMethod!(bool) isUsingThreads;
		@GodotName("set_body_size_limit") GodotMethod!(void, long) setBodySizeLimit;
		@GodotName("get_body_size_limit") GodotMethod!(long) getBodySizeLimit;
		@GodotName("set_max_redirects") GodotMethod!(void, long) setMaxRedirects;
		@GodotName("get_max_redirects") GodotMethod!(long) getMaxRedirects;
		@GodotName("set_download_file") GodotMethod!(void, String) setDownloadFile;
		@GodotName("get_download_file") GodotMethod!(String) getDownloadFile;
		@GodotName("get_downloaded_bytes") GodotMethod!(long) getDownloadedBytes;
		@GodotName("get_body_size") GodotMethod!(long) getBodySize;
		@GodotName("_redirect_request") GodotMethod!(void, String) _redirectRequest;
		@GodotName("_request_done") GodotMethod!(void, long, long, PoolStringArray, PoolByteArray) _requestDone;
	}
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
	/**
	Creates request on the underlying $(D HTTPClient). If there is no configuration errors, it tries to connect using $(D HTTPClient.connectToHost) and passes parameters onto $(D HTTPClient.request).
	Returns `OK` if request is successfully created. (Does not imply that the server has responded), `ERR_UNCONFIGURED` if not in the tree, `ERR_BUSY` if still processing previous request, `ERR_INVALID_PARAMETER` if given string is not a valid URL format, or `ERR_CANT_CONNECT` if not using thread and the $(D HTTPClient) cannot connect to host.
	*/
	GodotError request(StringArg0, StringArg4)(in StringArg0 url, in PoolStringArray custom_headers = PoolStringArray.init, in bool ssl_validate_domain = true, in long method = 0, in StringArg4 request_data = "")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.request, _godot_object, url, custom_headers, ssl_validate_domain, method, request_data);
	}
	/**
	Cancels the current request.
	*/
	void cancelRequest()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cancelRequest, _godot_object);
	}
	/**
	Returns the current status of the underlying $(D HTTPClient). See `STATUS_*` enum on $(D HTTPClient).
	*/
	HTTPClient.Status getHttpClientStatus() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(HTTPClient.Status)(_classBinding.getHttpClientStatus, _godot_object);
	}
	/**
	
	*/
	void setUseThreads(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseThreads, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsingThreads() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingThreads, _godot_object);
	}
	/**
	
	*/
	void setBodySizeLimit(in long bytes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBodySizeLimit, _godot_object, bytes);
	}
	/**
	
	*/
	long getBodySizeLimit() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBodySizeLimit, _godot_object);
	}
	/**
	
	*/
	void setMaxRedirects(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxRedirects, _godot_object, amount);
	}
	/**
	
	*/
	long getMaxRedirects() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMaxRedirects, _godot_object);
	}
	/**
	
	*/
	void setDownloadFile(StringArg0)(in StringArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDownloadFile, _godot_object, path);
	}
	/**
	
	*/
	String getDownloadFile() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getDownloadFile, _godot_object);
	}
	/**
	Returns the amount of bytes this HTTPRequest downloaded.
	*/
	long getDownloadedBytes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDownloadedBytes, _godot_object);
	}
	/**
	Returns the response body length.
	*/
	long getBodySize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBodySize, _godot_object);
	}
	/**
	
	*/
	void _redirectRequest(StringArg0)(in StringArg0 arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_redirect_request");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
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
