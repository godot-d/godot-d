/**
A script implemented in the Visual Script programming environment.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.script;
import godot.visualscriptnode;
import godot.resource;
import godot.reference;
/**
A script implemented in the Visual Script programming environment.

A script implemented in the  Visual Script programming environment. The script extends the functionality of all objects that instance it.
$(D GodotObject.setScript) extends an existing object, if that object's class matches one of the script's base classes.
You are most likely to use this class via the Visual Script editor or when writing plugins for it.
*/
@GodotBaseClass struct VisualScript
{
	enum string _GODOT_internal_name = "VisualScript";
public:
@nogc nothrow:
	union { godot_object _godot_object; Script _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_node_ports_changed") GodotMethod!(void, long) _nodePortsChanged;
		@GodotName("add_function") GodotMethod!(void, String) addFunction;
		@GodotName("has_function") GodotMethod!(bool, String) hasFunction;
		@GodotName("remove_function") GodotMethod!(void, String) removeFunction;
		@GodotName("rename_function") GodotMethod!(void, String, String) renameFunction;
		@GodotName("set_function_scroll") GodotMethod!(void, String, Vector2) setFunctionScroll;
		@GodotName("get_function_scroll") GodotMethod!(Vector2, String) getFunctionScroll;
		@GodotName("add_node") GodotMethod!(void, String, long, VisualScriptNode, Vector2) addNode;
		@GodotName("remove_node") GodotMethod!(void, String, long) removeNode;
		@GodotName("get_function_node_id") GodotMethod!(long, String) getFunctionNodeId;
		@GodotName("get_node") GodotMethod!(VisualScriptNode, String, long) getNode;
		@GodotName("has_node") GodotMethod!(bool, String, long) hasNode;
		@GodotName("set_node_position") GodotMethod!(void, String, long, Vector2) setNodePosition;
		@GodotName("get_node_position") GodotMethod!(Vector2, String, long) getNodePosition;
		@GodotName("sequence_connect") GodotMethod!(void, String, long, long, long) sequenceConnect;
		@GodotName("sequence_disconnect") GodotMethod!(void, String, long, long, long) sequenceDisconnect;
		@GodotName("has_sequence_connection") GodotMethod!(bool, String, long, long, long) hasSequenceConnection;
		@GodotName("data_connect") GodotMethod!(void, String, long, long, long, long) dataConnect;
		@GodotName("data_disconnect") GodotMethod!(void, String, long, long, long, long) dataDisconnect;
		@GodotName("has_data_connection") GodotMethod!(bool, String, long, long, long, long) hasDataConnection;
		@GodotName("add_variable") GodotMethod!(void, String, Variant, bool) addVariable;
		@GodotName("has_variable") GodotMethod!(bool, String) hasVariable;
		@GodotName("remove_variable") GodotMethod!(void, String) removeVariable;
		@GodotName("set_variable_default_value") GodotMethod!(void, String, Variant) setVariableDefaultValue;
		@GodotName("get_variable_default_value") GodotMethod!(Variant, String) getVariableDefaultValue;
		@GodotName("set_variable_info") GodotMethod!(void, String, Dictionary) setVariableInfo;
		@GodotName("get_variable_info") GodotMethod!(Dictionary, String) getVariableInfo;
		@GodotName("set_variable_export") GodotMethod!(void, String, bool) setVariableExport;
		@GodotName("get_variable_export") GodotMethod!(bool, String) getVariableExport;
		@GodotName("rename_variable") GodotMethod!(void, String, String) renameVariable;
		@GodotName("add_custom_signal") GodotMethod!(void, String) addCustomSignal;
		@GodotName("has_custom_signal") GodotMethod!(bool, String) hasCustomSignal;
		@GodotName("custom_signal_add_argument") GodotMethod!(void, String, long, String, long) customSignalAddArgument;
		@GodotName("custom_signal_set_argument_type") GodotMethod!(void, String, long, long) customSignalSetArgumentType;
		@GodotName("custom_signal_get_argument_type") GodotMethod!(Variant.Type, String, long) customSignalGetArgumentType;
		@GodotName("custom_signal_set_argument_name") GodotMethod!(void, String, long, String) customSignalSetArgumentName;
		@GodotName("custom_signal_get_argument_name") GodotMethod!(String, String, long) customSignalGetArgumentName;
		@GodotName("custom_signal_remove_argument") GodotMethod!(void, String, long) customSignalRemoveArgument;
		@GodotName("custom_signal_get_argument_count") GodotMethod!(long, String) customSignalGetArgumentCount;
		@GodotName("custom_signal_swap_argument") GodotMethod!(void, String, long, long) customSignalSwapArgument;
		@GodotName("remove_custom_signal") GodotMethod!(void, String) removeCustomSignal;
		@GodotName("rename_custom_signal") GodotMethod!(void, String, String) renameCustomSignal;
		@GodotName("set_instance_base_type") GodotMethod!(void, String) setInstanceBaseType;
		@GodotName("_set_data") GodotMethod!(void, Dictionary) _setData;
		@GodotName("_get_data") GodotMethod!(Dictionary) _getData;
	}
	bool opEquals(in VisualScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	void _nodePortsChanged(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_ports_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Add a function with the specified name to the VisualScript.
	*/
	void addFunction(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addFunction, _godot_object, name);
	}
	/**
	Returns whether a function exists with the specified name.
	*/
	bool hasFunction(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasFunction, _godot_object, name);
	}
	/**
	Remove a specific function and its nodes from the script.
	*/
	void removeFunction(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeFunction, _godot_object, name);
	}
	/**
	Change the name of a function.
	*/
	void renameFunction(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameFunction, _godot_object, name, new_name);
	}
	/**
	Position the center of the screen for a function.
	*/
	void setFunctionScroll(StringArg0)(in StringArg0 name, in Vector2 ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFunctionScroll, _godot_object, name, ofs);
	}
	/**
	Returns the position of the center of the screen for a given function.
	*/
	Vector2 getFunctionScroll(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getFunctionScroll, _godot_object, name);
	}
	/**
	Add a node to a function of the VisualScript.
	*/
	void addNode(StringArg0)(in StringArg0 func, in long id, VisualScriptNode node, in Vector2 position = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addNode, _godot_object, func, id, node, position);
	}
	/**
	Remove a specific node.
	*/
	void removeNode(StringArg0)(in StringArg0 func, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeNode, _godot_object, func, id);
	}
	/**
	Returns the id of a function's entry point node.
	*/
	long getFunctionNodeId(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFunctionNodeId, _godot_object, name);
	}
	/**
	Returns a node given its id and its function.
	*/
	Ref!VisualScriptNode getNode(StringArg0)(in StringArg0 func, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptNode)(_classBinding.getNode, _godot_object, func, id);
	}
	/**
	Returns whether a node exists with the given id.
	*/
	bool hasNode(StringArg0)(in StringArg0 func, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasNode, _godot_object, func, id);
	}
	/**
	Position a node on the screen.
	*/
	void setNodePosition(StringArg0)(in StringArg0 func, in long id, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodePosition, _godot_object, func, id, position);
	}
	/**
	Returns a node's position in pixels.
	*/
	Vector2 getNodePosition(StringArg0)(in StringArg0 func, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getNodePosition, _godot_object, func, id);
	}
	/**
	Connect two sequence ports. The execution will flow from of `from_node`'s `from_output` into `to_node`.
	Unlike $(D dataConnect), there isn't a `to_port`, since the target node can have only one sequence port.
	*/
	void sequenceConnect(StringArg0)(in StringArg0 func, in long from_node, in long from_output, in long to_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.sequenceConnect, _godot_object, func, from_node, from_output, to_node);
	}
	/**
	Disconnect two sequence ports previously connected with $(D sequenceConnect).
	*/
	void sequenceDisconnect(StringArg0)(in StringArg0 func, in long from_node, in long from_output, in long to_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.sequenceDisconnect, _godot_object, func, from_node, from_output, to_node);
	}
	/**
	Returns whether the specified sequence ports are connected.
	*/
	bool hasSequenceConnection(StringArg0)(in StringArg0 func, in long from_node, in long from_output, in long to_node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasSequenceConnection, _godot_object, func, from_node, from_output, to_node);
	}
	/**
	Connect two data ports. The value of `from_node`'s `from_port` would be fed into `to_node`'s `to_port`.
	*/
	void dataConnect(StringArg0)(in StringArg0 func, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.dataConnect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	/**
	Disconnect two data ports previously connected with $(D dataConnect).
	*/
	void dataDisconnect(StringArg0)(in StringArg0 func, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.dataDisconnect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	/**
	Returns whether the specified data ports are connected.
	*/
	bool hasDataConnection(StringArg0)(in StringArg0 func, in long from_node, in long from_port, in long to_node, in long to_port) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasDataConnection, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	/**
	Add a variable to the VisualScript, optionally giving it a default value or marking it as exported.
	*/
	void addVariable(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 default_value = Variant.nil, in bool _export = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addVariable, _godot_object, name, default_value, _export);
	}
	/**
	Returns whether a variable exists with the specified name.
	*/
	bool hasVariable(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasVariable, _godot_object, name);
	}
	/**
	Remove a variable with the given name.
	*/
	void removeVariable(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeVariable, _godot_object, name);
	}
	/**
	Change the default (initial) value of a variable.
	*/
	void setVariableDefaultValue(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVariableDefaultValue, _godot_object, name, value);
	}
	/**
	Returns the default (initial) value of a variable.
	*/
	Variant getVariableDefaultValue(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getVariableDefaultValue, _godot_object, name);
	}
	/**
	Set a variable's info, using the same format as $(D getVariableInfo).
	*/
	void setVariableInfo(StringArg0)(in StringArg0 name, in Dictionary value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVariableInfo, _godot_object, name, value);
	}
	/**
	Returns the info for a given variable as a dictionary. The information includes its name, type, hint and usage.
	*/
	Dictionary getVariableInfo(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getVariableInfo, _godot_object, name);
	}
	/**
	Change whether a variable is exported.
	*/
	void setVariableExport(StringArg0)(in StringArg0 name, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVariableExport, _godot_object, name, enable);
	}
	/**
	Returns whether a variable is exported.
	*/
	bool getVariableExport(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getVariableExport, _godot_object, name);
	}
	/**
	Change the name of a variable.
	*/
	void renameVariable(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameVariable, _godot_object, name, new_name);
	}
	/**
	Add a custom signal with the specified name to the VisualScript.
	*/
	void addCustomSignal(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCustomSignal, _godot_object, name);
	}
	/**
	Returns whether a signal exists with the specified name.
	*/
	bool hasCustomSignal(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasCustomSignal, _godot_object, name);
	}
	/**
	Add an argument to a custom signal added with $(D addCustomSignal).
	*/
	void customSignalAddArgument(StringArg0, StringArg2)(in StringArg0 name, in long type, in StringArg2 argname, in long index = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalAddArgument, _godot_object, name, type, argname, index);
	}
	/**
	Change the type of a custom signal's argument.
	*/
	void customSignalSetArgumentType(StringArg0)(in StringArg0 name, in long argidx, in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalSetArgumentType, _godot_object, name, argidx, type);
	}
	/**
	Get the type of a custom signal's argument.
	*/
	Variant.Type customSignalGetArgumentType(StringArg0)(in StringArg0 name, in long argidx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(_classBinding.customSignalGetArgumentType, _godot_object, name, argidx);
	}
	/**
	Rename a custom signal's argument.
	*/
	void customSignalSetArgumentName(StringArg0, StringArg2)(in StringArg0 name, in long argidx, in StringArg2 argname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalSetArgumentName, _godot_object, name, argidx, argname);
	}
	/**
	Get the name of a custom signal's argument.
	*/
	String customSignalGetArgumentName(StringArg0)(in StringArg0 name, in long argidx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.customSignalGetArgumentName, _godot_object, name, argidx);
	}
	/**
	Remove a specific custom signal's argument.
	*/
	void customSignalRemoveArgument(StringArg0)(in StringArg0 name, in long argidx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalRemoveArgument, _godot_object, name, argidx);
	}
	/**
	Get the count of a custom signal's arguments.
	*/
	long customSignalGetArgumentCount(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.customSignalGetArgumentCount, _godot_object, name);
	}
	/**
	Swap two of the arguments of a custom signal.
	*/
	void customSignalSwapArgument(StringArg0)(in StringArg0 name, in long argidx, in long withidx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalSwapArgument, _godot_object, name, argidx, withidx);
	}
	/**
	Remove a custom signal with the given name.
	*/
	void removeCustomSignal(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeCustomSignal, _godot_object, name);
	}
	/**
	Change the name of a custom signal.
	*/
	void renameCustomSignal(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameCustomSignal, _godot_object, name, new_name);
	}
	/**
	Set the base type of the script.
	*/
	void setInstanceBaseType(StringArg0)(in StringArg0 type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInstanceBaseType, _godot_object, type);
	}
	/**
	
	*/
	void _setData(in Dictionary data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
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
