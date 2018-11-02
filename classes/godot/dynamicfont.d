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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.font;
import godot.dynamicfontdata;
import godot.resource;
import godot.reference;
/**
DynamicFont renders vector font files at runtime.

DynamicFont renders vector font files (such as TTF or OTF) dynamically at runtime instead of using a prerendered texture atlas like $(D BitmapFont). This trades the faster loading time of $(D BitmapFont)s for the ability to change font parameters like size and spacing during runtime. $(D DynamicFontData) is used for referencing the font file paths.
*/
@GodotBaseClass struct DynamicFont
{
	enum string _GODOT_internal_name = "DynamicFont";
public:
@nogc nothrow:
	union { godot_object _godot_object; Font _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_font_data") GodotMethod!(void, DynamicFontData) setFontData;
		@GodotName("get_font_data") GodotMethod!(DynamicFontData) getFontData;
		@GodotName("set_size") GodotMethod!(void, long) setSize;
		@GodotName("get_size") GodotMethod!(long) getSize;
		@GodotName("set_outline_size") GodotMethod!(void, long) setOutlineSize;
		@GodotName("get_outline_size") GodotMethod!(long) getOutlineSize;
		@GodotName("set_outline_color") GodotMethod!(void, Color) setOutlineColor;
		@GodotName("get_outline_color") GodotMethod!(Color) getOutlineColor;
		@GodotName("set_use_mipmaps") GodotMethod!(void, bool) setUseMipmaps;
		@GodotName("get_use_mipmaps") GodotMethod!(bool) getUseMipmaps;
		@GodotName("set_use_filter") GodotMethod!(void, bool) setUseFilter;
		@GodotName("get_use_filter") GodotMethod!(bool) getUseFilter;
		@GodotName("set_spacing") GodotMethod!(void, long, long) setSpacing;
		@GodotName("get_spacing") GodotMethod!(long, long) getSpacing;
		@GodotName("add_fallback") GodotMethod!(void, DynamicFontData) addFallback;
		@GodotName("set_fallback") GodotMethod!(void, long, DynamicFontData) setFallback;
		@GodotName("get_fallback") GodotMethod!(DynamicFontData, long) getFallback;
		@GodotName("remove_fallback") GodotMethod!(void, long) removeFallback;
		@GodotName("get_fallback_count") GodotMethod!(long) getFallbackCount;
	}
	bool opEquals(in DynamicFont other) const { return _godot_object.ptr is other._godot_object.ptr; }
	DynamicFont opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Character spacing.
		*/
		spacingChar = 2,
		/**
		Space spacing.
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
	
	*/
	void setFontData(DynamicFontData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFontData, _godot_object, data);
	}
	/**
	
	*/
	Ref!DynamicFontData getFontData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DynamicFontData)(_classBinding.getFontData, _godot_object);
	}
	/**
	
	*/
	void setSize(in long data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSize, _godot_object, data);
	}
	/**
	
	*/
	long getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSize, _godot_object);
	}
	/**
	
	*/
	void setOutlineSize(in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOutlineSize, _godot_object, size);
	}
	/**
	
	*/
	long getOutlineSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOutlineSize, _godot_object);
	}
	/**
	
	*/
	void setOutlineColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOutlineColor, _godot_object, color);
	}
	/**
	
	*/
	Color getOutlineColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getOutlineColor, _godot_object);
	}
	/**
	
	*/
	void setUseMipmaps(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseMipmaps, _godot_object, enable);
	}
	/**
	
	*/
	bool getUseMipmaps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getUseMipmaps, _godot_object);
	}
	/**
	
	*/
	void setUseFilter(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseFilter, _godot_object, enable);
	}
	/**
	
	*/
	bool getUseFilter() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getUseFilter, _godot_object);
	}
	/**
	
	*/
	void setSpacing(in long type, in long value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpacing, _godot_object, type, value);
	}
	/**
	
	*/
	long getSpacing(in long type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSpacing, _godot_object, type);
	}
	/**
	Adds a fallback font.
	*/
	void addFallback(DynamicFontData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addFallback, _godot_object, data);
	}
	/**
	Sets the fallback font at index `idx`.
	*/
	void setFallback(in long idx, DynamicFontData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFallback, _godot_object, idx, data);
	}
	/**
	Returns the fallback font at index `idx`.
	*/
	Ref!DynamicFontData getFallback(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DynamicFontData)(_classBinding.getFallback, _godot_object, idx);
	}
	/**
	Removes the fallback font at index `idx`.
	*/
	void removeFallback(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeFallback, _godot_object, idx);
	}
	/**
	Returns the number of fallback fonts.
	*/
	long getFallbackCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFallbackCount, _godot_object);
	}
	/**
	The font size.
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
	If `true` mipmapping is used.
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
	/**
	If `true` filtering is used.
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
	Extra character spacing in pixels.
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
	Extra space spacing in pixels.
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
}
