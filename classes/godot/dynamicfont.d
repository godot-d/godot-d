/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.font;
import godot.dynamicfontdata;
/**

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
		/** */
		spacingTop = 0,
		/** */
		spacingBottom = 1,
		/** */
		spacingChar = 2,
		/** */
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
	void addFallback(DynamicFontData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addFallback, _godot_object, data);
	}
	/**
	
	*/
	String getAvailableChars() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAvailableChars, _godot_object);
	}
	/**
	
	*/
	Ref!DynamicFontData getFallback(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DynamicFontData)(GDNativeClassBinding.getFallback, _godot_object, idx);
	}
	/**
	
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
	
	*/
	void removeFallback(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeFallback, _godot_object, idx);
	}
	/**
	
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
