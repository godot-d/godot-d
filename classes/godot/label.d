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
/**
Displays plain text in a line or wrapped inside a rectangle. For formatted text, use $(D RichTextLabel).

Label displays plain text on the screen. It gives you control over the horizontal and vertical alignment and can wrap the text inside the node's bounding rectangle. It doesn't support bold, italics, or other formatting. For that, use $(D RichTextLabel) instead.
$(B Note:) Contrarily to most other $(D Control)s, Label's $(D Control.mouseFilter) defaults to $(D constant Control.MOUSE_FILTER_IGNORE) (i.e. it doesn't react to mouse input events). This implies that a label won't display any configured $(D Control.hintTooltip), unless you change its mouse filter.
*/
@GodotBaseClass struct Label
{
	package(godot) enum string _GODOT_internal_name = "Label";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_align") GodotMethod!(Label.Align) getAlign;
		@GodotName("get_line_count") GodotMethod!(long) getLineCount;
		@GodotName("get_line_height") GodotMethod!(long) getLineHeight;
		@GodotName("get_lines_skipped") GodotMethod!(long) getLinesSkipped;
		@GodotName("get_max_lines_visible") GodotMethod!(long) getMaxLinesVisible;
		@GodotName("get_percent_visible") GodotMethod!(double) getPercentVisible;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("get_total_character_count") GodotMethod!(long) getTotalCharacterCount;
		@GodotName("get_valign") GodotMethod!(Label.VAlign) getValign;
		@GodotName("get_visible_characters") GodotMethod!(long) getVisibleCharacters;
		@GodotName("get_visible_line_count") GodotMethod!(long) getVisibleLineCount;
		@GodotName("has_autowrap") GodotMethod!(bool) hasAutowrap;
		@GodotName("is_clipping_text") GodotMethod!(bool) isClippingText;
		@GodotName("is_uppercase") GodotMethod!(bool) isUppercase;
		@GodotName("set_align") GodotMethod!(void, long) setAlign;
		@GodotName("set_autowrap") GodotMethod!(void, bool) setAutowrap;
		@GodotName("set_clip_text") GodotMethod!(void, bool) setClipText;
		@GodotName("set_lines_skipped") GodotMethod!(void, long) setLinesSkipped;
		@GodotName("set_max_lines_visible") GodotMethod!(void, long) setMaxLinesVisible;
		@GodotName("set_percent_visible") GodotMethod!(void, double) setPercentVisible;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("set_uppercase") GodotMethod!(void, bool) setUppercase;
		@GodotName("set_valign") GodotMethod!(void, long) setValign;
		@GodotName("set_visible_characters") GodotMethod!(void, long) setVisibleCharacters;
	}
	/// 
	pragma(inline, true) bool opEquals(in Label other) const
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
	/// Construct a new instance of Label.
	/// Note: use `memnew!Label` instead.
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
		Align rows to the right.
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
	Label.Align getAlign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Label.Align)(GDNativeClassBinding.getAlign, _godot_object);
	}
	/**
	Returns the amount of lines of text the Label has.
	*/
	long getLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLineCount, _godot_object);
	}
	/**
	Returns the font size in pixels.
	*/
	long getLineHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLineHeight, _godot_object);
	}
	/**
	
	*/
	long getLinesSkipped() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLinesSkipped, _godot_object);
	}
	/**
	
	*/
	long getMaxLinesVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMaxLinesVisible, _godot_object);
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
	String getText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getText, _godot_object);
	}
	/**
	Returns the total number of printable characters in the text (excluding spaces and newlines).
	*/
	long getTotalCharacterCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTotalCharacterCount, _godot_object);
	}
	/**
	
	*/
	Label.VAlign getValign() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Label.VAlign)(GDNativeClassBinding.getValign, _godot_object);
	}
	/**
	
	*/
	long getVisibleCharacters() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVisibleCharacters, _godot_object);
	}
	/**
	Returns the number of lines shown. Useful if the $(D Label)'s height cannot currently display all lines.
	*/
	long getVisibleLineCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVisibleLineCount, _godot_object);
	}
	/**
	
	*/
	bool hasAutowrap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAutowrap, _godot_object);
	}
	/**
	
	*/
	bool isClippingText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClippingText, _godot_object);
	}
	/**
	
	*/
	bool isUppercase() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUppercase, _godot_object);
	}
	/**
	
	*/
	void setAlign(in long _align)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlign, _godot_object, _align);
	}
	/**
	
	*/
	void setAutowrap(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutowrap, _godot_object, enable);
	}
	/**
	
	*/
	void setClipText(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClipText, _godot_object, enable);
	}
	/**
	
	*/
	void setLinesSkipped(in long lines_skipped)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLinesSkipped, _godot_object, lines_skipped);
	}
	/**
	
	*/
	void setMaxLinesVisible(in long lines_visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxLinesVisible, _godot_object, lines_visible);
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
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setText, _godot_object, text);
	}
	/**
	
	*/
	void setUppercase(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUppercase, _godot_object, enable);
	}
	/**
	
	*/
	void setValign(in long valign)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setValign, _godot_object, valign);
	}
	/**
	
	*/
	void setVisibleCharacters(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVisibleCharacters, _godot_object, amount);
	}
	/**
	Controls the text's horizontal align. Supports left, center, right, and fill, or justify. Set it to one of the $(D _align) constants.
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
	If `true`, wraps the text inside the node's bounding rectangle. If you resize the node, it will change its height automatically to show all the text.
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
	If `true`, the Label only shows the text that fits inside its bounding rectangle and will clip text horizontally.
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
	/**
	Limits the amount of visible characters. If you set `percent_visible` to 0.5, only up to half of the text's characters will display on screen. Useful to animate the text in a dialog box.
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
	Controls the text's vertical align. Supports top, center, bottom, and fill. Set it to one of the $(D valign) constants.
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
}
