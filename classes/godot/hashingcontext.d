/**
Context to compute cryptographic hashes over multiple iterations.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.hashingcontext;
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
Context to compute cryptographic hashes over multiple iterations.

The HashingContext class provides an interface for computing cryptographic hashes over multiple iterations. This is useful for example when computing hashes of big files (so you don't have to load them all in memory), network streams, and data streams in general (so you don't have to hold buffers).
The $(D hashtype) enum shows the supported hashing algorithms.


const CHUNK_SIZE = 1024

func hash_file(path):
    var ctx = HashingContext.new()
    var file = File.new()
    # Start a SHA-256 context.
    ctx.start(HashingContext.HASH_SHA256)
    # Check that file exists.
    if not file.file_exists(path):
        return
    # Open the file to hash.
    file.open(path, File.READ)
    # Update the context after reading each chunk.
    while not file.eof_reached():
        ctx.update(file.get_buffer(CHUNK_SIZE))
    # Get the computed hash.
    var res = ctx.finish()
    # Print the result as hex string and array.
    printt(res.hex_encode(), Array(res))


$(B Note:) Not available in HTML5 exports.
*/
@GodotBaseClass struct HashingContext
{
	package(godot) enum string _GODOT_internal_name = "HashingContext";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("finish") GodotMethod!(PoolByteArray) finish;
		@GodotName("start") GodotMethod!(GodotError, long) start;
		@GodotName("update") GodotMethod!(GodotError, PoolByteArray) update;
	}
	/// 
	pragma(inline, true) bool opEquals(in HashingContext other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) HashingContext opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of HashingContext.
	/// Note: use `memnew!HashingContext` instead.
	static HashingContext _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("HashingContext");
		if(constructor is null) return typeof(this).init;
		return cast(HashingContext)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum HashType : int
	{
		/**
		Hashing algorithm: MD5.
		*/
		hashMd5 = 0,
		/**
		Hashing algorithm: SHA-1.
		*/
		hashSha1 = 1,
		/**
		Hashing algorithm: SHA-256.
		*/
		hashSha256 = 2,
	}
	/// 
	enum Constants : int
	{
		hashMd5 = 0,
		hashSha1 = 1,
		hashSha256 = 2,
	}
	/**
	Closes the current context, and return the computed hash.
	*/
	PoolByteArray finish()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.finish, _godot_object);
	}
	/**
	Starts a new hash computation of the given `type` (e.g. $(D constant HASH_SHA256) to start computation of a SHA-256).
	*/
	GodotError start(in long type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.start, _godot_object, type);
	}
	/**
	Updates the computation with the given `chunk` of data.
	*/
	GodotError update(in PoolByteArray chunk)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.update, _godot_object, chunk);
	}
}
