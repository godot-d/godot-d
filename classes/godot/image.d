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
/**
Image datatype.

Native image datatype. Contains image data, which can be converted to a $(D Texture), and several functions to interact with it. The maximum width and height for an `Image` is 16384 pixels.
*/
@GodotBaseClass struct Image
{
	static immutable string _GODOT_internal_name = "Image";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		OpenGL texture format RGB with three components, each with a bitdepth of 8.
		*/
		formatRgb8 = 4,
		/**
		OpenGL texture format RGBA with four components, each with a bitdepth of 8.
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
		The S3TC texture format that uses Block Compression 1, and is the smallest variation of S3TC, only providing 1 bit of alpha and color data being premultiplied with alpha. More information can be found at https://www.khronos.org/opengl/wiki/S3_Texture_Compression.
		*/
		formatDxt1 = 17,
		/**
		The S3TC texture format that uses Block Compression 2, and color data is interpreted as not having been premultiplied by alpha. Well suited for images with sharp alpha transitions between translucent and opaque areas.
		*/
		formatDxt3 = 18,
		/**
		The S3TC texture format also known as Block Compression 3 or BC3 that contains 64 bits of alpha channel data followed by 64 bits of DXT1-encoded color data. Color data is not premultiplied by alpha, same as DXT3. DXT5 generally produces superior results for transparency gradients than DXT3.
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
		Texture format that uses BPTC compression with unsigned normalized RGBA components. More information can be found at https://www.khronos.org/opengl/wiki/BPTC_Texture_Compression.
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
		Texture format used on PowerVR-supported mobile platforms, uses 2 bit color depth with no alpha. More information on PVRTC can be found here https://en.wikipedia.org/wiki/PVRTC.
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
		Ericsson Texture Compression format 2 variant RGB8, which is a followup of ETC1 and compresses RGB888 data.
		*/
		formatEtc2Rgb8 = 34,
		/**
		Ericsson Texture Compression format 2 variant RGBA8, which compresses RGBA8888 data with full alpha support.
		*/
		formatEtc2Rgba8 = 35,
		/**
		Ericsson Texture Compression format 2 variant RGB8_PUNCHTHROUGH_ALPHA1, which compresses RGBA data to make alpha either fully transparent or fully opaque.
		*/
		formatEtc2Rgb8a1 = 36,
		/**
		
		*/
		formatMax = 37,
	}
	/// 
	enum Constants : int
	{
		compressS3tc = 0,
		alphaNone = 0,
		formatL8 = 0,
		interpolateNearest = 0,
		compressSourceGeneric = 0,
		interpolateBilinear = 1,
		compressPvrtc2 = 1,
		formatLa8 = 1,
		alphaBit = 1,
		compressSourceSrgb = 1,
		alphaBlend = 2,
		interpolateCubic = 2,
		compressPvrtc4 = 2,
		formatR8 = 2,
		compressSourceNormal = 2,
		compressEtc = 3,
		formatRg8 = 3,
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
	}
	package(godot) static GodotMethod!(long) _GODOT_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_width") = _GODOT_get_width;
	/**
	Returns the image's width.
	*/
	long getWidth() const
	{
		_GODOT_get_width.bind("Image", "get_width");
		return ptrcall!(long)(_GODOT_get_width, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	/**
	Returns the image's height.
	*/
	long getHeight() const
	{
		_GODOT_get_height.bind("Image", "get_height");
		return ptrcall!(long)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	Returns the image's size (width and height).
	*/
	Vector2 getSize() const
	{
		_GODOT_get_size.bind("Image", "get_size");
		return ptrcall!(Vector2)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_mipmaps") = _GODOT_has_mipmaps;
	/**
	Returns `true` if the image has generated mipmaps.
	*/
	bool hasMipmaps() const
	{
		_GODOT_has_mipmaps.bind("Image", "has_mipmaps");
		return ptrcall!(bool)(_GODOT_has_mipmaps, _godot_object);
	}
	package(godot) static GodotMethod!(Image.Format) _GODOT_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_format") = _GODOT_get_format;
	/**
	Returns the image’s format. See `FORMAT_*` constants.
	*/
	Image.Format getFormat() const
	{
		_GODOT_get_format.bind("Image", "get_format");
		return ptrcall!(Image.Format)(_GODOT_get_format, _godot_object);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_data") = _GODOT_get_data;
	/**
	Returns the image's raw data.
	*/
	PoolByteArray getData() const
	{
		_GODOT_get_data.bind("Image", "get_data");
		return ptrcall!(PoolByteArray)(_GODOT_get_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_convert;
	package(godot) alias _GODOT_methodBindInfo(string name : "convert") = _GODOT_convert;
	/**
	Converts the image's format. See `FORMAT_*` constants.
	*/
	void convert(in long format)
	{
		_GODOT_convert.bind("Image", "convert");
		ptrcall!(void)(_GODOT_convert, _godot_object, format);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_mipmap_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_mipmap_offset") = _GODOT_get_mipmap_offset;
	/**
	Returns the offset where the image's mipmap with index `mipmap` is stored in the `data` dictionary.
	*/
	long getMipmapOffset(in long mipmap) const
	{
		_GODOT_get_mipmap_offset.bind("Image", "get_mipmap_offset");
		return ptrcall!(long)(_GODOT_get_mipmap_offset, _godot_object, mipmap);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_resize_to_po2;
	package(godot) alias _GODOT_methodBindInfo(string name : "resize_to_po2") = _GODOT_resize_to_po2;
	/**
	Resizes the image to the nearest power of 2 for the width and height. If `square` is `true` then set width and height to be the same.
	*/
	void resizeToPo2(in bool square = false)
	{
		_GODOT_resize_to_po2.bind("Image", "resize_to_po2");
		ptrcall!(void)(_GODOT_resize_to_po2, _godot_object, square);
	}
	package(godot) static GodotMethod!(void, long, long, long) _GODOT_resize;
	package(godot) alias _GODOT_methodBindInfo(string name : "resize") = _GODOT_resize;
	/**
	Resizes the image to the given `width` and `height`. New pixels are calculated using `interpolation`. See `interpolation` constants.
	*/
	void resize(in long width, in long height, in long interpolation = 1)
	{
		_GODOT_resize.bind("Image", "resize");
		ptrcall!(void)(_GODOT_resize, _godot_object, width, height, interpolation);
	}
	package(godot) static GodotMethod!(void) _GODOT_shrink_x2;
	package(godot) alias _GODOT_methodBindInfo(string name : "shrink_x2") = _GODOT_shrink_x2;
	/**
	Shrinks the image by a factor of 2.
	*/
	void shrinkX2()
	{
		_GODOT_shrink_x2.bind("Image", "shrink_x2");
		ptrcall!(void)(_GODOT_shrink_x2, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_expand_x2_hq2x;
	package(godot) alias _GODOT_methodBindInfo(string name : "expand_x2_hq2x") = _GODOT_expand_x2_hq2x;
	/**
	Stretches the image and enlarges it by a factor of 2. No interpolation is done.
	*/
	void expandX2Hq2x()
	{
		_GODOT_expand_x2_hq2x.bind("Image", "expand_x2_hq2x");
		ptrcall!(void)(_GODOT_expand_x2_hq2x, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_crop;
	package(godot) alias _GODOT_methodBindInfo(string name : "crop") = _GODOT_crop;
	/**
	Crops the image to the given `width` and `height`. If the specified size is larger than the current size, the extra area is filled with black pixels.
	*/
	void crop(in long width, in long height)
	{
		_GODOT_crop.bind("Image", "crop");
		ptrcall!(void)(_GODOT_crop, _godot_object, width, height);
	}
	package(godot) static GodotMethod!(void) _GODOT_flip_x;
	package(godot) alias _GODOT_methodBindInfo(string name : "flip_x") = _GODOT_flip_x;
	/**
	Flips the image horizontally.
	*/
	void flipX()
	{
		_GODOT_flip_x.bind("Image", "flip_x");
		ptrcall!(void)(_GODOT_flip_x, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_flip_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "flip_y") = _GODOT_flip_y;
	/**
	Flips the image vertically.
	*/
	void flipY()
	{
		_GODOT_flip_y.bind("Image", "flip_y");
		ptrcall!(void)(_GODOT_flip_y, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_generate_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "generate_mipmaps") = _GODOT_generate_mipmaps;
	/**
	Generates mipmaps for the image. Mipmaps are pre-calculated and lower resolution copies of the image. Mipmaps are automatically used if the image needs to be scaled down when rendered. This improves image quality and the performance of the rendering. Returns an error if the image is compressed, in a custom format or if the image's width/height is 0.
	*/
	GodotError generateMipmaps()
	{
		_GODOT_generate_mipmaps.bind("Image", "generate_mipmaps");
		return ptrcall!(GodotError)(_GODOT_generate_mipmaps, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_mipmaps") = _GODOT_clear_mipmaps;
	/**
	Removes the image's mipmaps.
	*/
	void clearMipmaps()
	{
		_GODOT_clear_mipmaps.bind("Image", "clear_mipmaps");
		ptrcall!(void)(_GODOT_clear_mipmaps, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long, bool, long) _GODOT_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "create") = _GODOT_create;
	/**
	Creates an empty image of given size and format. See `FORMAT_*` constants. If `use_mipmaps` is true then generate mipmaps for this image. See the `generate_mipmaps` method.
	*/
	void create(in long width, in long height, in bool use_mipmaps, in long format)
	{
		_GODOT_create.bind("Image", "create");
		ptrcall!(void)(_GODOT_create, _godot_object, width, height, use_mipmaps, format);
	}
	package(godot) static GodotMethod!(void, long, long, bool, long, PoolByteArray) _GODOT_create_from_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_data") = _GODOT_create_from_data;
	/**
	Creates a new image of given size and format. See `FORMAT_*` constants. Fills the image with the given raw data. If `use_mipmaps` is true then generate mipmaps for this image. See the `generate_mipmaps` method.
	*/
	void createFromData(in long width, in long height, in bool use_mipmaps, in long format, in PoolByteArray data)
	{
		_GODOT_create_from_data.bind("Image", "create_from_data");
		ptrcall!(void)(_GODOT_create_from_data, _godot_object, width, height, use_mipmaps, format, data);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_empty;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_empty") = _GODOT_is_empty;
	/**
	Returns `true` if the image has no data.
	*/
	bool isEmpty() const
	{
		_GODOT_is_empty.bind("Image", "is_empty");
		return ptrcall!(bool)(_GODOT_is_empty, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_load;
	package(godot) alias _GODOT_methodBindInfo(string name : "load") = _GODOT_load;
	/**
	Loads an image from file `path`.
	*/
	GodotError load(StringArg0)(in StringArg0 path)
	{
		_GODOT_load.bind("Image", "load");
		return ptrcall!(GodotError)(_GODOT_load, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_save_png;
	package(godot) alias _GODOT_methodBindInfo(string name : "save_png") = _GODOT_save_png;
	/**
	Saves the image as a PNG file to `path`.
	*/
	GodotError savePng(StringArg0)(in StringArg0 path) const
	{
		_GODOT_save_png.bind("Image", "save_png");
		return ptrcall!(GodotError)(_GODOT_save_png, _godot_object, path);
	}
	package(godot) static GodotMethod!(Image.AlphaMode) _GODOT_detect_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "detect_alpha") = _GODOT_detect_alpha;
	/**
	Returns ALPHA_BLEND if the image has data for alpha values. Returns ALPHA_BIT if all the alpha values are below a certain threshold or the maximum value. Returns ALPHA_NONE if no data for alpha values is found.
	*/
	Image.AlphaMode detectAlpha() const
	{
		_GODOT_detect_alpha.bind("Image", "detect_alpha");
		return ptrcall!(Image.AlphaMode)(_GODOT_detect_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_invisible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_invisible") = _GODOT_is_invisible;
	/**
	Returns `true` if all the image's pixels have an alpha value of 0. Returns `false` if any pixel has an alpha value higher than 0.
	*/
	bool isInvisible() const
	{
		_GODOT_is_invisible.bind("Image", "is_invisible");
		return ptrcall!(bool)(_GODOT_is_invisible, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, long, long, double) _GODOT_compress;
	package(godot) alias _GODOT_methodBindInfo(string name : "compress") = _GODOT_compress;
	/**
	Compresses the image to use less memory. Can not directly access pixel data while the image is compressed. Returns error if the chosen compression mode is not available. See `COMPRESS_*` constants.
	*/
	GodotError compress(in long mode, in long source, in double lossy_quality)
	{
		_GODOT_compress.bind("Image", "compress");
		return ptrcall!(GodotError)(_GODOT_compress, _godot_object, mode, source, lossy_quality);
	}
	package(godot) static GodotMethod!(GodotError) _GODOT_decompress;
	package(godot) alias _GODOT_methodBindInfo(string name : "decompress") = _GODOT_decompress;
	/**
	Decompresses the image if it is compressed. Returns an error if decompress function is not available.
	*/
	GodotError decompress()
	{
		_GODOT_decompress.bind("Image", "decompress");
		return ptrcall!(GodotError)(_GODOT_decompress, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_compressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_compressed") = _GODOT_is_compressed;
	/**
	Returns `true` if the image is compressed.
	*/
	bool isCompressed() const
	{
		_GODOT_is_compressed.bind("Image", "is_compressed");
		return ptrcall!(bool)(_GODOT_is_compressed, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_fix_alpha_edges;
	package(godot) alias _GODOT_methodBindInfo(string name : "fix_alpha_edges") = _GODOT_fix_alpha_edges;
	/**
	Blends low-alpha pixels with nearby pixels.
	*/
	void fixAlphaEdges()
	{
		_GODOT_fix_alpha_edges.bind("Image", "fix_alpha_edges");
		ptrcall!(void)(_GODOT_fix_alpha_edges, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_premultiply_alpha;
	package(godot) alias _GODOT_methodBindInfo(string name : "premultiply_alpha") = _GODOT_premultiply_alpha;
	/**
	Multiplies color values with alpha values. Resulting color values for a pixel are `(color * alpha)/256`.
	*/
	void premultiplyAlpha()
	{
		_GODOT_premultiply_alpha.bind("Image", "premultiply_alpha");
		ptrcall!(void)(_GODOT_premultiply_alpha, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_srgb_to_linear;
	package(godot) alias _GODOT_methodBindInfo(string name : "srgb_to_linear") = _GODOT_srgb_to_linear;
	/**
	Converts the raw data from the sRGB colorspace to a linear scale.
	*/
	void srgbToLinear()
	{
		_GODOT_srgb_to_linear.bind("Image", "srgb_to_linear");
		ptrcall!(void)(_GODOT_srgb_to_linear, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_normalmap_to_xy;
	package(godot) alias _GODOT_methodBindInfo(string name : "normalmap_to_xy") = _GODOT_normalmap_to_xy;
	/**
	Converts the image's data to represent coordinates on a 3D plane. This is used when the image represents a normalmap. A normalmap can add lots of detail to a 3D surface without increasing the polygon count.
	*/
	void normalmapToXy()
	{
		_GODOT_normalmap_to_xy.bind("Image", "normalmap_to_xy");
		ptrcall!(void)(_GODOT_normalmap_to_xy, _godot_object);
	}
	package(godot) static GodotMethod!(void, Image, Rect2, Vector2) _GODOT_blit_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "blit_rect") = _GODOT_blit_rect;
	/**
	Copies `src_rect` from `src` image to this image at coordinates `dst`.
	*/
	void blitRect(Image src, in Rect2 src_rect, in Vector2 dst)
	{
		_GODOT_blit_rect.bind("Image", "blit_rect");
		ptrcall!(void)(_GODOT_blit_rect, _godot_object, src, src_rect, dst);
	}
	package(godot) static GodotMethod!(void, Image, Image, Rect2, Vector2) _GODOT_blit_rect_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "blit_rect_mask") = _GODOT_blit_rect_mask;
	/**
	Blits `src_rect` area from `src` image to this image at the coordinates given by `dst`. `src` pixel is copied onto `dst` if the corresponding `mask` pixel's alpha value is not 0. `src` image and `mask` image $(B must) have the same size (width and height) but they can have different formats.
	*/
	void blitRectMask(Image src, Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		_GODOT_blit_rect_mask.bind("Image", "blit_rect_mask");
		ptrcall!(void)(_GODOT_blit_rect_mask, _godot_object, src, mask, src_rect, dst);
	}
	package(godot) static GodotMethod!(void, Image, Rect2, Vector2) _GODOT_blend_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend_rect") = _GODOT_blend_rect;
	/**
	Alpha-blends `src_rect` from `src` image to this image at coordinates `dest`.
	*/
	void blendRect(Image src, in Rect2 src_rect, in Vector2 dst)
	{
		_GODOT_blend_rect.bind("Image", "blend_rect");
		ptrcall!(void)(_GODOT_blend_rect, _godot_object, src, src_rect, dst);
	}
	package(godot) static GodotMethod!(void, Image, Image, Rect2, Vector2) _GODOT_blend_rect_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "blend_rect_mask") = _GODOT_blend_rect_mask;
	/**
	Alpha-blends `src_rect` from `src` image to this image using `mask` image at coordinates `dst`. Alpha channels are required for both `src` and `mask`. `dst` pixels and `src` pixels will blend if the corresponding mask pixel's alpha value is not 0. `src` image and `mask` image $(B must) have the same size (width and height) but they can have different formats.
	*/
	void blendRectMask(Image src, Image mask, in Rect2 src_rect, in Vector2 dst)
	{
		_GODOT_blend_rect_mask.bind("Image", "blend_rect_mask");
		ptrcall!(void)(_GODOT_blend_rect_mask, _godot_object, src, mask, src_rect, dst);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_fill;
	package(godot) alias _GODOT_methodBindInfo(string name : "fill") = _GODOT_fill;
	/**
	Fills the image with a given $(D Color).
	*/
	void fill(in Color color)
	{
		_GODOT_fill.bind("Image", "fill");
		ptrcall!(void)(_GODOT_fill, _godot_object, color);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_used_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_used_rect") = _GODOT_get_used_rect;
	/**
	Returns a $(D Rect2) enclosing the visible portion of the image.
	*/
	Rect2 getUsedRect() const
	{
		_GODOT_get_used_rect.bind("Image", "get_used_rect");
		return ptrcall!(Rect2)(_GODOT_get_used_rect, _godot_object);
	}
	package(godot) static GodotMethod!(Image, Rect2) _GODOT_get_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rect") = _GODOT_get_rect;
	/**
	Returns a new image that is a copy of the image's area specified with `rect`.
	*/
	Ref!Image getRect(in Rect2 rect) const
	{
		_GODOT_get_rect.bind("Image", "get_rect");
		return ptrcall!(Image)(_GODOT_get_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(void, Image) _GODOT_copy_from;
	package(godot) alias _GODOT_methodBindInfo(string name : "copy_from") = _GODOT_copy_from;
	/**
	Copies `src` image to this image.
	*/
	void copyFrom(Image src)
	{
		_GODOT_copy_from.bind("Image", "copy_from");
		ptrcall!(void)(_GODOT_copy_from, _godot_object, src);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	/**
	
	*/
	void _setData(in Dictionary data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	package(godot) static GodotMethod!(void) _GODOT_lock;
	package(godot) alias _GODOT_methodBindInfo(string name : "lock") = _GODOT_lock;
	/**
	Locks the data for writing access.
	*/
	void lock()
	{
		_GODOT_lock.bind("Image", "lock");
		ptrcall!(void)(_GODOT_lock, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_unlock;
	package(godot) alias _GODOT_methodBindInfo(string name : "unlock") = _GODOT_unlock;
	/**
	Unlocks the data and prevents changes.
	*/
	void unlock()
	{
		_GODOT_unlock.bind("Image", "unlock");
		ptrcall!(void)(_GODOT_unlock, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long, Color) _GODOT_set_pixel;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pixel") = _GODOT_set_pixel;
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
		_GODOT_set_pixel.bind("Image", "set_pixel");
		ptrcall!(void)(_GODOT_set_pixel, _godot_object, x, y, color);
	}
	package(godot) static GodotMethod!(Color, long, long) _GODOT_get_pixel;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pixel") = _GODOT_get_pixel;
	/**
	Returns the color of the pixel at `(x, y)` if the image is locked. If the image is unlocked it always returns a $(D Color) with the value `(0, 0, 0, 1.0)`.
	*/
	Color getPixel(in long x, in long y) const
	{
		_GODOT_get_pixel.bind("Image", "get_pixel");
		return ptrcall!(Color)(_GODOT_get_pixel, _godot_object, x, y);
	}
	package(godot) static GodotMethod!(GodotError, PoolByteArray) _GODOT_load_png_from_buffer;
	package(godot) alias _GODOT_methodBindInfo(string name : "load_png_from_buffer") = _GODOT_load_png_from_buffer;
	/**
	Loads an image from the binary contents of a PNG file.
	*/
	GodotError loadPngFromBuffer(in PoolByteArray buffer)
	{
		_GODOT_load_png_from_buffer.bind("Image", "load_png_from_buffer");
		return ptrcall!(GodotError)(_GODOT_load_png_from_buffer, _godot_object, buffer);
	}
	package(godot) static GodotMethod!(GodotError, PoolByteArray) _GODOT_load_jpg_from_buffer;
	package(godot) alias _GODOT_methodBindInfo(string name : "load_jpg_from_buffer") = _GODOT_load_jpg_from_buffer;
	/**
	Loads an image from the binary contents of a JPEG file.
	*/
	GodotError loadJpgFromBuffer(in PoolByteArray buffer)
	{
		_GODOT_load_jpg_from_buffer.bind("Image", "load_jpg_from_buffer");
		return ptrcall!(GodotError)(_GODOT_load_jpg_from_buffer, _godot_object, buffer);
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
