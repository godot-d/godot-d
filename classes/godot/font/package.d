/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.font;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
/**

*/
@GodotBaseClass struct Font
{
	package(godot) enum string _GODOT_internal_name = "Font";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("draw") GodotMethod!(void, RID, Vector2, String, Color, long, Color) draw;
		@GodotName("draw_char") GodotMethod!(double, RID, Vector2, long, long, Color, bool) drawChar;
		@GodotName("get_ascent") GodotMethod!(double) getAscent;
		@GodotName("get_char_contours") GodotMethod!(Dictionary, long, long) getCharContours;
		@GodotName("get_char_size") GodotMethod!(Vector2, long, long) getCharSize;
		@GodotName("get_char_texture") GodotMethod!(RID, long, long, bool) getCharTexture;
		@GodotName("get_char_texture_size") GodotMethod!(Vector2, long, long, bool) getCharTextureSize;
		@GodotName("get_char_tx_offset") GodotMethod!(Vector2, long, long, bool) getCharTxOffset;
		@GodotName("get_char_tx_size") GodotMethod!(Vector2, long, long, bool) getCharTxSize;
		@GodotName("get_char_tx_uv_rect") GodotMethod!(Rect2, long, long, bool) getCharTxUvRect;
		@GodotName("get_descent") GodotMethod!(double) getDescent;
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("get_string_size") GodotMethod!(Vector2, String) getStringSize;
		@GodotName("get_wordwrap_string_size") GodotMethod!(Vector2, String, double) getWordwrapStringSize;
		@GodotName("has_outline") GodotMethod!(bool) hasOutline;
		@GodotName("is_distance_field_hint") GodotMethod!(bool) isDistanceFieldHint;
		@GodotName("update_changes") GodotMethod!(void) updateChanges;
	}
	/// 
	pragma(inline, true) bool opEquals(in Font other) const
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
	/// Construct a new instance of Font.
	/// Note: use `memnew!Font` instead.
	static Font _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Font");
		if(constructor is null) return typeof(this).init;
		return cast(Font)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ContourPointTag : int
	{
		/** */
		contourCurveTagOffConic = 0,
		/** */
		contourCurveTagOn = 1,
		/** */
		contourCurveTagOffCubic = 2,
	}
	/// 
	enum Constants : int
	{
		contourCurveTagOffConic = 0,
		contourCurveTagOn = 1,
		contourCurveTagOffCubic = 2,
	}
	/**
	
	*/
	void draw(in RID canvas_item, in Vector2 position, in String string, in Color modulate = Color(1,1,1,1), in long clip_w = -1, in Color outline_modulate = Color(1,1,1,1)) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.draw, _godot_object, canvas_item, position, string, modulate, clip_w, outline_modulate);
	}
	/**
	
	*/
	double drawChar(in RID canvas_item, in Vector2 position, in long _char, in long next = -1, in Color modulate = Color(1,1,1,1), in bool outline = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.drawChar, _godot_object, canvas_item, position, _char, next, modulate, outline);
	}
	/**
	
	*/
	double getAscent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAscent, _godot_object);
	}
	/**
	
	*/
	Dictionary getCharContours(in long _char, in long next = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getCharContours, _godot_object, _char, next);
	}
	/**
	
	*/
	Vector2 getCharSize(in long _char, in long next = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCharSize, _godot_object, _char, next);
	}
	/**
	
	*/
	RID getCharTexture(in long _char, in long next = 0, in bool outline = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getCharTexture, _godot_object, _char, next, outline);
	}
	/**
	
	*/
	Vector2 getCharTextureSize(in long _char, in long next = 0, in bool outline = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCharTextureSize, _godot_object, _char, next, outline);
	}
	/**
	
	*/
	Vector2 getCharTxOffset(in long _char, in long next = 0, in bool outline = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCharTxOffset, _godot_object, _char, next, outline);
	}
	/**
	
	*/
	Vector2 getCharTxSize(in long _char, in long next = 0, in bool outline = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCharTxSize, _godot_object, _char, next, outline);
	}
	/**
	
	*/
	Rect2 getCharTxUvRect(in long _char, in long next = 0, in bool outline = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getCharTxUvRect, _godot_object, _char, next, outline);
	}
	/**
	
	*/
	double getDescent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDescent, _godot_object);
	}
	/**
	
	*/
	double getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	Vector2 getStringSize(in String string) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getStringSize, _godot_object, string);
	}
	/**
	
	*/
	Vector2 getWordwrapStringSize(in String string, in double width) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getWordwrapStringSize, _godot_object, string, width);
	}
	/**
	
	*/
	bool hasOutline() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasOutline, _godot_object);
	}
	/**
	
	*/
	bool isDistanceFieldHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDistanceFieldHint, _godot_object);
	}
	/**
	
	*/
	void updateChanges()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateChanges, _godot_object);
	}
}
