/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodescalaruniform;
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
import godot.visualshadernodeuniform;
/**

*/
@GodotBaseClass struct VisualShaderNodeScalarUniform
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeScalarUniform";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNodeUniform _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_default_value") GodotMethod!(double) getDefaultValue;
		@GodotName("get_hint") GodotMethod!(VisualShaderNodeScalarUniform.Hint) getHint;
		@GodotName("get_max") GodotMethod!(double) getMax;
		@GodotName("get_min") GodotMethod!(double) getMin;
		@GodotName("get_step") GodotMethod!(double) getStep;
		@GodotName("is_default_value_enabled") GodotMethod!(bool) isDefaultValueEnabled;
		@GodotName("set_default_value") GodotMethod!(void, double) setDefaultValue;
		@GodotName("set_default_value_enabled") GodotMethod!(void, bool) setDefaultValueEnabled;
		@GodotName("set_hint") GodotMethod!(void, long) setHint;
		@GodotName("set_max") GodotMethod!(void, double) setMax;
		@GodotName("set_min") GodotMethod!(void, double) setMin;
		@GodotName("set_step") GodotMethod!(void, double) setStep;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeScalarUniform other) const
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
	/// Construct a new instance of VisualShaderNodeScalarUniform.
	/// Note: use `memnew!VisualShaderNodeScalarUniform` instead.
	static VisualShaderNodeScalarUniform _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeScalarUniform");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeScalarUniform)(constructor());
	}
	/// 
	enum Hint : int
	{
		/** */
		hintNone = 0,
		/** */
		hintRange = 1,
		/** */
		hintRangeStep = 2,
		/** */
		hintMax = 3,
	}
	/// 
	enum Constants : int
	{
		hintNone = 0,
		hintRange = 1,
		hintRangeStep = 2,
		hintMax = 3,
	}
	/**
	
	*/
	double getDefaultValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDefaultValue, _godot_object);
	}
	/**
	
	*/
	VisualShaderNodeScalarUniform.Hint getHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeScalarUniform.Hint)(GDNativeClassBinding.getHint, _godot_object);
	}
	/**
	
	*/
	double getMax() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMax, _godot_object);
	}
	/**
	
	*/
	double getMin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMin, _godot_object);
	}
	/**
	
	*/
	double getStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getStep, _godot_object);
	}
	/**
	
	*/
	bool isDefaultValueEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDefaultValueEnabled, _godot_object);
	}
	/**
	
	*/
	void setDefaultValue(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultValue, _godot_object, value);
	}
	/**
	
	*/
	void setDefaultValueEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultValueEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setHint(in long hint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHint, _godot_object, hint);
	}
	/**
	
	*/
	void setMax(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMax, _godot_object, value);
	}
	/**
	
	*/
	void setMin(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMin, _godot_object, value);
	}
	/**
	
	*/
	void setStep(in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStep, _godot_object, value);
	}
	/**
	
	*/
	@property double defaultValue()
	{
		return getDefaultValue();
	}
	/// ditto
	@property void defaultValue(double v)
	{
		setDefaultValue(v);
	}
	/**
	
	*/
	@property bool defaultValueEnabled()
	{
		return isDefaultValueEnabled();
	}
	/// ditto
	@property void defaultValueEnabled(bool v)
	{
		setDefaultValueEnabled(v);
	}
	/**
	
	*/
	@property VisualShaderNodeScalarUniform.Hint hint()
	{
		return getHint();
	}
	/// ditto
	@property void hint(long v)
	{
		setHint(v);
	}
	/**
	
	*/
	@property double max()
	{
		return getMax();
	}
	/// ditto
	@property void max(double v)
	{
		setMax(v);
	}
	/**
	
	*/
	@property double min()
	{
		return getMin();
	}
	/// ditto
	@property void min(double v)
	{
		setMin(v);
	}
	/**
	
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
}
