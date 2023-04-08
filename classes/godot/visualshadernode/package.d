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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualShaderNode
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNode";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_default_input_values") GodotMethod!(Array) getDefaultInputValues;
		@GodotName("get_input_port_default_value") GodotMethod!(Variant, long) getInputPortDefaultValue;
		@GodotName("get_output_port_for_preview") GodotMethod!(long) getOutputPortForPreview;
		@GodotName("set_default_input_values") GodotMethod!(void, Array) setDefaultInputValues;
		@GodotName("set_input_port_default_value") GodotMethod!(void, long, Variant) setInputPortDefaultValue;
		@GodotName("set_output_port_for_preview") GodotMethod!(void, long) setOutputPortForPreview;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNode other) const
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
	/// Construct a new instance of VisualShaderNode.
	/// Note: use `memnew!VisualShaderNode` instead.
	static VisualShaderNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNode)(constructor());
	}
	/// 
	enum PortType : int
	{
		/** */
		portTypeScalar = 0,
		/** */
		portTypeVector = 1,
		/** */
		portTypeBoolean = 2,
		/** */
		portTypeTransform = 3,
		/** */
		portTypeSampler = 4,
		/** */
		portTypeMax = 5,
	}
	/// 
	enum Constants : int
	{
		portTypeScalar = 0,
		portTypeVector = 1,
		portTypeBoolean = 2,
		portTypeTransform = 3,
		portTypeSampler = 4,
		portTypeMax = 5,
	}
	/**
	
	*/
	Array getDefaultInputValues() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getDefaultInputValues, _godot_object);
	}
	/**
	
	*/
	Variant getInputPortDefaultValue(in long port) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getInputPortDefaultValue, _godot_object, port);
	}
	/**
	
	*/
	long getOutputPortForPreview() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOutputPortForPreview, _godot_object);
	}
	/**
	
	*/
	void setDefaultInputValues(in Array values)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultInputValues, _godot_object, values);
	}
	/**
	
	*/
	void setInputPortDefaultValue(VariantArg1)(in long port, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputPortDefaultValue, _godot_object, port, value);
	}
	/**
	
	*/
	void setOutputPortForPreview(in long port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutputPortForPreview, _godot_object, port);
	}
	/**
	
	*/
	@property Array defaultInputValues()
	{
		return getDefaultInputValues();
	}
	/// ditto
	@property void defaultInputValues(Array v)
	{
		setDefaultInputValues(v);
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
}
