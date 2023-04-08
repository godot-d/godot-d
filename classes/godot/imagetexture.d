/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.image;
/**

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
	/// 
	enum Storage : int
	{
		/** */
		storageRaw = 0,
		/** */
		storageCompressLossy = 1,
		/** */
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
	
	*/
	void create(in long width, in long height, in long format, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.create, _godot_object, width, height, format, flags);
	}
	/**
	
	*/
	void createFromImage(Image image, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFromImage, _godot_object, image, flags);
	}
	/**
	
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
	
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.load, _godot_object, path);
	}
	/**
	
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
