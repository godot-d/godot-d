/**
Internationalized font and text drawing support.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.font;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
Internationalized font and text drawing support.

Font contains a unicode compatible character set, as well as the ability to draw it with variable width, ascent, descent and kerning. For creating fonts from TTF files (or other font formats), see the editor support for fonts. TODO check wikipedia for graph of ascent/baseline/descent/height/etc.
*/
@GodotBaseClass struct Font
{
	static immutable string _GODOT_internal_name = "Font";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Font other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Font opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Font _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Font");
		if(constructor is null) return typeof(this).init;
		return cast(Font)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, RID, Vector2, String, Color, long) _GODOT_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw") = _GODOT_draw;
	/**
	Draw "string" into a canvas item using the font at a given position, with "modulate" color, and optionally clipping the width. "position" specifies the baseline, not the top. To draw from the top, $(I ascent) must be added to the Y axis.
	*/
	void draw(StringArg2)(in RID canvas_item, in Vector2 position, in StringArg2 string, in Color modulate = Color(1,1,1,1), in long clip_w = -1) const
	{
		_GODOT_draw.bind("Font", "draw");
		ptrcall!(void)(_GODOT_draw, _godot_object, canvas_item, position, string, modulate, clip_w);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_ascent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_ascent") = _GODOT_get_ascent;
	/**
	Return the font ascent (number of pixels above the baseline).
	*/
	double getAscent() const
	{
		_GODOT_get_ascent.bind("Font", "get_ascent");
		return ptrcall!(double)(_GODOT_get_ascent, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_descent;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_descent") = _GODOT_get_descent;
	/**
	Return the font descent (number of pixels below the baseline).
	*/
	double getDescent() const
	{
		_GODOT_get_descent.bind("Font", "get_descent");
		return ptrcall!(double)(_GODOT_get_descent, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	/**
	Return the total font height (ascent plus descent) in pixels.
	*/
	double getHeight() const
	{
		_GODOT_get_height.bind("Font", "get_height");
		return ptrcall!(double)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_distance_field_hint;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_distance_field_hint") = _GODOT_is_distance_field_hint;
	/**
	
	*/
	bool isDistanceFieldHint() const
	{
		_GODOT_is_distance_field_hint.bind("Font", "is_distance_field_hint");
		return ptrcall!(bool)(_GODOT_is_distance_field_hint, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, String) _GODOT_get_string_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_string_size") = _GODOT_get_string_size;
	/**
	Return the size of a string, taking kerning and advance into account.
	*/
	Vector2 getStringSize(StringArg0)(in StringArg0 string) const
	{
		_GODOT_get_string_size.bind("Font", "get_string_size");
		return ptrcall!(Vector2)(_GODOT_get_string_size, _godot_object, string);
	}
	package(godot) static GodotMethod!(double, RID, Vector2, long, long, Color) _GODOT_draw_char;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw_char") = _GODOT_draw_char;
	/**
	Draw character "char" into a canvas item using the font at a given position, with "modulate" color, and optionally kerning if "next" is passed. clipping the width. "position" specifies the baseline, not the top. To draw from the top, $(I ascent) must be added to the Y axis. The width used by the character is returned, making this function useful for drawing strings character by character.
	*/
	double drawChar(in RID canvas_item, in Vector2 position, in long _char, in long next = -1, in Color modulate = Color(1,1,1,1)) const
	{
		_GODOT_draw_char.bind("Font", "draw_char");
		return ptrcall!(double)(_GODOT_draw_char, _godot_object, canvas_item, position, _char, next, modulate);
	}
	package(godot) static GodotMethod!(void) _GODOT_update_changes;
	package(godot) alias _GODOT_methodBindInfo(string name : "update_changes") = _GODOT_update_changes;
	/**
	After editing a font (changing size, ascent, char rects, etc.). Call this function to propagate changes to controls that might use it.
	*/
	void updateChanges()
	{
		_GODOT_update_changes.bind("Font", "update_changes");
		ptrcall!(void)(_GODOT_update_changes, _godot_object);
	}
}
