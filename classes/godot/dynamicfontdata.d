/**
Used with $(D DynamicFont) to describe the location of a font file.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.dynamicfontdata;
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
Used with $(D DynamicFont) to describe the location of a font file.

Used with $(D DynamicFont) to describe the location of a vector font file for dynamic rendering at runtime.
*/
@GodotBaseClass struct DynamicFontData
{
	package(godot) enum string _GODOT_internal_name = "DynamicFontData";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_font_path") GodotMethod!(String) getFontPath;
		@GodotName("get_hinting") GodotMethod!(DynamicFontData.Hinting) getHinting;
		@GodotName("is_antialiased") GodotMethod!(bool) isAntialiased;
		@GodotName("set_antialiased") GodotMethod!(void, bool) setAntialiased;
		@GodotName("set_font_path") GodotMethod!(void, String) setFontPath;
		@GodotName("set_hinting") GodotMethod!(void, long) setHinting;
	}
	/// 
	pragma(inline, true) bool opEquals(in DynamicFontData other) const
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
	/// Construct a new instance of DynamicFontData.
	/// Note: use `memnew!DynamicFontData` instead.
	static DynamicFontData _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("DynamicFontData");
		if(constructor is null) return typeof(this).init;
		return cast(DynamicFontData)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Hinting : int
	{
		/**
		Disables font hinting (smoother but less crisp).
		*/
		hintingNone = 0,
		/**
		Use the light font hinting mode.
		*/
		hintingLight = 1,
		/**
		Use the default font hinting mode (crisper but less smooth).
		*/
		hintingNormal = 2,
	}
	/// 
	enum Constants : int
	{
		hintingNone = 0,
		hintingLight = 1,
		hintingNormal = 2,
	}
	/**
	
	*/
	String getFontPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFontPath, _godot_object);
	}
	/**
	
	*/
	DynamicFontData.Hinting getHinting() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DynamicFontData.Hinting)(GDNativeClassBinding.getHinting, _godot_object);
	}
	/**
	
	*/
	bool isAntialiased() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isAntialiased, _godot_object);
	}
	/**
	
	*/
	void setAntialiased(in bool antialiased)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAntialiased, _godot_object, antialiased);
	}
	/**
	
	*/
	void setFontPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFontPath, _godot_object, path);
	}
	/**
	
	*/
	void setHinting(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHinting, _godot_object, mode);
	}
	/**
	If `true`, the font is rendered with anti-aliasing. This property applies both to the main font and its outline (if it has one).
	*/
	@property bool antialiased()
	{
		return isAntialiased();
	}
	/// ditto
	@property void antialiased(bool v)
	{
		setAntialiased(v);
	}
	/**
	The path to the vector font file.
	*/
	@property String fontPath()
	{
		return getFontPath();
	}
	/// ditto
	@property void fontPath(String v)
	{
		setFontPath(v);
	}
	/**
	The font hinting mode used by FreeType. See $(D hinting) for options.
	*/
	@property DynamicFontData.Hinting hinting()
	{
		return getHinting();
	}
	/// ditto
	@property void hinting(long v)
	{
		setHinting(v);
	}
}
