/**
Displays plain text in a line or wrapped inside a rectangle. For formatted text, use $(D RichTextLabel).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.label;
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
/**
Displays plain text in a line or wrapped inside a rectangle. For formatted text, use $(D RichTextLabel).

Label displays plain text on the screen. It gives you control over the horizontal and vertical alignment, and can wrap the text inside the node's bounding rectangle. It doesn't support bold, italics or other formatting. For that, use $(D RichTextLabel) instead.
Note that contrarily to most other $(D Control)s, Label's $(D Control.mouseFilter) defaults to MOUSE_FILTER_IGNORE (i.e. it doesn't react to mouse input events).
*/
@GodotBaseClass struct Label
{
	static immutable string _GODOT_internal_name = "Label";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Label other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Label opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Label _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Label");
		if(constructor is null) return typeof(this).init;
		return cast(Label)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Align : int
	{
		/**
		Align rows to the left (default).
		*/
		alignLeft = 0,
		/**
		Align rows centered.
		*/
		alignCenter = 1,
		/**
		Align rows to the right (default).
		*/
		alignRight = 2,
		/**
		Expand row whitespaces to fit the width.
		*/
		alignFill = 3,
	}
	/// 
	enum VAlign : int
	{
		/**
		Align the whole text to the top.
		*/
		valignTop = 0,
		/**
		Align the whole text to the center.
		*/
		valignCenter = 1,
		/**
		Align the whole text to the bottom.
		*/
		valignBottom = 2,
		/**
		Align the whole text by spreading the rows.
		*/
		valignFill = 3,
	}
	/// 
	enum Constants : int
	{
		alignLeft = 0,
		valignTop = 0,
		valignCenter = 1,
		alignCenter = 1,
		valignBottom = 2,
		alignRight = 2,
		valignFill = 3,
		alignFill = 3,
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_align") = _GODOT_set_align;
	/**
	
	*/
	void setAlign(in long _align)
	{
		_GODOT_set_align.bind("Label", "set_align");
		ptrcall!(void)(_GODOT_set_align, _godot_object, _align);
	}
	package(godot) static GodotMethod!(Label.Align) _GODOT_get_align;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_align") = _GODOT_get_align;
	/**
	
	*/
	Label.Align getAlign() const
	{
		_GODOT_get_align.bind("Label", "get_align");
		return ptrcall!(Label.Align)(_GODOT_get_align, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_valign;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_valign") = _GODOT_set_valign;
	/**
	
	*/
	void setValign(in long valign)
	{
		_GODOT_set_valign.bind("Label", "set_valign");
		ptrcall!(void)(_GODOT_set_valign, _godot_object, valign);
	}
	package(godot) static GodotMethod!(Label.VAlign) _GODOT_get_valign;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_valign") = _GODOT_get_valign;
	/**
	
	*/
	Label.VAlign getValign() const
	{
		_GODOT_get_valign.bind("Label", "get_valign");
		return ptrcall!(Label.VAlign)(_GODOT_get_valign, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_text") = _GODOT_set_text;
	/**
	
	*/
	void setText(StringArg0)(in StringArg0 text)
	{
		_GODOT_set_text.bind("Label", "set_text");
		ptrcall!(void)(_GODOT_set_text, _godot_object, text);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_text") = _GODOT_get_text;
	/**
	
	*/
	String getText() const
	{
		_GODOT_get_text.bind("Label", "get_text");
		return ptrcall!(String)(_GODOT_get_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_autowrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_autowrap") = _GODOT_set_autowrap;
	/**
	
	*/
	void setAutowrap(in bool enable)
	{
		_GODOT_set_autowrap.bind("Label", "set_autowrap");
		ptrcall!(void)(_GODOT_set_autowrap, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_autowrap;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_autowrap") = _GODOT_has_autowrap;
	/**
	
	*/
	bool hasAutowrap() const
	{
		_GODOT_has_autowrap.bind("Label", "has_autowrap");
		return ptrcall!(bool)(_GODOT_has_autowrap, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_clip_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_clip_text") = _GODOT_set_clip_text;
	/**
	
	*/
	void setClipText(in bool enable)
	{
		_GODOT_set_clip_text.bind("Label", "set_clip_text");
		ptrcall!(void)(_GODOT_set_clip_text, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_clipping_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_clipping_text") = _GODOT_is_clipping_text;
	/**
	
	*/
	bool isClippingText() const
	{
		_GODOT_is_clipping_text.bind("Label", "is_clipping_text");
		return ptrcall!(bool)(_GODOT_is_clipping_text, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_uppercase;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uppercase") = _GODOT_set_uppercase;
	/**
	
	*/
	void setUppercase(in bool enable)
	{
		_GODOT_set_uppercase.bind("Label", "set_uppercase");
		ptrcall!(void)(_GODOT_set_uppercase, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_uppercase;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_uppercase") = _GODOT_is_uppercase;
	/**
	
	*/
	bool isUppercase() const
	{
		_GODOT_is_uppercase.bind("Label", "is_uppercase");
		return ptrcall!(bool)(_GODOT_is_uppercase, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_line_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_height") = _GODOT_get_line_height;
	/**
	Returns the font size in pixels.
	*/
	long getLineHeight() const
	{
		_GODOT_get_line_height.bind("Label", "get_line_height");
		return ptrcall!(long)(_GODOT_get_line_height, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_line_count") = _GODOT_get_line_count;
	/**
	Returns the amount of lines of text the Label has.
	*/
	long getLineCount() const
	{
		_GODOT_get_line_count.bind("Label", "get_line_count");
		return ptrcall!(long)(_GODOT_get_line_count, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_visible_line_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_line_count") = _GODOT_get_visible_line_count;
	/**
	Returns the number of lines shown. Useful if the `Label` 's height cannot currently display all lines.
	*/
	long getVisibleLineCount() const
	{
		_GODOT_get_visible_line_count.bind("Label", "get_visible_line_count");
		return ptrcall!(long)(_GODOT_get_visible_line_count, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_total_character_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_total_character_count") = _GODOT_get_total_character_count;
	/**
	Returns the total length of the text.
	*/
	long getTotalCharacterCount() const
	{
		_GODOT_get_total_character_count.bind("Label", "get_total_character_count");
		return ptrcall!(long)(_GODOT_get_total_character_count, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_visible_characters;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visible_characters") = _GODOT_set_visible_characters;
	/**
	
	*/
	void setVisibleCharacters(in long amount)
	{
		_GODOT_set_visible_characters.bind("Label", "set_visible_characters");
		ptrcall!(void)(_GODOT_set_visible_characters, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_visible_characters;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visible_characters") = _GODOT_get_visible_characters;
	/**
	
	*/
	long getVisibleCharacters() const
	{
		_GODOT_get_visible_characters.bind("Label", "get_visible_characters");
		return ptrcall!(long)(_GODOT_get_visible_characters, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_percent_visible") = _GODOT_set_percent_visible;
	/**
	
	*/
	void setPercentVisible(in double percent_visible)
	{
		_GODOT_set_percent_visible.bind("Label", "set_percent_visible");
		ptrcall!(void)(_GODOT_set_percent_visible, _godot_object, percent_visible);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_percent_visible") = _GODOT_get_percent_visible;
	/**
	
	*/
	double getPercentVisible() const
	{
		_GODOT_get_percent_visible.bind("Label", "get_percent_visible");
		return ptrcall!(double)(_GODOT_get_percent_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_lines_skipped;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lines_skipped") = _GODOT_set_lines_skipped;
	/**
	
	*/
	void setLinesSkipped(in long lines_skipped)
	{
		_GODOT_set_lines_skipped.bind("Label", "set_lines_skipped");
		ptrcall!(void)(_GODOT_set_lines_skipped, _godot_object, lines_skipped);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_lines_skipped;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lines_skipped") = _GODOT_get_lines_skipped;
	/**
	
	*/
	long getLinesSkipped() const
	{
		_GODOT_get_lines_skipped.bind("Label", "get_lines_skipped");
		return ptrcall!(long)(_GODOT_get_lines_skipped, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_max_lines_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max_lines_visible") = _GODOT_set_max_lines_visible;
	/**
	
	*/
	void setMaxLinesVisible(in long lines_visible)
	{
		_GODOT_set_max_lines_visible.bind("Label", "set_max_lines_visible");
		ptrcall!(void)(_GODOT_set_max_lines_visible, _godot_object, lines_visible);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_max_lines_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max_lines_visible") = _GODOT_get_max_lines_visible;
	/**
	
	*/
	long getMaxLinesVisible() const
	{
		_GODOT_get_max_lines_visible.bind("Label", "get_max_lines_visible");
		return ptrcall!(long)(_GODOT_get_max_lines_visible, _godot_object);
	}
	/**
	The text to display on screen.
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
	Controls the text's horizontal align. Supports left, center, right, and fill, or justify. Set it to one of the `ALIGN_*` constants.
	*/
	@property Label.Align _align()
	{
		return getAlign();
	}
	/// ditto
	@property void _align(long v)
	{
		setAlign(v);
	}
	/**
	Controls the text's vertical align. Supports top, center, bottom, and fill. Set it to one of the `VALIGN_*` constants.
	*/
	@property Label.VAlign valign()
	{
		return getValign();
	}
	/// ditto
	@property void valign(long v)
	{
		setValign(v);
	}
	/**
	If `true`, wraps the text inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text. Default: false.
	*/
	@property bool autowrap()
	{
		return hasAutowrap();
	}
	/// ditto
	@property void autowrap(bool v)
	{
		setAutowrap(v);
	}
	/**
	If `true`, the Label only shows the text that fits inside its bounding rectangle. It also lets you scale the node down freely.
	*/
	@property bool clipText()
	{
		return isClippingText();
	}
	/// ditto
	@property void clipText(bool v)
	{
		setClipText(v);
	}
	/**
	If `true`, all the text displays as UPPERCASE.
	*/
	@property bool uppercase()
	{
		return isUppercase();
	}
	/// ditto
	@property void uppercase(bool v)
	{
		setUppercase(v);
	}
	/**
	Restricts the number of characters to display. Set to -1 to disable.
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
	Limits the count of visible characters. If you set `percent_visible` to 50, only up to half of the text's characters will display on screen. Useful to animate the text in a dialog box.
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
	The node ignores the first `lines_skipped` lines before it starts to display text.
	*/
	@property long linesSkipped()
	{
		return getLinesSkipped();
	}
	/// ditto
	@property void linesSkipped(long v)
	{
		setLinesSkipped(v);
	}
	/**
	Limits the lines of text the node shows on screen.
	*/
	@property long maxLinesVisible()
	{
		return getMaxLinesVisible();
	}
	/// ditto
	@property void maxLinesVisible(long v)
	{
		setMaxLinesVisible(v);
	}
}
