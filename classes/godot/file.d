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


func save(content):
    var file = File.new()
    file.open("user://save_game.dat", File.WRITE)
    file.store_string(content)
    file.close()

func load():
    var file = File.new()
    file.open("user://save_game.dat", File.READ)
    var content = file.get_as_text()
    file.close()
    return content


*/
@GodotBaseClass struct File
{
	enum string _GODOT_internal_name = "_File";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("open_encrypted") GodotMethod!(GodotError, String, long, PoolByteArray) openEncrypted;
		@GodotName("open_encrypted_with_pass") GodotMethod!(GodotError, String, long, String) openEncryptedWithPass;
		@GodotName("open_compressed") GodotMethod!(GodotError, String, long, long) openCompressed;
		@GodotName("open") GodotMethod!(GodotError, String, long) open;
		@GodotName("close") GodotMethod!(void) close;
		@GodotName("get_path") GodotMethod!(String) getPath;
		@GodotName("get_path_absolute") GodotMethod!(String) getPathAbsolute;
		@GodotName("is_open") GodotMethod!(bool) isOpen;
		@GodotName("seek") GodotMethod!(void, long) seek;
		@GodotName("seek_end") GodotMethod!(void, long) seekEnd;
		@GodotName("get_position") GodotMethod!(long) getPosition;
		@GodotName("get_len") GodotMethod!(long) getLen;
		@GodotName("eof_reached") GodotMethod!(bool) eofReached;
		@GodotName("get_8") GodotMethod!(long) get8;
		@GodotName("get_16") GodotMethod!(long) get16;
		@GodotName("get_32") GodotMethod!(long) get32;
		@GodotName("get_64") GodotMethod!(long) get64;
		@GodotName("get_float") GodotMethod!(double) getFloat;
		@GodotName("get_double") GodotMethod!(double) getDouble;
		@GodotName("get_real") GodotMethod!(double) getReal;
		@GodotName("get_buffer") GodotMethod!(PoolByteArray, long) getBuffer;
		@GodotName("get_line") GodotMethod!(String) getLine;
		@GodotName("get_csv_line") GodotMethod!(PoolStringArray, String) getCsvLine;
		@GodotName("get_as_text") GodotMethod!(String) getAsText;
		@GodotName("get_md5") GodotMethod!(String, String) getMd5;
		@GodotName("get_sha256") GodotMethod!(String, String) getSha256;
		@GodotName("get_endian_swap") GodotMethod!(bool) getEndianSwap;
		@GodotName("set_endian_swap") GodotMethod!(void, bool) setEndianSwap;
		@GodotName("get_error") GodotMethod!(GodotError) getError;
		@GodotName("get_var") GodotMethod!(Variant, bool) getVar;
		@GodotName("store_8") GodotMethod!(void, long) store8;
		@GodotName("store_16") GodotMethod!(void, long) store16;
		@GodotName("store_32") GodotMethod!(void, long) store32;
		@GodotName("store_64") GodotMethod!(void, long) store64;
		@GodotName("store_float") GodotMethod!(void, double) storeFloat;
		@GodotName("store_double") GodotMethod!(void, double) storeDouble;
		@GodotName("store_real") GodotMethod!(void, double) storeReal;
		@GodotName("store_buffer") GodotMethod!(void, PoolByteArray) storeBuffer;
		@GodotName("store_line") GodotMethod!(void, String) storeLine;
		@GodotName("store_csv_line") GodotMethod!(void, PoolStringArray, String) storeCsvLine;
		@GodotName("store_string") GodotMethod!(void, String) storeString;
		@GodotName("store_var") GodotMethod!(void, Variant, bool) storeVar;
		@GodotName("store_pascal_string") GodotMethod!(void, String) storePascalString;
		@GodotName("get_pascal_string") GodotMethod!(String) getPascalString;
		@GodotName("file_exists") GodotMethod!(bool, String) fileExists;
		@GodotName("get_modified_time") GodotMethod!(long, String) getModifiedTime;
	}
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
	@disable new(size_t s);
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
		readWrite = 3,
		compressionGzip = 3,
		writeRead = 7,
	}
	/**
	Opens an encrypted file in write or read mode. You need to pass a binary key to encrypt/decrypt it.
	*/
	GodotError openEncrypted(in String path, in long mode_flags, in PoolByteArray key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.openEncrypted, _godot_object, path, mode_flags, key);
	}
	/**
	Opens an encrypted file in write or read mode. You need to pass a password to encrypt/decrypt it.
	*/
	GodotError openEncryptedWithPass(in String path, in long mode_flags, in String pass)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.openEncryptedWithPass, _godot_object, path, mode_flags, pass);
	}
	/**
	Opens a compressed file for reading or writing. Use COMPRESSION_* constants to set `compression_mode`.
	*/
	GodotError openCompressed(in String path, in long mode_flags, in long compression_mode = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.openCompressed, _godot_object, path, mode_flags, compression_mode);
	}
	/**
	Opens the file for writing or reading, depending on the flags.
	*/
	GodotError open(in String path, in long flags)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.open, _godot_object, path, flags);
	}
	/**
	Closes the currently opened file.
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.close, _godot_object);
	}
	/**
	Returns the path as a $(D String) for the current open file.
	*/
	String getPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPath, _godot_object);
	}
	/**
	Returns the absolute path as a $(D String) for the current open file.
	*/
	String getPathAbsolute() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPathAbsolute, _godot_object);
	}
	/**
	Returns `true` if the file is currently opened.
	*/
	bool isOpen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOpen, _godot_object);
	}
	/**
	Change the file reading/writing cursor to the specified position (in bytes from the beginning of the file).
	*/
	void seek(in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.seek, _godot_object, position);
	}
	/**
	Changes the file reading/writing cursor to the specified position (in bytes from the end of the file). Note that this is an offset, so you should use negative numbers or the cursor will be at the end of the file.
	*/
	void seekEnd(in long position = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.seekEnd, _godot_object, position);
	}
	/**
	Returns the file cursor's position.
	*/
	long getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPosition, _godot_object);
	}
	/**
	Returns the size of the file in bytes.
	*/
	long getLen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLen, _godot_object);
	}
	/**
	Returns `true` if the file cursor has read past the end of the file. Note that this function will still return `false` while at the end of the file and only activates when reading past it. This can be confusing but it conforms to how low level file access works in all operating systems. There is always $(D getLen) and $(D getPosition) to implement a custom logic.
	*/
	bool eofReached() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.eofReached, _godot_object);
	}
	/**
	Returns the next 8 bits from the file as an integer.
	*/
	long get8() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.get8, _godot_object);
	}
	/**
	Returns the next 16 bits from the file as an integer.
	*/
	long get16() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.get16, _godot_object);
	}
	/**
	Returns the next 32 bits from the file as an integer.
	*/
	long get32() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.get32, _godot_object);
	}
	/**
	Returns the next 64 bits from the file as an integer.
	*/
	long get64() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.get64, _godot_object);
	}
	/**
	Returns the next 32 bits from the file as a floating point number.
	*/
	double getFloat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFloat, _godot_object);
	}
	/**
	Returns the next 64 bits from the file as a floating point number.
	*/
	double getDouble() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDouble, _godot_object);
	}
	/**
	Returns the next bits from the file as a floating point number.
	*/
	double getReal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getReal, _godot_object);
	}
	/**
	Returns next `len` bytes of the file as a $(D PoolByteArray).
	*/
	PoolByteArray getBuffer(in long len) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.getBuffer, _godot_object, len);
	}
	/**
	Returns the next line of the file as a $(D String).
	Text is interpreted as being UTF-8 encoded.
	*/
	String getLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLine, _godot_object);
	}
	/**
	Returns the next value of the file in CSV (Comma Separated Values) format. You can pass a different delimiter to use other than the default "," (comma), it should be one character long.
	Text is interpreted as being UTF-8 encoded.
	*/
	PoolStringArray getCsvLine(in String delim = gs!",") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getCsvLine, _godot_object, delim);
	}
	/**
	Returns the whole file as a $(D String).
	Text is interpreted as being UTF-8 encoded.
	*/
	String getAsText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAsText, _godot_object);
	}
	/**
	Returns an MD5 String representing the file at the given path or an empty $(D String) on failure.
	*/
	String getMd5(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getMd5, _godot_object, path);
	}
	/**
	Returns a SHA-256 $(D String) representing the file at the given path or an empty $(D String) on failure.
	*/
	String getSha256(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSha256, _godot_object, path);
	}
	/**
	
	*/
	bool getEndianSwap()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getEndianSwap, _godot_object);
	}
	/**
	
	*/
	void setEndianSwap(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEndianSwap, _godot_object, enable);
	}
	/**
	Returns the last error that happened when trying to perform operations. Compare with the `ERR_FILE_*` constants from $(D @GlobalScope).
	*/
	GodotError getError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.getError, _godot_object);
	}
	/**
	Returns the next $(D Variant) value from the file. When `allow_objects` is `true` decoding objects is allowed.
	$(B WARNING:) Deserialized object can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats (remote code execution).
	*/
	Variant getVar(in bool allow_objects = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getVar, _godot_object, allow_objects);
	}
	/**
	Stores an integer as 8 bits in the file.
	*/
	void store8(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.store8, _godot_object, value);
	}
	/**
	Stores an integer as 16 bits in the file.
	*/
	void store16(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.store16, _godot_object, value);
	}
	/**
	Stores an integer as 32 bits in the file.
	*/
	void store32(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.store32, _godot_object, value);
	}
	/**
	Stores an integer as 64 bits in the file.
	*/
	void store64(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.store64, _godot_object, value);
	}
	/**
	Stores a floating point number as 32 bits in the file.
	*/
	void storeFloat(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.storeFloat, _godot_object, value);
	}
	/**
	Stores a floating point number as 64 bits in the file.
	*/
	void storeDouble(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.storeDouble, _godot_object, value);
	}
	/**
	Stores a floating point number in the file.
	*/
	void storeReal(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.storeReal, _godot_object, value);
	}
	/**
	Stores the given array of bytes in the file.
	*/
	void storeBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.storeBuffer, _godot_object, buffer);
	}
	/**
	Stores the given $(D String) as a line in the file.
	Text will be encoded as UTF-8.
	*/
	void storeLine(in String line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.storeLine, _godot_object, line);
	}
	/**
	Store the given $(D PoolStringArray) in the file as a line formatted in the CSV (Comma Separated Values) format. You can pass a different delimiter to use other than the default "," (comma), it should be one character long.
	Text will be encoded as UTF-8.
	*/
	void storeCsvLine(in PoolStringArray values, in String delim = gs!",")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.storeCsvLine, _godot_object, values, delim);
	}
	/**
	Stores the given $(D String) in the file.
	Text will be encoded as UTF-8.
	*/
	void storeString(in String string)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.storeString, _godot_object, string);
	}
	/**
	Stores any Variant value in the file. When `full_objects` is `true` encoding objects is allowed (and can potentially include code).
	*/
	void storeVar(VariantArg0)(in VariantArg0 value, in bool full_objects = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.storeVar, _godot_object, value, full_objects);
	}
	/**
	Stores the given $(D String) as a line in the file in Pascal format (i.e. also store the length of the string).
	Text will be encoded as UTF-8.
	*/
	void storePascalString(in String string)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.storePascalString, _godot_object, string);
	}
	/**
	Returns a $(D String) saved in Pascal format from the file.
	Text is interpreted as being UTF-8 encoded.
	*/
	String getPascalString()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPascalString, _godot_object);
	}
	/**
	Returns `true` if the file exists in the given path.
	Note that many resources types are imported (e.g. textures or sound files), and that their source asset will not be included in the exported game, as only the imported version is used (in the `res://.import` folder). To check for the existence of such resources while taking into account the remapping to their imported location, use $(D ResourceLoader.exists). Typically, using `File.file_exists` on an imported resource would work while you are developing in the editor (the source asset is present in `res://`, but fail when exported).
	*/
	bool fileExists(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.fileExists, _godot_object, path);
	}
	/**
	Returns the last time the `file` was modified in unix timestamp format or returns a $(D String) "ERROR IN `file`". This unix timestamp can be converted to datetime by using $(D OS.getDatetimeFromUnixTime).
	*/
	long getModifiedTime(in String file) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getModifiedTime, _godot_object, file);
	}
	/**
	If `true`, the file's endianness is swapped. Use this if you're dealing with files written in big endian machines.
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
