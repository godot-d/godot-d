/**
Label that displays rich text.

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
Label that displays rich text.

Rich text can contain custom text, fonts, images and some basic formatting. The label manages these as an internal tag stack. It also adapts itself to given width/heights.
$(B Note:) Assignments to $(D bbcodeText) clear the tag stack and reconstruct it from the property's contents. Any edits made to $(D bbcodeText) will erase previous edits made from other manual sources such as $(D appendBbcode) and the `push_*` / $(D pop) methods.
$(B Note:) RichTextLabel doesn't support entangled BBCode tags. For example, instead of using `$(B bold$(D i)bold italic)italic$(D /i)`, use `$(B bold$(D i)bold italic$(D /i))$(I italic)`.
$(B Note:) Unlike $(D Label), RichTextLabel doesn't have a $(I property) to horizontally align text to the center. Instead, enable $(D bbcodeEnabled) and surround the text in a `$(D center)` tag as follows: `$(D center)Example$(D /center)`. There is currently no built-in way to vertically align text either, but this can be emulated by relying on anchors/containers and the $(D fitContentHeight) property.
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
		@GodotName("add_image") GodotMethod!(void, Texture, long, long) addImage;
		@GodotName("add_text") GodotMethod!(void, String) addText;
		@GodotName("append_bbcode") GodotMethod!(GodotError, String) appendBbcode;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_bbcode") GodotMethod!(String) getBbcode;
		@GodotName("get_content_height") GodotMethod!(long) getContentHeight;
		@GodotName("get_effects") GodotMethod!(Array) getEffects;
		@GodotName("get_line_count") GodotMethod!(long) getLineCount;
		@GodotName("get_percent_visible") GodotMethod!(double) getPercentVisible;
		@GodotName("get_tab_size") GodotMethod!(long) getTabSize;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("get_total_character_count") GodotMethod!(long) getTotalCharacterCount;
		@GodotName("get_v_scroll") GodotMethod!(VScrollBar) getVScroll;
		@GodotName("get_visible_characters") GodotMethod!(long) getVisibleCharacters;
		@GodotName("get_visible_line_count") GodotMethod!(long) getVisibleLineCount;
		@GodotName("install_effect") GodotMethod!(void, Variant) installEffect;
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
	@disable new(size_t s);
	/// 
	enum Align : int
	{
		/**
		Makes text left aligned.
		*/
		alignLeft = 0,
		/**
		Makes text centered.
		*/
		alignCenter = 1,
		/**
		Makes text right aligned.
		*/
		alignRight = 2,
		/**
		Makes text fill width.
		*/
		alignFill = 3,
	}
	/// 
	enum ListType : int
	{
		/**
		Each list item has a number marker.
		*/
		listNumbers = 0,
		/**
		Each list item has a letter marker.
		*/
		listLetters = 1,
		/**
		Each list item has a filled circle marker.
		*/
		listDots = 2,
	}
	/// 
	enum ItemType : int
	{
		/**
		
		*/
		itemFrame = 0,
		/**
		
		*/
		itemText = 1,
		/**
		
		*/
		itemImage = 2,
		/**
		
		*/
		itemNewline = 3,
		/**
		
		*/
		itemFont = 4,
		/**
		
		*/
		itemColor = 5,
		/**
		
		*/
		itemUnderline = 6,
		/**
		
		*/
		itemStrikethrough = 7,
		/**
		
		*/
		itemAlign = 8,
		/**
		
		*/
		itemIndent = 9,
		/**
		
		*/
		itemList = 10,
		/**
		
		*/
		itemTable = 11,
		/**
		
		*/
		itemFade = 12,
		/**
		
		*/
		itemShake = 13,
		/**
		
		*/
		itemWave = 14,
		/**
		
		*/
		itemTornado = 15,
		/**
		
		*/
		itemRainbow = 16,
		/**
		
		*/
		itemMeta = 17,
		/**
		
		*/
		itemCustomfx = 18,
	}
	/// 
	enum Constants : int
	{
		listNumbers = 0,
		itemFrame = 0,
		alignLeft = 0,
		listLetters = 1,
		alignCenter = 1,
		itemText = 1,
		listDots = 2,
		itemImage = 2,
		alignRight = 2,
		alignFill = 3,
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
	Adds an image's opening and closing tags to the tag stack, optionally providing a `width` and `height` to resize the image.
	If `width` or `height` is set to 0, the image size will be adjusted in order to keep the original aspect ratio.
	*/
	void addImage(Texture image, in long width = 0, in long height = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addImage, _godot_object, image, width, height);
	}
	/**
	Adds raw non-BBCode-parsed text to the tag stack.
	*/
	void addText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addText, _godot_object, text);
	}
	/**
	Parses `bbcode` and adds tags to the tag stack as needed. Returns the result of the parsing, $(D constant OK) if successful.
	$(B Note:) Using this method, you can't close a tag that was opened in a previous $(D appendBbcode) call. This is done to improve performance, especially when updating large RichTextLabels since rebuilding the whole BBCode every time would be slower. If you absolutely need to close a tag in a future method call, append the $(D bbcodeText) instead of using $(D appendBbcode).
	*/
	GodotError appendBbcode(in String bbcode)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.appendBbcode, _godot_object, bbcode);
	}
	/**
	Clears the tag stack and sets $(D bbcodeText) to an empty string.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	String getBbcode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBbcode, _godot_object);
	}
	/**
	Returns the height of the content.
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
	Returns the total number of newlines in the tag stack's text tags. Considers wrapped text as one line.
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
	Returns the total number of characters from text tags. Does not include BBCodes.
	*/
	long getTotalCharacterCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTotalCharacterCount, _godot_object);
	}
	/**
	Returns the vertical scrollbar.
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
	Returns the number of visible lines.
	*/
	long getVisibleLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVisibleLineCount, _godot_object);
	}
	/**
	Installs a custom effect. `effect` should be a valid $(D RichTextEffect).
	*/
	void installEffect(VariantArg0)(in VariantArg0 effect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.installEffect, _godot_object, effect);
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
	Adds a newline tag to the tag stack.
	*/
	void newline()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.newline, _godot_object);
	}
	/**
	The assignment version of $(D appendBbcode). Clears the tag stack and inserts the new content. Returns $(D constant OK) if parses `bbcode` successfully.
	*/
	GodotError parseBbcode(in String bbcode)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.parseBbcode, _godot_object, bbcode);
	}
	/**
	Parses BBCode parameter `expressions` into a dictionary.
	*/
	Dictionary parseExpressionsForValues(in PoolStringArray expressions)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.parseExpressionsForValues, _godot_object, expressions);
	}
	/**
	Terminates the current tag. Use after `push_*` methods to close BBCodes manually. Does not need to follow `add_*` methods.
	*/
	void pop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pop, _godot_object);
	}
	/**
	Adds an `$(D align)` tag based on the given `align` value. See $(D _align) for possible values.
	*/
	void pushAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushAlign, _godot_object, _align);
	}
	/**
	Adds a `$(D font)` tag with a bold font to the tag stack. This is the same as adding a `$(D b)` tag if not currently in a `$(D i)` tag.
	*/
	void pushBold()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushBold, _godot_object);
	}
	/**
	Adds a `$(D font)` tag with a bold italics font to the tag stack.
	*/
	void pushBoldItalics()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushBoldItalics, _godot_object);
	}
	/**
	Adds a `$(D cell)` tag to the tag stack. Must be inside a `$(D table)` tag. See $(D pushTable) for details.
	*/
	void pushCell()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushCell, _godot_object);
	}
	/**
	Adds a `$(D color)` tag to the tag stack.
	*/
	void pushColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushColor, _godot_object, color);
	}
	/**
	Adds a `$(D font)` tag to the tag stack. Overrides default fonts for its duration.
	*/
	void pushFont(Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushFont, _godot_object, font);
	}
	/**
	Adds an `$(D indent)` tag to the tag stack. Multiplies `level` by current $(D tabSize) to determine new margin length.
	*/
	void pushIndent(in long level)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushIndent, _godot_object, level);
	}
	/**
	Adds a `$(D font)` tag with a italics font to the tag stack. This is the same as adding a `$(D i)` tag if not currently in a `$(D b)` tag.
	*/
	void pushItalics()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushItalics, _godot_object);
	}
	/**
	Adds a `$(D list)` tag to the tag stack. Similar to the BBCodes `$(D ol)` or `$(D ul)`, but supports more list types. Not fully implemented!
	*/
	void pushList(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushList, _godot_object, type);
	}
	/**
	Adds a `$(D meta)` tag to the tag stack. Similar to the BBCode `$(D url=something){text}$(D /url)`, but supports non-$(D String) metadata types.
	*/
	void pushMeta(VariantArg0)(in VariantArg0 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushMeta, _godot_object, data);
	}
	/**
	Adds a `$(D font)` tag with a monospace font to the tag stack.
	*/
	void pushMono()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushMono, _godot_object);
	}
	/**
	Adds a `$(D font)` tag with a normal font to the tag stack.
	*/
	void pushNormal()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushNormal, _godot_object);
	}
	/**
	Adds a `$(D s)` tag to the tag stack.
	*/
	void pushStrikethrough()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushStrikethrough, _godot_object);
	}
	/**
	Adds a `$(D table=columns)` tag to the tag stack.
	*/
	void pushTable(in long columns)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushTable, _godot_object, columns);
	}
	/**
	Adds a `$(D u)` tag to the tag stack.
	*/
	void pushUnderline()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.pushUnderline, _godot_object);
	}
	/**
	Removes a line of content from the label. Returns `true` if the line exists.
	The `line` argument is the index of the line to remove, it can take values in the interval `$(D 0, get_line_count() - 1)`.
	*/
	bool removeLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.removeLine, _godot_object, line);
	}
	/**
	Scrolls the window's top line to match `line`.
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
	Edits the selected column's expansion options. If `expand` is `true`, the column expands in proportion to its expansion ratio versus the other columns' ratios.
	For example, 2 columns with ratios 3 and 4 plus 70 pixels in available width would expand 30 and 40 pixels, respectively.
	If `expand` is `false`, the column will not contribute to the total ratio.
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
	If `true`, the label uses BBCode formatting.
	$(B Note:) Trying to alter the $(D RichTextLabel)'s text with $(D addText) will reset this to `false`. Use instead $(D appendBbcode) to preserve BBCode formatting.
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
	The label's text in BBCode format. Is not representative of manual modifications to the internal tag stack. Erases changes made by other methods when edited.
	$(B Note:) It is unadvised to use the `+=` operator with `bbcode_text` (e.g. `bbcode_text += "some string"`) as it replaces the whole text and can cause slowdowns. Use $(D appendBbcode) for adding text instead, unless you absolutely need to close a tag that was opened in an earlier method call.
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
	The currently installed custom effects. This is an array of $(D RichTextEffect)s.
	To add a custom effect, it's more convenient to use $(D installEffect).
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
	If `true`, the label's height will be automatically updated to fit its content.
	$(B Note:) This property is used as a workaround to fix issues with $(D RichTextLabel) in $(D Container)s, but it's unreliable in some cases and will be removed in future versions.
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
	If `true`, the label underlines meta tags such as `$(D url){text}$(D /url)`.
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
	If `true`, the label uses the custom font color.
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
	The range of characters to display, as a $(D double) between 0.0 and 1.0. When assigned an out of range value, it's the same as assigning 1.0.
	$(B Note:) Setting this property updates $(D visibleCharacters) based on current $(D getTotalCharacterCount).
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
	If `true`, the scrollbar is visible. Setting this to `false` does not block scrolling completely. See $(D scrollToLine).
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
	If `true`, the window scrolls down to display new content automatically.
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
	If `true`, the label allows text selection.
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
	The number of spaces associated with a single tab length. Does not affect `\t` in text tags, only indent tags.
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
	The raw text of the label.
	When set, clears the tag stack and adds a raw text tag to the top of it. Does not parse BBCodes. Does not modify $(D bbcodeText).
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
	The restricted number of characters to display in the label. If `-1`, all characters will be displayed.
	$(B Note:) Setting this property updates $(D percentVisible) based on current $(D getTotalCharacterCount).
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
