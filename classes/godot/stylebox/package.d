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
import godot.canvasitem;
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
		@GodotName("draw") GodotMethod!(void, RID, Rect2) draw;
		@GodotName("get_center_size") GodotMethod!(Vector2) getCenterSize;
		@GodotName("get_current_item_drawn") GodotMethod!(CanvasItem) getCurrentItemDrawn;
		@GodotName("get_default_margin") GodotMethod!(double, long) getDefaultMargin;
		@GodotName("get_margin") GodotMethod!(double, long) getMargin;
		@GodotName("get_minimum_size") GodotMethod!(Vector2) getMinimumSize;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("set_default_margin") GodotMethod!(void, long, double) setDefaultMargin;
		@GodotName("test_mask") GodotMethod!(bool, Vector2, Rect2) testMask;
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
	Draws this stylebox using a $(D CanvasItem) with given $(D RID).
	You can get a $(D RID) value using $(D GodotObject.getInstanceId) on a $(D CanvasItem)-derived node.
	*/
	void draw(in RID canvas_item, in Rect2 rect) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.draw, _godot_object, canvas_item, rect);
	}
	/**
	Returns the size of this $(D StyleBox) without the margins.
	*/
	Vector2 getCenterSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getCenterSize, _godot_object);
	}
	/**
	Returns the $(D CanvasItem) that handles its $(D constant CanvasItem.NOTIFICATION_DRAW) or $(D CanvasItem._draw) callback at this moment.
	*/
	CanvasItem getCurrentItemDrawn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CanvasItem)(_classBinding.getCurrentItemDrawn, _godot_object);
	}
	/**
	Returns the default value of the specified $(D margin).
	*/
	double getDefaultMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDefaultMargin, _godot_object, margin);
	}
	/**
	Returns the content margin offset for the specified $(D margin).
	Positive values reduce size inwards, unlike $(D Control)'s margin values.
	*/
	double getMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMargin, _godot_object, margin);
	}
	/**
	Returns the minimum size that this stylebox can be shrunk to.
	*/
	Vector2 getMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getMinimumSize, _godot_object);
	}
	/**
	Returns the "offset" of a stylebox. This helper function returns a value equivalent to `Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))`.
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
	}
	/**
	Sets the default value of the specified $(D margin) to given `offset` in pixels.
	*/
	void setDefaultMargin(in long margin, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultMargin, _godot_object, margin, offset);
	}
	/**
	Test a position in a rectangle, return whether it passes the mask test.
	*/
	bool testMask(in Vector2 point, in Rect2 rect) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.testMask, _godot_object, point, rect);
	}
	/**
	The bottom margin for the contents of this style box. Increasing this value reduces the space available to the contents from the bottom.
	If this value is negative, it is ignored and a child-specific margin is used instead. For example for $(D StyleBoxFlat) the border thickness (if any) is used instead.
	It is up to the code using this style box to decide what these contents are: for example, a $(D Button) respects this content margin for the textual contents of the button.
	$(D getMargin) should be used to fetch this value as consumer instead of reading these properties directly. This is because it correctly respects negative values and the fallback mentioned above.
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
	/**
	The left margin for the contents of this style box.	Increasing this value reduces the space available to the contents from the left.
	Refer to $(D contentMarginBottom) for extra considerations.
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
	The right margin for the contents of this style box. Increasing this value reduces the space available to the contents from the right.
	Refer to $(D contentMarginBottom) for extra considerations.
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
	The top margin for the contents of this style box. Increasing this value reduces the space available to the contents from the top.
	Refer to $(D contentMarginBottom) for extra considerations.
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
}
