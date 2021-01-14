/**
$(D StyleBox) that displays a single line.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.styleboxline;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.stylebox;
import godot.resource;
import godot.reference;
/**
$(D StyleBox) that displays a single line.

$(D StyleBox) that displays a single line of a given color and thickness. It can be used to draw things like separators.
*/
@GodotBaseClass struct StyleBoxLine
{
	package(godot) enum string _GODOT_internal_name = "StyleBoxLine";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_grow_begin") GodotMethod!(double) getGrowBegin;
		@GodotName("get_grow_end") GodotMethod!(double) getGrowEnd;
		@GodotName("get_thickness") GodotMethod!(long) getThickness;
		@GodotName("is_vertical") GodotMethod!(bool) isVertical;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_grow_begin") GodotMethod!(void, double) setGrowBegin;
		@GodotName("set_grow_end") GodotMethod!(void, double) setGrowEnd;
		@GodotName("set_thickness") GodotMethod!(void, long) setThickness;
		@GodotName("set_vertical") GodotMethod!(void, bool) setVertical;
	}
	/// 
	pragma(inline, true) bool opEquals(in StyleBoxLine other) const
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
	/// Construct a new instance of StyleBoxLine.
	/// Note: use `memnew!StyleBoxLine` instead.
	static StyleBoxLine _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StyleBoxLine");
		if(constructor is null) return typeof(this).init;
		return cast(StyleBoxLine)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object);
	}
	/**
	
	*/
	double getGrowBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGrowBegin, _godot_object);
	}
	/**
	
	*/
	double getGrowEnd() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGrowEnd, _godot_object);
	}
	/**
	
	*/
	long getThickness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getThickness, _godot_object);
	}
	/**
	
	*/
	bool isVertical() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVertical, _godot_object);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	void setGrowBegin(in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGrowBegin, _godot_object, offset);
	}
	/**
	
	*/
	void setGrowEnd(in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGrowEnd, _godot_object, offset);
	}
	/**
	
	*/
	void setThickness(in long thickness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setThickness, _godot_object, thickness);
	}
	/**
	
	*/
	void setVertical(in bool vertical)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertical, _godot_object, vertical);
	}
	/**
	The line's color.
	*/
	@property Color color()
	{
		return getColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setColor(v);
	}
	/**
	The number of pixels the line will extend before the $(D StyleBoxLine)'s bounds. If set to a negative value, the line will begin inside the $(D StyleBoxLine)'s bounds.
	*/
	@property double growBegin()
	{
		return getGrowBegin();
	}
	/// ditto
	@property void growBegin(double v)
	{
		setGrowBegin(v);
	}
	/**
	The number of pixels the line will extend past the $(D StyleBoxLine)'s bounds. If set to a negative value, the line will end inside the $(D StyleBoxLine)'s bounds.
	*/
	@property double growEnd()
	{
		return getGrowEnd();
	}
	/// ditto
	@property void growEnd(double v)
	{
		setGrowEnd(v);
	}
	/**
	The line's thickness in pixels.
	*/
	@property long thickness()
	{
		return getThickness();
	}
	/// ditto
	@property void thickness(long v)
	{
		setThickness(v);
	}
	/**
	If `true`, the line will be vertical. If `false`, the line will be horizontal.
	*/
	@property bool vertical()
	{
		return isVertical();
	}
	/// ditto
	@property void vertical(bool v)
	{
		setVertical(v);
	}
}
