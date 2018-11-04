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
import godot.canvasitem;
import godot.node;
/**
Displays plain text in a line or wrapped inside a rectangle. For formatted text, use $(D RichTextLabel).

Label displays plain text on the screen. It gives you control over the horizontal and vertical alignment, and can wrap the text inside the node's bounding rectangle. It doesn't support bold, italics or other formatting. For that, use $(D RichTextLabel) instead.
Note that contrarily to most other $(D Control)s, Label's $(D Control.mouseFilter) defaults to MOUSE_FILTER_IGNORE (i.e. it doesn't react to mouse input events).
*/
@GodotBaseClass struct Label
{
	enum string _GODOT_internal_name = "Label";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_align") GodotMethod!(void, long) setAlign;
		@GodotName("get_align") GodotMethod!(Label.Align) getAlign;
		@GodotName("set_valign") GodotMethod!(void, long) setValign;
		@GodotName("get_valign") GodotMethod!(Label.VAlign) getValign;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("set_autowrap") GodotMethod!(void, bool) setAutowrap;
		@GodotName("has_autowrap") GodotMethod!(bool) hasAutowrap;
		@GodotName("set_clip_text") GodotMethod!(void, bool) setClipText;
		@GodotName("is_clipping_text") GodotMethod!(bool) isClippingText;
		@GodotName("set_uppercase") GodotMethod!(void, bool) setUppercase;
		@GodotName("is_uppercase") GodotMethod!(bool) isUppercase;
		@GodotName("get_line_height") GodotMethod!(long) getLineHeight;
		@GodotName("get_line_count") GodotMethod!(long) getLineCount;
		@GodotName("get_visible_line_count") GodotMethod!(long) getVisibleLineCount;
		@GodotName("get_total_character_count") GodotMethod!(long) getTotalCharacterCount;
		@GodotName("set_visible_characters") GodotMethod!(void, long) setVisibleCharacters;
		@GodotName("get_visible_characters") GodotMethod!(long) getVisibleCharacters;
		@GodotName("set_percent_visible") GodotMethod!(void, double) setPercentVisible;
		@GodotName("get_percent_visible") GodotMethod!(double) getPercentVisible;
		@GodotName("set_lines_skipped") GodotMethod!(void, long) setLinesSkipped;
		@GodotName("get_lines_skipped") GodotMethod!(long) getLinesSkipped;
		@GodotName("set_max_lines_visible") GodotMethod!(void, long) setMaxLinesVisible;
		@GodotName("get_max_lines_visible") GodotMethod!(long) getMaxLinesVisible;
	}
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
		alignCenter = 1,
		valignCenter = 1,
		alignRight = 2,
		valignBottom = 2,
		valignFill = 3,
		alignFill = 3,
	}
	/**
	
	*/
	void setAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAlign, _godot_object, _align);
	}
	/**
	
	*/
	Label.Align getAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Label.Align)(_classBinding.getAlign, _godot_object);
	}
	/**
	
	*/
	void setValign(in long valign)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setValign, _godot_object, valign);
	}
	/**
	
	*/
	Label.VAlign getValign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Label.VAlign)(_classBinding.getValign, _godot_object);
	}
	/**
	
	*/
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setText, _godot_object, text);
	}
	/**
	
	*/
	String getText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getText, _godot_object);
	}
	/**
	
	*/
	void setAutowrap(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutowrap, _godot_object, enable);
	}
	/**
	
	*/
	bool hasAutowrap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasAutowrap, _godot_object);
	}
	/**
	
	*/
	void setClipText(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClipText, _godot_object, enable);
	}
	/**
	
	*/
	bool isClippingText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClippingText, _godot_object);
	}
	/**
	
	*/
	void setUppercase(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUppercase, _godot_object, enable);
	}
	/**
	
	*/
	bool isUppercase() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUppercase, _godot_object);
	}
	/**
	Returns the font size in pixels.
	*/
	long getLineHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLineHeight, _godot_object);
	}
	/**
	Returns the amount of lines of text the Label has.
	*/
	long getLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLineCount, _godot_object);
	}
	/**
	Returns the number of lines shown. Useful if the `Label` 's height cannot currently display all lines.
	*/
	long getVisibleLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVisibleLineCount, _godot_object);
	}
	/**
	Returns the total length of the text.
	*/
	long getTotalCharacterCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTotalCharacterCount, _godot_object);
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
	
	*/
	void setLinesSkipped(in long lines_skipped)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLinesSkipped, _godot_object, lines_skipped);
	}
	/**
	
	*/
	long getLinesSkipped() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLinesSkipped, _godot_object);
	}
	/**
	
	*/
	void setMaxLinesVisible(in long lines_visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxLinesVisible, _godot_object, lines_visible);
	}
	/**
	
	*/
	long getMaxLinesVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMaxLinesVisible, _godot_object);
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
