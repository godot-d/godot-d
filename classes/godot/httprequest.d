/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.node;
import godot.httpclient;
/**

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
		@GodotName("get_timeout") GodotMethod!(double) getTimeout;
		@GodotName("is_using_threads") GodotMethod!(bool) isUsingThreads;
		@GodotName("request") GodotMethod!(GodotError, String, PoolStringArray, bool, long, String) request;
		@GodotName("request_raw") GodotMethod!(GodotError, String, PoolStringArray, bool, long, PoolByteArray) requestRaw;
		@GodotName("set_body_size_limit") GodotMethod!(void, long) setBodySizeLimit;
		@GodotName("set_download_chunk_size") GodotMethod!(void, long) setDownloadChunkSize;
		@GodotName("set_download_file") GodotMethod!(void, String) setDownloadFile;
		@GodotName("set_http_proxy") GodotMethod!(void, String, long) setHttpProxy;
		@GodotName("set_https_proxy") GodotMethod!(void, String, long) setHttpsProxy;
		@GodotName("set_max_redirects") GodotMethod!(void, long) setMaxRedirects;
		@GodotName("set_timeout") GodotMethod!(void, double) setTimeout;
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
	/// 
	enum Result : int
	{
		/** */
		resultSuccess = 0,
		/** */
		resultChunkedBodySizeMismatch = 1,
		/** */
		resultCantConnect = 2,
		/** */
		resultCantResolve = 3,
		/** */
		resultConnectionError = 4,
		/** */
		resultSslHandshakeError = 5,
		/** */
		resultNoResponse = 6,
		/** */
		resultBodySizeLimitExceeded = 7,
		/** */
		resultRequestFailed = 8,
		/** */
		resultDownloadFileCantOpen = 9,
		/** */
		resultDownloadFileWriteError = 10,
		/** */
		resultRedirectLimitReached = 11,
		/** */
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
	
	*/
	void cancelRequest()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cancelRequest, _godot_object);
	}
	/**
	
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
	
	*/
	long getDownloadedBytes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDownloadedBytes, _godot_object);
	}
	/**
	
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
	double getTimeout()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTimeout, _godot_object);
	}
	/**
	
	*/
	bool isUsingThreads() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingThreads, _godot_object);
	}
	/**
	
	*/
	GodotError request(in String url, in PoolStringArray custom_headers = PoolStringArray.init, in bool ssl_validate_domain = true, in long method = 0, in String request_data = gs!"")
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.request, _godot_object, url, custom_headers, ssl_validate_domain, method, request_data);
	}
	/**
	
	*/
	GodotError requestRaw(in String url, in PoolStringArray custom_headers = PoolStringArray.init, in bool ssl_validate_domain = true, in long method = 0, in PoolByteArray request_data_raw = PoolByteArray.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.requestRaw, _godot_object, url, custom_headers, ssl_validate_domain, method, request_data_raw);
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
	void setDownloadChunkSize(in long chunk_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDownloadChunkSize, _godot_object, chunk_size);
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
	void setMaxRedirects(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxRedirects, _godot_object, amount);
	}
	/**
	
	*/
	void setTimeout(in double timeout)
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
	@property double timeout()
	{
		return getTimeout();
	}
	/// ditto
	@property void timeout(double v)
	{
		setTimeout(v);
	}
	/**
	
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
