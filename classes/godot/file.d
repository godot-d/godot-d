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
		@GodotName("get_16") GodotMethod!(long) get16;
		@GodotName("get_32") GodotMethod!(long) get32;
		@GodotName("get_64") GodotMethod!(long) get64;
		@GodotName("get_8") GodotMethod!(long) get8;
		@GodotName("get_as_text") GodotMethod!(String) getAsText;
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
	pragma(inline, true) File opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
	@disable new(size_t s);
	/// 
	enum CompressionMode : int
	{
		/**
		Uses the $(D url=http://fastlz.org/)FastLZ$(D /url) compression method.
		*/
		compressionFastlz = 0,
		/**
		Uses the $(D url=https://en.wikipedia.org/wiki/DEFLATE)DEFLATE$(D /url) compression method.
		*/
		compressionDeflate = 1,
		/**
		Uses the $(D url=https://facebook.github.io/zstd/)Zstandard$(D /url) compression method.
		*/
		compressionZstd = 2,
		/**
		Uses the $(D url=https://www.gzip.org/)gzip$(D /url) compression method.
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
	Closes the currently opened file.
	*/
	void close()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.close, _godot_object);
	}
	/**
	Returns `true` if the file cursor has read past the end of the file.
	$(B Note:) This function will still return `false` while at the end of the file and only activates when reading past it. This can be confusing but it conforms to how low-level file access works in all operating systems. There is always $(D getLen) and $(D getPosition) to implement a custom logic.
	*/
	bool eofReached() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.eofReached, _godot_object);
	}
	/**
	Returns `true` if the file exists in the given path.
	$(B Note:) Many resources types are imported (e.g. textures or sound files), and that their source asset will not be included in the exported game, as only the imported version is used (in the `res://.import` folder). To check for the existence of such resources while taking into account the remapping to their imported location, use $(D ResourceLoader.exists). Typically, using `File.file_exists` on an imported resource would work while you are developing in the editor (the source asset is present in `res://`, but fail when exported).
	*/
	bool fileExists(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.fileExists, _godot_object, path);
	}
	/**
	Returns the next 16 bits from the file as an integer. See $(D store16) for details on what values can be stored and retrieved this way.
	*/
	long get16() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get16, _godot_object);
	}
	/**
	Returns the next 32 bits from the file as an integer. See $(D store32) for details on what values can be stored and retrieved this way.
	*/
	long get32() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get32, _godot_object);
	}
	/**
	Returns the next 64 bits from the file as an integer. See $(D store64) for details on what values can be stored and retrieved this way.
	*/
	long get64() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get64, _godot_object);
	}
	/**
	Returns the next 8 bits from the file as an integer. See $(D store8) for details on what values can be stored and retrieved this way.
	*/
	long get8() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.get8, _godot_object);
	}
	/**
	Returns the whole file as a $(D String).
	Text is interpreted as being UTF-8 encoded.
	*/
	String getAsText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAsText, _godot_object);
	}
	/**
	Returns next `len` bytes of the file as a $(D PoolByteArray).
	*/
	PoolByteArray getBuffer(in long len) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getBuffer, _godot_object, len);
	}
	/**
	Returns the next value of the file in CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.
	Text is interpreted as being UTF-8 encoded.
	*/
	PoolStringArray getCsvLine(in String delim = gs!",") const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getCsvLine, _godot_object, delim);
	}
	/**
	Returns the next 64 bits from the file as a floating-point number.
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
	Returns the last error that happened when trying to perform operations. Compare with the `ERR_FILE_*` constants from $(D error).
	*/
	GodotError getError() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.getError, _godot_object);
	}
	/**
	Returns the next 32 bits from the file as a floating-point number.
	*/
	double getFloat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFloat, _godot_object);
	}
	/**
	Returns the size of the file in bytes.
	*/
	long getLen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLen, _godot_object);
	}
	/**
	Returns the next line of the file as a $(D String).
	Text is interpreted as being UTF-8 encoded.
	*/
	String getLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLine, _godot_object);
	}
	/**
	Returns an MD5 String representing the file at the given path or an empty $(D String) on failure.
	*/
	String getMd5(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getMd5, _godot_object, path);
	}
	/**
	Returns the last time the `file` was modified in unix timestamp format or returns a $(D String) "ERROR IN `file`". This unix timestamp can be converted to datetime by using $(D OS.getDatetimeFromUnixTime).
	*/
	long getModifiedTime(in String file) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getModifiedTime, _godot_object, file);
	}
	/**
	Returns a $(D String) saved in Pascal format from the file.
	Text is interpreted as being UTF-8 encoded.
	*/
	String getPascalString()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPascalString, _godot_object);
	}
	/**
	Returns the path as a $(D String) for the current open file.
	*/
	String getPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPath, _godot_object);
	}
	/**
	Returns the absolute path as a $(D String) for the current open file.
	*/
	String getPathAbsolute() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPathAbsolute, _godot_object);
	}
	/**
	Returns the file cursor's position.
	*/
	long getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	Returns the next bits from the file as a floating-point number.
	*/
	double getReal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getReal, _godot_object);
	}
	/**
	Returns a SHA-256 $(D String) representing the file at the given path or an empty $(D String) on failure.
	*/
	String getSha256(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSha256, _godot_object, path);
	}
	/**
	Returns the next $(D Variant) value from the file. If `allow_objects` is `true`, decoding objects is allowed.
	$(B Warning:) Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	*/
	Variant getVar(in bool allow_objects = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getVar, _godot_object, allow_objects);
	}
	/**
	Returns `true` if the file is currently opened.
	*/
	bool isOpen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOpen, _godot_object);
	}
	/**
	Opens the file for writing or reading, depending on the flags.
	*/
	GodotError open(in String path, in long flags)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.open, _godot_object, path, flags);
	}
	/**
	Opens a compressed file for reading or writing.
	*/
	GodotError openCompressed(in String path, in long mode_flags, in long compression_mode = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.openCompressed, _godot_object, path, mode_flags, compression_mode);
	}
	/**
	Opens an encrypted file in write or read mode. You need to pass a binary key to encrypt/decrypt it.
	*/
	GodotError openEncrypted(in String path, in long mode_flags, in PoolByteArray key)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.openEncrypted, _godot_object, path, mode_flags, key);
	}
	/**
	Opens an encrypted file in write or read mode. You need to pass a password to encrypt/decrypt it.
	*/
	GodotError openEncryptedWithPass(in String path, in long mode_flags, in String pass)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.openEncryptedWithPass, _godot_object, path, mode_flags, pass);
	}
	/**
	Changes the file reading/writing cursor to the specified position (in bytes from the beginning of the file).
	*/
	void seek(in long position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.seek, _godot_object, position);
	}
	/**
	Changes the file reading/writing cursor to the specified position (in bytes from the end of the file).
	$(B Note:) This is an offset, so you should use negative numbers or the cursor will be at the end of the file.
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
	Stores an integer as 16 bits in the file.
	$(B Note:) The `value` should lie in the interval `$(D 0, 2^16 - 1)`. Any other value will overflow and wrap around.
	To store a signed integer, use $(D store64) or store a signed integer from the interval `$(D -2^15, 2^15 - 1)` (i.e. keeping one bit for the signedness) and compute its sign manually when reading. For example:
	
	
	const MAX_15B = 1 &lt;&lt; 15
	const MAX_16B = 1 &lt;&lt; 16
	
	func unsigned16_to_signed(unsigned):
	    return (unsigned + MAX_15B) % MAX_16B - MAX_15B
	
	func _ready():
	    var f = File.new()
	    f.open("user://file.dat", File.WRITE_READ)
	    f.store_16(-42) # This wraps around and stores 65494 (2^16 - 42).
	    f.store_16(121) # In bounds, will store 121.
	    f.seek(0) # Go back to start to read the stored value.
	    var read1 = f.get_16() # 65494
	    var read2 = f.get_16() # 121
	    var converted1 = unsigned16_to_signed(read1) # -42
	    var converted2 = unsigned16_to_signed(read2) # 121
	
	
	*/
	void store16(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.store16, _godot_object, value);
	}
	/**
	Stores an integer as 32 bits in the file.
	$(B Note:) The `value` should lie in the interval `$(D 0, 2^32 - 1)`. Any other value will overflow and wrap around.
	To store a signed integer, use $(D store64), or convert it manually (see $(D store16) for an example).
	*/
	void store32(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.store32, _godot_object, value);
	}
	/**
	Stores an integer as 64 bits in the file.
	$(B Note:) The `value` must lie in the interval `$(D -2^63, 2^63 - 1)` (i.e. be a valid $(D long) value).
	*/
	void store64(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.store64, _godot_object, value);
	}
	/**
	Stores an integer as 8 bits in the file.
	$(B Note:) The `value` should lie in the interval `$(D 0, 255)`. Any other value will overflow and wrap around.
	To store a signed integer, use $(D store64), or convert it manually (see $(D store16) for an example).
	*/
	void store8(in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.store8, _godot_object, value);
	}
	/**
	Stores the given array of bytes in the file.
	*/
	void storeBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeBuffer, _godot_object, buffer);
	}
	/**
	Store the given $(D PoolStringArray) in the file as a line formatted in the CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.
	Text will be encoded as UTF-8.
	*/
	void storeCsvLine(in PoolStringArray values, in String delim = gs!",")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeCsvLine, _godot_object, values, delim);
	}
	/**
	Stores a floating-point number as 64 bits in the file.
	*/
	void storeDouble(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeDouble, _godot_object, value);
	}
	/**
	Stores a floating-point number as 32 bits in the file.
	*/
	void storeFloat(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeFloat, _godot_object, value);
	}
	/**
	Stores the given $(D String) as a line in the file.
	Text will be encoded as UTF-8.
	*/
	void storeLine(in String line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeLine, _godot_object, line);
	}
	/**
	Stores the given $(D String) as a line in the file in Pascal format (i.e. also store the length of the string).
	Text will be encoded as UTF-8.
	*/
	void storePascalString(in String string)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storePascalString, _godot_object, string);
	}
	/**
	Stores a floating-point number in the file.
	*/
	void storeReal(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeReal, _godot_object, value);
	}
	/**
	Stores the given $(D String) in the file.
	Text will be encoded as UTF-8.
	*/
	void storeString(in String string)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeString, _godot_object, string);
	}
	/**
	Stores any Variant value in the file. If `full_objects` is `true`, encoding objects is allowed (and can potentially include code).
	*/
	void storeVar(VariantArg0)(in VariantArg0 value, in bool full_objects = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.storeVar, _godot_object, value, full_objects);
	}
	/**
	If `true`, the file's endianness is swapped. Use this if you're dealing with files written on big-endian machines.
	$(B Note:) This is about the file format, not CPU type. This is always reset to `false` whenever you open the file.
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
