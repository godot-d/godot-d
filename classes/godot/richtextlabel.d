/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.richtextlabel;
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
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.texture;
import godot.vscrollbar;
import godot.font;
/**

*/
@GodotBaseClass struct RichTextLabel
{
	package(godot) enum string _GODOT_internal_name = "RichTextLabel";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_scroll_changed") GodotMethod!(void, double) _scrollChanged;
		@GodotName("add_image") GodotMethod!(void, Texture, long, long, long) addImage;
		@GodotName("add_text") GodotMethod!(void, String) addText;
		@GodotName("append_bbcode") GodotMethod!(GodotError, String) appendBbcode;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("deselect") GodotMethod!(void) deselect;
		@GodotName("get_bbcode") GodotMethod!(String) getBbcode;
		@GodotName("get_content_height") GodotMethod!(long) getContentHeight;
		@GodotName("get_effects") GodotMethod!(Array) getEffects;
		@GodotName("get_line_count") GodotMethod!(long) getLineCount;
		@GodotName("get_percent_visible") GodotMethod!(double) getPercentVisible;
		@GodotName("get_selected_text") GodotMethod!(String) getSelectedText;
		@GodotName("get_tab_size") GodotMethod!(long) getTabSize;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("get_total_character_count") GodotMethod!(long) getTotalCharacterCount;
		@GodotName("get_v_scroll") GodotMethod!(VScrollBar) getVScroll;
		@GodotName("get_visible_characters") GodotMethod!(long) getVisibleCharacters;
		@GodotName("get_visible_line_count") GodotMethod!(long) getVisibleLineCount;
		@GodotName("install_effect") GodotMethod!(void, Variant) installEffect;
		@GodotName("is_deselect_on_focus_loss_enabled") GodotMethod!(bool) isDeselectOnFocusLossEnabled;
		@GodotName("is_fit_content_height_enabled") GodotMethod!(bool) isFitContentHeightEnabled;
		@GodotName("is_meta_underlined") GodotMethod!(bool) isMetaUnderlined;
		@GodotName("is_overriding_selected_font_color") GodotMethod!(bool) isOverridingSelectedFontColor;
		@GodotName("is_scroll_active") GodotMethod!(bool) isScrollActive;
		@GodotName("is_scroll_following") GodotMethod!(bool) isScrollFollowing;
		@GodotName("is_selection_enabled") GodotMethod!(bool) isSelectionEnabled;
		@GodotName("is_using_bbcode") GodotMethod!(bool) isUsingBbcode;
		@GodotName("newline") GodotMethod!(void) newline;
		@GodotName("parse_bbcode") GodotMethod!(GodotError, String) parseBbcode;
		@GodotName("parse_expressions_for_values") GodotMethod!(Dictionary, PoolStringArray) parseExpressionsForValues;
		@GodotName("pop") GodotMethod!(void) pop;
		@GodotName("push_align") GodotMethod!(void, long) pushAlign;
		@GodotName("push_bold") GodotMethod!(void) pushBold;
		@GodotName("push_bold_italics") GodotMethod!(void) pushBoldItalics;
		@GodotName("push_cell") GodotMethod!(void) pushCell;
		@GodotName("push_color") GodotMethod!(void, Color) pushColor;
		@GodotName("push_font") GodotMethod!(void, Font) pushFont;
		@GodotName("push_indent") GodotMethod!(void, long) pushIndent;
		@GodotName("push_italics") GodotMethod!(void) pushItalics;
		@GodotName("push_list") GodotMethod!(void, long) pushList;
		@GodotName("push_meta") GodotMethod!(void, Variant) pushMeta;
		@GodotName("push_mono") GodotMethod!(void) pushMono;
		@GodotName("push_normal") GodotMethod!(void) pushNormal;
		@GodotName("push_strikethrough") GodotMethod!(void) pushStrikethrough;
		@GodotName("push_table") GodotMethod!(void, long) pushTable;
		@GodotName("push_underline") GodotMethod!(void) pushUnderline;
		@GodotName("remove_line") GodotMethod!(bool, long) removeLine;
		@GodotName("scroll_to_line") GodotMethod!(void, long) scrollToLine;
		@GodotName("set_bbcode") GodotMethod!(void, String) setBbcode;
		@GodotName("set_deselect_on_focus_loss_enabled") GodotMethod!(void, bool) setDeselectOnFocusLossEnabled;
		@GodotName("set_effects") GodotMethod!(void, Array) setEffects;
		@GodotName("set_fit_content_height") GodotMethod!(void, bool) setFitContentHeight;
		@GodotName("set_meta_underline") GodotMethod!(void, bool) setMetaUnderline;
		@GodotName("set_override_selected_font_color") GodotMethod!(void, bool) setOverrideSelectedFontColor;
		@GodotName("set_percent_visible") GodotMethod!(void, double) setPercentVisible;
		@GodotName("set_scroll_active") GodotMethod!(void, bool) setScrollActive;
		@GodotName("set_scroll_follow") GodotMethod!(void, bool) setScrollFollow;
		@GodotName("set_selection_enabled") GodotMethod!(void, bool) setSelectionEnabled;
		@GodotName("set_tab_size") GodotMethod!(void, long) setTabSize;
		@GodotName("set_table_column_expand") GodotMethod!(void, long, bool, long) setTableColumnExpand;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("set_use_bbcode") GodotMethod!(void, bool) setUseBbcode;
		@GodotName("set_visible_characters") GodotMethod!(void, long) setVisibleCharacters;
	}
	/// 
	pragma(inline, true) bool opEquals(in RichTextLabel other) const
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
	/// Construct a new instance of RichTextLabel.
	/// Note: use `memnew!RichTextLabel` instead.
	static RichTextLabel _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RichTextLabel");
		if(constructor is null) return typeof(this).init;
		return cast(RichTextLabel)(constructor());
	}
	/// 
	enum Align : int
	{
		/** */
		alignLeft = 0,
		/** */
		alignCenter = 1,
		/** */
		alignRight = 2,
		/** */
		alignFill = 3,
	}
	/// 
	enum ListType : int
	{
		/** */
		listNumbers = 0,
		/** */
		listLetters = 1,
		/** */
		listDots = 2,
	}
	/// 
	enum ItemType : int
	{
		/** */
		itemFrame = 0,
		/** */
		itemText = 1,
		/** */
		itemImage = 2,
		/** */
		itemNewline = 3,
		/** */
		itemFont = 4,
		/** */
		itemColor = 5,
		/** */
		itemUnderline = 6,
		/** */
		itemStrikethrough = 7,
		/** */
		itemAlign = 8,
		/** */
		itemIndent = 9,
		/** */
		itemList = 10,
		/** */
		itemTable = 11,
		/** */
		itemFade = 12,
		/** */
		itemShake = 13,
		/** */
		itemWave = 14,
		/** */
		itemTornado = 15,
		/** */
		itemRainbow = 16,
		/** */
		itemMeta = 17,
		/** */
		itemCustomfx = 18,
	}
	/// 
	enum InlineAlign : int
	{
		/** */
		inlineAlignTop = 0,
		/** */
		inlineAlignCenter = 1,
		/** */
		inlineAlignBaseline = 2,
		/** */
		inlineAlignBottom = 3,
	}
	/// 
	enum Constants : int
	{
		listNumbers = 0,
		inlineAlignTop = 0,
		itemFrame = 0,
		alignLeft = 0,
		listLetters = 1,
		alignCenter = 1,
		itemText = 1,
		inlineAlignCenter = 1,
		listDots = 2,
		itemImage = 2,
		alignRight = 2,
		inlineAlignBaseline = 2,
		alignFill = 3,
		inlineAlignBottom = 3,
		itemNewline = 3,
		itemFont = 4,
		itemColor = 5,
		itemUnderline = 6,
		itemStrikethrough = 7,
		itemAlign = 8,
		itemIndent = 9,
		itemList = 10,
		itemTable = 11,
		itemFade = 12,
		itemShake = 13,
		itemWave = 14,
		itemTornado = 15,
		itemRainbow = 16,
		itemMeta = 17,
		itemCustomfx = 18,
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scrollChanged(in double arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addImage(Texture image, in long width = 0, in long height = 0, in long _align = 2)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addImage, _godot_object, image, width, height, _align);
	}
	/**
	
	*/
	void addText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addText, _godot_object, text);
	}
	/**
	
	*/
	GodotError appendBbcode(in String bbcode)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.appendBbcode, _godot_object, bbcode);
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
	void deselect()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.deselect, _godot_object);
	}
	/**
	
	*/
	String getBbcode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBbcode, _godot_object);
	}
	/**
	
	*/
	long getContentHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getContentHeight, _godot_object);
	}
	/**
	
	*/
	Array getEffects()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getEffects, _godot_object);
	}
	/**
	
	*/
	long getLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLineCount, _godot_object);
	}
	/**
	
	*/
	double getPercentVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPercentVisible, _godot_object);
	}
	/**
	
	*/
	String getSelectedText()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSelectedText, _godot_object);
	}
	/**
	
	*/
	long getTabSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTabSize, _godot_object);
	}
	/**
	
	*/
	String getText()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getText, _godot_object);
	}
	/**
	
	*/
	long getTotalCharacterCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTotalCharacterCount, _godot_object);
	}
	/**
	
	*/
	VScrollBar getVScroll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VScrollBar)(GDNativeClassBinding.getVScroll, _godot_object);
	}
	/**
	
	*/
	long getVisibleCharacters() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVisibleCharacters, _godot_object);
	}
	/**
	
	*/
	long getVisibleLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVisibleLineCount, _godot_object);
	}
	/**
	
	*/
	void installEffect(VariantArg0)(in VariantArg0 effect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.installEffect, _godot_object, effect);
	}
	/**
	
	*/
	bool isDeselectOnFocusLossEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDeselectOnFocusLossEnabled, _godot_object);
	}
	/**
	
	*/
	bool isFitContentHeightEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFitContentHeightEnabled, _godot_object);
	}
	/**
	
	*/
	bool isMetaUnderlined() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isMetaUnderlined, _godot_object);
	}
	/**
	
	*/
	bool isOverridingSelectedFontColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOverridingSelectedFontColor, _godot_object);
	}
	/**
	
	*/
	bool isScrollActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isScrollActive, _godot_object);
	}
	/**
	
	*/
	bool isScrollFollowing() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isScrollFollowing, _godot_object);
	}
	/**
	
	*/
	bool isSelectionEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSelectionEnabled, _godot_object);
	}
	/**
	
	*/
	bool isUsingBbcode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingBbcode, _godot_object);
	}
	/**
	
	*/
	void newline()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.newline, _godot_object);
	}
	/**
	
	*/
	GodotError parseBbcode(in String bbcode)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.parseBbcode, _godot_object, bbcode);
	}
	/**
	
	*/
	Dictionary parseExpressionsForValues(in PoolStringArray expressions)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.parseExpressionsForValues, _godot_object, expressions);
	}
	/**
	
	*/
	void pop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pop, _godot_object);
	}
	/**
	
	*/
	void pushAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushAlign, _godot_object, _align);
	}
	/**
	
	*/
	void pushBold()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushBold, _godot_object);
	}
	/**
	
	*/
	void pushBoldItalics()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushBoldItalics, _godot_object);
	}
	/**
	
	*/
	void pushCell()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushCell, _godot_object);
	}
	/**
	
	*/
	void pushColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushColor, _godot_object, color);
	}
	/**
	
	*/
	void pushFont(Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushFont, _godot_object, font);
	}
	/**
	
	*/
	void pushIndent(in long level)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushIndent, _godot_object, level);
	}
	/**
	
	*/
	void pushItalics()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushItalics, _godot_object);
	}
	/**
	
	*/
	void pushList(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushList, _godot_object, type);
	}
	/**
	
	*/
	void pushMeta(VariantArg0)(in VariantArg0 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushMeta, _godot_object, data);
	}
	/**
	
	*/
	void pushMono()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushMono, _godot_object);
	}
	/**
	
	*/
	void pushNormal()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushNormal, _godot_object);
	}
	/**
	
	*/
	void pushStrikethrough()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushStrikethrough, _godot_object);
	}
	/**
	
	*/
	void pushTable(in long columns)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushTable, _godot_object, columns);
	}
	/**
	
	*/
	void pushUnderline()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushUnderline, _godot_object);
	}
	/**
	
	*/
	bool removeLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.removeLine, _godot_object, line);
	}
	/**
	
	*/
	void scrollToLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scrollToLine, _godot_object, line);
	}
	/**
	
	*/
	void setBbcode(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBbcode, _godot_object, text);
	}
	/**
	
	*/
	void setDeselectOnFocusLossEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDeselectOnFocusLossEnabled, _godot_object, enable);
	}
	/**
	
	*/
	void setEffects(in Array effects)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEffects, _godot_object, effects);
	}
	/**
	
	*/
	void setFitContentHeight(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFitContentHeight, _godot_object, enabled);
	}
	/**
	
	*/
	void setMetaUnderline(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMetaUnderline, _godot_object, enable);
	}
	/**
	
	*/
	void setOverrideSelectedFontColor(in bool _override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOverrideSelectedFontColor, _godot_object, _override);
	}
	/**
	
	*/
	void setPercentVisible(in double percent_visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPercentVisible, _godot_object, percent_visible);
	}
	/**
	
	*/
	void setScrollActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScrollActive, _godot_object, active);
	}
	/**
	
	*/
	void setScrollFollow(in bool follow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScrollFollow, _godot_object, follow);
	}
	/**
	
	*/
	void setSelectionEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSelectionEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setTabSize(in long spaces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTabSize, _godot_object, spaces);
	}
	/**
	
	*/
	void setTableColumnExpand(in long column, in bool expand, in long ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTableColumnExpand, _godot_object, column, expand, ratio);
	}
	/**
	
	*/
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setText, _godot_object, text);
	}
	/**
	
	*/
	void setUseBbcode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseBbcode, _godot_object, enable);
	}
	/**
	
	*/
	void setVisibleCharacters(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVisibleCharacters, _godot_object, amount);
	}
	/**
	
	*/
	@property bool bbcodeEnabled()
	{
		return isUsingBbcode();
	}
	/// ditto
	@property void bbcodeEnabled(bool v)
	{
		setUseBbcode(v);
	}
	/**
	
	*/
	@property String bbcodeText()
	{
		return getBbcode();
	}
	/// ditto
	@property void bbcodeText(String v)
	{
		setBbcode(v);
	}
	/**
	
	*/
	@property Array customEffects()
	{
		return getEffects();
	}
	/// ditto
	@property void customEffects(Array v)
	{
		setEffects(v);
	}
	/**
	
	*/
	@property bool deselectOnFocusLossEnabled()
	{
		return isDeselectOnFocusLossEnabled();
	}
	/// ditto
	@property void deselectOnFocusLossEnabled(bool v)
	{
		setDeselectOnFocusLossEnabled(v);
	}
	/**
	
	*/
	@property bool fitContentHeight()
	{
		return isFitContentHeightEnabled();
	}
	/// ditto
	@property void fitContentHeight(bool v)
	{
		setFitContentHeight(v);
	}
	/**
	
	*/
	@property bool metaUnderlined()
	{
		return isMetaUnderlined();
	}
	/// ditto
	@property void metaUnderlined(bool v)
	{
		setMetaUnderline(v);
	}
	/**
	
	*/
	@property bool overrideSelectedFontColor()
	{
		return isOverridingSelectedFontColor();
	}
	/// ditto
	@property void overrideSelectedFontColor(bool v)
	{
		setOverrideSelectedFontColor(v);
	}
	/**
	
	*/
	@property double percentVisible()
	{
		return getPercentVisible();
	}
	/// ditto
	@property void percentVisible(double v)
	{
		setPercentVisible(v);
	}
	/**
	
	*/
	@property bool scrollActive()
	{
		return isScrollActive();
	}
	/// ditto
	@property void scrollActive(bool v)
	{
		setScrollActive(v);
	}
	/**
	
	*/
	@property bool scrollFollowing()
	{
		return isScrollFollowing();
	}
	/// ditto
	@property void scrollFollowing(bool v)
	{
		setScrollFollow(v);
	}
	/**
	
	*/
	@property bool selectionEnabled()
	{
		return isSelectionEnabled();
	}
	/// ditto
	@property void selectionEnabled(bool v)
	{
		setSelectionEnabled(v);
	}
	/**
	
	*/
	@property long tabSize()
	{
		return getTabSize();
	}
	/// ditto
	@property void tabSize(long v)
	{
		setTabSize(v);
	}
	/**
	
	*/
	@property String text()
	{
		return getText();
	}
	/// ditto
	@property void text(String v)
	{
		setText(v);
	}
	/**
	
	*/
	@property long visibleCharacters()
	{
		return getVisibleCharacters();
	}
	/// ditto
	@property void visibleCharacters(long v)
	{
		setVisibleCharacters(v);
	}
}
