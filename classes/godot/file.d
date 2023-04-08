/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.file;
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
/**

*/
@GodotBaseClass struct File
{
	package(godot) enum string _GODOT_internal_name = "_File";
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
		@GodotName("eof_reached") GodotMethod!(bool) eofReached;
		@GodotName("file_exists") GodotMethod!(bool, String) fileExists;
		@GodotName("flush") GodotMethod!(void) flush;
		@GodotName("get_16") GodotMethod!(long) get16;
		@GodotName("get_32") GodotMethod!(long) get32;
		@GodotName("get_64") GodotMethod!(long) get64;
		@GodotName("get_8") GodotMethod!(long) get8;
		@GodotName("get_as_text") GodotMethod!(String, bool) getAsText;
		@GodotName("get_buffer") GodotMethod!(PoolByteArray, long) getBuffer;
		@GodotName("get_csv_line") GodotMethod!(PoolStringArray, String) getCsvLine;
		@GodotName("get_double") GodotMethod!(double) getDouble;
		@GodotName("get_endian_swap") GodotMethod!(bool) getEndianSwap;
		@GodotName("get_error") GodotMethod!(GodotError) getError;
		@GodotName("get_float") GodotMethod!(double) getFloat;
		@GodotName("get_len") GodotMethod!(long) getLen;
		@GodotName("get_line") GodotMethod!(String) getLine;
		@GodotName("get_md5") GodotMethod!(String, String) getMd5;
		@GodotName("get_modified_time") GodotMethod!(long, String) getModifiedTime;
		@GodotName("get_pascal_string") GodotMethod!(String) getPascalString;
		@GodotName("get_path") GodotMethod!(String) getPath;
		@GodotName("get_path_absolute") GodotMethod!(String) getPathAbsolute;
		@GodotName("get_position") GodotMethod!(long) getPosition;
		@GodotName("get_real") GodotMethod!(double) getReal;
		@GodotName("get_sha256") GodotMethod!(String, String) getSha256;
		@GodotName("get_var") GodotMethod!(Variant, bool) getVar;
		@GodotName("is_open") GodotMethod!(bool) isOpen;
		@GodotName("open") GodotMethod!(GodotError, String, long) open;
		@GodotName("open_compressed") GodotMethod!(GodotError, String, long, long) openCompressed;
		@GodotName("open_encrypted") GodotMethod!(GodotError, String, long, PoolByteArray) openEncrypted;
		@GodotName("open_encrypted_with_pass") GodotMethod!(GodotError, String, long, String) openEncryptedWithPass;
		@GodotName("seek") GodotMethod!(void, long) seek;
		@GodotName("seek_end") GodotMethod!(void, long) seekEnd;
		@GodotName("set_endian_swap") GodotMethod!(void, bool) setEndianSwap;
		@GodotName("store_16") GodotMethod!(void, long) store16;
		@GodotName("store_32") GodotMethod!(void, long) store32;
		@GodotName("store_64") GodotMethod!(void, long) store64;
		@GodotName("store_8") GodotMethod!(void, long) store8;
		@GodotName("store_buffer") GodotMethod!(void, PoolByteArray) storeBuffer;
		@GodotName("store_csv_line") GodotMethod!(void, PoolStringArray, String) storeCsvLine;
		@GodotName("store_double") GodotMethod!(void, double) storeDouble;
		@GodotName("store_float") GodotMethod!(void, double) storeFloat;
		@GodotName("store_line") GodotMethod!(void, String) storeLine;
		@GodotName("store_pascal_string") GodotMethod!(void, String) storePascalString;
		@GodotName("store_real") GodotMethod!(void, double) storeReal;
		@GodotName("store_string") GodotMethod!(void, String) storeString;
		@GodotName("store_var") GodotMethod!(void, Variant, bool) storeVar;
	}
	/// 
	pragma(inline, true) bool opEquals(in File other) const
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
	/// Construct a new instance of File.
	/// Note: use `memnew!File` instead.
	static File _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_File");
		if(constructor is null) return typeof(this).init;
		return cast(File)(constructor());
	}
	/// 
	enum CompressionMode : int
	{
		/** */
		compressionFastlz = 0,
		/** */
		compressionDeflate = 1,
		/** */
		compressionZstd = 2,
		/** */
		compressionGzip = 3,
	}
	/// 
	enum ModeFlags : int
	{
		/** */
		read = 1,
		/** */
		write = 2,
		/** */
		readWrite = 3,
		/** */
		writeRead = 7,
	}
	/// 
	enum Constants : int
	{
		compressionFastlz = 0,
		read = 1,
		compressionDeflate = 1,
		compressionZstd = 2,
		write = 2,
		readWrite = 3,
		compressionGzip = 3,
		writeRead = 7,
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
	bool eofReached() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.eofReached, _godot_object);
	}
	/**
	
	*/
	bool fileExists(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.fileExists, _godot_object, path);
	}
	/**
	
	*/
	void flush()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.flush, _godot_object);
	}
	/**
	
	*/
	long get16() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get16, _godot_object);
	}
	/**
	
	*/
	long get32() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get32, _godot_object);
	}
	/**
	
	*/
	long get64() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get64, _godot_object);
	}
	/**
	
	*/
	long get8() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get8, _godot_object);
	}
	/**
	
	*/
	String getAsText(in bool skip_cr = true) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAsText, _godot_object, skip_cr);
	}
	/**
	
	*/
	PoolByteArray getBuffer(in long len) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getBuffer, _godot_object, len);
	}
	/**
	
	*/
	PoolStringArray getCsvLine(in String delim = gs!",") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getCsvLine, _godot_object, delim);
	}
	/**
	
	*/
	double getDouble() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDouble, _godot_object);
	}
	/**
	
	*/
	bool getEndianSwap()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getEndianSwap, _godot_object);
	}
	/**
	
	*/
	GodotError getError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.getError, _godot_object);
	}
	/**
	
	*/
	double getFloat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFloat, _godot_object);
	}
	/**
	
	*/
	long getLen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLen, _godot_object);
	}
	/**
	
	*/
	String getLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLine, _godot_object);
	}
	/**
	
	*/
	String getMd5(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getMd5, _godot_object, path);
	}
	/**
	
	*/
	long getModifiedTime(in String file) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getModifiedTime, _godot_object, file);
	}
	/**
	
	*/
	String getPascalString()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPascalString, _godot_object);
	}
	/**
	
	*/
	String getPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPath, _godot_object);
	}
	/**
	
	*/
	String getPathAbsolute() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPathAbsolute, _godot_object);
	}
	/**
	
	*/
	long getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	double getReal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getReal, _godot_object);
	}
	/**
	
	*/
	String getSha256(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSha256, _godot_object, path);
	}
	/**
	
	*/
	Variant getVar(in bool allow_objects = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getVar, _godot_object, allow_objects);
	}
	/**
	
	*/
	bool isOpen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOpen, _godot_object);
	}
	/**
	
	*/
	GodotError open(in String path, in long flags)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.open, _godot_object, path, flags);
	}
	/**
	
	*/
	GodotError openCompressed(in String path, in long mode_flags, in long compression_mode = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.openCompressed, _godot_object, path, mode_flags, compression_mode);
	}
	/**
	
	*/
	GodotError openEncrypted(in String path, in long mode_flags, in PoolByteArray key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.openEncrypted, _godot_object, path, mode_flags, key);
	}
	/**
	
	*/
	GodotError openEncryptedWithPass(in String path, in long mode_flags, in String pass)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.openEncryptedWithPass, _godot_object, path, mode_flags, pass);
	}
	/**
	
	*/
	void seek(in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.seek, _godot_object, position);
	}
	/**
	
	*/
	void seekEnd(in long position = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.seekEnd, _godot_object, position);
	}
	/**
	
	*/
	void setEndianSwap(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEndianSwap, _godot_object, enable);
	}
	/**
	
	*/
	void store16(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.store16, _godot_object, value);
	}
	/**
	
	*/
	void store32(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.store32, _godot_object, value);
	}
	/**
	
	*/
	void store64(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.store64, _godot_object, value);
	}
	/**
	
	*/
	void store8(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.store8, _godot_object, value);
	}
	/**
	
	*/
	void storeBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeBuffer, _godot_object, buffer);
	}
	/**
	
	*/
	void storeCsvLine(in PoolStringArray values, in String delim = gs!",")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeCsvLine, _godot_object, values, delim);
	}
	/**
	
	*/
	void storeDouble(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeDouble, _godot_object, value);
	}
	/**
	
	*/
	void storeFloat(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeFloat, _godot_object, value);
	}
	/**
	
	*/
	void storeLine(in String line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeLine, _godot_object, line);
	}
	/**
	
	*/
	void storePascalString(in String string)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storePascalString, _godot_object, string);
	}
	/**
	
	*/
	void storeReal(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeReal, _godot_object, value);
	}
	/**
	
	*/
	void storeString(in String string)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeString, _godot_object, string);
	}
	/**
	
	*/
	void storeVar(VariantArg0)(in VariantArg0 value, in bool full_objects = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeVar, _godot_object, value, full_objects);
	}
	/**
	
	*/
	@property bool endianSwap()
	{
		return getEndianSwap();
	}
	/// ditto
	@property void endianSwap(bool v)
	{
		setEndianSwap(v);
	}
}
