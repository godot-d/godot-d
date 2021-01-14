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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
import godot.font;
import godot.texture;
import godot.stylebox;
/**
Theme for controls.

A theme for skinning controls. Controls can be skinned individually, but for complex applications, it's more practical to just create a global theme that defines everything. This theme can be applied to any $(D Control); the Control and its children will automatically use it.
Theme resources can alternatively be loaded by writing them in a `.theme` file, see the documentation for more information.
*/
@GodotBaseClass struct Theme
{
	package(godot) enum string _GODOT_internal_name = "Theme";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_emit_theme_changed") GodotMethod!(void) _emitThemeChanged;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("clear_color") GodotMethod!(void, String, String) clearColor;
		@GodotName("clear_constant") GodotMethod!(void, String, String) clearConstant;
		@GodotName("clear_font") GodotMethod!(void, String, String) clearFont;
		@GodotName("clear_icon") GodotMethod!(void, String, String) clearIcon;
		@GodotName("clear_stylebox") GodotMethod!(void, String, String) clearStylebox;
		@GodotName("copy_default_theme") GodotMethod!(void) copyDefaultTheme;
		@GodotName("copy_theme") GodotMethod!(void, Theme) copyTheme;
		@GodotName("get_color") GodotMethod!(Color, String, String) getColor;
		@GodotName("get_color_list") GodotMethod!(PoolStringArray, String) getColorList;
		@GodotName("get_constant") GodotMethod!(long, String, String) getConstant;
		@GodotName("get_constant_list") GodotMethod!(PoolStringArray, String) getConstantList;
		@GodotName("get_default_font") GodotMethod!(Font) getDefaultFont;
		@GodotName("get_font") GodotMethod!(Font, String, String) getFont;
		@GodotName("get_font_list") GodotMethod!(PoolStringArray, String) getFontList;
		@GodotName("get_icon") GodotMethod!(Texture, String, String) getIcon;
		@GodotName("get_icon_list") GodotMethod!(PoolStringArray, String) getIconList;
		@GodotName("get_stylebox") GodotMethod!(StyleBox, String, String) getStylebox;
		@GodotName("get_stylebox_list") GodotMethod!(PoolStringArray, String) getStyleboxList;
		@GodotName("get_stylebox_types") GodotMethod!(PoolStringArray) getStyleboxTypes;
		@GodotName("get_type_list") GodotMethod!(PoolStringArray, String) getTypeList;
		@GodotName("has_color") GodotMethod!(bool, String, String) hasColor;
		@GodotName("has_constant") GodotMethod!(bool, String, String) hasConstant;
		@GodotName("has_font") GodotMethod!(bool, String, String) hasFont;
		@GodotName("has_icon") GodotMethod!(bool, String, String) hasIcon;
		@GodotName("has_stylebox") GodotMethod!(bool, String, String) hasStylebox;
		@GodotName("set_color") GodotMethod!(void, String, String, Color) setColor;
		@GodotName("set_constant") GodotMethod!(void, String, String, long) setConstant;
		@GodotName("set_default_font") GodotMethod!(void, Font) setDefaultFont;
		@GodotName("set_font") GodotMethod!(void, String, String, Font) setFont;
		@GodotName("set_icon") GodotMethod!(void, String, String, Texture) setIcon;
		@GodotName("set_stylebox") GodotMethod!(void, String, String, StyleBox) setStylebox;
	}
	/// 
	pragma(inline, true) bool opEquals(in Theme other) const
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
	/// Construct a new instance of Theme.
	/// Note: use `memnew!Theme` instead.
	static Theme _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Theme");
		if(constructor is null) return typeof(this).init;
		return cast(Theme)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _emitThemeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_emit_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Clears all values on the theme.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Clears the $(D Color) at `name` if the theme has `node_type`.
	*/
	void clearColor(in String name, in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearColor, _godot_object, name, type);
	}
	/**
	Clears the constant at `name` if the theme has `node_type`.
	*/
	void clearConstant(in String name, in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearConstant, _godot_object, name, type);
	}
	/**
	Clears the $(D Font) at `name` if the theme has `node_type`.
	*/
	void clearFont(in String name, in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearFont, _godot_object, name, type);
	}
	/**
	Clears the icon at `name` if the theme has `node_type`.
	*/
	void clearIcon(in String name, in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearIcon, _godot_object, name, type);
	}
	/**
	Clears $(D StyleBox) at `name` if the theme has `node_type`.
	*/
	void clearStylebox(in String name, in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearStylebox, _godot_object, name, type);
	}
	/**
	Sets the theme's values to a copy of the default theme values.
	*/
	void copyDefaultTheme()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.copyDefaultTheme, _godot_object);
	}
	/**
	Sets the theme's values to a copy of a given theme.
	*/
	void copyTheme(Theme other)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.copyTheme, _godot_object, other);
	}
	/**
	Returns the $(D Color) at `name` if the theme has `node_type`.
	*/
	Color getColor(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object, name, type);
	}
	/**
	Returns all the $(D Color)s as a $(D PoolStringArray) filled with each $(D Color)'s name, for use in $(D getColor), if the theme has `node_type`.
	*/
	PoolStringArray getColorList(in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getColorList, _godot_object, type);
	}
	/**
	Returns the constant at `name` if the theme has `node_type`.
	*/
	long getConstant(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConstant, _godot_object, name, type);
	}
	/**
	Returns all the constants as a $(D PoolStringArray) filled with each constant's name, for use in $(D getConstant), if the theme has `node_type`.
	*/
	PoolStringArray getConstantList(in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getConstantList, _godot_object, type);
	}
	/**
	
	*/
	Ref!Font getDefaultFont() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(GDNativeClassBinding.getDefaultFont, _godot_object);
	}
	/**
	Returns the $(D Font) at `name` if the theme has `node_type`.
	*/
	Ref!Font getFont(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(GDNativeClassBinding.getFont, _godot_object, name, type);
	}
	/**
	Returns all the $(D Font)s as a $(D PoolStringArray) filled with each $(D Font)'s name, for use in $(D getFont), if the theme has `node_type`.
	*/
	PoolStringArray getFontList(in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getFontList, _godot_object, type);
	}
	/**
	Returns the icon $(D Texture) at `name` if the theme has `node_type`.
	*/
	Ref!Texture getIcon(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getIcon, _godot_object, name, type);
	}
	/**
	Returns all the icons as a $(D PoolStringArray) filled with each $(D Texture)'s name, for use in $(D getIcon), if the theme has `node_type`.
	*/
	PoolStringArray getIconList(in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getIconList, _godot_object, type);
	}
	/**
	Returns the icon $(D StyleBox) at `name` if the theme has `node_type`.
	*/
	Ref!StyleBox getStylebox(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBox)(GDNativeClassBinding.getStylebox, _godot_object, name, type);
	}
	/**
	Returns all the $(D StyleBox)s as a $(D PoolStringArray) filled with each $(D StyleBox)'s name, for use in $(D getStylebox), if the theme has `node_type`.
	*/
	PoolStringArray getStyleboxList(in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getStyleboxList, _godot_object, type);
	}
	/**
	Returns all the $(D StyleBox) types as a $(D PoolStringArray) filled with each $(D StyleBox)'s type, for use in $(D getStylebox) and/or $(D getStyleboxList), if the theme has `node_type`.
	*/
	PoolStringArray getStyleboxTypes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getStyleboxTypes, _godot_object);
	}
	/**
	Returns all the types in `node_type` as a $(D PoolStringArray) for use in any of the `get_*` functions, if the theme has `node_type`.
	*/
	PoolStringArray getTypeList(in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getTypeList, _godot_object, type);
	}
	/**
	Returns `true` if $(D Color) with `name` is in `node_type`.
	Returns `false` if the theme does not have `node_type`.
	*/
	bool hasColor(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasColor, _godot_object, name, type);
	}
	/**
	Returns `true` if constant with `name` is in `node_type`.
	Returns `false` if the theme does not have `node_type`.
	*/
	bool hasConstant(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasConstant, _godot_object, name, type);
	}
	/**
	Returns `true` if $(D Font) with `name` is in `node_type`.
	Returns `false` if the theme does not have `node_type`.
	*/
	bool hasFont(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFont, _godot_object, name, type);
	}
	/**
	Returns `true` if icon $(D Texture) with `name` is in `node_type`.
	Returns `false` if the theme does not have `node_type`.
	*/
	bool hasIcon(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasIcon, _godot_object, name, type);
	}
	/**
	Returns `true` if $(D StyleBox) with `name` is in `node_type`.
	Returns `false` if the theme does not have `node_type`.
	*/
	bool hasStylebox(in String name, in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasStylebox, _godot_object, name, type);
	}
	/**
	Sets the theme's $(D Color) to `color` at `name` in `node_type`.
	Does nothing if the theme does not have `node_type`.
	*/
	void setColor(in String name, in String type, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColor, _godot_object, name, type, color);
	}
	/**
	Sets the theme's constant to `constant` at `name` in `node_type`.
	Does nothing if the theme does not have `node_type`.
	*/
	void setConstant(in String name, in String type, in long constant)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstant, _godot_object, name, type, constant);
	}
	/**
	
	*/
	void setDefaultFont(Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultFont, _godot_object, font);
	}
	/**
	Sets the theme's $(D Font) to `font` at `name` in `node_type`.
	Does nothing if the theme does not have `node_type`.
	*/
	void setFont(in String name, in String type, Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFont, _godot_object, name, type, font);
	}
	/**
	Sets the theme's icon $(D Texture) to `texture` at `name` in `node_type`.
	Does nothing if the theme does not have `node_type`.
	*/
	void setIcon(in String name, in String type, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIcon, _godot_object, name, type, texture);
	}
	/**
	Sets theme's $(D StyleBox) to `stylebox` at `name` in `node_type`.
	Does nothing if the theme does not have `node_type`.
	*/
	void setStylebox(in String name, in String type, StyleBox texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStylebox, _godot_object, name, type, texture);
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
