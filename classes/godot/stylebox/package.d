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
import godot.reference;
/**
Base class for drawing stylized boxes for the UI.

StyleBox is $(D Resource) that provides an abstract base class for drawing stylized boxes for the UI. StyleBoxes are used for drawing the styles of buttons, line edit backgrounds, tree backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a StyleBox assigned as mask to a control, clicks and motion signals will go through it to the one below.
*/
@GodotBaseClass struct StyleBox
{
	enum string _GODOT_internal_name = "StyleBox";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("test_mask") GodotMethod!(bool, Vector2, Rect2) testMask;
		@GodotName("set_default_margin") GodotMethod!(void, long, double) setDefaultMargin;
		@GodotName("get_default_margin") GodotMethod!(double, long) getDefaultMargin;
		@GodotName("get_margin") GodotMethod!(double, long) getMargin;
		@GodotName("get_minimum_size") GodotMethod!(Vector2) getMinimumSize;
		@GodotName("get_center_size") GodotMethod!(Vector2) getCenterSize;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("draw") GodotMethod!(void, RID, Rect2) draw;
	}
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
	/**
	Test a position in a rectangle, return whether it passes the mask test.
	*/
	bool testMask(in Vector2 point, in Rect2 rect) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.testMask, _godot_object, point, rect);
	}
	/**
	
	*/
	void setDefaultMargin(in long margin, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultMargin, _godot_object, margin, offset);
	}
	/**
	
	*/
	double getDefaultMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDefaultMargin, _godot_object, margin);
	}
	/**
	Return the offset of margin "margin" (see MARGIN_* enum).
	*/
	double getMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMargin, _godot_object, margin);
	}
	/**
	Return the minimum size that this stylebox can be shrunk to.
	*/
	Vector2 getMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getMinimumSize, _godot_object);
	}
	/**
	
	*/
	Vector2 getCenterSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getCenterSize, _godot_object);
	}
	/**
	Return the "offset" of a stylebox, this is a helper function, like writing `Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))`.
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	void draw(in RID canvas_item, in Rect2 rect) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.draw, _godot_object, canvas_item, rect);
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
