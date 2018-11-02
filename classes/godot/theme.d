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
import godot.reference;
/**
Theme for controls.

Theme for skinning controls. Controls can be skinned individually, but for complex applications it's more efficient to just create a global theme that defines everything. This theme can be applied to any $(D Control), and it and its children will automatically use it.
Theme resources can be alternatively loaded by writing them in a .theme file, see docs for more info.
*/
@GodotBaseClass struct Theme
{
	enum string _GODOT_internal_name = "Theme";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_icon") GodotMethod!(void, String, String, Texture) setIcon;
		@GodotName("get_icon") GodotMethod!(Texture, String, String) getIcon;
		@GodotName("has_icon") GodotMethod!(bool, String, String) hasIcon;
		@GodotName("clear_icon") GodotMethod!(void, String, String) clearIcon;
		@GodotName("get_icon_list") GodotMethod!(PoolStringArray, String) getIconList;
		@GodotName("set_stylebox") GodotMethod!(void, String, String, StyleBox) setStylebox;
		@GodotName("get_stylebox") GodotMethod!(StyleBox, String, String) getStylebox;
		@GodotName("has_stylebox") GodotMethod!(bool, String, String) hasStylebox;
		@GodotName("clear_stylebox") GodotMethod!(void, String, String) clearStylebox;
		@GodotName("get_stylebox_list") GodotMethod!(PoolStringArray, String) getStyleboxList;
		@GodotName("get_stylebox_types") GodotMethod!(PoolStringArray) getStyleboxTypes;
		@GodotName("set_font") GodotMethod!(void, String, String, Font) setFont;
		@GodotName("get_font") GodotMethod!(Font, String, String) getFont;
		@GodotName("has_font") GodotMethod!(bool, String, String) hasFont;
		@GodotName("clear_font") GodotMethod!(void, String, String) clearFont;
		@GodotName("get_font_list") GodotMethod!(PoolStringArray, String) getFontList;
		@GodotName("set_color") GodotMethod!(void, String, String, Color) setColor;
		@GodotName("get_color") GodotMethod!(Color, String, String) getColor;
		@GodotName("has_color") GodotMethod!(bool, String, String) hasColor;
		@GodotName("clear_color") GodotMethod!(void, String, String) clearColor;
		@GodotName("get_color_list") GodotMethod!(PoolStringArray, String) getColorList;
		@GodotName("set_constant") GodotMethod!(void, String, String, long) setConstant;
		@GodotName("get_constant") GodotMethod!(long, String, String) getConstant;
		@GodotName("has_constant") GodotMethod!(bool, String, String) hasConstant;
		@GodotName("clear_constant") GodotMethod!(void, String, String) clearConstant;
		@GodotName("get_constant_list") GodotMethod!(PoolStringArray, String) getConstantList;
		@GodotName("set_default_font") GodotMethod!(void, Font) setDefaultFont;
		@GodotName("get_default_font") GodotMethod!(Font) getDefaultFont;
		@GodotName("get_type_list") GodotMethod!(PoolStringArray, String) getTypeList;
		@GodotName("_emit_theme_changed") GodotMethod!(void) _emitThemeChanged;
		@GodotName("copy_default_theme") GodotMethod!(void) copyDefaultTheme;
	}
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
	/**
	Sets Theme's icon $(D Texture) to `texture` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIcon, _godot_object, name, type, texture);
	}
	/**
	Returns the icon $(D Texture) at `name` if Theme has `type`.
	*/
	Ref!Texture getIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getIcon, _godot_object, name, type);
	}
	/**
	Returns `true` if icon $(D Texture) with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasIcon, _godot_object, name, type);
	}
	/**
	Clears icon at `name` if Theme has `type`.
	*/
	void clearIcon(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearIcon, _godot_object, name, type);
	}
	/**
	Returns all of the icons as a $(D PoolStringArray) filled with each $(D Texture)'s name, for use in $(D getIcon), if Theme has `type`.
	*/
	PoolStringArray getIconList(StringArg0)(in StringArg0 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getIconList, _godot_object, type);
	}
	/**
	Sets Theme's $(D StyleBox) to `stylebox` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, StyleBox texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStylebox, _godot_object, name, type, texture);
	}
	/**
	Returns the icon $(D StyleBox) at `name` if Theme has `type`.
	*/
	Ref!StyleBox getStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBox)(_classBinding.getStylebox, _godot_object, name, type);
	}
	/**
	Returns `true` if $(D StyleBox) with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasStylebox, _godot_object, name, type);
	}
	/**
	Clears $(D StyleBox) at `name` if Theme has `type`.
	*/
	void clearStylebox(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearStylebox, _godot_object, name, type);
	}
	/**
	Returns all of the $(D StyleBox)s as a $(D PoolStringArray) filled with each $(D StyleBox)'s name, for use in $(D getStylebox), if Theme has `type`.
	*/
	PoolStringArray getStyleboxList(StringArg0)(in StringArg0 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getStyleboxList, _godot_object, type);
	}
	/**
	Returns all of the $(D StyleBox) types as a $(D PoolStringArray) filled with each $(D StyleBox)'s type, for use in $(D getStylebox) and/or $(D getStyleboxList), if Theme has `type`.
	*/
	PoolStringArray getStyleboxTypes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getStyleboxTypes, _godot_object);
	}
	/**
	Sets Theme's $(D Font) to `font` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFont, _godot_object, name, type, font);
	}
	/**
	Returns the $(D Font) at `name` if Theme has `type`.
	*/
	Ref!Font getFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(_classBinding.getFont, _godot_object, name, type);
	}
	/**
	Returns `true` if $(D Font) with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasFont, _godot_object, name, type);
	}
	/**
	Clears $(D Font) at `name` if Theme has `type`.
	*/
	void clearFont(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearFont, _godot_object, name, type);
	}
	/**
	Returns all of the $(D Font)s as a $(D PoolStringArray) filled with each $(D Font)'s name, for use in $(D getFont), if Theme has `type`.
	*/
	PoolStringArray getFontList(StringArg0)(in StringArg0 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getFontList, _godot_object, type);
	}
	/**
	Sets Theme's $(D Color) to `color` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColor, _godot_object, name, type, color);
	}
	/**
	Returns the $(D Color) at `name` if Theme has `type`.
	*/
	Color getColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object, name, type);
	}
	/**
	Returns `true` if $(D Color) with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasColor, _godot_object, name, type);
	}
	/**
	Clears theme $(D Color) at `name` if Theme has `type`.
	*/
	void clearColor(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearColor, _godot_object, name, type);
	}
	/**
	Returns all of the $(D Color)s as a $(D PoolStringArray) filled with each $(D Color)'s name, for use in $(D getColor), if Theme has `type`.
	*/
	PoolStringArray getColorList(StringArg0)(in StringArg0 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getColorList, _godot_object, type);
	}
	/**
	Sets Theme's constant to `constant` at `name` in `type`.
	Does nothing if Theme does not have `type`.
	*/
	void setConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type, in long constant)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstant, _godot_object, name, type, constant);
	}
	/**
	Returns the constant at `name` if Theme has `type`.
	*/
	long getConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getConstant, _godot_object, name, type);
	}
	/**
	Returns `true` if constant with `name` is in `type`.
	Returns `false` if Theme does not have `type`.
	*/
	bool hasConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasConstant, _godot_object, name, type);
	}
	/**
	Clears theme constant at `name` if Theme has `type`.
	*/
	void clearConstant(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearConstant, _godot_object, name, type);
	}
	/**
	Returns all of the constants as a $(D PoolStringArray) filled with each constant's name, for use in $(D getConstant), if Theme has `type`.
	*/
	PoolStringArray getConstantList(StringArg0)(in StringArg0 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getConstantList, _godot_object, type);
	}
	/**
	
	*/
	void setDefaultFont(Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultFont, _godot_object, font);
	}
	/**
	
	*/
	Ref!Font getDefaultFont() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(_classBinding.getDefaultFont, _godot_object);
	}
	/**
	Returns all of the types in `type` as a $(D PoolStringArray) for use in any of the get_* functions, if Theme has `type`.
	*/
	PoolStringArray getTypeList(StringArg0)(in StringArg0 type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getTypeList, _godot_object, type);
	}
	/**
	
	*/
	void _emitThemeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_emit_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Sets theme values to a copy of the default theme values.
	*/
	void copyDefaultTheme()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.copyDefaultTheme, _godot_object);
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
