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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
import godot.control;
/**

*/
@GodotBaseClass struct VisualShaderNodeGroupBase
{
	enum string _GODOT_internal_name = "VisualShaderNodeGroupBase";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_input_port") GodotMethod!(void, long, long, String) addInputPort;
		@GodotName("add_output_port") GodotMethod!(void, long, long, String) addOutputPort;
		@GodotName("clear_input_ports") GodotMethod!(void) clearInputPorts;
		@GodotName("clear_output_ports") GodotMethod!(void) clearOutputPorts;
		@GodotName("get_control") GodotMethod!(Control, long) getControl;
		@GodotName("get_free_input_port_id") GodotMethod!(long) getFreeInputPortId;
		@GodotName("get_free_output_port_id") GodotMethod!(long) getFreeOutputPortId;
		@GodotName("get_input_port_count") GodotMethod!(long) getInputPortCount;
		@GodotName("get_inputs") GodotMethod!(String) getInputs;
		@GodotName("get_output_port_count") GodotMethod!(long) getOutputPortCount;
		@GodotName("get_outputs") GodotMethod!(String) getOutputs;
		@GodotName("get_size") GodotMethod!(Vector2) getSize;
		@GodotName("has_input_port") GodotMethod!(bool, long) hasInputPort;
		@GodotName("has_output_port") GodotMethod!(bool, long) hasOutputPort;
		@GodotName("is_editable") GodotMethod!(bool) isEditable;
		@GodotName("is_valid_port_name") GodotMethod!(bool, String) isValidPortName;
		@GodotName("remove_input_port") GodotMethod!(void, long) removeInputPort;
		@GodotName("remove_output_port") GodotMethod!(void, long) removeOutputPort;
		@GodotName("set_control") GodotMethod!(void, Control, long) setControl;
		@GodotName("set_editable") GodotMethod!(void, bool) setEditable;
		@GodotName("set_input_port_name") GodotMethod!(void, long, String) setInputPortName;
		@GodotName("set_input_port_type") GodotMethod!(void, long, long) setInputPortType;
		@GodotName("set_inputs") GodotMethod!(void, String) setInputs;
		@GodotName("set_output_port_name") GodotMethod!(void, long, String) setOutputPortName;
		@GodotName("set_output_port_type") GodotMethod!(void, long, long) setOutputPortType;
		@GodotName("set_outputs") GodotMethod!(void, String) setOutputs;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
	}
	bool opEquals(in VisualShaderNodeGroupBase other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeGroupBase opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		ptrcall!(void)(_classBinding.addInputPort, _godot_object, id, type, name);
	}
	/**
	
	*/
	void addOutputPort(in long id, in long type, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addOutputPort, _godot_object, id, type, name);
	}
	/**
	
	*/
	void clearInputPorts()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearInputPorts, _godot_object);
	}
	/**
	
	*/
	void clearOutputPorts()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearOutputPorts, _godot_object);
	}
	/**
	
	*/
	Control getControl(in long index)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Control)(_classBinding.getControl, _godot_object, index);
	}
	/**
	
	*/
	long getFreeInputPortId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFreeInputPortId, _godot_object);
	}
	/**
	
	*/
	long getFreeOutputPortId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFreeOutputPortId, _godot_object);
	}
	/**
	
	*/
	long getInputPortCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getInputPortCount, _godot_object);
	}
	/**
	
	*/
	String getInputs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getInputs, _godot_object);
	}
	/**
	
	*/
	long getOutputPortCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getOutputPortCount, _godot_object);
	}
	/**
	
	*/
	String getOutputs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getOutputs, _godot_object);
	}
	/**
	
	*/
	Vector2 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSize, _godot_object);
	}
	/**
	
	*/
	bool hasInputPort(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasInputPort, _godot_object, id);
	}
	/**
	
	*/
	bool hasOutputPort(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasOutputPort, _godot_object, id);
	}
	/**
	
	*/
	bool isEditable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEditable, _godot_object);
	}
	/**
	
	*/
	bool isValidPortName(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isValidPortName, _godot_object, name);
	}
	/**
	
	*/
	void removeInputPort(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeInputPort, _godot_object, id);
	}
	/**
	
	*/
	void removeOutputPort(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeOutputPort, _godot_object, id);
	}
	/**
	
	*/
	void setControl(Control control, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setControl, _godot_object, control, index);
	}
	/**
	
	*/
	void setEditable(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEditable, _godot_object, enabled);
	}
	/**
	
	*/
	void setInputPortName(in long id, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputPortName, _godot_object, id, name);
	}
	/**
	
	*/
	void setInputPortType(in long id, in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputPortType, _godot_object, id, type);
	}
	/**
	
	*/
	void setInputs(in String inputs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputs, _godot_object, inputs);
	}
	/**
	
	*/
	void setOutputPortName(in long id, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOutputPortName, _godot_object, id, name);
	}
	/**
	
	*/
	void setOutputPortType(in long id, in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOutputPortType, _godot_object, id, type);
	}
	/**
	
	*/
	void setOutputs(in String outputs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOutputs, _godot_object, outputs);
	}
	/**
	
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	@property bool editable()
	{
		return isEditable();
	}
	/// ditto
	@property void editable(bool v)
	{
		setEditable(v);
	}
}
