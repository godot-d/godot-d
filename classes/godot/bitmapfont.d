/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.bitmapfont;
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
import godot.texture;
/**

*/
@GodotBaseClass struct BitmapFont
{
	package(godot) enum string _GODOT_internal_name = "BitmapFont";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Font _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_chars") GodotMethod!(PoolIntArray) _getChars;
		@GodotName("_get_kernings") GodotMethod!(PoolIntArray) _getKernings;
		@GodotName("_get_textures") GodotMethod!(Array) _getTextures;
		@GodotName("_set_chars") GodotMethod!(void, PoolIntArray) _setChars;
		@GodotName("_set_kernings") GodotMethod!(void, PoolIntArray) _setKernings;
		@GodotName("_set_textures") GodotMethod!(void, Array) _setTextures;
		@GodotName("add_char") GodotMethod!(void, long, long, Rect2, Vector2, double) addChar;
		@GodotName("add_kerning_pair") GodotMethod!(void, long, long, long) addKerningPair;
		@GodotName("add_texture") GodotMethod!(void, Texture) addTexture;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("create_from_fnt") GodotMethod!(GodotError, String) createFromFnt;
		@GodotName("get_fallback") GodotMethod!(BitmapFont) getFallback;
		@GodotName("get_kerning_pair") GodotMethod!(long, long, long) getKerningPair;
		@GodotName("get_texture") GodotMethod!(Texture, long) getTexture;
		@GodotName("get_texture_count") GodotMethod!(long) getTextureCount;
		@GodotName("set_ascent") GodotMethod!(void, double) setAscent;
		@GodotName("set_distance_field_hint") GodotMethod!(void, bool) setDistanceFieldHint;
		@GodotName("set_fallback") GodotMethod!(void, BitmapFont) setFallback;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
	}
	/// 
	pragma(inline, true) bool opEquals(in BitmapFont other) const
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
	/// Construct a new instance of BitmapFont.
	/// Note: use `memnew!BitmapFont` instead.
	static BitmapFont _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BitmapFont");
		if(constructor is null) return typeof(this).init;
		return cast(BitmapFont)(constructor());
	}
	/**
	
	*/
	PoolIntArray _getChars() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_chars");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolIntArray);
	}
	/**
	
	*/
	PoolIntArray _getKernings() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_kernings");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolIntArray);
	}
	/**
	
	*/
	Array _getTextures() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_textures");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setChars(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_chars");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setKernings(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_kernings");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setTextures(in Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_textures");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addChar(in long character, in long texture, in Rect2 rect, in Vector2 _align = Vector2(0, 0), in double advance = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addChar, _godot_object, character, texture, rect, _align, advance);
	}
	/**
	
	*/
	void addKerningPair(in long char_a, in long char_b, in long kerning)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addKerningPair, _godot_object, char_a, char_b, kerning);
	}
	/**
	
	*/
	void addTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTexture, _godot_object, texture);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	GodotError createFromFnt(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.createFromFnt, _godot_object, path);
	}
	/**
	
	*/
	Ref!BitmapFont getFallback() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BitmapFont)(GDNativeClassBinding.getFallback, _godot_object);
	}
	/**
	
	*/
	long getKerningPair(in long char_a, in long char_b) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getKerningPair, _godot_object, char_a, char_b);
	}
	/**
	
	*/
	Ref!Texture getTexture(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTexture, _godot_object, idx);
	}
	/**
	
	*/
	long getTextureCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTextureCount, _godot_object);
	}
	/**
	
	*/
	void setAscent(in double px)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAscent, _godot_object, px);
	}
	/**
	
	*/
	void setDistanceFieldHint(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDistanceFieldHint, _godot_object, enable);
	}
	/**
	
	*/
	void setFallback(BitmapFont fallback)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFallback, _godot_object, fallback);
	}
	/**
	
	*/
	void setHeight(in double px)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHeight, _godot_object, px);
	}
	/**
	
	*/
	@property double ascent()
	{
		return getAscent();
	}
	/// ditto
	@property void ascent(double v)
	{
		setAscent(v);
	}
	/**
	
	*/
	@property PoolIntArray chars()
	{
		return _getChars();
	}
	/// ditto
	@property void chars(PoolIntArray v)
	{
		_setChars(v);
	}
	/**
	
	*/
	@property bool distanceField()
	{
		return isDistanceFieldHint();
	}
	/// ditto
	@property void distanceField(bool v)
	{
		setDistanceFieldHint(v);
	}
	/**
	
	*/
	@property BitmapFont fallback()
	{
		return getFallback();
	}
	/// ditto
	@property void fallback(BitmapFont v)
	{
		setFallback(v);
	}
	/**
	
	*/
	@property double height()
	{
		return getHeight();
	}
	/// ditto
	@property void height(double v)
	{
		setHeight(v);
	}
	/**
	
	*/
	@property PoolIntArray kernings()
	{
		return _getKernings();
	}
	/// ditto
	@property void kernings(PoolIntArray v)
	{
		_setKernings(v);
	}
	/**
	
	*/
	@property Array textures()
	{
		return _getTextures();
	}
	/// ditto
	@property void textures(Array v)
	{
		_setTextures(v);
	}
}
