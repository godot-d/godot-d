/**
Type to handle file reading and writing operations.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.file;
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
Type to handle file reading and writing operations.

File type. This is used to permanently store data into the user device's file system and to read from it. This can be used to store game save data or player configuration files, for example.
Here's a sample on how to write and read from a file:
---
func save(content):
    var file = File.new()
    file.open("user://save_game.dat", file.WRITE)
    file.store_string(content)
    file.close()

func load():
    var file = File.new()
    file.open("user://save_game.dat", file.READ)
    var content = file.get_as_text()
    file.close()
    return content
---
*/
@GodotBaseClass struct File
{
	static immutable string _GODOT_internal_name = "_File";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in File other) const { return _godot_object.ptr is other._godot_object.ptr; }
	File opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		Uses the FastLZ compression method.
		*/
		compressionFastlz = 0,
		/**
		Uses the Deflate compression method.
		*/
		compressionDeflate = 1,
		/**
		Uses the Zstd compression method.
		*/
		compressionZstd = 2,
		/**
		Uses the gzip compression method.
		*/
		compressionGzip = 3,
	}
	/// 
	enum ModeFlags : int
	{
		/**
		Opens the file for read operations.
		*/
		read = 1,
		/**
		Opens the file for write operations. Create it if the file does not exist and truncate if it exists.
		*/
		write = 2,
		/**
		Opens the file for read and write operations. Does not truncate the file.
		*/
		readWrite = 3,
		/**
		Opens the file for read and write operations. Create it if the file does not exist and truncate if it exists.
		*/
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
		compressionGzip = 3,
		readWrite = 3,
		writeRead = 7,
	}
	package(godot) static GodotMethod!(GodotError, String, long, PoolByteArray) _GODOT_open_encrypted;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_encrypted") = _GODOT_open_encrypted;
	/**
	Opens an encrypted file in write or read mode. You need to pass a binary key to encrypt/decrypt it.
	*/
	GodotError openEncrypted(StringArg0)(in StringArg0 path, in long mode_flags, in PoolByteArray key)
	{
		_GODOT_open_encrypted.bind("_File", "open_encrypted");
		return ptrcall!(GodotError)(_GODOT_open_encrypted, _godot_object, path, mode_flags, key);
	}
	package(godot) static GodotMethod!(GodotError, String, long, String) _GODOT_open_encrypted_with_pass;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_encrypted_with_pass") = _GODOT_open_encrypted_with_pass;
	/**
	Opens an encrypted file in write or read mode. You need to pass a password to encrypt/decrypt it.
	*/
	GodotError openEncryptedWithPass(StringArg0, StringArg2)(in StringArg0 path, in long mode_flags, in StringArg2 pass)
	{
		_GODOT_open_encrypted_with_pass.bind("_File", "open_encrypted_with_pass");
		return ptrcall!(GodotError)(_GODOT_open_encrypted_with_pass, _godot_object, path, mode_flags, pass);
	}
	package(godot) static GodotMethod!(GodotError, String, long, long) _GODOT_open_compressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_compressed") = _GODOT_open_compressed;
	/**
	Opens a compressed file for reading or writing. Use COMPRESSION_* constants to set `compression_mode`.
	*/
	GodotError openCompressed(StringArg0)(in StringArg0 path, in long mode_flags, in long compression_mode = 0)
	{
		_GODOT_open_compressed.bind("_File", "open_compressed");
		return ptrcall!(GodotError)(_GODOT_open_compressed, _godot_object, path, mode_flags, compression_mode);
	}
	package(godot) static GodotMethod!(GodotError, String, long) _GODOT_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "open") = _GODOT_open;
	/**
	Opens the file for writing or reading, depending on the flags.
	*/
	GodotError open(StringArg0)(in StringArg0 path, in long flags)
	{
		_GODOT_open.bind("_File", "open");
		return ptrcall!(GodotError)(_GODOT_open, _godot_object, path, flags);
	}
	package(godot) static GodotMethod!(void) _GODOT_close;
	package(godot) alias _GODOT_methodBindInfo(string name : "close") = _GODOT_close;
	/**
	Closes the currently opened file.
	*/
	void close()
	{
		_GODOT_close.bind("_File", "close");
		ptrcall!(void)(_GODOT_close, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path") = _GODOT_get_path;
	/**
	Returns the path as a $(D String) for the current open file.
	*/
	String getPath() const
	{
		_GODOT_get_path.bind("_File", "get_path");
		return ptrcall!(String)(_GODOT_get_path, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_path_absolute;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_path_absolute") = _GODOT_get_path_absolute;
	/**
	Returns the absolute path as a $(D String) for the current open file.
	*/
	String getPathAbsolute() const
	{
		_GODOT_get_path_absolute.bind("_File", "get_path_absolute");
		return ptrcall!(String)(_GODOT_get_path_absolute, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_open") = _GODOT_is_open;
	/**
	Returns `true` if the file is currently opened.
	*/
	bool isOpen() const
	{
		_GODOT_is_open.bind("_File", "is_open");
		return ptrcall!(bool)(_GODOT_is_open, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	/**
	Change the file reading/writing cursor to the specified position (in bytes from the beginning of the file).
	*/
	void seek(in long position)
	{
		_GODOT_seek.bind("_File", "seek");
		ptrcall!(void)(_GODOT_seek, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_seek_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek_end") = _GODOT_seek_end;
	/**
	Changes the file reading/writing cursor to the specified position (in bytes from the end of the file). Note that this is an offset, so you should use negative numbers or the cursor will be at the end of the file.
	*/
	void seekEnd(in long position = 0)
	{
		_GODOT_seek_end.bind("_File", "seek_end");
		ptrcall!(void)(_GODOT_seek_end, _godot_object, position);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_position") = _GODOT_get_position;
	/**
	Returns the file cursor's position.
	*/
	long getPosition() const
	{
		_GODOT_get_position.bind("_File", "get_position");
		return ptrcall!(long)(_GODOT_get_position, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_len;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_len") = _GODOT_get_len;
	/**
	Returns the size of the file in bytes.
	*/
	long getLen() const
	{
		_GODOT_get_len.bind("_File", "get_len");
		return ptrcall!(long)(_GODOT_get_len, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_eof_reached;
	package(godot) alias _GODOT_methodBindInfo(string name : "eof_reached") = _GODOT_eof_reached;
	/**
	Returns `true` if the file cursor has reached the end of the file.
	*/
	bool eofReached() const
	{
		_GODOT_eof_reached.bind("_File", "eof_reached");
		return ptrcall!(bool)(_GODOT_eof_reached, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_8;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_8") = _GODOT_get_8;
	/**
	Returns the next 8 bits from the file as an integer.
	*/
	long get8() const
	{
		_GODOT_get_8.bind("_File", "get_8");
		return ptrcall!(long)(_GODOT_get_8, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_16;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_16") = _GODOT_get_16;
	/**
	Returns the next 16 bits from the file as an integer.
	*/
	long get16() const
	{
		_GODOT_get_16.bind("_File", "get_16");
		return ptrcall!(long)(_GODOT_get_16, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_32;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_32") = _GODOT_get_32;
	/**
	Returns the next 32 bits from the file as an integer.
	*/
	long get32() const
	{
		_GODOT_get_32.bind("_File", "get_32");
		return ptrcall!(long)(_GODOT_get_32, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_64;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_64") = _GODOT_get_64;
	/**
	Returns the next 64 bits from the file as an integer.
	*/
	long get64() const
	{
		_GODOT_get_64.bind("_File", "get_64");
		return ptrcall!(long)(_GODOT_get_64, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_float;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_float") = _GODOT_get_float;
	/**
	Returns the next 32 bits from the file as a floating point number.
	*/
	double getFloat() const
	{
		_GODOT_get_float.bind("_File", "get_float");
		return ptrcall!(double)(_GODOT_get_float, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_double;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_double") = _GODOT_get_double;
	/**
	Returns the next 64 bits from the file as a floating point number.
	*/
	double getDouble() const
	{
		_GODOT_get_double.bind("_File", "get_double");
		return ptrcall!(double)(_GODOT_get_double, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_real;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_real") = _GODOT_get_real;
	/**
	Returns the next bits from the file as a floating point number.
	*/
	double getReal() const
	{
		_GODOT_get_real.bind("_File", "get_real");
		return ptrcall!(double)(_GODOT_get_real, _godot_object);
	}
	package(godot) static GodotMethod!(PoolByteArray, long) _GODOT_get_buffer;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_buffer") = _GODOT_get_buffer;
	/**
	Returns next `len` bytes of the file as a $(D PoolByteArray).
	*/
	PoolByteArray getBuffer(in long len) const
	{
		_GODOT_get_buffer.bind("_File", "get_buffer");
		return ptrcall!(PoolByteArray)(_GODOT_get_buffer, _godot_object, len);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line") = _GODOT_get_line;
	/**
	Returns the next line of the file as a $(D String).
	*/
	String getLine() const
	{
		_GODOT_get_line.bind("_File", "get_line");
		return ptrcall!(String)(_GODOT_get_line, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_as_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_as_text") = _GODOT_get_as_text;
	/**
	Returns the whole file as a $(D String).
	*/
	String getAsText() const
	{
		_GODOT_get_as_text.bind("_File", "get_as_text");
		return ptrcall!(String)(_GODOT_get_as_text, _godot_object);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_md5;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_md5") = _GODOT_get_md5;
	/**
	Returns an MD5 String representing the file at the given path or an empty $(D String) on failure.
	*/
	String getMd5(StringArg0)(in StringArg0 path) const
	{
		_GODOT_get_md5.bind("_File", "get_md5");
		return ptrcall!(String)(_GODOT_get_md5, _godot_object, path);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_sha256;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_sha256") = _GODOT_get_sha256;
	/**
	Returns a SHA-256 $(D String) representing the file at the given path or an empty $(D String) on failure.
	*/
	String getSha256(StringArg0)(in StringArg0 path) const
	{
		_GODOT_get_sha256.bind("_File", "get_sha256");
		return ptrcall!(String)(_GODOT_get_sha256, _godot_object, path);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_endian_swap;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_endian_swap") = _GODOT_get_endian_swap;
	/**
	
	*/
	bool getEndianSwap()
	{
		_GODOT_get_endian_swap.bind("_File", "get_endian_swap");
		return ptrcall!(bool)(_GODOT_get_endian_swap, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_endian_swap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_endian_swap") = _GODOT_set_endian_swap;
	/**
	
	*/
	void setEndianSwap(in bool enable)
	{
		_GODOT_set_endian_swap.bind("_File", "set_endian_swap");
		ptrcall!(void)(_GODOT_set_endian_swap, _godot_object, enable);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_get_error;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_error") = _GODOT_get_error;
	/**
	Returns the last error that happened when trying to perform operations. Compare with the `ERR_FILE_*` constants from $(D @GlobalScope).
	*/
	GodotError getError() const
	{
		_GODOT_get_error.bind("_File", "get_error");
		return ptrcall!(GodotError)(_GODOT_get_error, _godot_object);
	}
	package(godot) static GodotMethod!(Variant) _GODOT_get_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_var") = _GODOT_get_var;
	/**
	Returns the next $(D Variant) value from the file.
	*/
	Variant getVar() const
	{
		_GODOT_get_var.bind("_File", "get_var");
		return ptrcall!(Variant)(_GODOT_get_var, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_csv_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_csv_line") = _GODOT_get_csv_line;
	/**
	Returns the next value of the file in CSV (Comma Separated Values) format. You can pass a different delimiter to use other than the default "," (comma).
	*/
	PoolStringArray getCsvLine(StringArg0)(in StringArg0 delim = ",") const
	{
		_GODOT_get_csv_line.bind("_File", "get_csv_line");
		return ptrcall!(PoolStringArray)(_GODOT_get_csv_line, _godot_object, delim);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_store_8;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_8") = _GODOT_store_8;
	/**
	Stores an integer as 8 bits in the file.
	*/
	void store8(in long value)
	{
		_GODOT_store_8.bind("_File", "store_8");
		ptrcall!(void)(_GODOT_store_8, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_store_16;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_16") = _GODOT_store_16;
	/**
	Stores an integer as 16 bits in the file.
	*/
	void store16(in long value)
	{
		_GODOT_store_16.bind("_File", "store_16");
		ptrcall!(void)(_GODOT_store_16, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_store_32;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_32") = _GODOT_store_32;
	/**
	Stores an integer as 32 bits in the file.
	*/
	void store32(in long value)
	{
		_GODOT_store_32.bind("_File", "store_32");
		ptrcall!(void)(_GODOT_store_32, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_store_64;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_64") = _GODOT_store_64;
	/**
	Stores an integer as 64 bits in the file.
	*/
	void store64(in long value)
	{
		_GODOT_store_64.bind("_File", "store_64");
		ptrcall!(void)(_GODOT_store_64, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_store_float;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_float") = _GODOT_store_float;
	/**
	Stores a floating point number as 32 bits in the file.
	*/
	void storeFloat(in double value)
	{
		_GODOT_store_float.bind("_File", "store_float");
		ptrcall!(void)(_GODOT_store_float, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_store_double;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_double") = _GODOT_store_double;
	/**
	Stores a floating point number as 64 bits in the file.
	*/
	void storeDouble(in double value)
	{
		_GODOT_store_double.bind("_File", "store_double");
		ptrcall!(void)(_GODOT_store_double, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_store_real;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_real") = _GODOT_store_real;
	/**
	Stores a floating point number in the file.
	*/
	void storeReal(in double value)
	{
		_GODOT_store_real.bind("_File", "store_real");
		ptrcall!(void)(_GODOT_store_real, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT_store_buffer;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_buffer") = _GODOT_store_buffer;
	/**
	Stores the given array of bytes in the file.
	*/
	void storeBuffer(in PoolByteArray buffer)
	{
		_GODOT_store_buffer.bind("_File", "store_buffer");
		ptrcall!(void)(_GODOT_store_buffer, _godot_object, buffer);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_store_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_line") = _GODOT_store_line;
	/**
	Stores the given $(D String) as a line in the file.
	*/
	void storeLine(StringArg0)(in StringArg0 line)
	{
		_GODOT_store_line.bind("_File", "store_line");
		ptrcall!(void)(_GODOT_store_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_store_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_string") = _GODOT_store_string;
	/**
	Stores the given $(D String) in the file.
	*/
	void storeString(StringArg0)(in StringArg0 string)
	{
		_GODOT_store_string.bind("_File", "store_string");
		ptrcall!(void)(_GODOT_store_string, _godot_object, string);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_store_var;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_var") = _GODOT_store_var;
	/**
	Stores any Variant value in the file.
	*/
	void storeVar(VariantArg0)(in VariantArg0 value)
	{
		_GODOT_store_var.bind("_File", "store_var");
		ptrcall!(void)(_GODOT_store_var, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_store_pascal_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "store_pascal_string") = _GODOT_store_pascal_string;
	/**
	Stores the given $(D String) as a line in the file in Pascal format (i.e. also store the length of the string).
	*/
	void storePascalString(StringArg0)(in StringArg0 string)
	{
		_GODOT_store_pascal_string.bind("_File", "store_pascal_string");
		ptrcall!(void)(_GODOT_store_pascal_string, _godot_object, string);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_pascal_string;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pascal_string") = _GODOT_get_pascal_string;
	/**
	Returns a $(D String) saved in Pascal format from the file.
	*/
	String getPascalString()
	{
		_GODOT_get_pascal_string.bind("_File", "get_pascal_string");
		return ptrcall!(String)(_GODOT_get_pascal_string, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_file_exists;
	package(godot) alias _GODOT_methodBindInfo(string name : "file_exists") = _GODOT_file_exists;
	/**
	Returns `true` if the file exists in the given path.
	*/
	bool fileExists(StringArg0)(in StringArg0 path) const
	{
		_GODOT_file_exists.bind("_File", "file_exists");
		return ptrcall!(bool)(_GODOT_file_exists, _godot_object, path);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_get_modified_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_modified_time") = _GODOT_get_modified_time;
	/**
	Returns the last time the `file` was modified in unix timestamp format or returns a $(D String) "ERROR IN `file`". This unix timestamp can be converted to datetime by using $(D OS.getDatetimeFromUnixTime).
	*/
	long getModifiedTime(StringArg0)(in StringArg0 file) const
	{
		_GODOT_get_modified_time.bind("_File", "get_modified_time");
		return ptrcall!(long)(_GODOT_get_modified_time, _godot_object, file);
	}
	/**
	If `true` the file's endianness is swapped. Use this if you're dealing with files written in big endian machines.
	Note that this is about the file format, not CPU type. This is always reset to `false` whenever you open the file.
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
