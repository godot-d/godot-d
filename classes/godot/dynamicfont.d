/**
DynamicFont renders vector font files at runtime.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.dynamicfont;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.font;
import godot.dynamicfontdata;
/**
DynamicFont renders vector font files at runtime.

DynamicFont renders vector font files (such as TTF or OTF) dynamically at runtime instead of using a prerendered texture atlas like $(D BitmapFont). This trades the faster loading time of $(D BitmapFont)s for the ability to change font parameters like size and spacing during runtime. $(D DynamicFontData) is used for referencing the font file paths. DynamicFont also supports defining one or more fallback fonts, which will be used when displaying a character not supported by the main font.
DynamicFont uses the $(D url=https://www.freetype.org/)FreeType$(D /url) library for rasterization.


var dynamic_font = DynamicFont.new()
dynamic_font.font_data = load("res://BarlowCondensed-Bold.ttf")
dynamic_font.size = 64
$"Label".set("custom_fonts/font", dynamic_font)


$(B Note:) DynamicFont doesn't support features such as kerning, right-to-left typesetting, ligatures, text shaping, variable fonts and optional font features yet. If you wish to "bake" an optional font feature into a TTF font file, you can use $(D url=https://fontforge.org/)FontForge$(D /url) to do so. In FontForge, use $(B File &gt; Generate Fonts), click $(B Options), choose the desired features then generate the font.
*/
@GodotBaseClass struct DynamicFont
{
	package(godot) enum string _GODOT_internal_name = "DynamicFont";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Font _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_fallback") GodotMethod!(void, DynamicFontData) addFallback;
		@GodotName("get_available_chars") GodotMethod!(String) getAvailableChars;
		@GodotName("get_fallback") GodotMethod!(DynamicFontData, long) getFallback;
		@GodotName("get_fallback_count") GodotMethod!(long) getFallbackCount;
		@GodotName("get_font_data") GodotMethod!(DynamicFontData) getFontData;
		@GodotName("get_outline_color") GodotMethod!(Color) getOutlineColor;
		@GodotName("get_outline_size") GodotMethod!(long) getOutlineSize;
		@GodotName("get_size") GodotMethod!(long) getSize;
		@GodotName("get_spacing") GodotMethod!(long, long) getSpacing;
		@GodotName("get_use_filter") GodotMethod!(bool) getUseFilter;
		@GodotName("get_use_mipmaps") GodotMethod!(bool) getUseMipmaps;
		@GodotName("remove_fallback") GodotMethod!(void, long) removeFallback;
		@GodotName("set_fallback") GodotMethod!(void, long, DynamicFontData) setFallback;
		@GodotName("set_font_data") GodotMethod!(void, DynamicFontData) setFontData;
		@GodotName("set_outline_color") GodotMethod!(void, Color) setOutlineColor;
		@GodotName("set_outline_size") GodotMethod!(void, long) setOutlineSize;
		@GodotName("set_size") GodotMethod!(void, long) setSize;
		@GodotName("set_spacing") GodotMethod!(void, long, long) setSpacing;
		@GodotName("set_use_filter") GodotMethod!(void, bool) setUseFilter;
		@GodotName("set_use_mipmaps") GodotMethod!(void, bool) setUseMipmaps;
	}
	/// 
	pragma(inline, true) bool opEquals(in DynamicFont other) const
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
	/// Construct a new instance of DynamicFont.
	/// Note: use `memnew!DynamicFont` instead.
	static DynamicFont _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("DynamicFont");
		if(constructor is null) return typeof(this).init;
		return cast(DynamicFont)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum SpacingType : int
	{
		/**
		Spacing at the top.
		*/
		spacingTop = 0,
		/**
		Spacing at the bottom.
		*/
		spacingBottom = 1,
		/**
		Spacing for each character.
		*/
		spacingChar = 2,
		/**
		Spacing for the space character.
		*/
		spacingSpace = 3,
	}
	/// 
	enum Constants : int
	{
		spacingTop = 0,
		spacingBottom = 1,
		spacingChar = 2,
		spacingSpace = 3,
	}
	/**
	Adds a fallback font.
	*/
	void addFallback(DynamicFontData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addFallback, _godot_object, data);
	}
	/**
	Returns a string containing all the characters available in the main and all the fallback fonts.
	If a given character is included in more than one font, it appears only once in the returned string.
	*/
	String getAvailableChars() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAvailableChars, _godot_object);
	}
	/**
	Returns the fallback font at index `idx`.
	*/
	Ref!DynamicFontData getFallback(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DynamicFontData)(GDNativeClassBinding.getFallback, _godot_object, idx);
	}
	/**
	Returns the number of fallback fonts.
	*/
	long getFallbackCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFallbackCount, _godot_object);
	}
	/**
	
	*/
	Ref!DynamicFontData getFontData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DynamicFontData)(GDNativeClassBinding.getFontData, _godot_object);
	}
	/**
	
	*/
	Color getOutlineColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getOutlineColor, _godot_object);
	}
	/**
	
	*/
	long getOutlineSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOutlineSize, _godot_object);
	}
	/**
	
	*/
	long getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	Returns the spacing for the given `type` (see $(D spacingtype)).
	*/
	long getSpacing(in long type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSpacing, _godot_object, type);
	}
	/**
	
	*/
	bool getUseFilter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseFilter, _godot_object);
	}
	/**
	
	*/
	bool getUseMipmaps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseMipmaps, _godot_object);
	}
	/**
	Removes the fallback font at index `idx`.
	*/
	void removeFallback(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeFallback, _godot_object, idx);
	}
	/**
	Sets the fallback font at index `idx`.
	*/
	void setFallback(in long idx, DynamicFontData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFallback, _godot_object, idx, data);
	}
	/**
	
	*/
	void setFontData(DynamicFontData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFontData, _godot_object, data);
	}
	/**
	
	*/
	void setOutlineColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutlineColor, _godot_object, color);
	}
	/**
	
	*/
	void setOutlineSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutlineSize, _godot_object, size);
	}
	/**
	
	*/
	void setSize(in long data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, data);
	}
	/**
	Sets the spacing for `type` (see $(D spacingtype)) to `value` in pixels (not relative to the font size).
	*/
	void setSpacing(in long type, in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpacing, _godot_object, type, value);
	}
	/**
	
	*/
	void setUseFilter(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseFilter, _godot_object, enable);
	}
	/**
	
	*/
	void setUseMipmaps(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseMipmaps, _godot_object, enable);
	}
	/**
	Extra spacing at the bottom in pixels.
	*/
	@property long extraSpacingBottom()
	{
		return getSpacing(1);
	}
	/// ditto
	@property void extraSpacingBottom(long v)
	{
		setSpacing(1, v);
	}
	/**
	Extra spacing for each character in pixels.
	This can be a negative number to make the distance between characters smaller.
	*/
	@property long extraSpacingChar()
	{
		return getSpacing(2);
	}
	/// ditto
	@property void extraSpacingChar(long v)
	{
		setSpacing(2, v);
	}
	/**
	Extra spacing for the space character (in addition to $(D extraSpacingChar)) in pixels.
	This can be a negative number to make the distance between words smaller.
	*/
	@property long extraSpacingSpace()
	{
		return getSpacing(3);
	}
	/// ditto
	@property void extraSpacingSpace(long v)
	{
		setSpacing(3, v);
	}
	/**
	Extra spacing at the top in pixels.
	*/
	@property long extraSpacingTop()
	{
		return getSpacing(0);
	}
	/// ditto
	@property void extraSpacingTop(long v)
	{
		setSpacing(0, v);
	}
	/**
	The font data.
	*/
	@property DynamicFontData fontData()
	{
		return getFontData();
	}
	/// ditto
	@property void fontData(DynamicFontData v)
	{
		setFontData(v);
	}
	/**
	The font outline's color.
	$(B Note:) It's recommended to leave this at the default value so that you can adjust it in individual controls. For example, if the outline is made black here, it won't be possible to change its color using a Label's font outline modulate theme item.
	*/
	@property Color outlineColor()
	{
		return getOutlineColor();
	}
	/// ditto
	@property void outlineColor(Color v)
	{
		setOutlineColor(v);
	}
	/**
	The font outline's thickness in pixels (not relative to the font size).
	*/
	@property long outlineSize()
	{
		return getOutlineSize();
	}
	/// ditto
	@property void outlineSize(long v)
	{
		setOutlineSize(v);
	}
	/**
	The font size in pixels.
	*/
	@property long size()
	{
		return getSize();
	}
	/// ditto
	@property void size(long v)
	{
		setSize(v);
	}
	/**
	If `true`, filtering is used. This makes the font blurry instead of pixelated when scaling it if font oversampling is disabled or ineffective. It's recommended to enable this when using the font in a control whose size changes over time, unless a pixel art aesthetic is desired.
	*/
	@property bool useFilter()
	{
		return getUseFilter();
	}
	/// ditto
	@property void useFilter(bool v)
	{
		setUseFilter(v);
	}
	/**
	If `true`, mipmapping is used. This improves the font's appearance when downscaling it if font oversampling is disabled or ineffective.
	*/
	@property bool useMipmaps()
	{
		return getUseMipmaps();
	}
	/// ditto
	@property void useMipmaps(bool v)
	{
		setUseMipmaps(v);
	}
}
