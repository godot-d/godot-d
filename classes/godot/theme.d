/**
Theme for controls.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.theme;
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
import godot.texture;
import godot.stylebox;
import godot.font;
/**
Theme for controls.

Theme for skinning controls. Controls can be skinned individually, but for complex applications it's more efficient to just create a global theme that defines everything. This theme can be applied to any $(D Control), and it and its children will automatically use it.
Theme resources can be alternatively loaded by writing them in a .theme file, see docs for more info.
*/
@GodotBaseClass struct Theme
{
	static immutable string _GODOT_internal_name = "Theme";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Theme other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Theme opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Theme _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Theme");
		if(constructor is null) return typeof(this).init;
		return cast(Theme)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, String, String, Texture) _GODOT_set_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_icon") = _GODOT_set_icon;
	/**
	Sets Theme's icon $(D Texture) to `texture` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, Texture texture)
	{
		_GODOT_set_icon.bind("Theme", "set_icon");
		ptrcall!(void)(_GODOT_set_icon, _godot_object, name, type, texture);
	}
	package(godot) static GodotMethod!(Texture, String, String) _GODOT_get_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon") = _GODOT_get_icon;
	/**
	Returns the icon $(D Texture) at `name` if Theme has `type`.
	*/
	Ref!Texture getIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_icon.bind("Theme", "get_icon");
		return ptrcall!(Texture)(_GODOT_get_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_icon") = _GODOT_has_icon;
	/**
	Returns `true` if icon $(D Texture) with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_icon.bind("Theme", "has_icon");
		return ptrcall!(bool)(_GODOT_has_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_icon;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_icon") = _GODOT_clear_icon;
	/**
	Clears icon at `name` if Theme has `type`.
	*/
	void clearIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_icon.bind("Theme", "clear_icon");
		ptrcall!(void)(_GODOT_clear_icon, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_icon_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_icon_list") = _GODOT_get_icon_list;
	/**
	Returns all of the icons as a $(D PoolStringArray) filled with each $(D Texture)'s name, for use in $(D getIcon), if Theme has `type`.
	*/
	PoolStringArray getIconList(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_icon_list.bind("Theme", "get_icon_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_icon_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, String, String, StyleBox) _GODOT_set_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stylebox") = _GODOT_set_stylebox;
	/**
	Sets Theme's $(D StyleBox) to `stylebox` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, StyleBox texture)
	{
		_GODOT_set_stylebox.bind("Theme", "set_stylebox");
		ptrcall!(void)(_GODOT_set_stylebox, _godot_object, name, type, texture);
	}
	package(godot) static GodotMethod!(StyleBox, String, String) _GODOT_get_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stylebox") = _GODOT_get_stylebox;
	/**
	Returns the icon $(D StyleBox) at `name` if Theme has `type`.
	*/
	Ref!StyleBox getStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_stylebox.bind("Theme", "get_stylebox");
		return ptrcall!(StyleBox)(_GODOT_get_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_stylebox") = _GODOT_has_stylebox;
	/**
	Returns `true` if $(D StyleBox) with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_stylebox.bind("Theme", "has_stylebox");
		return ptrcall!(bool)(_GODOT_has_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_stylebox;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_stylebox") = _GODOT_clear_stylebox;
	/**
	Clears $(D StyleBox) at `name` if Theme has `type`.
	*/
	void clearStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_stylebox.bind("Theme", "clear_stylebox");
		ptrcall!(void)(_GODOT_clear_stylebox, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_stylebox_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stylebox_list") = _GODOT_get_stylebox_list;
	/**
	Returns all of the $(D StyleBox)s as a $(D PoolStringArray) filled with each $(D StyleBox)'s name, for use in $(D getStylebox), if Theme has `type`.
	*/
	PoolStringArray getStyleboxList(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_stylebox_list.bind("Theme", "get_stylebox_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_stylebox_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_stylebox_types;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stylebox_types") = _GODOT_get_stylebox_types;
	/**
	Returns all of the $(D StyleBox) types as a $(D PoolStringArray) filled with each $(D StyleBox)'s type, for use in $(D getStylebox) and/or $(D getStyleboxList), if Theme has `type`.
	*/
	PoolStringArray getStyleboxTypes() const
	{
		_GODOT_get_stylebox_types.bind("Theme", "get_stylebox_types");
		return ptrcall!(PoolStringArray)(_GODOT_get_stylebox_types, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, String, Font) _GODOT_set_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_font") = _GODOT_set_font;
	/**
	Sets Theme's $(D Font) to `font` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, Font font)
	{
		_GODOT_set_font.bind("Theme", "set_font");
		ptrcall!(void)(_GODOT_set_font, _godot_object, name, type, font);
	}
	package(godot) static GodotMethod!(Font, String, String) _GODOT_get_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font") = _GODOT_get_font;
	/**
	Returns the $(D Font) at `name` if Theme has `type`.
	*/
	Ref!Font getFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_font.bind("Theme", "get_font");
		return ptrcall!(Font)(_GODOT_get_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_font") = _GODOT_has_font;
	/**
	Returns `true` if $(D Font) with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_font.bind("Theme", "has_font");
		return ptrcall!(bool)(_GODOT_has_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_font") = _GODOT_clear_font;
	/**
	Clears $(D Font) at `name` if Theme has `type`.
	*/
	void clearFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_font.bind("Theme", "clear_font");
		ptrcall!(void)(_GODOT_clear_font, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_font_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_font_list") = _GODOT_get_font_list;
	/**
	Returns all of the $(D Font)s as a $(D PoolStringArray) filled with each $(D Font)'s name, for use in $(D getFont), if Theme has `type`.
	*/
	PoolStringArray getFontList(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_font_list.bind("Theme", "get_font_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_font_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, String, String, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	/**
	Sets Theme's $(D Color) to `color` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, in Color color)
	{
		_GODOT_set_color.bind("Theme", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, name, type, color);
	}
	package(godot) static GodotMethod!(Color, String, String) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	/**
	Returns the $(D Color) at `name` if Theme has `type`.
	*/
	Color getColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_color.bind("Theme", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_color") = _GODOT_has_color;
	/**
	Returns `true` if $(D Color) with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_color.bind("Theme", "has_color");
		return ptrcall!(bool)(_GODOT_has_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_color") = _GODOT_clear_color;
	/**
	Clears theme $(D Color) at `name` if Theme has `type`.
	*/
	void clearColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_color.bind("Theme", "clear_color");
		ptrcall!(void)(_GODOT_clear_color, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_color_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color_list") = _GODOT_get_color_list;
	/**
	Returns all of the $(D Color)s as a $(D PoolStringArray) filled with each $(D Color)'s name, for use in $(D getColor), if Theme has `type`.
	*/
	PoolStringArray getColorList(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_color_list.bind("Theme", "get_color_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_color_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, String, String, long) _GODOT_set_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constant") = _GODOT_set_constant;
	/**
	Sets Theme's constant to `constant` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, in long constant)
	{
		_GODOT_set_constant.bind("Theme", "set_constant");
		ptrcall!(void)(_GODOT_set_constant, _godot_object, name, type, constant);
	}
	package(godot) static GodotMethod!(long, String, String) _GODOT_get_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant") = _GODOT_get_constant;
	/**
	Returns the constant at `name` if Theme has `type`.
	*/
	long getConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_get_constant.bind("Theme", "get_constant");
		return ptrcall!(long)(_GODOT_get_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_has_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_constant") = _GODOT_has_constant;
	/**
	Returns `true` if constant with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		_GODOT_has_constant.bind("Theme", "has_constant");
		return ptrcall!(bool)(_GODOT_has_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_clear_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_constant") = _GODOT_clear_constant;
	/**
	Clears theme constant at `name` if Theme has `type`.
	*/
	void clearConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		_GODOT_clear_constant.bind("Theme", "clear_constant");
		ptrcall!(void)(_GODOT_clear_constant, _godot_object, name, type);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_constant_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constant_list") = _GODOT_get_constant_list;
	/**
	Returns all of the constants as a $(D PoolStringArray) filled with each constant's name, for use in $(D getConstant), if Theme has `type`.
	*/
	PoolStringArray getConstantList(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_constant_list.bind("Theme", "get_constant_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_constant_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, Font) _GODOT_set_default_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_font") = _GODOT_set_default_font;
	/**
	
	*/
	void setDefaultFont(Font font)
	{
		_GODOT_set_default_font.bind("Theme", "set_default_font");
		ptrcall!(void)(_GODOT_set_default_font, _godot_object, font);
	}
	package(godot) static GodotMethod!(Font) _GODOT_get_default_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_font") = _GODOT_get_default_font;
	/**
	
	*/
	Ref!Font getDefaultFont() const
	{
		_GODOT_get_default_font.bind("Theme", "get_default_font");
		return ptrcall!(Font)(_GODOT_get_default_font, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_type_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_type_list") = _GODOT_get_type_list;
	/**
	Returns all of the types in `type` as a $(D PoolStringArray) for use in any of the get_* functions, if Theme has `type`.
	*/
	PoolStringArray getTypeList(StringArg0)(in StringArg0 type) const
	{
		_GODOT_get_type_list.bind("Theme", "get_type_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_type_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void) _GODOT__emit_theme_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_emit_theme_changed") = _GODOT__emit_theme_changed;
	/**
	
	*/
	void _emitThemeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_emit_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT_copy_default_theme;
	package(godot) alias _GODOT_methodBindInfo(string name : "copy_default_theme") = _GODOT_copy_default_theme;
	/**
	Sets theme values to a copy of the default theme values.
	*/
	void copyDefaultTheme()
	{
		_GODOT_copy_default_theme.bind("Theme", "copy_default_theme");
		ptrcall!(void)(_GODOT_copy_default_theme, _godot_object);
	}
	/**
	The theme's default font.
	*/
	@property Font defaultFont()
	{
		return getDefaultFont();
	}
	/// ditto
	@property void defaultFont(Font v)
	{
		setDefaultFont(v);
	}
}
