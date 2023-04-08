/**


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
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**

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
	/**
	
	*/
	String _getCategory()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_category");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
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
	
	*/
	String _getDescription()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_description");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	String _getGlobalCode(in long mode)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(mode);
		String _GODOT_method_name = String("_get_global_code");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long _getInputPortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_input_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	String _getInputPortName(in long port)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(port);
		String _GODOT_method_name = String("_get_input_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long _getInputPortType(in long port)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(port);
		String _GODOT_method_name = String("_get_input_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	String _getName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long _getOutputPortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_output_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	String _getOutputPortName(in long port)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(port);
		String _GODOT_method_name = String("_get_output_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long _getOutputPortType(in long port)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(port);
		String _GODOT_method_name = String("_get_output_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	long _getReturnIconType()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_return_icon_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
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
