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
/**
Label that displays rich text.

Rich text can contain custom text, fonts, images and some basic formatting. The label manages these as an internal tag stack. It also adapts itself to given width/heights.
Note that assignments to $(D bbcodeText) clear the tag stack and reconstruct it from the property's contents. Any edits made to $(D bbcodeText) will erase previous edits made from other manual sources such as $(D appendBbcode) and the `push_*` / $(D pop) methods.
*/
@GodotBaseClass struct RichTextLabel
{
	static immutable string _GODOT_internal_name = "RichTextLabel";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		itemAlign = 7,
		/**
		
		*/
		itemIndent = 8,
		/**
		
		*/
		itemList = 9,
		/**
		
		*/
		itemTable = 10,
		/**
		
		*/
		itemMeta = 11,
	}
	/// 
	enum Constants : int
	{
		itemFrame = 0,
		alignLeft = 0,
		listNumbers = 0,
		listLetters = 1,
		itemText = 1,
		alignCenter = 1,
		listDots = 2,
		itemImage = 2,
		alignRight = 2,
		alignFill = 3,
		itemNewline = 3,
		itemFont = 4,
		itemColor = 5,
		itemUnderline = 6,
		itemAlign = 7,
		itemIndent = 8,
		itemList = 9,
		itemTable = 10,
		itemMeta = 11,
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, double) _GODOT__scroll_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_scroll_changed") = _GODOT__scroll_changed;
	/**
	
	*/
	void _scrollChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	/**
	
	*/
	String getText()
	{
		_GODOT_get_text.bind("RichTextLabel", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_text") = _GODOT_add_text;
	/**
	Adds raw non-bbcode-parsed text to the tag stack.
	*/
	void addText(StringArg0)(in StringArg0 text)
	{
		_GODOT_add_text.bind("RichTextLabel", "add_text");
		ptrcall!(void)(_GODOT_add_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	/**
	
	*/
	void setText(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("RichTextLabel", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_add_image;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_image") = _GODOT_add_image;
	/**
	Adds an image's opening and closing tags to the tag stack.
	*/
	void addImage(Texture image)
	{
		_GODOT_add_image.bind("RichTextLabel", "add_image");
		ptrcall!(void)(_GODOT_add_image, _godot_object, image);
	}
	package(godot) static GodotMethod!(void) _GODOT_newline;
	package(godot) alias _GODOT_methodBindInfo(string name : "newline") = _GODOT_newline;
	/**
	Adds a newline tag to the tag stack.
	*/
	void newline()
	{
		_GODOT_newline.bind("RichTextLabel", "newline");
		ptrcall!(void)(_GODOT_newline, _godot_object);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_remove_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_line") = _GODOT_remove_line;
	/**
	Removes a line of content from the label. Returns `true` if the line exists.
	*/
	bool removeLine(in long line)
	{
		_GODOT_remove_line.bind("RichTextLabel", "remove_line");
		return ptrcall!(bool)(_GODOT_remove_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, Font) _GODOT_push_font;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_font") = _GODOT_push_font;
	/**
	Adds a `$(D font)` tag to the tag stack. Overrides default fonts for its duration.
	*/
	void pushFont(Font font)
	{
		_GODOT_push_font.bind("RichTextLabel", "push_font");
		ptrcall!(void)(_GODOT_push_font, _godot_object, font);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_push_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_color") = _GODOT_push_color;
	/**
	Adds a `$(D color)` tag to the tag stack.
	*/
	void pushColor(in Color color)
	{
		_GODOT_push_color.bind("RichTextLabel", "push_color");
		ptrcall!(void)(_GODOT_push_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_push_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_align") = _GODOT_push_align;
	/**
	Adds a `$(D right)` tag to the tag stack.
	*/
	void pushAlign(in long _align)
	{
		_GODOT_push_align.bind("RichTextLabel", "push_align");
		ptrcall!(void)(_GODOT_push_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_push_indent;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_indent") = _GODOT_push_indent;
	/**
	Adds an `$(D indent)` tag to the tag stack. Multiplies "level" by current tab_size to determine new margin length.
	*/
	void pushIndent(in long level)
	{
		_GODOT_push_indent.bind("RichTextLabel", "push_indent");
		ptrcall!(void)(_GODOT_push_indent, _godot_object, level);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_push_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_list") = _GODOT_push_list;
	/**
	Adds a list tag to the tag stack. Similar to the bbcodes `$(D ol)` or `$(D ul)`, but supports more list types. Not fully implemented!
	*/
	void pushList(in long type)
	{
		_GODOT_push_list.bind("RichTextLabel", "push_list");
		ptrcall!(void)(_GODOT_push_list, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, Variant) _GODOT_push_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_meta") = _GODOT_push_meta;
	/**
	Adds a meta tag to the tag stack. Similar to the bbcode `$(D url=something){text}$(D /url)`, but supports non-$(D String) metadata types.
	*/
	void pushMeta(VariantArg0)(in VariantArg0 data)
	{
		_GODOT_push_meta.bind("RichTextLabel", "push_meta");
		ptrcall!(void)(_GODOT_push_meta, _godot_object, data);
	}
	package(godot) static GodotMethod!(void) _GODOT_push_underline;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_underline") = _GODOT_push_underline;
	/**
	Adds a `$(D u)` tag to the tag stack.
	*/
	void pushUnderline()
	{
		_GODOT_push_underline.bind("RichTextLabel", "push_underline");
		ptrcall!(void)(_GODOT_push_underline, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_push_table;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_table") = _GODOT_push_table;
	/**
	Adds a `$(D table=columns)` tag to the tag stack.
	*/
	void pushTable(in long columns)
	{
		_GODOT_push_table.bind("RichTextLabel", "push_table");
		ptrcall!(void)(_GODOT_push_table, _godot_object, columns);
	}
	package(godot) static GodotMethod!(void, long, bool, long) _GODOT_set_table_column_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_table_column_expand") = _GODOT_set_table_column_expand;
	/**
	Edits the selected columns expansion options. If `expand` is `true`, the column expands in proportion to its expansion ratio versus the other columns' ratios.
	For example, 2 columns with ratios 3 and 4 plus 70 pixels in available width would expand 30 and 40 pixels, respectively.
	Columns with a `false` expand will not contribute to the total ratio.
	*/
	void setTableColumnExpand(in long column, in bool expand, in long ratio)
	{
		_GODOT_set_table_column_expand.bind("RichTextLabel", "set_table_column_expand");
		ptrcall!(void)(_GODOT_set_table_column_expand, _godot_object, column, expand, ratio);
	}
	package(godot) static GodotMethod!(void) _GODOT_push_cell;
	package(godot) alias _GODOT_methodBindInfo(string name : "push_cell") = _GODOT_push_cell;
	/**
	Adds a `$(D cell)` tag to the tag stack. Must be inside a $(D table) tag. See $(D pushTable) for details.
	*/
	void pushCell()
	{
		_GODOT_push_cell.bind("RichTextLabel", "push_cell");
		ptrcall!(void)(_GODOT_push_cell, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_pop;
	package(godot) alias _GODOT_methodBindInfo(string name : "pop") = _GODOT_pop;
	/**
	Terminates the current tag. Use after `push_*` methods to close bbcodes manually. Does not need to follow `add_*` methods.
	*/
	void pop()
	{
		_GODOT_pop.bind("RichTextLabel", "pop");
		ptrcall!(void)(_GODOT_pop, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clears the tag stack and sets $(D bbcodeText) to an empty string.
	*/
	void clear()
	{
		_GODOT_clear.bind("RichTextLabel", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_meta_underline;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_meta_underline") = _GODOT_set_meta_underline;
	/**
	
	*/
	void setMetaUnderline(in bool enable)
	{
		_GODOT_set_meta_underline.bind("RichTextLabel", "set_meta_underline");
		ptrcall!(void)(_GODOT_set_meta_underline, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_meta_underlined;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_meta_underlined") = _GODOT_is_meta_underlined;
	/**
	
	*/
	bool isMetaUnderlined() const
	{
		_GODOT_is_meta_underlined.bind("RichTextLabel", "is_meta_underlined");
		return ptrcall!(bool)(_GODOT_is_meta_underlined, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_override_selected_font_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_override_selected_font_color") = _GODOT_set_override_selected_font_color;
	/**
	
	*/
	void setOverrideSelectedFontColor(in bool _override)
	{
		_GODOT_set_override_selected_font_color.bind("RichTextLabel", "set_override_selected_font_color");
		ptrcall!(void)(_GODOT_set_override_selected_font_color, _godot_object, _override);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_overriding_selected_font_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_overriding_selected_font_color") = _GODOT_is_overriding_selected_font_color;
	/**
	
	*/
	bool isOverridingSelectedFontColor() const
	{
		_GODOT_is_overriding_selected_font_color.bind("RichTextLabel", "is_overriding_selected_font_color");
		return ptrcall!(bool)(_GODOT_is_overriding_selected_font_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_scroll_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_active") = _GODOT_set_scroll_active;
	/**
	
	*/
	void setScrollActive(in bool active)
	{
		_GODOT_set_scroll_active.bind("RichTextLabel", "set_scroll_active");
		ptrcall!(void)(_GODOT_set_scroll_active, _godot_object, active);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_scroll_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_scroll_active") = _GODOT_is_scroll_active;
	/**
	
	*/
	bool isScrollActive() const
	{
		_GODOT_is_scroll_active.bind("RichTextLabel", "is_scroll_active");
		return ptrcall!(bool)(_GODOT_is_scroll_active, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_scroll_follow;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_scroll_follow") = _GODOT_set_scroll_follow;
	/**
	
	*/
	void setScrollFollow(in bool follow)
	{
		_GODOT_set_scroll_follow.bind("RichTextLabel", "set_scroll_follow");
		ptrcall!(void)(_GODOT_set_scroll_follow, _godot_object, follow);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_scroll_following;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_scroll_following") = _GODOT_is_scroll_following;
	/**
	
	*/
	bool isScrollFollowing() const
	{
		_GODOT_is_scroll_following.bind("RichTextLabel", "is_scroll_following");
		return ptrcall!(bool)(_GODOT_is_scroll_following, _godot_object);
	}
	package(godot) static GodotMethod!(VScrollBar) _GODOT_get_v_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_v_scroll") = _GODOT_get_v_scroll;
	/**
	Returns the vertical scrollbar.
	*/
	VScrollBar getVScroll()
	{
		_GODOT_get_v_scroll.bind("RichTextLabel", "get_v_scroll");
		return ptrcall!(VScrollBar)(_GODOT_get_v_scroll, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_scroll_to_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "scroll_to_line") = _GODOT_scroll_to_line;
	/**
	Scrolls the window's top line to match `line`.
	*/
	void scrollToLine(in long line)
	{
		_GODOT_scroll_to_line.bind("RichTextLabel", "scroll_to_line");
		ptrcall!(void)(_GODOT_scroll_to_line, _godot_object, line);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_tab_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tab_size") = _GODOT_set_tab_size;
	/**
	
	*/
	void setTabSize(in long spaces)
	{
		_GODOT_set_tab_size.bind("RichTextLabel", "set_tab_size");
		ptrcall!(void)(_GODOT_set_tab_size, _godot_object, spaces);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_tab_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_tab_size") = _GODOT_get_tab_size;
	/**
	
	*/
	long getTabSize() const
	{
		_GODOT_get_tab_size.bind("RichTextLabel", "get_tab_size");
		return ptrcall!(long)(_GODOT_get_tab_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_selection_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_selection_enabled") = _GODOT_set_selection_enabled;
	/**
	
	*/
	void setSelectionEnabled(in bool enabled)
	{
		_GODOT_set_selection_enabled.bind("RichTextLabel", "set_selection_enabled");
		ptrcall!(void)(_GODOT_set_selection_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_selection_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_selection_enabled") = _GODOT_is_selection_enabled;
	/**
	
	*/
	bool isSelectionEnabled() const
	{
		_GODOT_is_selection_enabled.bind("RichTextLabel", "is_selection_enabled");
		return ptrcall!(bool)(_GODOT_is_selection_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_parse_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "parse_bbcode") = _GODOT_parse_bbcode;
	/**
	The assignment version of $(D appendBbcode). Clears the tag stack and inserts the new content. Returns `OK` if parses `bbcode` successfully.
	*/
	GodotError parseBbcode(StringArg0)(in StringArg0 bbcode)
	{
		_GODOT_parse_bbcode.bind("RichTextLabel", "parse_bbcode");
		return ptrcall!(GodotError)(_GODOT_parse_bbcode, _godot_object, bbcode);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_append_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "append_bbcode") = _GODOT_append_bbcode;
	/**
	Parses `bbcode` and adds tags to the tag stack as needed. Returns the result of the parsing, `OK` if successful.
	*/
	GodotError appendBbcode(StringArg0)(in StringArg0 bbcode)
	{
		_GODOT_append_bbcode.bind("RichTextLabel", "append_bbcode");
		return ptrcall!(GodotError)(_GODOT_append_bbcode, _godot_object, bbcode);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bbcode") = _GODOT_set_bbcode;
	/**
	
	*/
	void setBbcode(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_bbcode.bind("RichTextLabel", "set_bbcode");
		ptrcall!(void)(_GODOT_set_bbcode, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bbcode") = _GODOT_get_bbcode;
	/**
	
	*/
	String getBbcode() const
	{
		_GODOT_get_bbcode.bind("RichTextLabel", "get_bbcode");
		return ptrcall!(String)(_GODOT_get_bbcode, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_visible_characters;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visible_characters") = _GODOT_set_visible_characters;
	/**
	
	*/
	void setVisibleCharacters(in long amount)
	{
		_GODOT_set_visible_characters.bind("RichTextLabel", "set_visible_characters");
		ptrcall!(void)(_GODOT_set_visible_characters, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_visible_characters;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_characters") = _GODOT_get_visible_characters;
	/**
	
	*/
	long getVisibleCharacters() const
	{
		_GODOT_get_visible_characters.bind("RichTextLabel", "get_visible_characters");
		return ptrcall!(long)(_GODOT_get_visible_characters, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_percent_visible") = _GODOT_set_percent_visible;
	/**
	
	*/
	void setPercentVisible(in double percent_visible)
	{
		_GODOT_set_percent_visible.bind("RichTextLabel", "set_percent_visible");
		ptrcall!(void)(_GODOT_set_percent_visible, _godot_object, percent_visible);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_percent_visible") = _GODOT_get_percent_visible;
	/**
	
	*/
	double getPercentVisible() const
	{
		_GODOT_get_percent_visible.bind("RichTextLabel", "get_percent_visible");
		return ptrcall!(double)(_GODOT_get_percent_visible, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_total_character_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_character_count") = _GODOT_get_total_character_count;
	/**
	Returns the total number of characters from text tags. Does not include bbcodes.
	*/
	long getTotalCharacterCount() const
	{
		_GODOT_get_total_character_count.bind("RichTextLabel", "get_total_character_count");
		return ptrcall!(long)(_GODOT_get_total_character_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_bbcode") = _GODOT_set_use_bbcode;
	/**
	
	*/
	void setUseBbcode(in bool enable)
	{
		_GODOT_set_use_bbcode.bind("RichTextLabel", "set_use_bbcode");
		ptrcall!(void)(_GODOT_set_use_bbcode, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_bbcode;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_bbcode") = _GODOT_is_using_bbcode;
	/**
	
	*/
	bool isUsingBbcode() const
	{
		_GODOT_is_using_bbcode.bind("RichTextLabel", "is_using_bbcode");
		return ptrcall!(bool)(_GODOT_is_using_bbcode, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_count") = _GODOT_get_line_count;
	/**
	Returns the total number of newlines in the tag stack's text tags. Considers wrapped text as one line.
	*/
	long getLineCount() const
	{
		_GODOT_get_line_count.bind("RichTextLabel", "get_line_count");
		return ptrcall!(long)(_GODOT_get_line_count, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_visible_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_line_count") = _GODOT_get_visible_line_count;
	/**
	Returns the number of visible lines.
	*/
	long getVisibleLineCount() const
	{
		_GODOT_get_visible_line_count.bind("RichTextLabel", "get_visible_line_count");
		return ptrcall!(long)(_GODOT_get_visible_line_count, _godot_object);
	}
	/**
	If `true` the label uses BBCode formatting. Default value: `false`.
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
	If `true`, the label underlines meta tags such as $(D url){text}$(D /url). Default value: `true`.
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
	If `true` the label uses the custom font color. Default value: `false`.
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
