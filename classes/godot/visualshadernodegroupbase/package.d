/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodegroupbase;
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
@GodotBaseClass struct VisualShaderNodeGroupBase
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeGroupBase";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_input_port") GodotMethod!(void, long, long, String) addInputPort;
		@GodotName("add_output_port") GodotMethod!(void, long, long, String) addOutputPort;
		@GodotName("clear_input_ports") GodotMethod!(void) clearInputPorts;
		@GodotName("clear_output_ports") GodotMethod!(void) clearOutputPorts;
		@GodotName("get_free_input_port_id") GodotMethod!(long) getFreeInputPortId;
		@GodotName("get_free_output_port_id") GodotMethod!(long) getFreeOutputPortId;
		@GodotName("get_input_port_count") GodotMethod!(long) getInputPortCount;
		@GodotName("get_inputs") GodotMethod!(String) getInputs;
		@GodotName("get_output_port_count") GodotMethod!(long) getOutputPortCount;
		@GodotName("get_outputs") GodotMethod!(String) getOutputs;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("has_input_port") GodotMethod!(bool, long) hasInputPort;
		@GodotName("has_output_port") GodotMethod!(bool, long) hasOutputPort;
		@GodotName("is_valid_port_name") GodotMethod!(bool, String) isValidPortName;
		@GodotName("remove_input_port") GodotMethod!(void, long) removeInputPort;
		@GodotName("remove_output_port") GodotMethod!(void, long) removeOutputPort;
		@GodotName("set_input_port_name") GodotMethod!(void, long, String) setInputPortName;
		@GodotName("set_input_port_type") GodotMethod!(void, long, long) setInputPortType;
		@GodotName("set_inputs") GodotMethod!(void, String) setInputs;
		@GodotName("set_output_port_name") GodotMethod!(void, long, String) setOutputPortName;
		@GodotName("set_output_port_type") GodotMethod!(void, long, long) setOutputPortType;
		@GodotName("set_outputs") GodotMethod!(void, String) setOutputs;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeGroupBase other) const
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
	/// Construct a new instance of VisualShaderNodeGroupBase.
	/// Note: use `memnew!VisualShaderNodeGroupBase` instead.
	static VisualShaderNodeGroupBase _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeGroupBase");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeGroupBase)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void addInputPort(in long id, in long type, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addInputPort, _godot_object, id, type, name);
	}
	/**
	
	*/
	void addOutputPort(in long id, in long type, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addOutputPort, _godot_object, id, type, name);
	}
	/**
	
	*/
	void clearInputPorts()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearInputPorts, _godot_object);
	}
	/**
	
	*/
	void clearOutputPorts()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearOutputPorts, _godot_object);
	}
	/**
	
	*/
	long getFreeInputPortId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFreeInputPortId, _godot_object);
	}
	/**
	
	*/
	long getFreeOutputPortId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFreeOutputPortId, _godot_object);
	}
	/**
	
	*/
	long getInputPortCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getInputPortCount, _godot_object);
	}
	/**
	
	*/
	String getInputs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getInputs, _godot_object);
	}
	/**
	
	*/
	long getOutputPortCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOutputPortCount, _godot_object);
	}
	/**
	
	*/
	String getOutputs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getOutputs, _godot_object);
	}
	/**
	
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	
	*/
	bool hasInputPort(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasInputPort, _godot_object, id);
	}
	/**
	
	*/
	bool hasOutputPort(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasOutputPort, _godot_object, id);
	}
	/**
	
	*/
	bool isValidPortName(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isValidPortName, _godot_object, name);
	}
	/**
	
	*/
	void removeInputPort(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeInputPort, _godot_object, id);
	}
	/**
	
	*/
	void removeOutputPort(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeOutputPort, _godot_object, id);
	}
	/**
	
	*/
	void setInputPortName(in long id, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputPortName, _godot_object, id, name);
	}
	/**
	
	*/
	void setInputPortType(in long id, in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputPortType, _godot_object, id, type);
	}
	/**
	
	*/
	void setInputs(in String inputs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputs, _godot_object, inputs);
	}
	/**
	
	*/
	void setOutputPortName(in long id, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutputPortName, _godot_object, id, name);
	}
	/**
	
	*/
	void setOutputPortType(in long id, in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutputPortType, _godot_object, id, type);
	}
	/**
	
	*/
	void setOutputs(in String outputs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutputs, _godot_object, outputs);
	}
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	@property Vector2 size()
	{
		return getSize();
	}
	/// ditto
	@property void size(Vector2 v)
	{
		setSize(v);
	}
}
