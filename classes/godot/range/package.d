/**
Abstract base class for range-based controls.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.range;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.control;
/**
Abstract base class for range-based controls.

Range is a base class for $(D Control) nodes that change a floating point $(I value) between a $(I minimum) and a $(I maximum), using $(I step) and $(I page), for example a $(D ScrollBar).
*/
@GodotBaseClass struct Range
{
	static immutable string _GODOT_internal_name = "Range";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Range other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Range opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Range _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Range");
		if(constructor is null) return typeof(this).init;
		return cast(Range)(constructor());
	}
	package(godot) static GodotMethod!(double) _GODOT_get_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_value") = _GODOT_get_value;
	/**
	
	*/
	double getValue() const
	{
		_GODOT_get_value.bind("Range", "get_value");
		return ptrcall!(double)(_GODOT_get_value, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_min") = _GODOT_get_min;
	/**
	
	*/
	double getMin() const
	{
		_GODOT_get_min.bind("Range", "get_min");
		return ptrcall!(double)(_GODOT_get_min, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_max") = _GODOT_get_max;
	/**
	
	*/
	double getMax() const
	{
		_GODOT_get_max.bind("Range", "get_max");
		return ptrcall!(double)(_GODOT_get_max, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_step") = _GODOT_get_step;
	/**
	
	*/
	double getStep() const
	{
		_GODOT_get_step.bind("Range", "get_step");
		return ptrcall!(double)(_GODOT_get_step, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_page;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_page") = _GODOT_get_page;
	/**
	
	*/
	double getPage() const
	{
		_GODOT_get_page.bind("Range", "get_page");
		return ptrcall!(double)(_GODOT_get_page, _godot_object);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_as_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_as_ratio") = _GODOT_get_as_ratio;
	/**
	
	*/
	double getAsRatio() const
	{
		_GODOT_get_as_ratio.bind("Range", "get_as_ratio");
		return ptrcall!(double)(_GODOT_get_as_ratio, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_value") = _GODOT_set_value;
	/**
	
	*/
	void setValue(in double value)
	{
		_GODOT_set_value.bind("Range", "set_value");
		ptrcall!(void)(_GODOT_set_value, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_min;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_min") = _GODOT_set_min;
	/**
	
	*/
	void setMin(in double minimum)
	{
		_GODOT_set_min.bind("Range", "set_min");
		ptrcall!(void)(_GODOT_set_min, _godot_object, minimum);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_max;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_max") = _GODOT_set_max;
	/**
	
	*/
	void setMax(in double maximum)
	{
		_GODOT_set_max.bind("Range", "set_max");
		ptrcall!(void)(_GODOT_set_max, _godot_object, maximum);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_step;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_step") = _GODOT_set_step;
	/**
	
	*/
	void setStep(in double step)
	{
		_GODOT_set_step.bind("Range", "set_step");
		ptrcall!(void)(_GODOT_set_step, _godot_object, step);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_page;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_page") = _GODOT_set_page;
	/**
	
	*/
	void setPage(in double pagesize)
	{
		_GODOT_set_page.bind("Range", "set_page");
		ptrcall!(void)(_GODOT_set_page, _godot_object, pagesize);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_as_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_as_ratio") = _GODOT_set_as_ratio;
	/**
	
	*/
	void setAsRatio(in double value)
	{
		_GODOT_set_as_ratio.bind("Range", "set_as_ratio");
		ptrcall!(void)(_GODOT_set_as_ratio, _godot_object, value);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_rounded_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_rounded_values") = _GODOT_set_use_rounded_values;
	/**
	
	*/
	void setUseRoundedValues(in bool enabled)
	{
		_GODOT_set_use_rounded_values.bind("Range", "set_use_rounded_values");
		ptrcall!(void)(_GODOT_set_use_rounded_values, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_rounded_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_rounded_values") = _GODOT_is_using_rounded_values;
	/**
	
	*/
	bool isUsingRoundedValues() const
	{
		_GODOT_is_using_rounded_values.bind("Range", "is_using_rounded_values");
		return ptrcall!(bool)(_GODOT_is_using_rounded_values, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exp_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exp_ratio") = _GODOT_set_exp_ratio;
	/**
	
	*/
	void setExpRatio(in bool enabled)
	{
		_GODOT_set_exp_ratio.bind("Range", "set_exp_ratio");
		ptrcall!(void)(_GODOT_set_exp_ratio, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_ratio_exp;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_ratio_exp") = _GODOT_is_ratio_exp;
	/**
	
	*/
	bool isRatioExp() const
	{
		_GODOT_is_ratio_exp.bind("Range", "is_ratio_exp");
		return ptrcall!(bool)(_GODOT_is_ratio_exp, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_share;
	package(godot) alias _GODOT_methodBindInfo(string name : "share") = _GODOT_share;
	/**
	Binds two Ranges together along with any Ranges previously grouped with either of them. When any of Range's member variables change, it will share the new value with all other Ranges in its group.
	*/
	void share(GodotObject _with)
	{
		_GODOT_share.bind("Range", "share");
		ptrcall!(void)(_GODOT_share, _godot_object, _with);
	}
	package(godot) static GodotMethod!(void) _GODOT_unshare;
	package(godot) alias _GODOT_methodBindInfo(string name : "unshare") = _GODOT_unshare;
	/**
	Stop Range from sharing its member variables with any other Range.
	*/
	void unshare()
	{
		_GODOT_unshare.bind("Range", "unshare");
		ptrcall!(void)(_GODOT_unshare, _godot_object);
	}
	/**
	Minimum value. Range is clamped if `value` is less than `min_value`. Default value: 0.
	*/
	@property double minValue()
	{
		return getMin();
	}
	/// ditto
	@property void minValue(double v)
	{
		setMin(v);
	}
	/**
	Maximum value. Range is clamped if `value` is greater than `max_value`. Default value: 100.
	*/
	@property double maxValue()
	{
		return getMax();
	}
	/// ditto
	@property void maxValue(double v)
	{
		setMax(v);
	}
	/**
	If greater than 0, `value` will always be rounded to a multiple of `step`. If `rounded` is also `true`, `value` will first be rounded to a multiple of `step` then rounded to the nearest integer.
	*/
	@property double step()
	{
		return getStep();
	}
	/// ditto
	@property void step(double v)
	{
		setStep(v);
	}
	/**
	Page size. Used mainly for $(D ScrollBar). ScrollBar's length is its size multiplied by `page` over the difference between `min_value` and `max_value`.
	*/
	@property double page()
	{
		return getPage();
	}
	/// ditto
	@property void page(double v)
	{
		setPage(v);
	}
	/**
	Range's current value.
	*/
	@property double value()
	{
		return getValue();
	}
	/// ditto
	@property void value(double v)
	{
		setValue(v);
	}
	/**
	The value mapped between 0 and 1.
	*/
	@property double ratio()
	{
		return getAsRatio();
	}
	/// ditto
	@property void ratio(double v)
	{
		setAsRatio(v);
	}
	/**
	If `true` and `min_value` is greater than 0, `value` will be represented exponentially rather than linearly.
	*/
	@property bool expEdit()
	{
		return isRatioExp();
	}
	/// ditto
	@property void expEdit(bool v)
	{
		setExpRatio(v);
	}
	/**
	If `true`, `value` will always be rounded to the nearest integer.
	*/
	@property bool rounded()
	{
		return isUsingRoundedValues();
	}
	/// ditto
	@property void rounded(bool v)
	{
		setUseRoundedValues(v);
	}
}
