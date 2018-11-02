/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernode;
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

*/
@GodotBaseClass struct VisualShaderNode
{
	enum string _GODOT_internal_name = "VisualShaderNode";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_output_port_for_preview") GodotMethod!(void, long) setOutputPortForPreview;
		@GodotName("get_output_port_for_preview") GodotMethod!(long) getOutputPortForPreview;
		@GodotName("set_input_port_default_value") GodotMethod!(void, long, Variant) setInputPortDefaultValue;
		@GodotName("get_input_port_default_value") GodotMethod!(Variant, long) getInputPortDefaultValue;
		@GodotName("_set_default_input_values") GodotMethod!(void, Array) _setDefaultInputValues;
		@GodotName("_get_default_input_values") GodotMethod!(Array) _getDefaultInputValues;
	}
	bool opEquals(in VisualShaderNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNode)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setOutputPortForPreview(in long port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOutputPortForPreview, _godot_object, port);
	}
	/**
	
	*/
	long getOutputPortForPreview() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOutputPortForPreview, _godot_object);
	}
	/**
	
	*/
	void setInputPortDefaultValue(VariantArg1)(in long port, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputPortDefaultValue, _godot_object, port, value);
	}
	/**
	
	*/
	Variant getInputPortDefaultValue(in long port) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getInputPortDefaultValue, _godot_object, port);
	}
	/**
	
	*/
	void _setDefaultInputValues(in Array values)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(values);
		String _GODOT_method_name = String("_set_default_input_values");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getDefaultInputValues() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_default_input_values");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	@property long outputPortForPreview()
	{
		return getOutputPortForPreview();
	}
	/// ditto
	@property void outputPortForPreview(long v)
	{
		setOutputPortForPreview(v);
	}
	/**
	
	*/
	@property Array defaultInputValues()
	{
		return _getDefaultInputValues();
	}
	/// ditto
	@property void defaultInputValues(Array v)
	{
		_setDefaultInputValues(v);
	}
}
