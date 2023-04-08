/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.image;
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
import godot.resource;
/**

*/
@GodotBaseClass struct Image
{
	package(godot) enum string _GODOT_internal_name = "Image";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_data") GodotMethod!(Dictionary) _getData;
		@GodotName("_set_data") GodotMethod!(void, Dictionary) _setData;
		@GodotName("blend_rect") GodotMethod!(void, Image, Rect2, Vector2) blendRect;
		@GodotName("blend_rect_mask") GodotMethod!(void, Image, Image, Rect2, Vector2) blendRectMask;
		@GodotName("blit_rect") GodotMethod!(void, Image, Rect2, Vector2) blitRect;
		@GodotName("blit_rect_mask") GodotMethod!(void, Image, Image, Rect2, Vector2) blitRectMask;
		@GodotName("bumpmap_to_normalmap") GodotMethod!(void, double) bumpmapToNormalmap;
		@GodotName("clear_mipmaps") GodotMethod!(void) clearMipmaps;
		@GodotName("compress") GodotMethod!(GodotError, long, long, double) compress;
		@GodotName("convert") GodotMethod!(void, long) convert;
		@GodotName("copy_from") GodotMethod!(void, Image) copyFrom;
		@GodotName("create") GodotMethod!(void, long, long, bool, long) create;
		@GodotName("create_from_data") GodotMethod!(void, long, long, bool, long, PoolByteArray) createFromData;
		@GodotName("crop") GodotMethod!(void, long, long) crop;
		@GodotName("decompress") GodotMethod!(GodotError) decompress;
		@GodotName("detect_alpha") GodotMethod!(Image.AlphaMode) detectAlpha;
		@GodotName("expand_x2_hq2x") GodotMethod!(void) expandX2Hq2x;
		@GodotName("fill") GodotMethod!(void, Color) fill;
		@GodotName("fill_rect") GodotMethod!(void, Rect2, Color) fillRect;
		@GodotName("fix_alpha_edges") GodotMethod!(void) fixAlphaEdges;
		@GodotName("flip_x") GodotMethod!(void) flipX;
		@GodotName("flip_y") GodotMethod!(void) flipY;
		@GodotName("generate_mipmaps") GodotMethod!(GodotError, bool) generateMipmaps;
		@GodotName("get_data") GodotMethod!(PoolByteArray) getData;
		@GodotName("get_format") GodotMethod!(Image.Format) getFormat;
		@GodotName("get_height") GodotMethod!(long) getHeight;
		@GodotName("get_mipmap_offset") GodotMethod!(long, long) getMipmapOffset;
		@GodotName("get_pixel") GodotMethod!(Color, long, long) getPixel;
		@GodotName("get_pixelv") GodotMethod!(Color, Vector2) getPixelv;
		@GodotName("get_rect") GodotMethod!(Image, Rect2) getRect;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("get_used_rect") GodotMethod!(Rect2) getUsedRect;
		@GodotName("get_width") GodotMethod!(long) getWidth;
		@GodotName("has_mipmaps") GodotMethod!(bool) hasMipmaps;
		@GodotName("is_compressed") GodotMethod!(bool) isCompressed;
		@GodotName("is_empty") GodotMethod!(bool) isEmpty;
		@GodotName("is_invisible") GodotMethod!(bool) isInvisible;
		@GodotName("load") GodotMethod!(GodotError, String) load;
		@GodotName("load_bmp_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadBmpFromBuffer;
		@GodotName("load_jpg_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadJpgFromBuffer;
		@GodotName("load_png_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadPngFromBuffer;
		@GodotName("load_tga_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadTgaFromBuffer;
		@GodotName("load_webp_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadWebpFromBuffer;
		@GodotName("lock") GodotMethod!(void) lock;
		@GodotName("normalmap_to_xy") GodotMethod!(void) normalmapToXy;
		@GodotName("premultiply_alpha") GodotMethod!(void) premultiplyAlpha;
		@GodotName("resize") GodotMethod!(void, long, long, long) resize;
		@GodotName("resize_to_po2") GodotMethod!(void, bool, long) resizeToPo2;
		@GodotName("rgbe_to_srgb") GodotMethod!(Image) rgbeToSrgb;
		@GodotName("save_exr") GodotMethod!(GodotError, String, bool) saveExr;
		@GodotName("save_png") GodotMethod!(GodotError, String) savePng;
		@GodotName("save_png_to_buffer") GodotMethod!(PoolByteArray) savePngToBuffer;
		@GodotName("set_pixel") GodotMethod!(void, long, long, Color) setPixel;
		@GodotName("set_pixelv") GodotMethod!(void, Vector2, Color) setPixelv;
		@GodotName("shrink_x2") GodotMethod!(void) shrinkX2;
		@GodotName("srgb_to_linear") GodotMethod!(void) srgbToLinear;
		@GodotName("unlock") GodotMethod!(void) unlock;
	}
	/// 
	pragma(inline, true) bool opEquals(in Image other) const
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
	/// Construct a new instance of Image.
	/// Note: use `memnew!Image` instead.
	static Image _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Image");
		if(constructor is null) return typeof(this).init;
		return cast(Image)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum AlphaMode : int
	{
		/** */
		alphaNone = 0,
		/** */
		alphaBit = 1,
		/** */
		alphaBlend = 2,
	}
	/// 
	enum CompressSource : int
	{
		/** */
		compressSourceGeneric = 0,
		/** */
		compressSourceSrgb = 1,
		/** */
		compressSourceNormal = 2,
		/** */
		compressSourceLayered = 3,
	}
	/// 
	enum Interpolation : int
	{
		/** */
		interpolateNearest = 0,
		/** */
		interpolateBilinear = 1,
		/** */
		interpolateCubic = 2,
		/** */
		interpolateTrilinear = 3,
		/** */
		interpolateLanczos = 4,
	}
	/// 
	enum CompressMode : int
	{
		/** */
		compressS3tc = 0,
		/** */
		compressPvrtc2 = 1,
		/** */
		compressPvrtc4 = 2,
		/** */
		compressEtc = 3,
		/** */
		compressEtc2 = 4,
	}
	/// 
	enum Format : int
	{
		/** */
		formatL8 = 0,
		/** */
		formatLa8 = 1,
		/** */
		formatR8 = 2,
		/** */
		formatRg8 = 3,
		/** */
		formatRgb8 = 4,
		/** */
		formatRgba8 = 5,
		/** */
		formatRgba4444 = 6,
		/** */
		formatRgba5551 = 7,
		/** */
		formatRf = 8,
		/** */
		formatRgf = 9,
		/** */
		formatRgbf = 10,
		/** */
		formatRgbaf = 11,
		/** */
		formatRh = 12,
		/** */
		formatRgh = 13,
		/** */
		formatRgbh = 14,
		/** */
		formatRgbah = 15,
		/** */
		formatRgbe9995 = 16,
		/** */
		formatDxt1 = 17,
		/** */
		formatDxt3 = 18,
		/** */
		formatDxt5 = 19,
		/** */
		formatRgtcR = 20,
		/** */
		formatRgtcRg = 21,
		/** */
		formatBptcRgba = 22,
		/** */
		formatBptcRgbf = 23,
		/** */
		formatBptcRgbfu = 24,
		/** */
		formatPvrtc2 = 25,
		/** */
		formatPvrtc2a = 26,
		/** */
		formatPvrtc4 = 27,
		/** */
		formatPvrtc4a = 28,
		/** */
		formatEtc = 29,
		/** */
		formatEtc2R11 = 30,
		/** */
		formatEtc2R11s = 31,
		/** */
		formatEtc2Rg11 = 32,
		/** */
		formatEtc2Rg11s = 33,
		/** */
		formatEtc2Rgb8 = 34,
		/** */
		formatEtc2Rgba8 = 35,
		/** */
		formatEtc2Rgb8a1 = 36,
		/** */
		formatMax = 37,
	}
	/// 
	enum Constants : int
	{
		interpolateNearest = 0,
		formatL8 = 0,
		alphaNone = 0,
		compressS3tc = 0,
		compressSourceGeneric = 0,
		compressSourceSrgb = 1,
		alphaBit = 1,
		interpolateBilinear = 1,
		formatLa8 = 1,
		compressPvrtc2 = 1,
		compressSourceNormal = 2,
		interpolateCubic = 2,
		formatR8 = 2,
		compressPvrtc4 = 2,
		alphaBlend = 2,
		compressEtc = 3,
		compressSourceLayered = 3,
		formatRg8 = 3,
		interpolateTrilinear = 3,
		interpolateLanczos = 4,
		formatRgb8 = 4,
		compressEtc2 = 4,
		formatRgba8 = 5,
		formatRgba4444 = 6,
		formatRgba5551 = 7,
		formatRf = 8,
		formatRgf = 9,
		formatRgbf = 10,
		formatRgbaf = 11,
		formatRh = 12,
		formatRgh = 13,
		formatRgbh = 14,
		formatRgbah = 15,
		formatRgbe9995 = 16,
		formatDxt1 = 17,
		formatDxt3 = 18,
		formatDxt5 = 19,
		formatRgtcR = 20,
		formatRgtcRg = 21,
		formatBptcRgba = 22,
		formatBptcRgbf = 23,
		formatBptcRgbfu = 24,
		formatPvrtc2 = 25,
		formatPvrtc2a = 26,
		formatPvrtc4 = 27,
		formatPvrtc4a = 28,
		formatEtc = 29,
		formatEtc2R11 = 30,
		formatEtc2R11s = 31,
		formatEtc2Rg11 = 32,
		formatEtc2Rg11s = 33,
		formatEtc2Rgb8 = 34,
		formatEtc2Rgba8 = 35,
		formatEtc2Rgb8a1 = 36,
		formatMax = 37,
		/** */
		maxHeight = 16384,
		/** */
		maxWidth = 16384,
	}
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	void _setData(in Dictionary data)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void blendRect(Image src, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blendRect, _godot_object, src, src_rect, dst);
	}
	/**
	
	*/
	void blendRectMask(Image src, Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blendRectMask, _godot_object, src, mask, src_rect, dst);
	}
	/**
	
	*/
	void blitRect(Image src, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blitRect, _godot_object, src, src_rect, dst);
	}
	/**
	
	*/
	void blitRectMask(Image src, Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blitRectMask, _godot_object, src, mask, src_rect, dst);
	}
	/**
	
	*/
	void bumpmapToNormalmap(in double bump_scale = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bumpmapToNormalmap, _godot_object, bump_scale);
	}
	/**
	
	*/
	void clearMipmaps()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearMipmaps, _godot_object);
	}
	/**
	
	*/
	GodotError compress(in long mode, in long source, in double lossy_quality)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.compress, _godot_object, mode, source, lossy_quality);
	}
	/**
	
	*/
	void convert(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.convert, _godot_object, format);
	}
	/**
	
	*/
	void copyFrom(Image src)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.copyFrom, _godot_object, src);
	}
	/**
	
	*/
	void create(in long width, in long height, in bool use_mipmaps, in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.create, _godot_object, width, height, use_mipmaps, format);
	}
	/**
	
	*/
	void createFromData(in long width, in long height, in bool use_mipmaps, in long format, in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFromData, _godot_object, width, height, use_mipmaps, format, data);
	}
	/**
	
	*/
	void crop(in long width, in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.crop, _godot_object, width, height);
	}
	/**
	
	*/
	GodotError decompress()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.decompress, _godot_object);
	}
	/**
	
	*/
	Image.AlphaMode detectAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.AlphaMode)(GDNativeClassBinding.detectAlpha, _godot_object);
	}
	/**
	
	*/
	void expandX2Hq2x()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.expandX2Hq2x, _godot_object);
	}
	/**
	
	*/
	void fill(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.fill, _godot_object, color);
	}
	/**
	
	*/
	void fillRect(in Rect2 rect, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.fillRect, _godot_object, rect, color);
	}
	/**
	
	*/
	void fixAlphaEdges()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.fixAlphaEdges, _godot_object);
	}
	/**
	
	*/
	void flipX()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.flipX, _godot_object);
	}
	/**
	
	*/
	void flipY()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.flipY, _godot_object);
	}
	/**
	
	*/
	GodotError generateMipmaps(in bool renormalize = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.generateMipmaps, _godot_object, renormalize);
	}
	/**
	
	*/
	PoolByteArray getData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getData, _godot_object);
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
	long getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	long getMipmapOffset(in long mipmap) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMipmapOffset, _godot_object, mipmap);
	}
	/**
	
	*/
	Color getPixel(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getPixel, _godot_object, x, y);
	}
	/**
	
	*/
	Color getPixelv(in Vector2 src) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getPixelv, _godot_object, src);
	}
	/**
	
	*/
	Ref!Image getRect(in Rect2 rect) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.getRect, _godot_object, rect);
	}
	/**
	
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	
	*/
	Rect2 getUsedRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getUsedRect, _godot_object);
	}
	/**
	
	*/
	long getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getWidth, _godot_object);
	}
	/**
	
	*/
	bool hasMipmaps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasMipmaps, _godot_object);
	}
	/**
	
	*/
	bool isCompressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCompressed, _godot_object);
	}
	/**
	
	*/
	bool isEmpty() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEmpty, _godot_object);
	}
	/**
	
	*/
	bool isInvisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInvisible, _godot_object);
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
	GodotError loadBmpFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadBmpFromBuffer, _godot_object, buffer);
	}
	/**
	
	*/
	GodotError loadJpgFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadJpgFromBuffer, _godot_object, buffer);
	}
	/**
	
	*/
	GodotError loadPngFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadPngFromBuffer, _godot_object, buffer);
	}
	/**
	
	*/
	GodotError loadTgaFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadTgaFromBuffer, _godot_object, buffer);
	}
	/**
	
	*/
	GodotError loadWebpFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadWebpFromBuffer, _godot_object, buffer);
	}
	/**
	
	*/
	void lock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lock, _godot_object);
	}
	/**
	
	*/
	void normalmapToXy()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.normalmapToXy, _godot_object);
	}
	/**
	
	*/
	void premultiplyAlpha()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.premultiplyAlpha, _godot_object);
	}
	/**
	
	*/
	void resize(in long width, in long height, in long interpolation = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resize, _godot_object, width, height, interpolation);
	}
	/**
	
	*/
	void resizeToPo2(in bool square = false, in long interpolation = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resizeToPo2, _godot_object, square, interpolation);
	}
	/**
	
	*/
	Ref!Image rgbeToSrgb()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.rgbeToSrgb, _godot_object);
	}
	/**
	
	*/
	GodotError saveExr(in String path, in bool grayscale = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveExr, _godot_object, path, grayscale);
	}
	/**
	
	*/
	GodotError savePng(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.savePng, _godot_object, path);
	}
	/**
	
	*/
	PoolByteArray savePngToBuffer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.savePngToBuffer, _godot_object);
	}
	/**
	
	*/
	void setPixel(in long x, in long y, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPixel, _godot_object, x, y, color);
	}
	/**
	
	*/
	void setPixelv(in Vector2 dst, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPixelv, _godot_object, dst, color);
	}
	/**
	
	*/
	void shrinkX2()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shrinkX2, _godot_object);
	}
	/**
	
	*/
	void srgbToLinear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.srgbToLinear, _godot_object);
	}
	/**
	
	*/
	void unlock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unlock, _godot_object);
	}
	/**
	
	*/
	@property Dictionary data()
	{
		return _getData();
	}
	/// ditto
	@property void data(Dictionary v)
	{
		_setData(v);
	}
}
