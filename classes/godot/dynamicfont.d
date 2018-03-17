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
/**
DynamicFont renders vector font files at runtime.

DynamicFont renders vector font files (such as TTF or OTF) dynamically at runtime instead of using a prerendered texture atlas like $(D BitmapFont). This trades the faster loading time of $(D BitmapFont)s for the ability to change font parameters like size and spacing during runtime. $(D DynamicFontData) is used for referencing the font file paths.
*/
@GodotBaseClass struct DynamicFont
{
	static immutable string _GODOT_internal_name = "DynamicFont";
public:
@nogc nothrow:
	union { godot_object _godot_object; Font _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, DynamicFontData) _GODOT_set_font_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_font_data") = _GODOT_set_font_data;
	/**
	
	*/
	void setFontData(DynamicFontData data)
	{
		_GODOT_set_font_data.bind("DynamicFont", "set_font_data");
		ptrcall!(void)(_GODOT_set_font_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(DynamicFontData) _GODOT_get_font_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font_data") = _GODOT_get_font_data;
	/**
	
	*/
	Ref!DynamicFontData getFontData() const
	{
		_GODOT_get_font_data.bind("DynamicFont", "get_font_data");
		return ptrcall!(DynamicFontData)(_GODOT_get_font_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	/**
	
	*/
	void setSize(in long data)
	{
		_GODOT_set_size.bind("DynamicFont", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, data);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	
	*/
	long getSize() const
	{
		_GODOT_get_size.bind("DynamicFont", "get_size");
		return ptrcall!(long)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_mipmaps") = _GODOT_set_use_mipmaps;
	/**
	
	*/
	void setUseMipmaps(in bool enable)
	{
		_GODOT_set_use_mipmaps.bind("DynamicFont", "set_use_mipmaps");
		ptrcall!(void)(_GODOT_set_use_mipmaps, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_mipmaps;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_mipmaps") = _GODOT_get_use_mipmaps;
	/**
	
	*/
	bool getUseMipmaps() const
	{
		_GODOT_get_use_mipmaps.bind("DynamicFont", "get_use_mipmaps");
		return ptrcall!(bool)(_GODOT_get_use_mipmaps, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_filter") = _GODOT_set_use_filter;
	/**
	
	*/
	void setUseFilter(in bool enable)
	{
		_GODOT_set_use_filter.bind("DynamicFont", "set_use_filter");
		ptrcall!(void)(_GODOT_set_use_filter, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_use_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_filter") = _GODOT_get_use_filter;
	/**
	
	*/
	bool getUseFilter() const
	{
		_GODOT_get_use_filter.bind("DynamicFont", "get_use_filter");
		return ptrcall!(bool)(_GODOT_get_use_filter, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, long) _GODOT_set_spacing;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_spacing") = _GODOT_set_spacing;
	/**
	
	*/
	void setSpacing(in long type, in long value)
	{
		_GODOT_set_spacing.bind("DynamicFont", "set_spacing");
		ptrcall!(void)(_GODOT_set_spacing, _godot_object, type, value);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_spacing;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_spacing") = _GODOT_get_spacing;
	/**
	
	*/
	long getSpacing(in long type) const
	{
		_GODOT_get_spacing.bind("DynamicFont", "get_spacing");
		return ptrcall!(long)(_GODOT_get_spacing, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, DynamicFontData) _GODOT_add_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_fallback") = _GODOT_add_fallback;
	/**
	Adds a fallback font.
	*/
	void addFallback(DynamicFontData data)
	{
		_GODOT_add_fallback.bind("DynamicFont", "add_fallback");
		ptrcall!(void)(_GODOT_add_fallback, _godot_object, data);
	}
	package(godot) static GodotMethod!(void, long, DynamicFontData) _GODOT_set_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fallback") = _GODOT_set_fallback;
	/**
	Sets the fallback font at index `idx`.
	*/
	void setFallback(in long idx, DynamicFontData data)
	{
		_GODOT_set_fallback.bind("DynamicFont", "set_fallback");
		ptrcall!(void)(_GODOT_set_fallback, _godot_object, idx, data);
	}
	package(godot) static GodotMethod!(DynamicFontData, long) _GODOT_get_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fallback") = _GODOT_get_fallback;
	/**
	Returns the fallback font at index `idx`.
	*/
	Ref!DynamicFontData getFallback(in long idx) const
	{
		_GODOT_get_fallback.bind("DynamicFont", "get_fallback");
		return ptrcall!(DynamicFontData)(_GODOT_get_fallback, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_fallback") = _GODOT_remove_fallback;
	/**
	Removes the fallback font at index `idx`.
	*/
	void removeFallback(in long idx)
	{
		_GODOT_remove_fallback.bind("DynamicFont", "remove_fallback");
		ptrcall!(void)(_GODOT_remove_fallback, _godot_object, idx);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_fallback_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fallback_count") = _GODOT_get_fallback_count;
	/**
	Returns the number of fallback fonts.
	*/
	long getFallbackCount() const
	{
		_GODOT_get_fallback_count.bind("DynamicFont", "get_fallback_count");
		return ptrcall!(long)(_GODOT_get_fallback_count, _godot_object);
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
