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
$(B Note:) The maximum image size is 16384×16384 pixels due to graphics hardware limitations. Larger images will fail to import.
*/
@GodotBaseClass struct ImageTexture
{
	package(godot) enum string _GODOT_internal_name = "ImageTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_reload_hook") GodotMethod!(void, RID) _reloadHook;
		@GodotName("create") GodotMethod!(void, long, long, long, long) create;
		@GodotName("create_from_image") GodotMethod!(void, Image, long) createFromImage;
		@GodotName("get_format") GodotMethod!(Image.Format) getFormat;
		@GodotName("get_lossy_storage_quality") GodotMethod!(double) getLossyStorageQuality;
		@GodotName("get_storage") GodotMethod!(ImageTexture.Storage) getStorage;
		@GodotName("load") GodotMethod!(GodotError, String) load;
		@GodotName("set_data") GodotMethod!(void, Image) setData;
		@GodotName("set_lossy_storage_quality") GodotMethod!(void, double) setLossyStorageQuality;
		@GodotName("set_size_override") GodotMethod!(void, Vector2) setSizeOverride;
		@GodotName("set_storage") GodotMethod!(void, long) setStorage;
	}
	/// 
	pragma(inline, true) bool opEquals(in ImageTexture other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) ImageTexture opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ImageTexture.
	/// Note: use `memnew!ImageTexture` instead.
	static ImageTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ImageTexture");
		if(constructor is null) return typeof(this).init;
		return cast(ImageTexture)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Storage : int
	{
		/**
		$(D Image) data is stored raw and unaltered.
		*/
		storageRaw = 0,
		/**
		$(D Image) data is compressed with a lossy algorithm. You can set the storage quality with $(D lossyQuality).
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
	/**
	
	*/
	void _reloadHook(in RID rid)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(rid);
		String _GODOT_method_name = String("_reload_hook");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Create a new $(D ImageTexture) with `width` and `height`.
	`format` is a value from $(D Image.format), `flags` is any combination of $(D Texture.flags).
	*/
	void create(in long width, in long height, in long format, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.create, _godot_object, width, height, format, flags);
	}
	/**
	Create a new $(D ImageTexture) from an $(D Image) with `flags` from $(D Texture.flags). An sRGB to linear color space conversion can take place, according to $(D Image.format).
	*/
	void createFromImage(Image image, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFromImage, _godot_object, image, flags);
	}
	/**
	Returns the format of the $(D ImageTexture), one of $(D Image.format).
	*/
	Image.Format getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.Format)(GDNativeClassBinding.getFormat, _godot_object);
	}
	/**
	
	*/
	double getLossyStorageQuality() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLossyStorageQuality, _godot_object);
	}
	/**
	
	*/
	ImageTexture.Storage getStorage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ImageTexture.Storage)(GDNativeClassBinding.getStorage, _godot_object);
	}
	/**
	Load an $(D ImageTexture) from a file path.
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.load, _godot_object, path);
	}
	/**
	Sets the $(D Image) of this $(D ImageTexture).
	*/
	void setData(Image image)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setData, _godot_object, image);
	}
	/**
	
	*/
	void setLossyStorageQuality(in double quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLossyStorageQuality, _godot_object, quality);
	}
	/**
	Resizes the $(D ImageTexture) to the specified dimensions.
	*/
	void setSizeOverride(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSizeOverride, _godot_object, size);
	}
	/**
	
	*/
	void setStorage(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStorage, _godot_object, mode);
	}
	/**
	The storage quality for $(D constant STORAGE_COMPRESS_LOSSY).
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
}
