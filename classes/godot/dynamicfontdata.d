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
Used with $(D DynamicFont) to describe the location of a font file.

Used with $(D DynamicFont) to describe the location of a vector font file for dynamic rendering at runtime.
*/
@GodotBaseClass struct DynamicFontData
{
	enum string _GODOT_internal_name = "DynamicFontData";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_antialiased") GodotMethod!(void, bool) setAntialiased;
		@GodotName("is_antialiased") GodotMethod!(bool) isAntialiased;
		@GodotName("set_font_path") GodotMethod!(void, String) setFontPath;
		@GodotName("get_font_path") GodotMethod!(String) getFontPath;
		@GodotName("set_hinting") GodotMethod!(void, long) setHinting;
		@GodotName("get_hinting") GodotMethod!(DynamicFontData.Hinting) getHinting;
	}
	bool opEquals(in DynamicFontData other) const { return _godot_object.ptr is other._godot_object.ptr; }
	DynamicFontData opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Disable font hinting (smoother but less crisp).
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
	void setAntialiased(in bool antialiased)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAntialiased, _godot_object, antialiased);
	}
	/**
	
	*/
	bool isAntialiased() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAntialiased, _godot_object);
	}
	/**
	
	*/
	void setFontPath(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFontPath, _godot_object, path);
	}
	/**
	
	*/
	String getFontPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getFontPath, _godot_object);
	}
	/**
	
	*/
	void setHinting(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHinting, _godot_object, mode);
	}
	/**
	
	*/
	DynamicFontData.Hinting getHinting() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(DynamicFontData.Hinting)(_classBinding.getHinting, _godot_object);
	}
	/**
	Controls whether the font should be rendered with anti-aliasing.
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
	The font hinting mode used by FreeType.
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
}
