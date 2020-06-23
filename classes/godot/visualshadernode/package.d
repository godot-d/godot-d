/**
Base class for nodes in a visual shader graph.

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
Base class for nodes in a visual shader graph.
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
	pragma(inline, true) VisualShaderNode opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
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
	@disable new(size_t s);
	/// 
	enum PortType : int
	{
		/**
		Floating-point scalar. Translated to `float` type in shader code.
		*/
		portTypeScalar = 0,
		/**
		3D vector of floating-point values. Translated to `vec3` type in shader code.
		*/
		portTypeVector = 1,
		/**
		Boolean type. Translated to `bool` type in shader code.
		*/
		portTypeBoolean = 2,
		/**
		Transform type. Translated to `mat4` type in shader code.
		*/
		portTypeTransform = 3,
		/**
		Sampler type. Translated to reference of sampler uniform in shader code. Can only be used for input ports in non-uniform nodes.
		*/
		portTypeSampler = 4,
		/**
		Represents the size of the $(D porttype) enum.
		*/
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
	Returns an $(D Array) containing default values for all of the input ports of the node in the form `$(D index0, value0, index1, value1, ...)`.
	*/
	Array getDefaultInputValues() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getDefaultInputValues, _godot_object);
	}
	/**
	Returns the default value of the input `port`.
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
	Sets the default input ports values using an $(D Array) of the form `$(D index0, value0, index1, value1, ...)`. For example: `$(D 0, Vector3(0, 0, 0), 1, Vector3(0, 0, 0))`.
	*/
	void setDefaultInputValues(in Array values)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultInputValues, _godot_object, values);
	}
	/**
	Sets the default value for the selected input `port`.
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
	Sets the output port index which will be showed for preview. If set to `-1` no port will be open for preview.
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
