/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.textureprogress;
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
import godot.range;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.texture;
/**

*/
@GodotBaseClass struct TextureProgress
{
	package(godot) enum string _GODOT_internal_name = "TextureProgress";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_fill_degrees") GodotMethod!(double) getFillDegrees;
		@GodotName("get_fill_mode") GodotMethod!(long) getFillMode;
		@GodotName("get_nine_patch_stretch") GodotMethod!(bool) getNinePatchStretch;
		@GodotName("get_over_texture") GodotMethod!(Texture) getOverTexture;
		@GodotName("get_progress_texture") GodotMethod!(Texture) getProgressTexture;
		@GodotName("get_radial_center_offset") GodotMethod!(Vector2) getRadialCenterOffset;
		@GodotName("get_radial_initial_angle") GodotMethod!(double) getRadialInitialAngle;
		@GodotName("get_stretch_margin") GodotMethod!(long, long) getStretchMargin;
		@GodotName("get_texture_progress_offset") GodotMethod!(Vector2) getTextureProgressOffset;
		@GodotName("get_tint_over") GodotMethod!(Color) getTintOver;
		@GodotName("get_tint_progress") GodotMethod!(Color) getTintProgress;
		@GodotName("get_tint_under") GodotMethod!(Color) getTintUnder;
		@GodotName("get_under_texture") GodotMethod!(Texture) getUnderTexture;
		@GodotName("set_fill_degrees") GodotMethod!(void, double) setFillDegrees;
		@GodotName("set_fill_mode") GodotMethod!(void, long) setFillMode;
		@GodotName("set_nine_patch_stretch") GodotMethod!(void, bool) setNinePatchStretch;
		@GodotName("set_over_texture") GodotMethod!(void, Texture) setOverTexture;
		@GodotName("set_progress_texture") GodotMethod!(void, Texture) setProgressTexture;
		@GodotName("set_radial_center_offset") GodotMethod!(void, Vector2) setRadialCenterOffset;
		@GodotName("set_radial_initial_angle") GodotMethod!(void, double) setRadialInitialAngle;
		@GodotName("set_stretch_margin") GodotMethod!(void, long, long) setStretchMargin;
		@GodotName("set_texture_progress_offset") GodotMethod!(void, Vector2) setTextureProgressOffset;
		@GodotName("set_tint_over") GodotMethod!(void, Color) setTintOver;
		@GodotName("set_tint_progress") GodotMethod!(void, Color) setTintProgress;
		@GodotName("set_tint_under") GodotMethod!(void, Color) setTintUnder;
		@GodotName("set_under_texture") GodotMethod!(void, Texture) setUnderTexture;
	}
	/// 
	pragma(inline, true) bool opEquals(in TextureProgress other) const
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
	/// Construct a new instance of TextureProgress.
	/// Note: use `memnew!TextureProgress` instead.
	static TextureProgress _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TextureProgress");
		if(constructor is null) return typeof(this).init;
		return cast(TextureProgress)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum FillMode : int
	{
		/** */
		fillLeftToRight = 0,
		/** */
		fillRightToLeft = 1,
		/** */
		fillTopToBottom = 2,
		/** */
		fillBottomToTop = 3,
		/** */
		fillClockwise = 4,
		/** */
		fillCounterClockwise = 5,
		/** */
		fillBilinearLeftAndRight = 6,
		/** */
		fillBilinearTopAndBottom = 7,
		/** */
		fillClockwiseAndCounterClockwise = 8,
	}
	/// 
	enum Constants : int
	{
		fillLeftToRight = 0,
		fillRightToLeft = 1,
		fillTopToBottom = 2,
		fillBottomToTop = 3,
		fillClockwise = 4,
		fillCounterClockwise = 5,
		fillBilinearLeftAndRight = 6,
		fillBilinearTopAndBottom = 7,
		fillClockwiseAndCounterClockwise = 8,
	}
	/**
	
	*/
	double getFillDegrees()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFillDegrees, _godot_object);
	}
	/**
	
	*/
	long getFillMode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFillMode, _godot_object);
	}
	/**
	
	*/
	bool getNinePatchStretch() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getNinePatchStretch, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getOverTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getOverTexture, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getProgressTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getProgressTexture, _godot_object);
	}
	/**
	
	*/
	Vector2 getRadialCenterOffset()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getRadialCenterOffset, _godot_object);
	}
	/**
	
	*/
	double getRadialInitialAngle()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRadialInitialAngle, _godot_object);
	}
	/**
	
	*/
	long getStretchMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getStretchMargin, _godot_object, margin);
	}
	/**
	
	*/
	Vector2 getTextureProgressOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getTextureProgressOffset, _godot_object);
	}
	/**
	
	*/
	Color getTintOver() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getTintOver, _godot_object);
	}
	/**
	
	*/
	Color getTintProgress() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getTintProgress, _godot_object);
	}
	/**
	
	*/
	Color getTintUnder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getTintUnder, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getUnderTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getUnderTexture, _godot_object);
	}
	/**
	
	*/
	void setFillDegrees(in double mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFillDegrees, _godot_object, mode);
	}
	/**
	
	*/
	void setFillMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFillMode, _godot_object, mode);
	}
	/**
	
	*/
	void setNinePatchStretch(in bool stretch)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNinePatchStretch, _godot_object, stretch);
	}
	/**
	
	*/
	void setOverTexture(Texture tex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOverTexture, _godot_object, tex);
	}
	/**
	
	*/
	void setProgressTexture(Texture tex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProgressTexture, _godot_object, tex);
	}
	/**
	
	*/
	void setRadialCenterOffset(in Vector2 mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadialCenterOffset, _godot_object, mode);
	}
	/**
	
	*/
	void setRadialInitialAngle(in double mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadialInitialAngle, _godot_object, mode);
	}
	/**
	
	*/
	void setStretchMargin(in long margin, in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStretchMargin, _godot_object, margin, value);
	}
	/**
	
	*/
	void setTextureProgressOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureProgressOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setTintOver(in Color tint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTintOver, _godot_object, tint);
	}
	/**
	
	*/
	void setTintProgress(in Color tint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTintProgress, _godot_object, tint);
	}
	/**
	
	*/
	void setTintUnder(in Color tint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTintUnder, _godot_object, tint);
	}
	/**
	
	*/
	void setUnderTexture(Texture tex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUnderTexture, _godot_object, tex);
	}
	/**
	
	*/
	@property long fillMode()
	{
		return getFillMode();
	}
	/// ditto
	@property void fillMode(long v)
	{
		setFillMode(v);
	}
	/**
	
	*/
	@property bool ninePatchStretch()
	{
		return getNinePatchStretch();
	}
	/// ditto
	@property void ninePatchStretch(bool v)
	{
		setNinePatchStretch(v);
	}
	/**
	
	*/
	@property Vector2 radialCenterOffset()
	{
		return getRadialCenterOffset();
	}
	/// ditto
	@property void radialCenterOffset(Vector2 v)
	{
		setRadialCenterOffset(v);
	}
	/**
	
	*/
	@property double radialFillDegrees()
	{
		return getFillDegrees();
	}
	/// ditto
	@property void radialFillDegrees(double v)
	{
		setFillDegrees(v);
	}
	/**
	
	*/
	@property double radialInitialAngle()
	{
		return getRadialInitialAngle();
	}
	/// ditto
	@property void radialInitialAngle(double v)
	{
		setRadialInitialAngle(v);
	}
	/**
	
	*/
	@property long stretchMarginBottom()
	{
		return getStretchMargin(3);
	}
	/// ditto
	@property void stretchMarginBottom(long v)
	{
		setStretchMargin(3, v);
	}
	/**
	
	*/
	@property long stretchMarginLeft()
	{
		return getStretchMargin(0);
	}
	/// ditto
	@property void stretchMarginLeft(long v)
	{
		setStretchMargin(0, v);
	}
	/**
	
	*/
	@property long stretchMarginRight()
	{
		return getStretchMargin(2);
	}
	/// ditto
	@property void stretchMarginRight(long v)
	{
		setStretchMargin(2, v);
	}
	/**
	
	*/
	@property long stretchMarginTop()
	{
		return getStretchMargin(1);
	}
	/// ditto
	@property void stretchMarginTop(long v)
	{
		setStretchMargin(1, v);
	}
	/**
	
	*/
	@property Texture textureOver()
	{
		return getOverTexture();
	}
	/// ditto
	@property void textureOver(Texture v)
	{
		setOverTexture(v);
	}
	/**
	
	*/
	@property Texture textureProgress()
	{
		return getProgressTexture();
	}
	/// ditto
	@property void textureProgress(Texture v)
	{
		setProgressTexture(v);
	}
	/**
	
	*/
	@property Vector2 textureProgressOffset()
	{
		return getTextureProgressOffset();
	}
	/// ditto
	@property void textureProgressOffset(Vector2 v)
	{
		setTextureProgressOffset(v);
	}
	/**
	
	*/
	@property Texture textureUnder()
	{
		return getUnderTexture();
	}
	/// ditto
	@property void textureUnder(Texture v)
	{
		setUnderTexture(v);
	}
	/**
	
	*/
	@property Color tintOver()
	{
		return getTintOver();
	}
	/// ditto
	@property void tintOver(Color v)
	{
		setTintOver(v);
	}
	/**
	
	*/
	@property Color tintProgress()
	{
		return getTintProgress();
	}
	/// ditto
	@property void tintProgress(Color v)
	{
		setTintProgress(v);
	}
	/**
	
	*/
	@property Color tintUnder()
	{
		return getTintUnder();
	}
	/// ditto
	@property void tintUnder(Color v)
	{
		setTintUnder(v);
	}
}
