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
import godot.resource;
import godot.reference;
/**
Renders text using `*.fnt` fonts.

Renders text using `*.fnt` fonts containing texture atlases. Supports distance fields. For using vector font files like TTF directly, see $(D DynamicFont).
*/
@GodotBaseClass struct BitmapFont
{
	enum string _GODOT_internal_name = "BitmapFont";
public:
@nogc nothrow:
	union { godot_object _godot_object; Font _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("create_from_fnt") GodotMethod!(GodotError, String) createFromFnt;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
		@GodotName("set_ascent") GodotMethod!(void, double) setAscent;
		@GodotName("add_kerning_pair") GodotMethod!(void, long, long, long) addKerningPair;
		@GodotName("get_kerning_pair") GodotMethod!(long, long, long) getKerningPair;
		@GodotName("add_texture") GodotMethod!(void, Texture) addTexture;
		@GodotName("add_char") GodotMethod!(void, long, long, Rect2, Vector2, double) addChar;
		@GodotName("get_texture_count") GodotMethod!(long) getTextureCount;
		@GodotName("get_texture") GodotMethod!(Texture, long) getTexture;
		@GodotName("get_char_size") GodotMethod!(Vector2, long, long) getCharSize;
		@GodotName("set_distance_field_hint") GodotMethod!(void, bool) setDistanceFieldHint;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("_set_chars") GodotMethod!(void, PoolIntArray) _setChars;
		@GodotName("_get_chars") GodotMethod!(PoolIntArray) _getChars;
		@GodotName("_set_kernings") GodotMethod!(void, PoolIntArray) _setKernings;
		@GodotName("_get_kernings") GodotMethod!(PoolIntArray) _getKernings;
		@GodotName("_set_textures") GodotMethod!(void, Array) _setTextures;
		@GodotName("_get_textures") GodotMethod!(Array) _getTextures;
		@GodotName("set_fallback") GodotMethod!(void, BitmapFont) setFallback;
		@GodotName("get_fallback") GodotMethod!(BitmapFont) getFallback;
	}
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
	@disable new(size_t s);
	/**
	Creates a BitmapFont from the `*.fnt` file at `path`.
	*/
	GodotError createFromFnt(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.createFromFnt, _godot_object, path);
	}
	/**
	
	*/
	void setHeight(in double px)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHeight, _godot_object, px);
	}
	/**
	
	*/
	void setAscent(in double px)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAscent, _godot_object, px);
	}
	/**
	Adds a kerning pair to the $(D BitmapFont) as a difference. Kerning pairs are special cases where a typeface advance is determined by the next character.
	*/
	void addKerningPair(in long char_a, in long char_b, in long kerning)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addKerningPair, _godot_object, char_a, char_b, kerning);
	}
	/**
	Returns a kerning pair as a difference.
	*/
	long getKerningPair(in long char_a, in long char_b) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getKerningPair, _godot_object, char_a, char_b);
	}
	/**
	Adds a texture to the $(D BitmapFont).
	*/
	void addTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addTexture, _godot_object, texture);
	}
	/**
	Adds a character to the font, where `character` is the unicode value, `texture` is the texture index, `rect` is the region in the texture (in pixels!), `align` is the (optional) alignment for the character and `advance` is the (optional) advance.
	*/
	void addChar(in long character, in long texture, in Rect2 rect, in Vector2 _align = Vector2(0, 0), in double advance = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addChar, _godot_object, character, texture, rect, _align, advance);
	}
	/**
	Returns the number of textures in the BitmapFont atlas.
	*/
	long getTextureCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTextureCount, _godot_object);
	}
	/**
	Returns the font atlas texture at index `idx`.
	*/
	Ref!Texture getTexture(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTexture, _godot_object, idx);
	}
	/**
	Returns the size of a character, optionally taking kerning into account if the next character is provided.
	*/
	Vector2 getCharSize(in long _char, in long next = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getCharSize, _godot_object, _char, next);
	}
	/**
	
	*/
	void setDistanceFieldHint(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDistanceFieldHint, _godot_object, enable);
	}
	/**
	Clears all the font data and settings.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	
	*/
	void _setChars(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_chars");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	PoolIntArray _getChars() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_chars");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolIntArray);
	}
	/**
	
	*/
	void _setKernings(in PoolIntArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_kernings");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	PoolIntArray _getKernings() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_kernings");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolIntArray);
	}
	/**
	
	*/
	void _setTextures(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_textures");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getTextures() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_textures");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void setFallback(BitmapFont fallback)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFallback, _godot_object, fallback);
	}
	/**
	
	*/
	Ref!BitmapFont getFallback() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BitmapFont)(_classBinding.getFallback, _godot_object);
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
	If `true`, distance field hint is enabled.
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
