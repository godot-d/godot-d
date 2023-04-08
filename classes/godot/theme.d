/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
import godot.font;
import godot.texture;
import godot.stylebox;
/**

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
		@GodotName("_emit_theme_changed") GodotMethod!(void, bool) _emitThemeChanged;
		@GodotName("add_type") GodotMethod!(void, String) addType;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("clear_color") GodotMethod!(void, String, String) clearColor;
		@GodotName("clear_constant") GodotMethod!(void, String, String) clearConstant;
		@GodotName("clear_font") GodotMethod!(void, String, String) clearFont;
		@GodotName("clear_icon") GodotMethod!(void, String, String) clearIcon;
		@GodotName("clear_stylebox") GodotMethod!(void, String, String) clearStylebox;
		@GodotName("clear_theme_item") GodotMethod!(void, long, String, String) clearThemeItem;
		@GodotName("clear_type_variation") GodotMethod!(void, String) clearTypeVariation;
		@GodotName("copy_default_theme") GodotMethod!(void) copyDefaultTheme;
		@GodotName("copy_theme") GodotMethod!(void, Theme) copyTheme;
		@GodotName("get_color") GodotMethod!(Color, String, String) getColor;
		@GodotName("get_color_list") GodotMethod!(PoolStringArray, String) getColorList;
		@GodotName("get_color_types") GodotMethod!(PoolStringArray) getColorTypes;
		@GodotName("get_constant") GodotMethod!(long, String, String) getConstant;
		@GodotName("get_constant_list") GodotMethod!(PoolStringArray, String) getConstantList;
		@GodotName("get_constant_types") GodotMethod!(PoolStringArray) getConstantTypes;
		@GodotName("get_default_font") GodotMethod!(Font) getDefaultFont;
		@GodotName("get_font") GodotMethod!(Font, String, String) getFont;
		@GodotName("get_font_list") GodotMethod!(PoolStringArray, String) getFontList;
		@GodotName("get_font_types") GodotMethod!(PoolStringArray) getFontTypes;
		@GodotName("get_icon") GodotMethod!(Texture, String, String) getIcon;
		@GodotName("get_icon_list") GodotMethod!(PoolStringArray, String) getIconList;
		@GodotName("get_icon_types") GodotMethod!(PoolStringArray) getIconTypes;
		@GodotName("get_stylebox") GodotMethod!(StyleBox, String, String) getStylebox;
		@GodotName("get_stylebox_list") GodotMethod!(PoolStringArray, String) getStyleboxList;
		@GodotName("get_stylebox_types") GodotMethod!(PoolStringArray) getStyleboxTypes;
		@GodotName("get_theme_item") GodotMethod!(Variant, long, String, String) getThemeItem;
		@GodotName("get_theme_item_list") GodotMethod!(PoolStringArray, long, String) getThemeItemList;
		@GodotName("get_theme_item_types") GodotMethod!(PoolStringArray, long) getThemeItemTypes;
		@GodotName("get_type_list") GodotMethod!(PoolStringArray, String) getTypeList;
		@GodotName("get_type_variation_base") GodotMethod!(String, String) getTypeVariationBase;
		@GodotName("get_type_variation_list") GodotMethod!(PoolStringArray, String) getTypeVariationList;
		@GodotName("has_color") GodotMethod!(bool, String, String) hasColor;
		@GodotName("has_constant") GodotMethod!(bool, String, String) hasConstant;
		@GodotName("has_default_font") GodotMethod!(bool) hasDefaultFont;
		@GodotName("has_font") GodotMethod!(bool, String, String) hasFont;
		@GodotName("has_icon") GodotMethod!(bool, String, String) hasIcon;
		@GodotName("has_stylebox") GodotMethod!(bool, String, String) hasStylebox;
		@GodotName("has_theme_item") GodotMethod!(bool, long, String, String) hasThemeItem;
		@GodotName("is_type_variation") GodotMethod!(bool, String, String) isTypeVariation;
		@GodotName("merge_with") GodotMethod!(void, Theme) mergeWith;
		@GodotName("remove_type") GodotMethod!(void, String) removeType;
		@GodotName("rename_color") GodotMethod!(void, String, String, String) renameColor;
		@GodotName("rename_constant") GodotMethod!(void, String, String, String) renameConstant;
		@GodotName("rename_font") GodotMethod!(void, String, String, String) renameFont;
		@GodotName("rename_icon") GodotMethod!(void, String, String, String) renameIcon;
		@GodotName("rename_stylebox") GodotMethod!(void, String, String, String) renameStylebox;
		@GodotName("rename_theme_item") GodotMethod!(void, long, String, String, String) renameThemeItem;
		@GodotName("set_color") GodotMethod!(void, String, String, Color) setColor;
		@GodotName("set_constant") GodotMethod!(void, String, String, long) setConstant;
		@GodotName("set_default_font") GodotMethod!(void, Font) setDefaultFont;
		@GodotName("set_font") GodotMethod!(void, String, String, Font) setFont;
		@GodotName("set_icon") GodotMethod!(void, String, String, Texture) setIcon;
		@GodotName("set_stylebox") GodotMethod!(void, String, String, StyleBox) setStylebox;
		@GodotName("set_theme_item") GodotMethod!(void, long, String, String, Variant) setThemeItem;
		@GodotName("set_type_variation") GodotMethod!(void, String, String) setTypeVariation;
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
	/// 
	enum DataType : int
	{
		/** */
		dataTypeColor = 0,
		/** */
		dataTypeConstant = 1,
		/** */
		dataTypeFont = 2,
		/** */
		dataTypeIcon = 3,
		/** */
		dataTypeStylebox = 4,
		/** */
		dataTypeMax = 5,
	}
	/// 
	enum Constants : int
	{
		dataTypeColor = 0,
		dataTypeConstant = 1,
		dataTypeFont = 2,
		dataTypeIcon = 3,
		dataTypeStylebox = 4,
		dataTypeMax = 5,
	}
	/**
	
	*/
	void _emitThemeChanged(in bool notify_list_changed = false)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(notify_list_changed);
		String _GODOT_method_name = String("_emit_theme_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addType(in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addType, _godot_object, theme_type);
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
	void clearColor(in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearColor, _godot_object, name, theme_type);
	}
	/**
	
	*/
	void clearConstant(in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearConstant, _godot_object, name, theme_type);
	}
	/**
	
	*/
	void clearFont(in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearFont, _godot_object, name, theme_type);
	}
	/**
	
	*/
	void clearIcon(in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearIcon, _godot_object, name, theme_type);
	}
	/**
	
	*/
	void clearStylebox(in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearStylebox, _godot_object, name, theme_type);
	}
	/**
	
	*/
	void clearThemeItem(in long data_type, in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearThemeItem, _godot_object, data_type, name, theme_type);
	}
	/**
	
	*/
	void clearTypeVariation(in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearTypeVariation, _godot_object, theme_type);
	}
	/**
	
	*/
	void copyDefaultTheme()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.copyDefaultTheme, _godot_object);
	}
	/**
	
	*/
	void copyTheme(Theme other)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.copyTheme, _godot_object, other);
	}
	/**
	
	*/
	Color getColor(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object, name, theme_type);
	}
	/**
	
	*/
	PoolStringArray getColorList(in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getColorList, _godot_object, theme_type);
	}
	/**
	
	*/
	PoolStringArray getColorTypes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getColorTypes, _godot_object);
	}
	/**
	
	*/
	long getConstant(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getConstant, _godot_object, name, theme_type);
	}
	/**
	
	*/
	PoolStringArray getConstantList(in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getConstantList, _godot_object, theme_type);
	}
	/**
	
	*/
	PoolStringArray getConstantTypes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getConstantTypes, _godot_object);
	}
	/**
	
	*/
	Ref!Font getDefaultFont() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(GDNativeClassBinding.getDefaultFont, _godot_object);
	}
	/**
	
	*/
	Ref!Font getFont(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(GDNativeClassBinding.getFont, _godot_object, name, theme_type);
	}
	/**
	
	*/
	PoolStringArray getFontList(in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getFontList, _godot_object, theme_type);
	}
	/**
	
	*/
	PoolStringArray getFontTypes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getFontTypes, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getIcon(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getIcon, _godot_object, name, theme_type);
	}
	/**
	
	*/
	PoolStringArray getIconList(in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getIconList, _godot_object, theme_type);
	}
	/**
	
	*/
	PoolStringArray getIconTypes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getIconTypes, _godot_object);
	}
	/**
	
	*/
	Ref!StyleBox getStylebox(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(StyleBox)(GDNativeClassBinding.getStylebox, _godot_object, name, theme_type);
	}
	/**
	
	*/
	PoolStringArray getStyleboxList(in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getStyleboxList, _godot_object, theme_type);
	}
	/**
	
	*/
	PoolStringArray getStyleboxTypes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getStyleboxTypes, _godot_object);
	}
	/**
	
	*/
	Variant getThemeItem(in long data_type, in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getThemeItem, _godot_object, data_type, name, theme_type);
	}
	/**
	
	*/
	PoolStringArray getThemeItemList(in long data_type, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getThemeItemList, _godot_object, data_type, theme_type);
	}
	/**
	
	*/
	PoolStringArray getThemeItemTypes(in long data_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getThemeItemTypes, _godot_object, data_type);
	}
	/**
	
	*/
	PoolStringArray getTypeList(in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getTypeList, _godot_object, theme_type);
	}
	/**
	
	*/
	String getTypeVariationBase(in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTypeVariationBase, _godot_object, theme_type);
	}
	/**
	
	*/
	PoolStringArray getTypeVariationList(in String base_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getTypeVariationList, _godot_object, base_type);
	}
	/**
	
	*/
	bool hasColor(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasColor, _godot_object, name, theme_type);
	}
	/**
	
	*/
	bool hasConstant(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasConstant, _godot_object, name, theme_type);
	}
	/**
	
	*/
	bool hasDefaultFont() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasDefaultFont, _godot_object);
	}
	/**
	
	*/
	bool hasFont(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFont, _godot_object, name, theme_type);
	}
	/**
	
	*/
	bool hasIcon(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasIcon, _godot_object, name, theme_type);
	}
	/**
	
	*/
	bool hasStylebox(in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasStylebox, _godot_object, name, theme_type);
	}
	/**
	
	*/
	bool hasThemeItem(in long data_type, in String name, in String theme_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasThemeItem, _godot_object, data_type, name, theme_type);
	}
	/**
	
	*/
	bool isTypeVariation(in String theme_type, in String base_type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isTypeVariation, _godot_object, theme_type, base_type);
	}
	/**
	
	*/
	void mergeWith(Theme other)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.mergeWith, _godot_object, other);
	}
	/**
	
	*/
	void removeType(in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeType, _godot_object, theme_type);
	}
	/**
	
	*/
	void renameColor(in String old_name, in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameColor, _godot_object, old_name, name, theme_type);
	}
	/**
	
	*/
	void renameConstant(in String old_name, in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameConstant, _godot_object, old_name, name, theme_type);
	}
	/**
	
	*/
	void renameFont(in String old_name, in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameFont, _godot_object, old_name, name, theme_type);
	}
	/**
	
	*/
	void renameIcon(in String old_name, in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameIcon, _godot_object, old_name, name, theme_type);
	}
	/**
	
	*/
	void renameStylebox(in String old_name, in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameStylebox, _godot_object, old_name, name, theme_type);
	}
	/**
	
	*/
	void renameThemeItem(in long data_type, in String old_name, in String name, in String theme_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameThemeItem, _godot_object, data_type, old_name, name, theme_type);
	}
	/**
	
	*/
	void setColor(in String name, in String theme_type, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColor, _godot_object, name, theme_type, color);
	}
	/**
	
	*/
	void setConstant(in String name, in String theme_type, in long constant)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstant, _godot_object, name, theme_type, constant);
	}
	/**
	
	*/
	void setDefaultFont(Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultFont, _godot_object, font);
	}
	/**
	
	*/
	void setFont(in String name, in String theme_type, Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFont, _godot_object, name, theme_type, font);
	}
	/**
	
	*/
	void setIcon(in String name, in String theme_type, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIcon, _godot_object, name, theme_type, texture);
	}
	/**
	
	*/
	void setStylebox(in String name, in String theme_type, StyleBox texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStylebox, _godot_object, name, theme_type, texture);
	}
	/**
	
	*/
	void setThemeItem(VariantArg3)(in long data_type, in String name, in String theme_type, in VariantArg3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setThemeItem, _godot_object, data_type, name, theme_type, value);
	}
	/**
	
	*/
	void setTypeVariation(in String theme_type, in String base_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTypeVariation, _godot_object, theme_type, base_type);
	}
	/**
	
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
