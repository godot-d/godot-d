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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.inputevent;
import godot.texture;
import godot.font;
import godot.vscrollbar;
import godot.canvasitem;
import godot.node;
/**
Label that displays rich text.

Rich text can contain custom text, fonts, images and some basic formatting. The label manages these as an internal tag stack. It also adapts itself to given width/heights.
Note that assignments to $(D bbcodeText) clear the tag stack and reconstruct it from the property's contents. Any edits made to $(D bbcodeText) will erase previous edits made from other manual sources such as $(D appendBbcode) and the `push_*` / $(D pop) methods.
*/
@GodotBaseClass struct RichTextLabel
{
	enum string _GODOT_internal_name = "RichTextLabel";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_scroll_changed") GodotMethod!(void, double) _scrollChanged;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("add_text") GodotMethod!(void, String) addText;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("add_image") GodotMethod!(void, Texture) addImage;
		@GodotName("newline") GodotMethod!(void) newline;
		@GodotName("remove_line") GodotMethod!(bool, long) removeLine;
		@GodotName("push_font") GodotMethod!(void, Font) pushFont;
		@GodotName("push_color") GodotMethod!(void, Color) pushColor;
		@GodotName("push_align") GodotMethod!(void, long) pushAlign;
		@GodotName("push_indent") GodotMethod!(void, long) pushIndent;
		@GodotName("push_list") GodotMethod!(void, long) pushList;
		@GodotName("push_meta") GodotMethod!(void, Variant) pushMeta;
		@GodotName("push_underline") GodotMethod!(void) pushUnderline;
		@GodotName("push_strikethrough") GodotMethod!(void) pushStrikethrough;
		@GodotName("push_table") GodotMethod!(void, long) pushTable;
		@GodotName("set_table_column_expand") GodotMethod!(void, long, bool, long) setTableColumnExpand;
		@GodotName("push_cell") GodotMethod!(void) pushCell;
		@GodotName("pop") GodotMethod!(void) pop;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("set_meta_underline") GodotMethod!(void, bool) setMetaUnderline;
		@GodotName("is_meta_underlined") GodotMethod!(bool) isMetaUnderlined;
		@GodotName("set_override_selected_font_color") GodotMethod!(void, bool) setOverrideSelectedFontColor;
		@GodotName("is_overriding_selected_font_color") GodotMethod!(bool) isOverridingSelectedFontColor;
		@GodotName("set_scroll_active") GodotMethod!(void, bool) setScrollActive;
		@GodotName("is_scroll_active") GodotMethod!(bool) isScrollActive;
		@GodotName("set_scroll_follow") GodotMethod!(void, bool) setScrollFollow;
		@GodotName("is_scroll_following") GodotMethod!(bool) isScrollFollowing;
		@GodotName("get_v_scroll") GodotMethod!(VScrollBar) getVScroll;
		@GodotName("scroll_to_line") GodotMethod!(void, long) scrollToLine;
		@GodotName("set_tab_size") GodotMethod!(void, long) setTabSize;
		@GodotName("get_tab_size") GodotMethod!(long) getTabSize;
		@GodotName("set_selection_enabled") GodotMethod!(void, bool) setSelectionEnabled;
		@GodotName("is_selection_enabled") GodotMethod!(bool) isSelectionEnabled;
		@GodotName("parse_bbcode") GodotMethod!(GodotError, String) parseBbcode;
		@GodotName("append_bbcode") GodotMethod!(GodotError, String) appendBbcode;
		@GodotName("set_bbcode") GodotMethod!(void, String) setBbcode;
		@GodotName("get_bbcode") GodotMethod!(String) getBbcode;
		@GodotName("set_visible_characters") GodotMethod!(void, long) setVisibleCharacters;
		@GodotName("get_visible_characters") GodotMethod!(long) getVisibleCharacters;
		@GodotName("set_percent_visible") GodotMethod!(void, double) setPercentVisible;
		@GodotName("get_percent_visible") GodotMethod!(double) getPercentVisible;
		@GodotName("get_total_character_count") GodotMethod!(long) getTotalCharacterCount;
		@GodotName("set_use_bbcode") GodotMethod!(void, bool) setUseBbcode;
		@GodotName("is_using_bbcode") GodotMethod!(bool) isUsingBbcode;
		@GodotName("get_line_count") GodotMethod!(long) getLineCount;
		@GodotName("get_visible_line_count") GodotMethod!(long) getVisibleLineCount;
		@GodotName("get_content_height") GodotMethod!(long) getContentHeight;
	}
	bool opEquals(in RichTextLabel other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RichTextLabel opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		alignLeft = 0,
		/**
		
		*/
		alignCenter = 1,
		/**
		
		*/
		alignRight = 2,
		/**
		
		*/
		alignFill = 3,
	}
	/// 
	enum ListType : int
	{
		/**
		
		*/
		listNumbers = 0,
		/**
		
		*/
		listLetters = 1,
		/**
		
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
		itemMeta = 12,
	}
	/// 
	enum Constants : int
	{
		listNumbers = 0,
		alignLeft = 0,
		itemFrame = 0,
		itemText = 1,
		alignCenter = 1,
		listLetters = 1,
		alignRight = 2,
		listDots = 2,
		itemImage = 2,
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
		itemMeta = 12,
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _scrollChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	String getText()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getText, _godot_object);
	}
	/**
	Adds raw non-bbcode-parsed text to the tag stack.
	*/
	void addText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addText, _godot_object, text);
	}
	/**
	
	*/
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setText, _godot_object, text);
	}
	/**
	Adds an image's opening and closing tags to the tag stack.
	*/
	void addImage(Texture image)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addImage, _godot_object, image);
	}
	/**
	Adds a newline tag to the tag stack.
	*/
	void newline()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.newline, _godot_object);
	}
	/**
	Removes a line of content from the label. Returns `true` if the line exists.
	*/
	bool removeLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.removeLine, _godot_object, line);
	}
	/**
	Adds a `$(D font)` tag to the tag stack. Overrides default fonts for its duration.
	*/
	void pushFont(Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushFont, _godot_object, font);
	}
	/**
	Adds a `$(D color)` tag to the tag stack.
	*/
	void pushColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushColor, _godot_object, color);
	}
	/**
	Adds an alignment tag based on the given `align` value. See $(D _align) for possible values.
	*/
	void pushAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushAlign, _godot_object, _align);
	}
	/**
	Adds an `$(D indent)` tag to the tag stack. Multiplies "level" by current tab_size to determine new margin length.
	*/
	void pushIndent(in long level)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushIndent, _godot_object, level);
	}
	/**
	Adds a list tag to the tag stack. Similar to the bbcodes `$(D ol)` or `$(D ul)`, but supports more list types. Not fully implemented!
	*/
	void pushList(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushList, _godot_object, type);
	}
	/**
	Adds a meta tag to the tag stack. Similar to the bbcode `$(D url=something){text}$(D /url)`, but supports non-$(D String) metadata types.
	*/
	void pushMeta(VariantArg0)(in VariantArg0 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushMeta, _godot_object, data);
	}
	/**
	Adds a `$(D u)` tag to the tag stack.
	*/
	void pushUnderline()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushUnderline, _godot_object);
	}
	/**
	Adds a `$(D s)` tag to the tag stack.
	*/
	void pushStrikethrough()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushStrikethrough, _godot_object);
	}
	/**
	Adds a `$(D table=columns)` tag to the tag stack.
	*/
	void pushTable(in long columns)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushTable, _godot_object, columns);
	}
	/**
	Edits the selected columns expansion options. If `expand` is `true`, the column expands in proportion to its expansion ratio versus the other columns' ratios.
	For example, 2 columns with ratios 3 and 4 plus 70 pixels in available width would expand 30 and 40 pixels, respectively.
	Columns with a `false` expand will not contribute to the total ratio.
	*/
	void setTableColumnExpand(in long column, in bool expand, in long ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTableColumnExpand, _godot_object, column, expand, ratio);
	}
	/**
	Adds a `$(D cell)` tag to the tag stack. Must be inside a `$(D table)` tag. See $(D pushTable) for details.
	*/
	void pushCell()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pushCell, _godot_object);
	}
	/**
	Terminates the current tag. Use after `push_*` methods to close bbcodes manually. Does not need to follow `add_*` methods.
	*/
	void pop()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pop, _godot_object);
	}
	/**
	Clears the tag stack and sets $(D bbcodeText) to an empty string.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	
	*/
	void setMetaUnderline(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMetaUnderline, _godot_object, enable);
	}
	/**
	
	*/
	bool isMetaUnderlined() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isMetaUnderlined, _godot_object);
	}
	/**
	
	*/
	void setOverrideSelectedFontColor(in bool _override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOverrideSelectedFontColor, _godot_object, _override);
	}
	/**
	
	*/
	bool isOverridingSelectedFontColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOverridingSelectedFontColor, _godot_object);
	}
	/**
	
	*/
	void setScrollActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScrollActive, _godot_object, active);
	}
	/**
	
	*/
	bool isScrollActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isScrollActive, _godot_object);
	}
	/**
	
	*/
	void setScrollFollow(in bool follow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScrollFollow, _godot_object, follow);
	}
	/**
	
	*/
	bool isScrollFollowing() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isScrollFollowing, _godot_object);
	}
	/**
	Returns the vertical scrollbar.
	*/
	VScrollBar getVScroll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VScrollBar)(_classBinding.getVScroll, _godot_object);
	}
	/**
	Scrolls the window's top line to match `line`.
	*/
	void scrollToLine(in long line)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.scrollToLine, _godot_object, line);
	}
	/**
	
	*/
	void setTabSize(in long spaces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTabSize, _godot_object, spaces);
	}
	/**
	
	*/
	long getTabSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTabSize, _godot_object);
	}
	/**
	
	*/
	void setSelectionEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSelectionEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isSelectionEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelectionEnabled, _godot_object);
	}
	/**
	The assignment version of $(D appendBbcode). Clears the tag stack and inserts the new content. Returns `OK` if parses `bbcode` successfully.
	*/
	GodotError parseBbcode(in String bbcode)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.parseBbcode, _godot_object, bbcode);
	}
	/**
	Parses `bbcode` and adds tags to the tag stack as needed. Returns the result of the parsing, `OK` if successful.
	*/
	GodotError appendBbcode(in String bbcode)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.appendBbcode, _godot_object, bbcode);
	}
	/**
	
	*/
	void setBbcode(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBbcode, _godot_object, text);
	}
	/**
	
	*/
	String getBbcode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBbcode, _godot_object);
	}
	/**
	
	*/
	void setVisibleCharacters(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVisibleCharacters, _godot_object, amount);
	}
	/**
	
	*/
	long getVisibleCharacters() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVisibleCharacters, _godot_object);
	}
	/**
	
	*/
	void setPercentVisible(in double percent_visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPercentVisible, _godot_object, percent_visible);
	}
	/**
	
	*/
	double getPercentVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPercentVisible, _godot_object);
	}
	/**
	Returns the total number of characters from text tags. Does not include bbcodes.
	*/
	long getTotalCharacterCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTotalCharacterCount, _godot_object);
	}
	/**
	
	*/
	void setUseBbcode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseBbcode, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsingBbcode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingBbcode, _godot_object);
	}
	/**
	Returns the total number of newlines in the tag stack's text tags. Considers wrapped text as one line.
	*/
	long getLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLineCount, _godot_object);
	}
	/**
	Returns the number of visible lines.
	*/
	long getVisibleLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVisibleLineCount, _godot_object);
	}
	/**
	Returns the height of the content.
	*/
	long getContentHeight()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getContentHeight, _godot_object);
	}
	/**
	If `true`, the label uses BBCode formatting. Default value: `false`.
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
	The restricted number of characters to display in the label.
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
	/**
	The text's visibility, as a $(D double) between 0.0 and 1.0.
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
	If `true`, the label underlines meta tags such as `$(D url){text}$(D /url)`. Default value: `true`.
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
	The number of spaces associated with a single tab length. Does not affect "\t" in text tags, only indent tags.
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
	When set, clears the tag stack and adds a raw text tag to the top of it. Does not parse bbcodes. Does not modify $(D bbcodeText).
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
	If `true`, the scrollbar is visible. Does not block scrolling completely. See $(D scrollToLine). Default value: `true`.
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
	If `true`, the window scrolls down to display new content automatically. Default value: `false`.
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
	If `true`, the label uses the custom font color. Default value: `false`.
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
}
