/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.stylebox;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
import godot.reference;
import godot.canvasitem;
/**

*/
@GodotBaseClass struct StyleBox
{
	package(godot) enum string _GODOT_internal_name = "StyleBox";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in StyleBox other) const
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
	/// Construct a new instance of StyleBox.
	/// Note: use `memnew!StyleBox` instead.
	static StyleBox _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StyleBox");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBox)(constructor());
	}
	/**
	
	*/
	void draw(in RID canvas_item, in Rect2 rect) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.draw, _godot_object, canvas_item, rect);
	}
	/**
	
	*/
	Vector2 getCenterSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getCenterSize, _godot_object);
	}
	/**
	
	*/
	CanvasItem getCurrentItemDrawn() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CanvasItem)(GDNativeClassBinding.getCurrentItemDrawn, _godot_object);
	}
	/**
	
	*/
	double getDefaultMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDefaultMargin, _godot_object, margin);
	}
	/**
	
	*/
	double getMargin(in long margin) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMargin, _godot_object, margin);
	}
	/**
	
	*/
	Vector2 getMinimumSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getMinimumSize, _godot_object);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	void setDefaultMargin(in long margin, in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultMargin, _godot_object, margin, offset);
	}
	/**
	
	*/
	bool testMask(in Vector2 point, in Rect2 rect) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.testMask, _godot_object, point, rect);
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
}
