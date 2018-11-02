/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.styleboxline;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
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

*/
@GodotBaseClass struct StyleBoxLine
{
	enum string _GODOT_internal_name = "StyleBoxLine";
public:
@nogc nothrow:
	union { godot_object _godot_object; StyleBox _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("set_thickness") GodotMethod!(void, long) setThickness;
		@GodotName("get_thickness") GodotMethod!(long) getThickness;
		@GodotName("set_grow_begin") GodotMethod!(void, double) setGrowBegin;
		@GodotName("get_grow_begin") GodotMethod!(double) getGrowBegin;
		@GodotName("set_grow_end") GodotMethod!(void, double) setGrowEnd;
		@GodotName("get_grow_end") GodotMethod!(double) getGrowEnd;
		@GodotName("set_vertical") GodotMethod!(void, bool) setVertical;
		@GodotName("is_vertical") GodotMethod!(bool) isVertical;
	}
	bool opEquals(in StyleBoxLine other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StyleBoxLine opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object);
	}
	/**
	
	*/
	void setThickness(in long thickness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setThickness, _godot_object, thickness);
	}
	/**
	
	*/
	long getThickness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getThickness, _godot_object);
	}
	/**
	
	*/
	void setGrowBegin(in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGrowBegin, _godot_object, offset);
	}
	/**
	
	*/
	double getGrowBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGrowBegin, _godot_object);
	}
	/**
	
	*/
	void setGrowEnd(in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGrowEnd, _godot_object, offset);
	}
	/**
	
	*/
	double getGrowEnd() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getGrowEnd, _godot_object);
	}
	/**
	
	*/
	void setVertical(in bool vertical)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVertical, _godot_object, vertical);
	}
	/**
	
	*/
	bool isVertical() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isVertical, _godot_object);
	}
	/**
	
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
