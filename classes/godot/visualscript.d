/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscript;
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
import godot.script;
import godot.resource;
import godot.reference;
import godot.visualscriptnode;
/**

*/
@GodotBaseClass struct VisualScript
{
	package(godot) enum string _GODOT_internal_name = "VisualScript";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Script _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_data") GodotMethod!(Dictionary) _getData;
		@GodotName("_node_ports_changed") GodotMethod!(void, long) _nodePortsChanged;
		@GodotName("_set_data") GodotMethod!(void, Dictionary) _setData;
		@GodotName("add_custom_signal") GodotMethod!(void, String) addCustomSignal;
		@GodotName("add_function") GodotMethod!(void, String) addFunction;
		@GodotName("add_node") GodotMethod!(void, String, long, VisualScriptNode, Vector2) addNode;
		@GodotName("add_variable") GodotMethod!(void, String, Variant, bool) addVariable;
		@GodotName("custom_signal_add_argument") GodotMethod!(void, String, long, String, long) customSignalAddArgument;
		@GodotName("custom_signal_get_argument_count") GodotMethod!(long, String) customSignalGetArgumentCount;
		@GodotName("custom_signal_get_argument_name") GodotMethod!(String, String, long) customSignalGetArgumentName;
		@GodotName("custom_signal_get_argument_type") GodotMethod!(Variant.Type, String, long) customSignalGetArgumentType;
		@GodotName("custom_signal_remove_argument") GodotMethod!(void, String, long) customSignalRemoveArgument;
		@GodotName("custom_signal_set_argument_name") GodotMethod!(void, String, long, String) customSignalSetArgumentName;
		@GodotName("custom_signal_set_argument_type") GodotMethod!(void, String, long, long) customSignalSetArgumentType;
		@GodotName("custom_signal_swap_argument") GodotMethod!(void, String, long, long) customSignalSwapArgument;
		@GodotName("data_connect") GodotMethod!(void, String, long, long, long, long) dataConnect;
		@GodotName("data_disconnect") GodotMethod!(void, String, long, long, long, long) dataDisconnect;
		@GodotName("get_function_node_id") GodotMethod!(long, String) getFunctionNodeId;
		@GodotName("get_function_scroll") GodotMethod!(Vector2, String) getFunctionScroll;
		@GodotName("get_node") GodotMethod!(VisualScriptNode, String, long) getNode;
		@GodotName("get_node_position") GodotMethod!(Vector2, String, long) getNodePosition;
		@GodotName("get_variable_default_value") GodotMethod!(Variant, String) getVariableDefaultValue;
		@GodotName("get_variable_export") GodotMethod!(bool, String) getVariableExport;
		@GodotName("get_variable_info") GodotMethod!(Dictionary, String) getVariableInfo;
		@GodotName("has_custom_signal") GodotMethod!(bool, String) hasCustomSignal;
		@GodotName("has_data_connection") GodotMethod!(bool, String, long, long, long, long) hasDataConnection;
		@GodotName("has_function") GodotMethod!(bool, String) hasFunction;
		@GodotName("has_node") GodotMethod!(bool, String, long) hasNode;
		@GodotName("has_sequence_connection") GodotMethod!(bool, String, long, long, long) hasSequenceConnection;
		@GodotName("has_variable") GodotMethod!(bool, String) hasVariable;
		@GodotName("remove_custom_signal") GodotMethod!(void, String) removeCustomSignal;
		@GodotName("remove_function") GodotMethod!(void, String) removeFunction;
		@GodotName("remove_node") GodotMethod!(void, String, long) removeNode;
		@GodotName("remove_variable") GodotMethod!(void, String) removeVariable;
		@GodotName("rename_custom_signal") GodotMethod!(void, String, String) renameCustomSignal;
		@GodotName("rename_function") GodotMethod!(void, String, String) renameFunction;
		@GodotName("rename_variable") GodotMethod!(void, String, String) renameVariable;
		@GodotName("sequence_connect") GodotMethod!(void, String, long, long, long) sequenceConnect;
		@GodotName("sequence_disconnect") GodotMethod!(void, String, long, long, long) sequenceDisconnect;
		@GodotName("set_function_scroll") GodotMethod!(void, String, Vector2) setFunctionScroll;
		@GodotName("set_instance_base_type") GodotMethod!(void, String) setInstanceBaseType;
		@GodotName("set_node_position") GodotMethod!(void, String, long, Vector2) setNodePosition;
		@GodotName("set_variable_default_value") GodotMethod!(void, String, Variant) setVariableDefaultValue;
		@GodotName("set_variable_export") GodotMethod!(void, String, bool) setVariableExport;
		@GodotName("set_variable_info") GodotMethod!(void, String, Dictionary) setVariableInfo;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScript other) const
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
	/// Construct a new instance of VisualScript.
	/// Note: use `memnew!VisualScript` instead.
	static VisualScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScript");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScript)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	void _nodePortsChanged(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_ports_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setData(in Dictionary data)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addCustomSignal(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCustomSignal, _godot_object, name);
	}
	/**
	
	*/
	void addFunction(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addFunction, _godot_object, name);
	}
	/**
	
	*/
	void addNode(in String func, in long id, VisualScriptNode node, in Vector2 position = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addNode, _godot_object, func, id, node, position);
	}
	/**
	
	*/
	void addVariable(VariantArg1)(in String name, in VariantArg1 default_value = Variant.nil, in bool _export = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addVariable, _godot_object, name, default_value, _export);
	}
	/**
	
	*/
	void customSignalAddArgument(in String name, in long type, in String argname, in long index = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.customSignalAddArgument, _godot_object, name, type, argname, index);
	}
	/**
	
	*/
	long customSignalGetArgumentCount(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.customSignalGetArgumentCount, _godot_object, name);
	}
	/**
	
	*/
	String customSignalGetArgumentName(in String name, in long argidx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.customSignalGetArgumentName, _godot_object, name, argidx);
	}
	/**
	
	*/
	Variant.Type customSignalGetArgumentType(in String name, in long argidx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(GDNativeClassBinding.customSignalGetArgumentType, _godot_object, name, argidx);
	}
	/**
	
	*/
	void customSignalRemoveArgument(in String name, in long argidx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.customSignalRemoveArgument, _godot_object, name, argidx);
	}
	/**
	
	*/
	void customSignalSetArgumentName(in String name, in long argidx, in String argname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.customSignalSetArgumentName, _godot_object, name, argidx, argname);
	}
	/**
	
	*/
	void customSignalSetArgumentType(in String name, in long argidx, in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.customSignalSetArgumentType, _godot_object, name, argidx, type);
	}
	/**
	
	*/
	void customSignalSwapArgument(in String name, in long argidx, in long withidx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.customSignalSwapArgument, _godot_object, name, argidx, withidx);
	}
	/**
	
	*/
	void dataConnect(in String func, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dataConnect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	/**
	
	*/
	void dataDisconnect(in String func, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dataDisconnect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	/**
	
	*/
	long getFunctionNodeId(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFunctionNodeId, _godot_object, name);
	}
	/**
	
	*/
	Vector2 getFunctionScroll(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getFunctionScroll, _godot_object, name);
	}
	/**
	
	*/
	Ref!VisualScriptNode getNode(in String func, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptNode)(GDNativeClassBinding.getNode, _godot_object, func, id);
	}
	/**
	
	*/
	Vector2 getNodePosition(in String func, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getNodePosition, _godot_object, func, id);
	}
	/**
	
	*/
	Variant getVariableDefaultValue(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getVariableDefaultValue, _godot_object, name);
	}
	/**
	
	*/
	bool getVariableExport(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getVariableExport, _godot_object, name);
	}
	/**
	
	*/
	Dictionary getVariableInfo(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getVariableInfo, _godot_object, name);
	}
	/**
	
	*/
	bool hasCustomSignal(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasCustomSignal, _godot_object, name);
	}
	/**
	
	*/
	bool hasDataConnection(in String func, in long from_node, in long from_port, in long to_node, in long to_port) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasDataConnection, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	/**
	
	*/
	bool hasFunction(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFunction, _godot_object, name);
	}
	/**
	
	*/
	bool hasNode(in String func, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasNode, _godot_object, func, id);
	}
	/**
	
	*/
	bool hasSequenceConnection(in String func, in long from_node, in long from_output, in long to_node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSequenceConnection, _godot_object, func, from_node, from_output, to_node);
	}
	/**
	
	*/
	bool hasVariable(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasVariable, _godot_object, name);
	}
	/**
	
	*/
	void removeCustomSignal(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeCustomSignal, _godot_object, name);
	}
	/**
	
	*/
	void removeFunction(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeFunction, _godot_object, name);
	}
	/**
	
	*/
	void removeNode(in String func, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeNode, _godot_object, func, id);
	}
	/**
	
	*/
	void removeVariable(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeVariable, _godot_object, name);
	}
	/**
	
	*/
	void renameCustomSignal(in String name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameCustomSignal, _godot_object, name, new_name);
	}
	/**
	
	*/
	void renameFunction(in String name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameFunction, _godot_object, name, new_name);
	}
	/**
	
	*/
	void renameVariable(in String name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameVariable, _godot_object, name, new_name);
	}
	/**
	
	*/
	void sequenceConnect(in String func, in long from_node, in long from_output, in long to_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.sequenceConnect, _godot_object, func, from_node, from_output, to_node);
	}
	/**
	
	*/
	void sequenceDisconnect(in String func, in long from_node, in long from_output, in long to_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.sequenceDisconnect, _godot_object, func, from_node, from_output, to_node);
	}
	/**
	
	*/
	void setFunctionScroll(in String name, in Vector2 ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFunctionScroll, _godot_object, name, ofs);
	}
	/**
	
	*/
	void setInstanceBaseType(in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInstanceBaseType, _godot_object, type);
	}
	/**
	
	*/
	void setNodePosition(in String func, in long id, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNodePosition, _godot_object, func, id, position);
	}
	/**
	
	*/
	void setVariableDefaultValue(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVariableDefaultValue, _godot_object, name, value);
	}
	/**
	
	*/
	void setVariableExport(in String name, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVariableExport, _godot_object, name, enable);
	}
	/**
	
	*/
	void setVariableInfo(in String name, in Dictionary value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVariableInfo, _godot_object, name, value);
	}
	/**
	
	*/
	@property Dictionary data()
	{
		return _getData();
	}
	/// ditto
	@property void data(Dictionary v)
	{
		_setData(v);
	}
}
