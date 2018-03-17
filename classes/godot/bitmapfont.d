/**
Renders text using `*.fnt` fonts.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.bitmapfont;
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
import godot.texture;
/**
Renders text using `*.fnt` fonts.

Renders text using `*.fnt` fonts containing texture atlases. Supports distance fields. For using vector font files like TTF directly, see $(D DynamicFont).
*/
@GodotBaseClass struct BitmapFont
{
	static immutable string _GODOT_internal_name = "BitmapFont";
public:
@nogc nothrow:
	union { godot_object _godot_object; Font _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in BitmapFont other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BitmapFont opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BitmapFont _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BitmapFont");
		if(constructor is null) return typeof(this).init;
		return cast(BitmapFont)(constructor());
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_create_from_fnt;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_from_fnt") = _GODOT_create_from_fnt;
	/**
	Creates a BitmapFont from the `*.fnt` file at `path`.
	*/
	GodotError createFromFnt(StringArg0)(in StringArg0 path)
	{
		_GODOT_create_from_fnt.bind("BitmapFont", "create_from_fnt");
		return ptrcall!(GodotError)(_GODOT_create_from_fnt, _godot_object, path);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_height") = _GODOT_set_height;
	/**
	
	*/
	void setHeight(in double px)
	{
		_GODOT_set_height.bind("BitmapFont", "set_height");
		ptrcall!(void)(_GODOT_set_height, _godot_object, px);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_ascent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_ascent") = _GODOT_set_ascent;
	/**
	
	*/
	void setAscent(in double px)
	{
		_GODOT_set_ascent.bind("BitmapFont", "set_ascent");
		ptrcall!(void)(_GODOT_set_ascent, _godot_object, px);
	}
	package(godot) static GodotMethod!(void, long, long, long) _GODOT_add_kerning_pair;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_kerning_pair") = _GODOT_add_kerning_pair;
	/**
	Adds a kerning pair to the `BitmapFont` as a difference. Kerning pairs are special cases where a typeface advance is determined by the next character.
	*/
	void addKerningPair(in long char_a, in long char_b, in long kerning)
	{
		_GODOT_add_kerning_pair.bind("BitmapFont", "add_kerning_pair");
		ptrcall!(void)(_GODOT_add_kerning_pair, _godot_object, char_a, char_b, kerning);
	}
	package(godot) static GodotMethod!(long, long, long) _GODOT_get_kerning_pair;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_kerning_pair") = _GODOT_get_kerning_pair;
	/**
	Returns a kerning pair as a difference.
	*/
	long getKerningPair(in long char_a, in long char_b) const
	{
		_GODOT_get_kerning_pair.bind("BitmapFont", "get_kerning_pair");
		return ptrcall!(long)(_GODOT_get_kerning_pair, _godot_object, char_a, char_b);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_add_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_texture") = _GODOT_add_texture;
	/**
	Adds a texture to the `BitmapFont`.
	*/
	void addTexture(Texture texture)
	{
		_GODOT_add_texture.bind("BitmapFont", "add_texture");
		ptrcall!(void)(_GODOT_add_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, long, long, Rect2, Vector2, double) _GODOT_add_char;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_char") = _GODOT_add_char;
	/**
	Adds a character to the font, where `character` is the unicode value, `texture` is the texture index, `rect` is the region in the texture (in pixels!), `align` is the (optional) alignment for the character and `advance` is the (optional) advance.
	*/
	void addChar(in long character, in long texture, in Rect2 rect, in Vector2 _align = Vector2(0, 0), in double advance = -1)
	{
		_GODOT_add_char.bind("BitmapFont", "add_char");
		ptrcall!(void)(_GODOT_add_char, _godot_object, character, texture, rect, _align, advance);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_texture_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_count") = _GODOT_get_texture_count;
	/**
	Returns the number of textures in the BitmapFont atlas.
	*/
	long getTextureCount() const
	{
		_GODOT_get_texture_count.bind("BitmapFont", "get_texture_count");
		return ptrcall!(long)(_GODOT_get_texture_count, _godot_object);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	Returns the font atlas texture at index `idx`.
	*/
	Ref!Texture getTexture(in long idx) const
	{
		_GODOT_get_texture.bind("BitmapFont", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Vector2, long, long) _GODOT_get_char_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_char_size") = _GODOT_get_char_size;
	/**
	Returns the size of a character, optionally taking kerning into account if the next character is provided.
	*/
	Vector2 getCharSize(in long _char, in long next = 0) const
	{
		_GODOT_get_char_size.bind("BitmapFont", "get_char_size");
		return ptrcall!(Vector2)(_GODOT_get_char_size, _godot_object, _char, next);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_distance_field_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_distance_field_hint") = _GODOT_set_distance_field_hint;
	/**
	
	*/
	void setDistanceFieldHint(in bool enable)
	{
		_GODOT_set_distance_field_hint.bind("BitmapFont", "set_distance_field_hint");
		ptrcall!(void)(_GODOT_set_distance_field_hint, _godot_object, enable);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clears all the font data and settings.
	*/
	void clear()
	{
		_GODOT_clear.bind("BitmapFont", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT__set_chars;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_chars") = _GODOT__set_chars;
	/**
	
	*/
	void _setChars(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_chars");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT__get_chars;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_chars") = _GODOT__get_chars;
	/**
	
	*/
	PoolIntArray _getChars() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_chars");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolIntArray);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT__set_kernings;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_kernings") = _GODOT__set_kernings;
	/**
	
	*/
	void _setKernings(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_kernings");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT__get_kernings;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_kernings") = _GODOT__get_kernings;
	/**
	
	*/
	PoolIntArray _getKernings() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_kernings");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolIntArray);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_textures;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_textures") = _GODOT__set_textures;
	/**
	
	*/
	void _setTextures(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_textures");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_textures;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_textures") = _GODOT__get_textures;
	/**
	
	*/
	Array _getTextures() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_textures");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	package(godot) static GodotMethod!(void, BitmapFont) _GODOT_set_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_fallback") = _GODOT_set_fallback;
	/**
	
	*/
	void setFallback(BitmapFont fallback)
	{
		_GODOT_set_fallback.bind("BitmapFont", "set_fallback");
		ptrcall!(void)(_GODOT_set_fallback, _godot_object, fallback);
	}
	package(godot) static GodotMethod!(BitmapFont) _GODOT_get_fallback;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_fallback") = _GODOT_get_fallback;
	/**
	
	*/
	Ref!BitmapFont getFallback() const
	{
		_GODOT_get_fallback.bind("BitmapFont", "get_fallback");
		return ptrcall!(BitmapFont)(_GODOT_get_fallback, _godot_object);
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
	Total font height (ascent plus descent) in pixels.
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
	Ascent (number of pixels above the baseline).
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
	If `true` distance field hint is enabled.
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
	The fallback font.
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
}
