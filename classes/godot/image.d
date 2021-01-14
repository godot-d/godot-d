/**
Image datatype.

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
import godot.object;
import godot.classdb;
import godot.resource;
/**
Image datatype.

Native image datatype. Contains image data which can be converted to an $(D ImageTexture) and provides commonly used $(I image processing) methods. The maximum width and height for an $(D Image) are $(D constant MAX_WIDTH) and $(D constant MAX_HEIGHT).
An $(D Image) cannot be assigned to a `texture` property of an object directly (such as $(D Sprite)), and has to be converted manually to an $(D ImageTexture) first.
$(B Note:) The maximum image size is 16384×16384 pixels due to graphics hardware limitations. Larger images may fail to import.
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
		@GodotName("load_jpg_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadJpgFromBuffer;
		@GodotName("load_png_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadPngFromBuffer;
		@GodotName("load_webp_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadWebpFromBuffer;
		@GodotName("lock") GodotMethod!(void) lock;
		@GodotName("normalmap_to_xy") GodotMethod!(void) normalmapToXy;
		@GodotName("premultiply_alpha") GodotMethod!(void) premultiplyAlpha;
		@GodotName("resize") GodotMethod!(void, long, long, long) resize;
		@GodotName("resize_to_po2") GodotMethod!(void, bool) resizeToPo2;
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
		/**
		Image does not have alpha.
		*/
		alphaNone = 0,
		/**
		Image stores alpha in a single bit.
		*/
		alphaBit = 1,
		/**
		Image uses alpha.
		*/
		alphaBlend = 2,
	}
	/// 
	enum CompressSource : int
	{
		/**
		Source texture (before compression) is a regular texture. Default for all textures.
		*/
		compressSourceGeneric = 0,
		/**
		Source texture (before compression) is in sRGB space.
		*/
		compressSourceSrgb = 1,
		/**
		Source texture (before compression) is a normal texture (e.g. it can be compressed into two channels).
		*/
		compressSourceNormal = 2,
	}
	/// 
	enum Interpolation : int
	{
		/**
		Performs nearest-neighbor interpolation. If the image is resized, it will be pixelated.
		*/
		interpolateNearest = 0,
		/**
		Performs bilinear interpolation. If the image is resized, it will be blurry. This mode is faster than $(D constant INTERPOLATE_CUBIC), but it results in lower quality.
		*/
		interpolateBilinear = 1,
		/**
		Performs cubic interpolation. If the image is resized, it will be blurry. This mode often gives better results compared to $(D constant INTERPOLATE_BILINEAR), at the cost of being slower.
		*/
		interpolateCubic = 2,
		/**
		Performs bilinear separately on the two most-suited mipmap levels, then linearly interpolates between them.
		It's slower than $(D constant INTERPOLATE_BILINEAR), but produces higher-quality results with much less aliasing artifacts.
		If the image does not have mipmaps, they will be generated and used internally, but no mipmaps will be generated on the resulting image.
		$(B Note:) If you intend to scale multiple copies of the original image, it's better to call $(D generateMipmaps)] on it in advance, to avoid wasting processing power in generating them again and again.
		On the other hand, if the image already has mipmaps, they will be used, and a new set will be generated for the resulting image.
		*/
		interpolateTrilinear = 3,
		/**
		Performs Lanczos interpolation. This is the slowest image resizing mode, but it typically gives the best results, especially when downscalng images.
		*/
		interpolateLanczos = 4,
	}
	/// 
	enum CompressMode : int
	{
		/**
		Use S3TC compression.
		*/
		compressS3tc = 0,
		/**
		Use PVRTC2 compression.
		*/
		compressPvrtc2 = 1,
		/**
		Use PVRTC4 compression.
		*/
		compressPvrtc4 = 2,
		/**
		Use ETC compression.
		*/
		compressEtc = 3,
		/**
		Use ETC2 compression.
		*/
		compressEtc2 = 4,
	}
	/// 
	enum Format : int
	{
		/**
		Texture format with a single 8-bit depth representing luminance.
		*/
		formatL8 = 0,
		/**
		OpenGL texture format with two values, luminance and alpha each stored with 8 bits.
		*/
		formatLa8 = 1,
		/**
		OpenGL texture format `RED` with a single component and a bitdepth of 8.
		*/
		formatR8 = 2,
		/**
		OpenGL texture format `RG` with two components and a bitdepth of 8 for each.
		*/
		formatRg8 = 3,
		/**
		OpenGL texture format `RGB` with three components, each with a bitdepth of 8.
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatRgb8 = 4,
		/**
		OpenGL texture format `RGBA` with four components, each with a bitdepth of 8.
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatRgba8 = 5,
		/**
		OpenGL texture format `RGBA` with four components, each with a bitdepth of 4.
		*/
		formatRgba4444 = 6,
		/**
		OpenGL texture format `GL_RGB5_A1` where 5 bits of depth for each component of RGB and one bit for alpha.
		*/
		formatRgba5551 = 7,
		/**
		OpenGL texture format `GL_R32F` where there's one component, a 32-bit floating-point value.
		*/
		formatRf = 8,
		/**
		OpenGL texture format `GL_RG32F` where there are two components, each a 32-bit floating-point values.
		*/
		formatRgf = 9,
		/**
		OpenGL texture format `GL_RGB32F` where there are three components, each a 32-bit floating-point values.
		*/
		formatRgbf = 10,
		/**
		OpenGL texture format `GL_RGBA32F` where there are four components, each a 32-bit floating-point values.
		*/
		formatRgbaf = 11,
		/**
		OpenGL texture format `GL_R32F` where there's one component, a 16-bit "half-precision" floating-point value.
		*/
		formatRh = 12,
		/**
		OpenGL texture format `GL_RG32F` where there are two components, each a 16-bit "half-precision" floating-point value.
		*/
		formatRgh = 13,
		/**
		OpenGL texture format `GL_RGB32F` where there are three components, each a 16-bit "half-precision" floating-point value.
		*/
		formatRgbh = 14,
		/**
		OpenGL texture format `GL_RGBA32F` where there are four components, each a 16-bit "half-precision" floating-point value.
		*/
		formatRgbah = 15,
		/**
		A special OpenGL texture format where the three color components have 9 bits of precision and all three share a single 5-bit exponent.
		*/
		formatRgbe9995 = 16,
		/**
		The $(D url=https://en.wikipedia.org/wiki/S3_Texture_Compression)S3TC$(D /url) texture format that uses Block Compression 1, and is the smallest variation of S3TC, only providing 1 bit of alpha and color data being premultiplied with alpha.
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatDxt1 = 17,
		/**
		The $(D url=https://en.wikipedia.org/wiki/S3_Texture_Compression)S3TC$(D /url) texture format that uses Block Compression 2, and color data is interpreted as not having been premultiplied by alpha. Well suited for images with sharp alpha transitions between translucent and opaque areas.
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatDxt3 = 18,
		/**
		The $(D url=https://en.wikipedia.org/wiki/S3_Texture_Compression)S3TC$(D /url) texture format also known as Block Compression 3 or BC3 that contains 64 bits of alpha channel data followed by 64 bits of DXT1-encoded color data. Color data is not premultiplied by alpha, same as DXT3. DXT5 generally produces superior results for transparent gradients compared to DXT3.
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatDxt5 = 19,
		/**
		Texture format that uses $(D url=https://www.khronos.org/opengl/wiki/Red_Green_Texture_Compression)Red Green Texture Compression$(D /url), normalizing the red channel data using the same compression algorithm that DXT5 uses for the alpha channel.
		*/
		formatRgtcR = 20,
		/**
		Texture format that uses $(D url=https://www.khronos.org/opengl/wiki/Red_Green_Texture_Compression)Red Green Texture Compression$(D /url), normalizing the red and green channel data using the same compression algorithm that DXT5 uses for the alpha channel.
		*/
		formatRgtcRg = 21,
		/**
		Texture format that uses $(D url=https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression)BPTC$(D /url) compression with unsigned normalized RGBA components.
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatBptcRgba = 22,
		/**
		Texture format that uses $(D url=https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression)BPTC$(D /url) compression with signed floating-point RGB components.
		*/
		formatBptcRgbf = 23,
		/**
		Texture format that uses $(D url=https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression)BPTC$(D /url) compression with unsigned floating-point RGB components.
		*/
		formatBptcRgbfu = 24,
		/**
		Texture format used on PowerVR-supported mobile platforms, uses 2-bit color depth with no alpha. More information can be found $(D url=https://en.wikipedia.org/wiki/PVRTC)here$(D /url).
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatPvrtc2 = 25,
		/**
		Same as $(D url=https://en.wikipedia.org/wiki/PVRTC)PVRTC2$(D /url), but with an alpha component.
		*/
		formatPvrtc2a = 26,
		/**
		Similar to $(D url=https://en.wikipedia.org/wiki/PVRTC)PVRTC2$(D /url), but with 4-bit color depth and no alpha.
		*/
		formatPvrtc4 = 27,
		/**
		Same as $(D url=https://en.wikipedia.org/wiki/PVRTC)PVRTC4$(D /url), but with an alpha component.
		*/
		formatPvrtc4a = 28,
		/**
		$(D url=https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC1)Ericsson Texture Compression format 1$(D /url), also referred to as "ETC1", and is part of the OpenGL ES graphics standard. This format cannot store an alpha channel.
		*/
		formatEtc = 29,
		/**
		$(D url=https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC)Ericsson Texture Compression format 2$(D /url) (`R11_EAC` variant), which provides one channel of unsigned data.
		*/
		formatEtc2R11 = 30,
		/**
		$(D url=https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC)Ericsson Texture Compression format 2$(D /url) (`SIGNED_R11_EAC` variant), which provides one channel of signed data.
		*/
		formatEtc2R11s = 31,
		/**
		$(D url=https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC)Ericsson Texture Compression format 2$(D /url) (`RG11_EAC` variant), which provides two channels of unsigned data.
		*/
		formatEtc2Rg11 = 32,
		/**
		$(D url=https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC)Ericsson Texture Compression format 2$(D /url) (`SIGNED_RG11_EAC` variant), which provides two channels of signed data.
		*/
		formatEtc2Rg11s = 33,
		/**
		$(D url=https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC)Ericsson Texture Compression format 2$(D /url) (`RGB8` variant), which is a follow-up of ETC1 and compresses RGB888 data.
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatEtc2Rgb8 = 34,
		/**
		$(D url=https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC)Ericsson Texture Compression format 2$(D /url) (`RGBA8`variant), which compresses RGBA8888 data with full alpha support.
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatEtc2Rgba8 = 35,
		/**
		$(D url=https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC2_and_EAC)Ericsson Texture Compression format 2$(D /url) (`RGB8_PUNCHTHROUGH_ALPHA1` variant), which compresses RGBA data to make alpha either fully transparent or fully opaque.
		$(B Note:) When creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatEtc2Rgb8a1 = 36,
		/**
		Represents the size of the $(D format) enum.
		*/
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
		/**
		The maximal height allowed for $(D Image) resources.
		*/
		maxHeight = 16384,
		/**
		The maximal width allowed for $(D Image) resources.
		*/
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
	Alpha-blends `src_rect` from `src` image to this image at coordinates `dest`.
	*/
	void blendRect(Image src, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blendRect, _godot_object, src, src_rect, dst);
	}
	/**
	Alpha-blends `src_rect` from `src` image to this image using `mask` image at coordinates `dst`. Alpha channels are required for both `src` and `mask`. `dst` pixels and `src` pixels will blend if the corresponding mask pixel's alpha value is not 0. `src` image and `mask` image $(B must) have the same size (width and height) but they can have different formats.
	*/
	void blendRectMask(Image src, Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blendRectMask, _godot_object, src, mask, src_rect, dst);
	}
	/**
	Copies `src_rect` from `src` image to this image at coordinates `dst`.
	*/
	void blitRect(Image src, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blitRect, _godot_object, src, src_rect, dst);
	}
	/**
	Blits `src_rect` area from `src` image to this image at the coordinates given by `dst`. `src` pixel is copied onto `dst` if the corresponding `mask` pixel's alpha value is not 0. `src` image and `mask` image $(B must) have the same size (width and height) but they can have different formats.
	*/
	void blitRectMask(Image src, Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blitRectMask, _godot_object, src, mask, src_rect, dst);
	}
	/**
	Converts a bumpmap to a normalmap. A bumpmap provides a height offset per-pixel, while a normalmap provides a normal direction per pixel.
	*/
	void bumpmapToNormalmap(in double bump_scale = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bumpmapToNormalmap, _godot_object, bump_scale);
	}
	/**
	Removes the image's mipmaps.
	*/
	void clearMipmaps()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearMipmaps, _godot_object);
	}
	/**
	Compresses the image to use less memory. Can not directly access pixel data while the image is compressed. Returns error if the chosen compression mode is not available. See $(D compressmode) and $(D compresssource) constants.
	*/
	GodotError compress(in long mode, in long source, in double lossy_quality)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.compress, _godot_object, mode, source, lossy_quality);
	}
	/**
	Converts the image's format. See $(D format) constants.
	*/
	void convert(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.convert, _godot_object, format);
	}
	/**
	Copies `src` image to this image.
	*/
	void copyFrom(Image src)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.copyFrom, _godot_object, src);
	}
	/**
	Creates an empty image of given size and format. See $(D format) constants. If `use_mipmaps` is `true` then generate mipmaps for this image. See the $(D generateMipmaps).
	*/
	void create(in long width, in long height, in bool use_mipmaps, in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.create, _godot_object, width, height, use_mipmaps, format);
	}
	/**
	Creates a new image of given size and format. See $(D format) constants. Fills the image with the given raw data. If `use_mipmaps` is `true` then loads mipmaps for this image from `data`. See $(D generateMipmaps).
	*/
	void createFromData(in long width, in long height, in bool use_mipmaps, in long format, in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createFromData, _godot_object, width, height, use_mipmaps, format, data);
	}
	/**
	Crops the image to the given `width` and `height`. If the specified size is larger than the current size, the extra area is filled with black pixels.
	*/
	void crop(in long width, in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.crop, _godot_object, width, height);
	}
	/**
	Decompresses the image if it is compressed. Returns an error if decompress function is not available.
	*/
	GodotError decompress()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.decompress, _godot_object);
	}
	/**
	Returns $(D constant ALPHA_BLEND) if the image has data for alpha values. Returns $(D constant ALPHA_BIT) if all the alpha values are stored in a single bit. Returns $(D constant ALPHA_NONE) if no data for alpha values is found.
	*/
	Image.AlphaMode detectAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.AlphaMode)(GDNativeClassBinding.detectAlpha, _godot_object);
	}
	/**
	Stretches the image and enlarges it by a factor of 2. No interpolation is done.
	*/
	void expandX2Hq2x()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.expandX2Hq2x, _godot_object);
	}
	/**
	Fills the image with a given $(D Color).
	*/
	void fill(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.fill, _godot_object, color);
	}
	/**
	Blends low-alpha pixels with nearby pixels.
	*/
	void fixAlphaEdges()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.fixAlphaEdges, _godot_object);
	}
	/**
	Flips the image horizontally.
	*/
	void flipX()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.flipX, _godot_object);
	}
	/**
	Flips the image vertically.
	*/
	void flipY()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.flipY, _godot_object);
	}
	/**
	Generates mipmaps for the image. Mipmaps are pre-calculated and lower resolution copies of the image. Mipmaps are automatically used if the image needs to be scaled down when rendered. This improves image quality and the performance of the rendering. Returns an error if the image is compressed, in a custom format or if the image's width/height is 0.
	*/
	GodotError generateMipmaps(in bool renormalize = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.generateMipmaps, _godot_object, renormalize);
	}
	/**
	Returns a copy of the image's raw data.
	*/
	PoolByteArray getData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getData, _godot_object);
	}
	/**
	Returns the image's format. See $(D format) constants.
	*/
	Image.Format getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.Format)(GDNativeClassBinding.getFormat, _godot_object);
	}
	/**
	Returns the image's height.
	*/
	long getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getHeight, _godot_object);
	}
	/**
	Returns the offset where the image's mipmap with index `mipmap` is stored in the `data` dictionary.
	*/
	long getMipmapOffset(in long mipmap) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMipmapOffset, _godot_object, mipmap);
	}
	/**
	Returns the color of the pixel at `(x, y)` if the image is locked. If the image is unlocked, it always returns a $(D Color) with the value `(0, 0, 0, 1.0)`. This is the same as $(D getPixelv), but two integer arguments instead of a Vector2 argument.
	*/
	Color getPixel(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getPixel, _godot_object, x, y);
	}
	/**
	Returns the color of the pixel at `src` if the image is locked. If the image is unlocked, it always returns a $(D Color) with the value `(0, 0, 0, 1.0)`. This is the same as $(D getPixel), but with a Vector2 argument instead of two integer arguments.
	*/
	Color getPixelv(in Vector2 src) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getPixelv, _godot_object, src);
	}
	/**
	Returns a new image that is a copy of the image's area specified with `rect`.
	*/
	Ref!Image getRect(in Rect2 rect) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.getRect, _godot_object, rect);
	}
	/**
	Returns the image's size (width and height).
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	Returns a $(D Rect2) enclosing the visible portion of the image, considering each pixel with a non-zero alpha channel as visible.
	*/
	Rect2 getUsedRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getUsedRect, _godot_object);
	}
	/**
	Returns the image's width.
	*/
	long getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getWidth, _godot_object);
	}
	/**
	Returns `true` if the image has generated mipmaps.
	*/
	bool hasMipmaps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasMipmaps, _godot_object);
	}
	/**
	Returns `true` if the image is compressed.
	*/
	bool isCompressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCompressed, _godot_object);
	}
	/**
	Returns `true` if the image has no data.
	*/
	bool isEmpty() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEmpty, _godot_object);
	}
	/**
	Returns `true` if all the image's pixels have an alpha value of 0. Returns `false` if any pixel has an alpha value higher than 0.
	*/
	bool isInvisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInvisible, _godot_object);
	}
	/**
	Loads an image from file `path`. See $(D url=https://docs.godotengine.org/en/3.2/getting_started/workflow/assets/importing_images.html#supported-image-formats)Supported image formats$(D /url) for a list of supported image formats and limitations.
	$(B Warning:) This method should only be used in the editor or in cases when you need to load external images at run-time, such as images located at the `user://` directory, and may not work in exported projects.
	See also $(D ImageTexture) description for usage examples.
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.load, _godot_object, path);
	}
	/**
	Loads an image from the binary contents of a JPEG file.
	*/
	GodotError loadJpgFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadJpgFromBuffer, _godot_object, buffer);
	}
	/**
	Loads an image from the binary contents of a PNG file.
	*/
	GodotError loadPngFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadPngFromBuffer, _godot_object, buffer);
	}
	/**
	Loads an image from the binary contents of a WebP file.
	*/
	GodotError loadWebpFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadWebpFromBuffer, _godot_object, buffer);
	}
	/**
	Locks the data for reading and writing access. Sends an error to the console if the image is not locked when reading or writing a pixel.
	*/
	void lock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lock, _godot_object);
	}
	/**
	Converts the image's data to represent coordinates on a 3D plane. This is used when the image represents a normalmap. A normalmap can add lots of detail to a 3D surface without increasing the polygon count.
	*/
	void normalmapToXy()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.normalmapToXy, _godot_object);
	}
	/**
	Multiplies color values with alpha values. Resulting color values for a pixel are `(color * alpha)/256`.
	*/
	void premultiplyAlpha()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.premultiplyAlpha, _godot_object);
	}
	/**
	Resizes the image to the given `width` and `height`. New pixels are calculated using the `interpolation` mode defined via $(D interpolation) constants.
	*/
	void resize(in long width, in long height, in long interpolation = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resize, _godot_object, width, height, interpolation);
	}
	/**
	Resizes the image to the nearest power of 2 for the width and height. If `square` is `true` then set width and height to be the same. New pixels are calculated using the `interpolation` mode defined via $(D interpolation) constants.
	*/
	void resizeToPo2(in bool square = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.resizeToPo2, _godot_object, square);
	}
	/**
	Converts a standard RGBE (Red Green Blue Exponent) image to an sRGB image.
	*/
	Ref!Image rgbeToSrgb()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.rgbeToSrgb, _godot_object);
	}
	/**
	Saves the image as an EXR file to `path`. If `grayscale` is `true` and the image has only one channel, it will be saved explicitly as monochrome rather than one red channel. This function will return $(D constant ERR_UNAVAILABLE) if Godot was compiled without the TinyEXR module.
	*/
	GodotError saveExr(in String path, in bool grayscale = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveExr, _godot_object, path, grayscale);
	}
	/**
	Saves the image as a PNG file to `path`.
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
	Sets the $(D Color) of the pixel at `(x, y)` if the image is locked. Example:
	
	
	var img = Image.new()
	img.create(img_width, img_height, false, Image.FORMAT_RGBA8)
	img.lock()
	img.set_pixel(x, y, color) # Works
	img.unlock()
	img.set_pixel(x, y, color) # Does not have an effect
	
	
	*/
	void setPixel(in long x, in long y, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPixel, _godot_object, x, y, color);
	}
	/**
	Sets the $(D Color) of the pixel at `(dst.x, dst.y)` if the image is locked. Note that the `dst` values must be integers. Example:
	
	
	var img = Image.new()
	img.create(img_width, img_height, false, Image.FORMAT_RGBA8)
	img.lock()
	img.set_pixelv(Vector2(x, y), color) # Works
	img.unlock()
	img.set_pixelv(Vector2(x, y), color) # Does not have an effect
	
	
	*/
	void setPixelv(in Vector2 dst, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPixelv, _godot_object, dst, color);
	}
	/**
	Shrinks the image by a factor of 2.
	*/
	void shrinkX2()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shrinkX2, _godot_object);
	}
	/**
	Converts the raw data from the sRGB colorspace to a linear scale.
	*/
	void srgbToLinear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.srgbToLinear, _godot_object);
	}
	/**
	Unlocks the data and prevents changes.
	*/
	void unlock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.unlock, _godot_object);
	}
	/**
	Holds all of the image's color data in a given format. See $(D format) constants.
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
