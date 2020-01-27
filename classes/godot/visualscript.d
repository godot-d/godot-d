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
import godot.resource;
import godot.reference;
import godot.visualscriptnode;
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
	Add a custom signal with the specified name to the VisualScript.
	*/
	void addCustomSignal(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCustomSignal, _godot_object, name);
	}
	/**
	Add a function with the specified name to the VisualScript.
	*/
	void addFunction(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addFunction, _godot_object, name);
	}
	/**
	Add a node to a function of the VisualScript.
	*/
	void addNode(in String func, in long id, VisualScriptNode node, in Vector2 position = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addNode, _godot_object, func, id, node, position);
	}
	/**
	Add a variable to the VisualScript, optionally giving it a default value or marking it as exported.
	*/
	void addVariable(VariantArg1)(in String name, in VariantArg1 default_value = Variant.nil, in bool _export = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addVariable, _godot_object, name, default_value, _export);
	}
	/**
	Add an argument to a custom signal added with $(D addCustomSignal).
	*/
	void customSignalAddArgument(in String name, in long type, in String argname, in long index = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalAddArgument, _godot_object, name, type, argname, index);
	}
	/**
	Get the count of a custom signal's arguments.
	*/
	long customSignalGetArgumentCount(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.customSignalGetArgumentCount, _godot_object, name);
	}
	/**
	Get the name of a custom signal's argument.
	*/
	String customSignalGetArgumentName(in String name, in long argidx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.customSignalGetArgumentName, _godot_object, name, argidx);
	}
	/**
	Get the type of a custom signal's argument.
	*/
	Variant.Type customSignalGetArgumentType(in String name, in long argidx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(_classBinding.customSignalGetArgumentType, _godot_object, name, argidx);
	}
	/**
	Remove a specific custom signal's argument.
	*/
	void customSignalRemoveArgument(in String name, in long argidx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalRemoveArgument, _godot_object, name, argidx);
	}
	/**
	Rename a custom signal's argument.
	*/
	void customSignalSetArgumentName(in String name, in long argidx, in String argname)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalSetArgumentName, _godot_object, name, argidx, argname);
	}
	/**
	Change the type of a custom signal's argument.
	*/
	void customSignalSetArgumentType(in String name, in long argidx, in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalSetArgumentType, _godot_object, name, argidx, type);
	}
	/**
	Swap two of the arguments of a custom signal.
	*/
	void customSignalSwapArgument(in String name, in long argidx, in long withidx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.customSignalSwapArgument, _godot_object, name, argidx, withidx);
	}
	/**
	Connect two data ports. The value of `from_node`'s `from_port` would be fed into `to_node`'s `to_port`.
	*/
	void dataConnect(in String func, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.dataConnect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	/**
	Disconnect two data ports previously connected with $(D dataConnect).
	*/
	void dataDisconnect(in String func, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.dataDisconnect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	/**
	Returns the id of a function's entry point node.
	*/
	long getFunctionNodeId(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFunctionNodeId, _godot_object, name);
	}
	/**
	Returns the position of the center of the screen for a given function.
	*/
	Vector2 getFunctionScroll(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getFunctionScroll, _godot_object, name);
	}
	/**
	Returns a node given its id and its function.
	*/
	Ref!VisualScriptNode getNode(in String func, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptNode)(_classBinding.getNode, _godot_object, func, id);
	}
	/**
	Returns a node's position in pixels.
	*/
	Vector2 getNodePosition(in String func, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getNodePosition, _godot_object, func, id);
	}
	/**
	Returns the default (initial) value of a variable.
	*/
	Variant getVariableDefaultValue(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getVariableDefaultValue, _godot_object, name);
	}
	/**
	Returns whether a variable is exported.
	*/
	bool getVariableExport(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getVariableExport, _godot_object, name);
	}
	/**
	Returns the information for a given variable as a dictionary. The information includes its name, type, hint and usage.
	*/
	Dictionary getVariableInfo(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getVariableInfo, _godot_object, name);
	}
	/**
	Returns whether a signal exists with the specified name.
	*/
	bool hasCustomSignal(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasCustomSignal, _godot_object, name);
	}
	/**
	Returns whether the specified data ports are connected.
	*/
	bool hasDataConnection(in String func, in long from_node, in long from_port, in long to_node, in long to_port) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasDataConnection, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	/**
	Returns whether a function exists with the specified name.
	*/
	bool hasFunction(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasFunction, _godot_object, name);
	}
	/**
	Returns whether a node exists with the given id.
	*/
	bool hasNode(in String func, in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasNode, _godot_object, func, id);
	}
	/**
	Returns whether the specified sequence ports are connected.
	*/
	bool hasSequenceConnection(in String func, in long from_node, in long from_output, in long to_node) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasSequenceConnection, _godot_object, func, from_node, from_output, to_node);
	}
	/**
	Returns whether a variable exists with the specified name.
	*/
	bool hasVariable(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasVariable, _godot_object, name);
	}
	/**
	Remove a custom signal with the given name.
	*/
	void removeCustomSignal(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeCustomSignal, _godot_object, name);
	}
	/**
	Remove a specific function and its nodes from the script.
	*/
	void removeFunction(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeFunction, _godot_object, name);
	}
	/**
	Remove a specific node.
	*/
	void removeNode(in String func, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeNode, _godot_object, func, id);
	}
	/**
	Remove a variable with the given name.
	*/
	void removeVariable(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeVariable, _godot_object, name);
	}
	/**
	Change the name of a custom signal.
	*/
	void renameCustomSignal(in String name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameCustomSignal, _godot_object, name, new_name);
	}
	/**
	Change the name of a function.
	*/
	void renameFunction(in String name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameFunction, _godot_object, name, new_name);
	}
	/**
	Change the name of a variable.
	*/
	void renameVariable(in String name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameVariable, _godot_object, name, new_name);
	}
	/**
	Connect two sequence ports. The execution will flow from of `from_node`'s `from_output` into `to_node`.
	Unlike $(D dataConnect), there isn't a `to_port`, since the target node can have only one sequence port.
	*/
	void sequenceConnect(in String func, in long from_node, in long from_output, in long to_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.sequenceConnect, _godot_object, func, from_node, from_output, to_node);
	}
	/**
	Disconnect two sequence ports previously connected with $(D sequenceConnect).
	*/
	void sequenceDisconnect(in String func, in long from_node, in long from_output, in long to_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.sequenceDisconnect, _godot_object, func, from_node, from_output, to_node);
	}
	/**
	Position the center of the screen for a function.
	*/
	void setFunctionScroll(in String name, in Vector2 ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFunctionScroll, _godot_object, name, ofs);
	}
	/**
	Set the base type of the script.
	*/
	void setInstanceBaseType(in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInstanceBaseType, _godot_object, type);
	}
	/**
	Position a node on the screen.
	*/
	void setNodePosition(in String func, in long id, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodePosition, _godot_object, func, id, position);
	}
	/**
	Change the default (initial) value of a variable.
	*/
	void setVariableDefaultValue(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVariableDefaultValue, _godot_object, name, value);
	}
	/**
	Change whether a variable is exported.
	*/
	void setVariableExport(in String name, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVariableExport, _godot_object, name, enable);
	}
	/**
	Set a variable's info, using the same format as $(D getVariableInfo).
	*/
	void setVariableInfo(in String name, in Dictionary value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVariableInfo, _godot_object, name, value);
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
