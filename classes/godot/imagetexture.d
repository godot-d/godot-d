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
import godot.d.traits;
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

For an image to be displayed, an $(D ImageTexture) has to be created from it using the $(D createFromImage) method:


var texture = ImageTexture.new()
var image = Image.new()
image.load("res://icon.png")
texture.create_from_image(image)
$Sprite.texture = texture


This way, textures can be created at run-time by loading images both from within the editor and externally.
$(B Warning:) Prefer to load imported textures with $(D @GDScript.load) over loading them from within the filesystem dynamically with $(D Image.load), as it may not work in exported projects:


var texture = load("res://icon.png")
$Sprite.texture = texture


This is because images have to be imported as $(D StreamTexture) first to be loaded with $(D @GDScript.load). If you'd still like to load an image file just like any other $(D Resource), import it as an $(D Image) resource instead, and then load it normally using the $(D @GDScript.load) method.
But do note that the image data can still be retrieved from an imported texture as well using the $(D Texture.getData) method, which returns a copy of the data:


var texture = load("res://icon.png")
var image : Image = texture.get_data()


An $(D ImageTexture) is not meant to be operated from within the editor interface directly, and is mostly useful for rendering images on screen dynamically via code. If you need to generate images procedurally from within the editor, consider saving and importing images as custom texture resources implementing a new $(D EditorImportPlugin).
$(B Note:) The maximum texture size is 16384×16384 pixels due to graphics hardware limitations.
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
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
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
	Initializes the texture by allocating and setting the data from an $(D Image) with `flags` from $(D Texture.flags). An sRGB to linear color space conversion can take place, according to $(D Image.format).
	*/
	void createFromImage(Image image, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFromImage, _godot_object, image, flags);
	}
	/**
	Returns the format of the texture, one of $(D Image.format).
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
	Loads an image from a file path and creates a texture from it.
	$(B Note:) the method is deprecated and will be removed in Godot 4.0, use $(D Image.load) and $(D createFromImage) instead.
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.load, _godot_object, path);
	}
	/**
	Replaces the texture's data with a new $(D Image).
	$(B Note:) The texture has to be initialized first with the $(D createFromImage) method before it can be updated. The new image dimensions, format, and mipmaps configuration should match the existing texture's image configuration, otherwise it has to be re-created with the $(D createFromImage) method.
	Use this method over $(D createFromImage) if you need to update the texture frequently, which is faster than allocating additional memory for a new texture each time.
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
	Resizes the texture to the specified dimensions.
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
