/**
A $(D Texture) based on an $(D Image).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.imagetexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.image;
/**
A $(D Texture) based on an $(D Image).

Can be created from an $(D Image) with $(D createFromImage).
*/
@GodotBaseClass struct ImageTexture
{
	static immutable string _GODOT_internal_name = "ImageTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ImageTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ImageTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ImageTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ImageTexture");
		if(constructor is null) return typeof(this).init;
		return cast(ImageTexture)(constructor());
	}
	/// 
	enum Storage : int
	{
		/**
		$(D Image) data is stored raw and unaltered.
		*/
		storageRaw = 0,
		/**
		$(D Image) data is compressed with a lossy algorithm. You can set the storage quality with $(D setLossyStorageQuality).
		*/
		storageCompressLossy = 1,
		/**
		$(D Image) data is compressed with a lossless algorithm.
		*/
		storageCompressLossless = 2,
	}
	/// 
	enum Constants : int
	{
		storageRaw = 0,
		storageCompressLossy = 1,
		storageCompressLossless = 2,
	}
	package(godot) static GodotMethod!(void, long, long, long, long) _GODOT_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "create") = _GODOT_create;
	/**
	Create a new `ImageTexture` with "width" and "height".
	"format" one of $(D Image).FORMAT_*.
	"flags" one or more of $(D Texture).FLAG_*.
	*/
	void create(in long width, in long height, in long format, in long flags = 7)
	{
		_GODOT_create.bind("ImageTexture", "create");
		ptrcall!(void)(_GODOT_create, _godot_object, width, height, format, flags);
	}
	package(godot) static GodotMethod!(void, Image, long) _GODOT_create_from_image;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_image") = _GODOT_create_from_image;
	/**
	Create a new `ImageTexture` from an $(D Image) with "flags" from $(D Texture).FLAG_*.
	*/
	void createFromImage(Image image, in long flags = 7)
	{
		_GODOT_create_from_image.bind("ImageTexture", "create_from_image");
		ptrcall!(void)(_GODOT_create_from_image, _godot_object, image, flags);
	}
	package(godot) static GodotMethod!(Image.Format) _GODOT_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_format") = _GODOT_get_format;
	/**
	Return the format of the `ImageTexture`, one of $(D Image).FORMAT_*.
	*/
	Image.Format getFormat() const
	{
		_GODOT_get_format.bind("ImageTexture", "get_format");
		return ptrcall!(Image.Format)(_GODOT_get_format, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_load;
	package(godot) alias _GODOT_methodBindInfo(string name : "load") = _GODOT_load;
	/**
	Load an `ImageTexture`.
	*/
	void load(StringArg0)(in StringArg0 path)
	{
		_GODOT_load.bind("ImageTexture", "load");
		ptrcall!(void)(_GODOT_load, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_data") = _GODOT_set_data;
	/**
	Set the $(D Image) of this `ImageTexture`.
	*/
	void setData(Image image)
	{
		_GODOT_set_data.bind("ImageTexture", "set_data");
		ptrcall!(void)(_GODOT_set_data, _godot_object, image);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_storage;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_storage") = _GODOT_set_storage;
	/**
	
	*/
	void setStorage(in long mode)
	{
		_GODOT_set_storage.bind("ImageTexture", "set_storage");
		ptrcall!(void)(_GODOT_set_storage, _godot_object, mode);
	}
	package(godot) static GodotMethod!(ImageTexture.Storage) _GODOT_get_storage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_storage") = _GODOT_get_storage;
	/**
	
	*/
	ImageTexture.Storage getStorage() const
	{
		_GODOT_get_storage.bind("ImageTexture", "get_storage");
		return ptrcall!(ImageTexture.Storage)(_GODOT_get_storage, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_lossy_storage_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lossy_storage_quality") = _GODOT_set_lossy_storage_quality;
	/**
	
	*/
	void setLossyStorageQuality(in double quality)
	{
		_GODOT_set_lossy_storage_quality.bind("ImageTexture", "set_lossy_storage_quality");
		ptrcall!(void)(_GODOT_set_lossy_storage_quality, _godot_object, quality);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_lossy_storage_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lossy_storage_quality") = _GODOT_get_lossy_storage_quality;
	/**
	
	*/
	double getLossyStorageQuality() const
	{
		_GODOT_get_lossy_storage_quality.bind("ImageTexture", "get_lossy_storage_quality");
		return ptrcall!(double)(_GODOT_get_lossy_storage_quality, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size_override") = _GODOT_set_size_override;
	/**
	Resizes the `ImageTexture` to the specified dimensions.
	*/
	void setSizeOverride(in Vector2 size)
	{
		_GODOT_set_size_override.bind("ImageTexture", "set_size_override");
		ptrcall!(void)(_GODOT_set_size_override, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT__reload_hook;
	package(godot) alias _GODOT_methodBindInfo(string name : "_reload_hook") = _GODOT__reload_hook;
	/**
	
	*/
	void _reloadHook(in RID rid)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(rid);
		String _GODOT_method_name = String("_reload_hook");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The storage type (raw, lossy, or compressed).
	*/
	@property ImageTexture.Storage storage()
	{
		return getStorage();
	}
	/// ditto
	@property void storage(long v)
	{
		setStorage(v);
	}
	/**
	The storage quality for `ImageTexture`.STORAGE_COMPRESS_LOSSY.
	*/
	@property double lossyQuality()
	{
		return getLossyStorageQuality();
	}
	/// ditto
	@property void lossyQuality(double v)
	{
		setLossyStorageQuality(v);
	}
}
