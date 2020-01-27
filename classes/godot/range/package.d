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
import godot.canvasitem;
import godot.node;
/**
Abstract base class for range-based controls.

Range is a base class for $(D Control) nodes that change a floating-point $(I value) between a $(I minimum) and a $(I maximum), using $(I step) and $(I page), for example a $(D ScrollBar).
*/
@GodotBaseClass struct Range
{
	enum string _GODOT_internal_name = "Range";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_as_ratio") GodotMethod!(double) getAsRatio;
		@GodotName("get_max") GodotMethod!(double) getMax;
		@GodotName("get_min") GodotMethod!(double) getMin;
		@GodotName("get_page") GodotMethod!(double) getPage;
		@GodotName("get_step") GodotMethod!(double) getStep;
		@GodotName("get_value") GodotMethod!(double) getValue;
		@GodotName("is_greater_allowed") GodotMethod!(bool) isGreaterAllowed;
		@GodotName("is_lesser_allowed") GodotMethod!(bool) isLesserAllowed;
		@GodotName("is_ratio_exp") GodotMethod!(bool) isRatioExp;
		@GodotName("is_using_rounded_values") GodotMethod!(bool) isUsingRoundedValues;
		@GodotName("set_allow_greater") GodotMethod!(void, bool) setAllowGreater;
		@GodotName("set_allow_lesser") GodotMethod!(void, bool) setAllowLesser;
		@GodotName("set_as_ratio") GodotMethod!(void, double) setAsRatio;
		@GodotName("set_exp_ratio") GodotMethod!(void, bool) setExpRatio;
		@GodotName("set_max") GodotMethod!(void, double) setMax;
		@GodotName("set_min") GodotMethod!(void, double) setMin;
		@GodotName("set_page") GodotMethod!(void, double) setPage;
		@GodotName("set_step") GodotMethod!(void, double) setStep;
		@GodotName("set_use_rounded_values") GodotMethod!(void, bool) setUseRoundedValues;
		@GodotName("set_value") GodotMethod!(void, double) setValue;
		@GodotName("share") GodotMethod!(void, Node) share;
		@GodotName("unshare") GodotMethod!(void) unshare;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	double getAsRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAsRatio, _godot_object);
	}
	/**
	
	*/
	double getMax() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMax, _godot_object);
	}
	/**
	
	*/
	double getMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getMin, _godot_object);
	}
	/**
	
	*/
	double getPage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPage, _godot_object);
	}
	/**
	
	*/
	double getStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getStep, _godot_object);
	}
	/**
	
	*/
	double getValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getValue, _godot_object);
	}
	/**
	
	*/
	bool isGreaterAllowed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isGreaterAllowed, _godot_object);
	}
	/**
	
	*/
	bool isLesserAllowed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isLesserAllowed, _godot_object);
	}
	/**
	
	*/
	bool isRatioExp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRatioExp, _godot_object);
	}
	/**
	
	*/
	bool isUsingRoundedValues() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingRoundedValues, _godot_object);
	}
	/**
	
	*/
	void setAllowGreater(in bool allow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAllowGreater, _godot_object, allow);
	}
	/**
	
	*/
	void setAllowLesser(in bool allow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAllowLesser, _godot_object, allow);
	}
	/**
	
	*/
	void setAsRatio(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAsRatio, _godot_object, value);
	}
	/**
	
	*/
	void setExpRatio(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExpRatio, _godot_object, enabled);
	}
	/**
	
	*/
	void setMax(in double maximum)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMax, _godot_object, maximum);
	}
	/**
	
	*/
	void setMin(in double minimum)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMin, _godot_object, minimum);
	}
	/**
	
	*/
	void setPage(in double pagesize)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPage, _godot_object, pagesize);
	}
	/**
	
	*/
	void setStep(in double step)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStep, _godot_object, step);
	}
	/**
	
	*/
	void setUseRoundedValues(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseRoundedValues, _godot_object, enabled);
	}
	/**
	
	*/
	void setValue(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setValue, _godot_object, value);
	}
	/**
	Binds two ranges together along with any ranges previously grouped with either of them. When any of range's member variables change, it will share the new value with all other ranges in its group.
	*/
	void share(Node _with)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.share, _godot_object, _with);
	}
	/**
	Stops range from sharing its member variables with any other.
	*/
	void unshare()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unshare, _godot_object);
	}
	/**
	If `true`, $(D value) may be greater than $(D maxValue).
	*/
	@property bool allowGreater()
	{
		return isGreaterAllowed();
	}
	/// ditto
	@property void allowGreater(bool v)
	{
		setAllowGreater(v);
	}
	/**
	If `true`, $(D value) may be less than $(D minValue).
	*/
	@property bool allowLesser()
	{
		return isLesserAllowed();
	}
	/// ditto
	@property void allowLesser(bool v)
	{
		setAllowLesser(v);
	}
	/**
	If `true`, and `min_value` is greater than 0, `value` will be represented exponentially rather than linearly.
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
	Maximum value. Range is clamped if `value` is greater than `max_value`.
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
	Minimum value. Range is clamped if `value` is less than `min_value`.
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
}
