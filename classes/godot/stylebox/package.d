/**
Base class for drawing stylized boxes for the UI.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.stylebox;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
Base class for drawing stylized boxes for the UI.

StyleBox is $(D Resource) that provides an abstract base class for drawing stylized boxes for the UI. StyleBoxes are used for drawing the styles of buttons, line edit backgrounds, tree backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a StyleBox assigned as mask to a control, clicks and motion signals will go through it to the one below.
*/
@GodotBaseClass struct StyleBox
{
	static immutable string _GODOT_internal_name = "StyleBox";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in StyleBox other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBox opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StyleBox _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StyleBox");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBox)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(bool, Vector2, Rect2) _GODOT_test_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "test_mask") = _GODOT_test_mask;
	/**
	Test a position in a rectangle, return whether it passes the mask test.
	*/
	bool testMask(in Vector2 point, in Rect2 rect) const
	{
		_GODOT_test_mask.bind("StyleBox", "test_mask");
		return ptrcall!(bool)(_GODOT_test_mask, _godot_object, point, rect);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_default_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_margin") = _GODOT_set_default_margin;
	/**
	
	*/
	void setDefaultMargin(in long margin, in double offset)
	{
		_GODOT_set_default_margin.bind("StyleBox", "set_default_margin");
		ptrcall!(void)(_GODOT_set_default_margin, _godot_object, margin, offset);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_default_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_default_margin") = _GODOT_get_default_margin;
	/**
	
	*/
	double getDefaultMargin(in long margin) const
	{
		_GODOT_get_default_margin.bind("StyleBox", "get_default_margin");
		return ptrcall!(double)(_GODOT_get_default_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	/**
	Return the offset of margin "margin" (see MARGIN_* enum).
	*/
	double getMargin(in long margin) const
	{
		_GODOT_get_margin.bind("StyleBox", "get_margin");
		return ptrcall!(double)(_GODOT_get_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_minimum_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_minimum_size") = _GODOT_get_minimum_size;
	/**
	Return the minimum size that this stylebox can be shrunk to.
	*/
	Vector2 getMinimumSize() const
	{
		_GODOT_get_minimum_size.bind("StyleBox", "get_minimum_size");
		return ptrcall!(Vector2)(_GODOT_get_minimum_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_center_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_center_size") = _GODOT_get_center_size;
	/**
	
	*/
	Vector2 getCenterSize() const
	{
		_GODOT_get_center_size.bind("StyleBox", "get_center_size");
		return ptrcall!(Vector2)(_GODOT_get_center_size, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	Return the "offset" of a stylebox, this is a helper function, like writing `Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))`.
	*/
	Vector2 getOffset() const
	{
		_GODOT_get_offset.bind("StyleBox", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, Rect2) _GODOT_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw") = _GODOT_draw;
	/**
	
	*/
	void draw(in RID canvas_item, in Rect2 rect) const
	{
		_GODOT_draw.bind("StyleBox", "draw");
		ptrcall!(void)(_GODOT_draw, _godot_object, canvas_item, rect);
	}
	/**
	
	*/
	@property double contentMarginLeft()
	{
		return getDefaultMargin(0);
	}
	/// ditto
	@property void contentMarginLeft(double v)
	{
		setDefaultMargin(0, v);
	}
	/**
	
	*/
	@property double contentMarginRight()
	{
		return getDefaultMargin(2);
	}
	/// ditto
	@property void contentMarginRight(double v)
	{
		setDefaultMargin(2, v);
	}
	/**
	
	*/
	@property double contentMarginTop()
	{
		return getDefaultMargin(1);
	}
	/// ditto
	@property void contentMarginTop(double v)
	{
		setDefaultMargin(1, v);
	}
	/**
	
	*/
	@property double contentMarginBottom()
	{
		return getDefaultMargin(3);
	}
	/// ditto
	@property void contentMarginBottom(double v)
	{
		setDefaultMargin(3, v);
	}
}
