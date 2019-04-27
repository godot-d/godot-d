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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
/**
Image datatype.

Native image datatype. Contains image data, which can be converted to a $(D Texture), and several functions to interact with it. The maximum width and height for an $(D Image) are $(D constant MAX_WIDTH) and $(D constant MAX_HEIGHT).
*/
@GodotBaseClass struct Image
{
	enum string _GODOT_internal_name = "Image";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_width") GodotMethod!(long) getWidth;
		@GodotName("get_height") GodotMethod!(long) getHeight;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("has_mipmaps") GodotMethod!(bool) hasMipmaps;
		@GodotName("get_format") GodotMethod!(Image.Format) getFormat;
		@GodotName("get_data") GodotMethod!(PoolByteArray) getData;
		@GodotName("convert") GodotMethod!(void, long) convert;
		@GodotName("get_mipmap_offset") GodotMethod!(long, long) getMipmapOffset;
		@GodotName("resize_to_po2") GodotMethod!(void, bool) resizeToPo2;
		@GodotName("resize") GodotMethod!(void, long, long, long) resize;
		@GodotName("shrink_x2") GodotMethod!(void) shrinkX2;
		@GodotName("expand_x2_hq2x") GodotMethod!(void) expandX2Hq2x;
		@GodotName("crop") GodotMethod!(void, long, long) crop;
		@GodotName("flip_x") GodotMethod!(void) flipX;
		@GodotName("flip_y") GodotMethod!(void) flipY;
		@GodotName("generate_mipmaps") GodotMethod!(GodotError, bool) generateMipmaps;
		@GodotName("clear_mipmaps") GodotMethod!(void) clearMipmaps;
		@GodotName("create") GodotMethod!(void, long, long, bool, long) create;
		@GodotName("create_from_data") GodotMethod!(void, long, long, bool, long, PoolByteArray) createFromData;
		@GodotName("is_empty") GodotMethod!(bool) isEmpty;
		@GodotName("load") GodotMethod!(GodotError, String) load;
		@GodotName("save_png") GodotMethod!(GodotError, String) savePng;
		@GodotName("detect_alpha") GodotMethod!(Image.AlphaMode) detectAlpha;
		@GodotName("is_invisible") GodotMethod!(bool) isInvisible;
		@GodotName("compress") GodotMethod!(GodotError, long, long, double) compress;
		@GodotName("decompress") GodotMethod!(GodotError) decompress;
		@GodotName("is_compressed") GodotMethod!(bool) isCompressed;
		@GodotName("fix_alpha_edges") GodotMethod!(void) fixAlphaEdges;
		@GodotName("premultiply_alpha") GodotMethod!(void) premultiplyAlpha;
		@GodotName("srgb_to_linear") GodotMethod!(void) srgbToLinear;
		@GodotName("normalmap_to_xy") GodotMethod!(void) normalmapToXy;
		@GodotName("rgbe_to_srgb") GodotMethod!(Image) rgbeToSrgb;
		@GodotName("bumpmap_to_normalmap") GodotMethod!(void, double) bumpmapToNormalmap;
		@GodotName("blit_rect") GodotMethod!(void, Image, Rect2, Vector2) blitRect;
		@GodotName("blit_rect_mask") GodotMethod!(void, Image, Image, Rect2, Vector2) blitRectMask;
		@GodotName("blend_rect") GodotMethod!(void, Image, Rect2, Vector2) blendRect;
		@GodotName("blend_rect_mask") GodotMethod!(void, Image, Image, Rect2, Vector2) blendRectMask;
		@GodotName("fill") GodotMethod!(void, Color) fill;
		@GodotName("get_used_rect") GodotMethod!(Rect2) getUsedRect;
		@GodotName("get_rect") GodotMethod!(Image, Rect2) getRect;
		@GodotName("copy_from") GodotMethod!(void, Image) copyFrom;
		@GodotName("_set_data") GodotMethod!(void, Dictionary) _setData;
		@GodotName("_get_data") GodotMethod!(Dictionary) _getData;
		@GodotName("lock") GodotMethod!(void) lock;
		@GodotName("unlock") GodotMethod!(void) unlock;
		@GodotName("get_pixelv") GodotMethod!(Color, Vector2) getPixelv;
		@GodotName("get_pixel") GodotMethod!(Color, long, long) getPixel;
		@GodotName("set_pixelv") GodotMethod!(void, Vector2, Color) setPixelv;
		@GodotName("set_pixel") GodotMethod!(void, long, long, Color) setPixel;
		@GodotName("load_png_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadPngFromBuffer;
		@GodotName("load_jpg_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadJpgFromBuffer;
		@GodotName("load_webp_from_buffer") GodotMethod!(GodotError, PoolByteArray) loadWebpFromBuffer;
	}
	bool opEquals(in Image other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Image opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		alphaNone = 0,
		/**
		
		*/
		alphaBit = 1,
		/**
		
		*/
		alphaBlend = 2,
	}
	/// 
	enum CompressSource : int
	{
		/**
		
		*/
		compressSourceGeneric = 0,
		/**
		
		*/
		compressSourceSrgb = 1,
		/**
		
		*/
		compressSourceNormal = 2,
	}
	/// 
	enum Interpolation : int
	{
		/**
		
		*/
		interpolateNearest = 0,
		/**
		
		*/
		interpolateBilinear = 1,
		/**
		
		*/
		interpolateCubic = 2,
		/**
		Performs bilinear separately on the two most suited mipmap levels, then linearly interpolates between them.
		It's slower than `INTERPOLATE_BILINEAR`, but produces higher quality results, with much less aliasing artifacts.
		If the image does not have mipmaps, they will be generated and used internally, but no mipmaps will be generated on the resulting image. (Note that if you intend to scale multiple copies of the original image, it's better to call `generate_mipmaps` on it in advance, to avoid wasting processing power in generating them again and again.)
		On the other hand, if the image already has mipmaps, they will be used, and a new set will be generated for the resulting image.
		*/
		interpolateTrilinear = 3,
	}
	/// 
	enum CompressMode : int
	{
		/**
		
		*/
		compressS3tc = 0,
		/**
		
		*/
		compressPvrtc2 = 1,
		/**
		
		*/
		compressPvrtc4 = 2,
		/**
		
		*/
		compressEtc = 3,
		/**
		
		*/
		compressEtc2 = 4,
	}
	/// 
	enum Format : int
	{
		/**
		
		*/
		formatL8 = 0,
		/**
		
		*/
		formatLa8 = 1,
		/**
		OpenGL texture format RED with a single component and a bitdepth of 8.
		*/
		formatR8 = 2,
		/**
		OpenGL texture format RG with two components and a bitdepth of 8 for each.
		*/
		formatRg8 = 3,
		/**
		OpenGL texture format RGB with three components, each with a bitdepth of 8. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatRgb8 = 4,
		/**
		OpenGL texture format RGBA with four components, each with a bitdepth of 8. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatRgba8 = 5,
		/**
		OpenGL texture format RGBA with four components, each with a bitdepth of 4.
		*/
		formatRgba4444 = 6,
		/**
		OpenGL texture format GL_RGB5_A1 where 5 bits of depth for each component of RGB and one bit for alpha.
		*/
		formatRgba5551 = 7,
		/**
		OpenGL texture format GL_R32F where there's one component, a 32-bit floating-point value.
		*/
		formatRf = 8,
		/**
		OpenGL texture format GL_RG32F where there are two components, each a 32-bit floating-point values.
		*/
		formatRgf = 9,
		/**
		OpenGL texture format GL_RGB32F where there are three components, each a 32-bit floating-point values.
		*/
		formatRgbf = 10,
		/**
		OpenGL texture format GL_RGBA32F where there are four components, each a 32-bit floating-point values.
		*/
		formatRgbaf = 11,
		/**
		OpenGL texture format GL_R32F where there's one component, a 16-bit "half-precision" floating-point value.
		*/
		formatRh = 12,
		/**
		OpenGL texture format GL_RG32F where there's two components, each a 16-bit "half-precision" floating-point value.
		*/
		formatRgh = 13,
		/**
		OpenGL texture format GL_RGB32F where there's three components, each a 16-bit "half-precision" floating-point value.
		*/
		formatRgbh = 14,
		/**
		OpenGL texture format GL_RGBA32F where there's four components, each a 16-bit "half-precision" floating-point value.
		*/
		formatRgbah = 15,
		/**
		A special OpenGL texture format where the three color components have 9 bits of precision and all three share a single exponent.
		*/
		formatRgbe9995 = 16,
		/**
		The S3TC texture format that uses Block Compression 1, and is the smallest variation of S3TC, only providing 1 bit of alpha and color data being premultiplied with alpha. More information can be found at https://www.khronos.org/opengl/wiki/S3_Texture_Compression. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatDxt1 = 17,
		/**
		The S3TC texture format that uses Block Compression 2, and color data is interpreted as not having been premultiplied by alpha. Well suited for images with sharp alpha transitions between translucent and opaque areas. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatDxt3 = 18,
		/**
		The S3TC texture format also known as Block Compression 3 or BC3 that contains 64 bits of alpha channel data followed by 64 bits of DXT1-encoded color data. Color data is not premultiplied by alpha, same as DXT3. DXT5 generally produces superior results for transparency gradients than DXT3. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatDxt5 = 19,
		/**
		Texture format that uses Red Green Texture Compression, normalizing the red channel data using the same compression algorithm that DXT5 uses for the alpha channel. More information can be found here https://www.khronos.org/opengl/wiki/Red_Green_Texture_Compression.
		*/
		formatRgtcR = 20,
		/**
		Texture format that uses Red Green Texture Compression, normalizing the red and green channel data using the same compression algorithm that DXT5 uses for the alpha channel.
		*/
		formatRgtcRg = 21,
		/**
		Texture format that uses BPTC compression with unsigned normalized RGBA components. More information can be found at https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatBptcRgba = 22,
		/**
		Texture format that uses BPTC compression with signed floating-point RGB components.
		*/
		formatBptcRgbf = 23,
		/**
		Texture format that uses BPTC compression with unsigned floating-point RGB components.
		*/
		formatBptcRgbfu = 24,
		/**
		Texture format used on PowerVR-supported mobile platforms, uses 2 bit color depth with no alpha. More information on PVRTC can be found here https://en.wikipedia.org/wiki/PVRTC. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatPvrtc2 = 25,
		/**
		Same as PVRTC2, but with an alpha component.
		*/
		formatPvrtc2a = 26,
		/**
		Similar to PVRTC2, but with 4 bit color depth and no alpha.
		*/
		formatPvrtc4 = 27,
		/**
		Same as PVRTC4, but with an alpha component.
		*/
		formatPvrtc4a = 28,
		/**
		Ericsson Texture Compression format, also referred to as 'ETC1', and is part of the OpenGL ES graphics standard. An overview of the format is given at https://en.wikipedia.org/wiki/Ericsson_Texture_Compression#ETC1.
		*/
		formatEtc = 29,
		/**
		Ericsson Texture Compression format 2 variant R11_EAC, which provides one channel of unsigned data.
		*/
		formatEtc2R11 = 30,
		/**
		Ericsson Texture Compression format 2 variant SIGNED_R11_EAC, which provides one channel of signed data.
		*/
		formatEtc2R11s = 31,
		/**
		Ericsson Texture Compression format 2 variant RG11_EAC, which provides two channels of unsigned data.
		*/
		formatEtc2Rg11 = 32,
		/**
		Ericsson Texture Compression format 2 variant SIGNED_RG11_EAC, which provides two channels of signed data.
		*/
		formatEtc2Rg11s = 33,
		/**
		Ericsson Texture Compression format 2 variant RGB8, which is a followup of ETC1 and compresses RGB888 data. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatEtc2Rgb8 = 34,
		/**
		Ericsson Texture Compression format 2 variant RGBA8, which compresses RGBA8888 data with full alpha support. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatEtc2Rgba8 = 35,
		/**
		Ericsson Texture Compression format 2 variant RGB8_PUNCHTHROUGH_ALPHA1, which compresses RGBA data to make alpha either fully transparent or fully opaque. Note that when creating an $(D ImageTexture), an sRGB to linear color space conversion is performed.
		*/
		formatEtc2Rgb8a1 = 36,
		/**
		
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
		compressPvrtc2 = 1,
		compressSourceSrgb = 1,
		alphaBit = 1,
		interpolateBilinear = 1,
		formatLa8 = 1,
		compressSourceNormal = 2,
		interpolateCubic = 2,
		formatR8 = 2,
		compressPvrtc4 = 2,
		alphaBlend = 2,
		compressEtc = 3,
		formatRg8 = 3,
		interpolateTrilinear = 3,
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
	Returns the image's width.
	*/
	long getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getWidth, _godot_object);
	}
	/**
	Returns the image's height.
	*/
	long getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHeight, _godot_object);
	}
	/**
	Returns the image's size (width and height).
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSize, _godot_object);
	}
	/**
	Returns `true` if the image has generated mipmaps.
	*/
	bool hasMipmaps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasMipmaps, _godot_object);
	}
	/**
	Returns the image's format. See `FORMAT_*` constants.
	*/
	Image.Format getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.Format)(_classBinding.getFormat, _godot_object);
	}
	/**
	Returns the image's raw data.
	*/
	PoolByteArray getData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.getData, _godot_object);
	}
	/**
	Converts the image's format. See `FORMAT_*` constants.
	*/
	void convert(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.convert, _godot_object, format);
	}
	/**
	Returns the offset where the image's mipmap with index `mipmap` is stored in the `data` dictionary.
	*/
	long getMipmapOffset(in long mipmap) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMipmapOffset, _godot_object, mipmap);
	}
	/**
	Resizes the image to the nearest power of 2 for the width and height. If `square` is `true` then set width and height to be the same.
	*/
	void resizeToPo2(in bool square = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.resizeToPo2, _godot_object, square);
	}
	/**
	Resizes the image to the given `width` and `height`. New pixels are calculated using `interpolation`. See `interpolation` constants.
	*/
	void resize(in long width, in long height, in long interpolation = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.resize, _godot_object, width, height, interpolation);
	}
	/**
	Shrinks the image by a factor of 2.
	*/
	void shrinkX2()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shrinkX2, _godot_object);
	}
	/**
	Stretches the image and enlarges it by a factor of 2. No interpolation is done.
	*/
	void expandX2Hq2x()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.expandX2Hq2x, _godot_object);
	}
	/**
	Crops the image to the given `width` and `height`. If the specified size is larger than the current size, the extra area is filled with black pixels.
	*/
	void crop(in long width, in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.crop, _godot_object, width, height);
	}
	/**
	Flips the image horizontally.
	*/
	void flipX()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.flipX, _godot_object);
	}
	/**
	Flips the image vertically.
	*/
	void flipY()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.flipY, _godot_object);
	}
	/**
	Generates mipmaps for the image. Mipmaps are pre-calculated and lower resolution copies of the image. Mipmaps are automatically used if the image needs to be scaled down when rendered. This improves image quality and the performance of the rendering. Returns an error if the image is compressed, in a custom format or if the image's width/height is 0.
	*/
	GodotError generateMipmaps(in bool renormalize = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.generateMipmaps, _godot_object, renormalize);
	}
	/**
	Removes the image's mipmaps.
	*/
	void clearMipmaps()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearMipmaps, _godot_object);
	}
	/**
	Creates an empty image of given size and format. See `FORMAT_*` constants. If `use_mipmaps` is `true` then generate mipmaps for this image. See the `generate_mipmaps` method.
	*/
	void create(in long width, in long height, in bool use_mipmaps, in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.create, _godot_object, width, height, use_mipmaps, format);
	}
	/**
	Creates a new image of given size and format. See `FORMAT_*` constants. Fills the image with the given raw data. If `use_mipmaps` is `true` then generate mipmaps for this image. See the `generate_mipmaps` method.
	*/
	void createFromData(in long width, in long height, in bool use_mipmaps, in long format, in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createFromData, _godot_object, width, height, use_mipmaps, format, data);
	}
	/**
	Returns `true` if the image has no data.
	*/
	bool isEmpty() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEmpty, _godot_object);
	}
	/**
	Loads an image from file `path`.
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.load, _godot_object, path);
	}
	/**
	Saves the image as a PNG file to `path`.
	*/
	GodotError savePng(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.savePng, _godot_object, path);
	}
	/**
	Returns ALPHA_BLEND if the image has data for alpha values. Returns ALPHA_BIT if all the alpha values are below a certain threshold or the maximum value. Returns ALPHA_NONE if no data for alpha values is found.
	*/
	Image.AlphaMode detectAlpha() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.AlphaMode)(_classBinding.detectAlpha, _godot_object);
	}
	/**
	Returns `true` if all the image's pixels have an alpha value of 0. Returns `false` if any pixel has an alpha value higher than 0.
	*/
	bool isInvisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInvisible, _godot_object);
	}
	/**
	Compresses the image to use less memory. Can not directly access pixel data while the image is compressed. Returns error if the chosen compression mode is not available. See `COMPRESS_*` constants.
	*/
	GodotError compress(in long mode, in long source, in double lossy_quality)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.compress, _godot_object, mode, source, lossy_quality);
	}
	/**
	Decompresses the image if it is compressed. Returns an error if decompress function is not available.
	*/
	GodotError decompress()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.decompress, _godot_object);
	}
	/**
	Returns `true` if the image is compressed.
	*/
	bool isCompressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCompressed, _godot_object);
	}
	/**
	Blends low-alpha pixels with nearby pixels.
	*/
	void fixAlphaEdges()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.fixAlphaEdges, _godot_object);
	}
	/**
	Multiplies color values with alpha values. Resulting color values for a pixel are `(color * alpha)/256`.
	*/
	void premultiplyAlpha()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.premultiplyAlpha, _godot_object);
	}
	/**
	Converts the raw data from the sRGB colorspace to a linear scale.
	*/
	void srgbToLinear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.srgbToLinear, _godot_object);
	}
	/**
	Converts the image's data to represent coordinates on a 3D plane. This is used when the image represents a normalmap. A normalmap can add lots of detail to a 3D surface without increasing the polygon count.
	*/
	void normalmapToXy()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.normalmapToXy, _godot_object);
	}
	/**
	
	*/
	Ref!Image rgbeToSrgb()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(_classBinding.rgbeToSrgb, _godot_object);
	}
	/**
	
	*/
	void bumpmapToNormalmap(in double bump_scale = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bumpmapToNormalmap, _godot_object, bump_scale);
	}
	/**
	Copies `src_rect` from `src` image to this image at coordinates `dst`.
	*/
	void blitRect(Image src, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blitRect, _godot_object, src, src_rect, dst);
	}
	/**
	Blits `src_rect` area from `src` image to this image at the coordinates given by `dst`. `src` pixel is copied onto `dst` if the corresponding `mask` pixel's alpha value is not 0. `src` image and `mask` image $(B must) have the same size (width and height) but they can have different formats.
	*/
	void blitRectMask(Image src, Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blitRectMask, _godot_object, src, mask, src_rect, dst);
	}
	/**
	Alpha-blends `src_rect` from `src` image to this image at coordinates `dest`.
	*/
	void blendRect(Image src, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blendRect, _godot_object, src, src_rect, dst);
	}
	/**
	Alpha-blends `src_rect` from `src` image to this image using `mask` image at coordinates `dst`. Alpha channels are required for both `src` and `mask`. `dst` pixels and `src` pixels will blend if the corresponding mask pixel's alpha value is not 0. `src` image and `mask` image $(B must) have the same size (width and height) but they can have different formats.
	*/
	void blendRectMask(Image src, Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blendRectMask, _godot_object, src, mask, src_rect, dst);
	}
	/**
	Fills the image with a given $(D Color).
	*/
	void fill(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.fill, _godot_object, color);
	}
	/**
	Returns a $(D Rect2) enclosing the visible portion of the image.
	*/
	Rect2 getUsedRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getUsedRect, _godot_object);
	}
	/**
	Returns a new image that is a copy of the image's area specified with `rect`.
	*/
	Ref!Image getRect(in Rect2 rect) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(_classBinding.getRect, _godot_object, rect);
	}
	/**
	Copies `src` image to this image.
	*/
	void copyFrom(Image src)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.copyFrom, _godot_object, src);
	}
	/**
	
	*/
	void _setData(in Dictionary data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	Locks the data for writing access.
	*/
	void lock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lock, _godot_object);
	}
	/**
	Unlocks the data and prevents changes.
	*/
	void unlock()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unlock, _godot_object);
	}
	/**
	
	*/
	Color getPixelv(in Vector2 src) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getPixelv, _godot_object, src);
	}
	/**
	Returns the color of the pixel at `(x, y)` if the image is locked. If the image is unlocked it always returns a $(D Color) with the value `(0, 0, 0, 1.0)`.
	*/
	Color getPixel(in long x, in long y) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getPixel, _godot_object, x, y);
	}
	/**
	
	*/
	void setPixelv(in Vector2 dst, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPixelv, _godot_object, dst, color);
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
		ptrcall!(void)(_classBinding.setPixel, _godot_object, x, y, color);
	}
	/**
	Loads an image from the binary contents of a PNG file.
	*/
	GodotError loadPngFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.loadPngFromBuffer, _godot_object, buffer);
	}
	/**
	Loads an image from the binary contents of a JPEG file.
	*/
	GodotError loadJpgFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.loadJpgFromBuffer, _godot_object, buffer);
	}
	/**
	Loads an image from the binary contents of a WebP file.
	*/
	GodotError loadWebpFromBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.loadWebpFromBuffer, _godot_object, buffer);
	}
	/**
	Holds all of the image's color data in a given format. See `FORMAT_*` constants.
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
