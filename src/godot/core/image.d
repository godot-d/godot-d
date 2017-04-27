module godot.core.image;

import godot.c;

struct Image
{
	package(godot) godot_image _godot_image;
	
	enum Format
	{
		l8, //luminance
		la8, //luminance-alpha
		r8,
		rg8,
		rgb8,
		rgba8,
		rgb565, //16 bit
		rgba4444,
		rgba5551,
		rf, //float
		rgf,
		rgbf,
		rgbaf,
		rh, //half float
		rgh,
		rgbh,
		rgbah,
		dxt1, //s3tc bc1
		dxt3, //bc2
		dxt5, //bc3
		ati1, //bc4
		ati2, //bc5
		bptc_rgba, //btpc bc6h
		bptc_rgbf, //float /
		bptc_rgbfu, //unsigned float
		pvrtc2, //pvrtc
		pvrtc2a,
		pvrtc4,
		pvrtc4a,
		etc, //etc1
		etc2_r11, //etc2
		etc2_r11s, //signed, NOT srgb.
		etc2_rg11,
		etc2_rg11s,
		etc2_rgb8,
		etc2_rgba8,
		etc2_rgb8a1,
	}
	
	enum Interpolation
	{
		nearest,
		bilinear,
		cubic,
		/* gauss */
	}
	
	enum CompressMode
	{
		_16bit,
		s3tc,
		pvrtc2,
		pvrtc4,
		etc,
		etc2
	}
	
	static Image empty()
	{
		Image i = void;
		godot_image_new(&i._godot_image);
		return i;
	}
	
	~this()
	{
		godot_image_destroy(&_godot_image);
	}
}

