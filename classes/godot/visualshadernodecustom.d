/**
Virtual class to define custom $(D VisualShaderNode)s for use in the Visual Shader Editor.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecustom;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
Virtual class to define custom $(D VisualShaderNode)s for use in the Visual Shader Editor.

By inheriting this class you can create a custom $(D VisualShader) script addon which will be automatically added to the Visual Shader Editor. The $(D VisualShaderNode)'s behavior is defined by overriding the provided virtual methods.
In order for the node to be registered as an editor addon, you must use the `tool` keyword and provide a `class_name` for your custom script. For example:


tool
extends VisualShaderNodeCustom
class_name VisualShaderNodeNoise


*/
@GodotBaseClass struct VisualShaderNodeCustom
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeCustom";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_category") GodotMethod!(String) _getCategory;
		@GodotName("_get_code") GodotMethod!(String, Array, Array, long, long) _getCode;
		@GodotName("_get_description") GodotMethod!(String) _getDescription;
		@GodotName("_get_global_code") GodotMethod!(String, long) _getGlobalCode;
		@GodotName("_get_input_port_count") GodotMethod!(long) _getInputPortCount;
		@GodotName("_get_input_port_name") GodotMethod!(String, long) _getInputPortName;
		@GodotName("_get_input_port_type") GodotMethod!(long, long) _getInputPortType;
		@GodotName("_get_name") GodotMethod!(String) _getName;
		@GodotName("_get_output_port_count") GodotMethod!(long) _getOutputPortCount;
		@GodotName("_get_output_port_name") GodotMethod!(String, long) _getOutputPortName;
		@GodotName("_get_output_port_type") GodotMethod!(long, long) _getOutputPortType;
		@GodotName("_get_return_icon_type") GodotMethod!(long) _getReturnIconType;
		@GodotName("_get_subcategory") GodotMethod!(String) _getSubcategory;
		@GodotName("_is_initialized") GodotMethod!(bool) _isInitialized;
		@GodotName("_set_initialized") GodotMethod!(void, bool) _setInitialized;
		@GodotName("_set_input_port_default_value") GodotMethod!(void, long, Variant) _setInputPortDefaultValue;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeCustom other) const
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
	/// Construct a new instance of VisualShaderNodeCustom.
	/// Note: use `memnew!VisualShaderNodeCustom` instead.
	static VisualShaderNodeCustom _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeCustom");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeCustom)(constructor());
	}
	@disable new(size_t s);
	/**
	Override this method to define the category of the associated custom node in the Visual Shader Editor's members dialog. The path may look like `"MyGame/MyFunctions/Noise"`.
	Defining this method is $(B optional). If not overridden, the node will be filed under the "Custom" category.
	*/
	String _getCategory()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_category");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Override this method to define the actual shader code of the associated custom node. The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).
	The `input_vars` and `output_vars` arrays contain the string names of the various input and output variables, as defined by `_get_input_*` and `_get_output_*` virtual methods in this class.
	The output ports can be assigned values in the shader code. For example, `return output_vars$(D 0) + " = " + input_vars$(D 0) + ";"`.
	You can customize the generated code based on the shader `mode` (see $(D Shader.mode)) and/or `type` (see $(D VisualShader.type)).
	Defining this method is $(B required).
	*/
	String _getCode(in Array input_vars, in Array output_vars, in long mode, in long type)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(input_vars);
		_GODOT_args.append(output_vars);
		_GODOT_args.append(mode);
		_GODOT_args.append(type);
		String _GODOT_method_name = String("_get_code");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Override this method to define the description of the associated custom node in the Visual Shader Editor's members dialog.
	Defining this method is $(B optional).
	*/
	String _getDescription()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_description");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Override this method to add shader code on top of the global shader, to define your own standard library of reusable methods, varyings, constants, uniforms, etc. The shader code should be returned as a string, which can have multiple lines (the `"""` multiline string construct can be used for convenience).
	Be careful with this functionality as it can cause name conflicts with other custom nodes, so be sure to give the defined entities unique names.
	You can customize the generated code based on the shader `mode` (see $(D Shader.mode)).
	Defining this method is $(B optional).
	*/
	String _getGlobalCode(in long mode)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(mode);
		String _GODOT_method_name = String("_get_global_code");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Override this method to define the amount of input ports of the associated custom node.
	Defining this method is $(B required). If not overridden, the node has no input ports.
	*/
	long _getInputPortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_input_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Override this method to define the names of input ports of the associated custom node. The names are used both for the input slots in the editor and as identifiers in the shader code, and are passed in the `input_vars` array in $(D _getCode).
	Defining this method is $(B optional), but recommended. If not overridden, input ports are named as `"in" + str(port)`.
	*/
	String _getInputPortName(in long port)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(port);
		String _GODOT_method_name = String("_get_input_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Override this method to define the returned type of each input port of the associated custom node (see $(D VisualShaderNode.porttype) for possible types).
	Defining this method is $(B optional), but recommended. If not overridden, input ports will return the $(D constant VisualShaderNode.PORT_TYPE_SCALAR) type.
	*/
	long _getInputPortType(in long port)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(port);
		String _GODOT_method_name = String("_get_input_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Override this method to define the name of the associated custom node in the Visual Shader Editor's members dialog and graph.
	Defining this method is $(B optional), but recommended. If not overridden, the node will be named as "Unnamed".
	*/
	String _getName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Override this method to define the amount of output ports of the associated custom node.
	Defining this method is $(B required). If not overridden, the node has no output ports.
	*/
	long _getOutputPortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_output_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Override this method to define the names of output ports of the associated custom node. The names are used both for the output slots in the editor and as identifiers in the shader code, and are passed in the `output_vars` array in $(D _getCode).
	Defining this method is $(B optional), but recommended. If not overridden, output ports are named as `"out" + str(port)`.
	*/
	String _getOutputPortName(in long port)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(port);
		String _GODOT_method_name = String("_get_output_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Override this method to define the returned type of each output port of the associated custom node (see $(D VisualShaderNode.porttype) for possible types).
	Defining this method is $(B optional), but recommended. If not overridden, output ports will return the $(D constant VisualShaderNode.PORT_TYPE_SCALAR) type.
	*/
	long _getOutputPortType(in long port)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(port);
		String _GODOT_method_name = String("_get_output_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Override this method to define the return icon of the associated custom node in the Visual Shader Editor's members dialog.
	Defining this method is $(B optional). If not overridden, no return icon is shown.
	*/
	long _getReturnIconType()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_return_icon_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Override this method to define the subcategory of the associated custom node in the Visual Shader Editor's members dialog.
	Defining this method is $(B optional). If not overridden, the node will be filed under the root of the main category (see $(D _getCategory)).
	*/
	String _getSubcategory()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_subcategory");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	bool _isInitialized()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_is_initialized");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _setInitialized(in bool enabled)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(enabled);
		String _GODOT_method_name = String("_set_initialized");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setInputPortDefaultValue(VariantArg1)(in long port, in VariantArg1 value)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(port);
		_GODOT_args.append(value);
		String _GODOT_method_name = String("_set_input_port_default_value");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property bool initialized()
	{
		return _isInitialized();
	}
	/// ditto
	@property void initialized(bool v)
	{
		_setInitialized(v);
	}
}
