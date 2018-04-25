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
/**
A script implemented in the Visual Script programming environment.

A script implemented in the  Visual Script programming environment. The script extends the functionality of all objects that instance it.
$(D GodotObject.setScript) extends an existing object, if that object's class matches one of the script's base classes.
You are most likely to use this class via the Visual Script editor or when writing plugins for it.
*/
@GodotBaseClass struct VisualScript
{
	static immutable string _GODOT_internal_name = "VisualScript";
public:
@nogc nothrow:
	union { godot_object _godot_object; Script _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, long) _GODOT__node_ports_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_node_ports_changed") = _GODOT__node_ports_changed;
	/**
	
	*/
	void _nodePortsChanged(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_ports_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_function") = _GODOT_add_function;
	/**
	Add a function with the specified name to the VisualScript.
	*/
	void addFunction(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_function.bind("VisualScript", "add_function");
		ptrcall!(void)(_GODOT_add_function, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_function") = _GODOT_has_function;
	/**
	Returns whether a function exists with the specified name.
	*/
	bool hasFunction(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_function.bind("VisualScript", "has_function");
		return ptrcall!(bool)(_GODOT_has_function, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_function") = _GODOT_remove_function;
	/**
	Remove a specific function and its nodes from the script.
	*/
	void removeFunction(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_function.bind("VisualScript", "remove_function");
		ptrcall!(void)(_GODOT_remove_function, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_function") = _GODOT_rename_function;
	/**
	Change the name of a function.
	*/
	void renameFunction(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		_GODOT_rename_function.bind("VisualScript", "rename_function");
		ptrcall!(void)(_GODOT_rename_function, _godot_object, name, new_name);
	}
	package(godot) static GodotMethod!(void, String, Vector2) _GODOT_set_function_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_function_scroll") = _GODOT_set_function_scroll;
	/**
	Position the center of the screen for a function.
	*/
	void setFunctionScroll(StringArg0)(in StringArg0 name, in Vector2 ofs)
	{
		_GODOT_set_function_scroll.bind("VisualScript", "set_function_scroll");
		ptrcall!(void)(_GODOT_set_function_scroll, _godot_object, name, ofs);
	}
	package(godot) static GodotMethod!(Vector2, String) _GODOT_get_function_scroll;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_function_scroll") = _GODOT_get_function_scroll;
	/**
	Returns the position of the center of the screen for a given function.
	*/
	Vector2 getFunctionScroll(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_function_scroll.bind("VisualScript", "get_function_scroll");
		return ptrcall!(Vector2)(_GODOT_get_function_scroll, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, long, VisualScriptNode, Vector2) _GODOT_add_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_node") = _GODOT_add_node;
	/**
	Add a node to a function of the VisualScript.
	*/
	void addNode(StringArg0)(in StringArg0 func, in long id, VisualScriptNode node, in Vector2 position = Vector2(0, 0))
	{
		_GODOT_add_node.bind("VisualScript", "add_node");
		ptrcall!(void)(_GODOT_add_node, _godot_object, func, id, node, position);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_remove_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_node") = _GODOT_remove_node;
	/**
	Remove a specific node.
	*/
	void removeNode(StringArg0)(in StringArg0 func, in long id)
	{
		_GODOT_remove_node.bind("VisualScript", "remove_node");
		ptrcall!(void)(_GODOT_remove_node, _godot_object, func, id);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_get_function_node_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_function_node_id") = _GODOT_get_function_node_id;
	/**
	Returns the id of a function's entry point node.
	*/
	long getFunctionNodeId(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_function_node_id.bind("VisualScript", "get_function_node_id");
		return ptrcall!(long)(_GODOT_get_function_node_id, _godot_object, name);
	}
	package(godot) static GodotMethod!(VisualScriptNode, String, long) _GODOT_get_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node") = _GODOT_get_node;
	/**
	Returns a node given its id and its function.
	*/
	Ref!VisualScriptNode getNode(StringArg0)(in StringArg0 func, in long id) const
	{
		_GODOT_get_node.bind("VisualScript", "get_node");
		return ptrcall!(VisualScriptNode)(_GODOT_get_node, _godot_object, func, id);
	}
	package(godot) static GodotMethod!(bool, String, long) _GODOT_has_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_node") = _GODOT_has_node;
	/**
	Returns whether a node exists with the given id.
	*/
	bool hasNode(StringArg0)(in StringArg0 func, in long id) const
	{
		_GODOT_has_node.bind("VisualScript", "has_node");
		return ptrcall!(bool)(_GODOT_has_node, _godot_object, func, id);
	}
	package(godot) static GodotMethod!(void, String, long, Vector2) _GODOT_set_node_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_node_position") = _GODOT_set_node_position;
	/**
	Position a node on the screen.
	*/
	void setNodePosition(StringArg0)(in StringArg0 func, in long id, in Vector2 position)
	{
		_GODOT_set_node_position.bind("VisualScript", "set_node_position");
		ptrcall!(void)(_GODOT_set_node_position, _godot_object, func, id, position);
	}
	package(godot) static GodotMethod!(Vector2, String, long) _GODOT_get_node_position;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_position") = _GODOT_get_node_position;
	/**
	Returns a node's position in pixels.
	*/
	Vector2 getNodePosition(StringArg0)(in StringArg0 func, in long id) const
	{
		_GODOT_get_node_position.bind("VisualScript", "get_node_position");
		return ptrcall!(Vector2)(_GODOT_get_node_position, _godot_object, func, id);
	}
	package(godot) static GodotMethod!(void, String, long, long, long) _GODOT_sequence_connect;
	package(godot) alias _GODOT_methodBindInfo(string name : "sequence_connect") = _GODOT_sequence_connect;
	/**
	Connect two sequence ports. The execution will flow from of `from_node`'s `from_output` into `to_node`.
	Unlike $(D dataConnect), there isn't a `to_port`, since the target node can have only one sequence port.
	*/
	void sequenceConnect(StringArg0)(in StringArg0 func, in long from_node, in long from_output, in long to_node)
	{
		_GODOT_sequence_connect.bind("VisualScript", "sequence_connect");
		ptrcall!(void)(_GODOT_sequence_connect, _godot_object, func, from_node, from_output, to_node);
	}
	package(godot) static GodotMethod!(void, String, long, long, long) _GODOT_sequence_disconnect;
	package(godot) alias _GODOT_methodBindInfo(string name : "sequence_disconnect") = _GODOT_sequence_disconnect;
	/**
	Disconnect two sequence ports previously connected with $(D sequenceConnect).
	*/
	void sequenceDisconnect(StringArg0)(in StringArg0 func, in long from_node, in long from_output, in long to_node)
	{
		_GODOT_sequence_disconnect.bind("VisualScript", "sequence_disconnect");
		ptrcall!(void)(_GODOT_sequence_disconnect, _godot_object, func, from_node, from_output, to_node);
	}
	package(godot) static GodotMethod!(bool, String, long, long, long) _GODOT_has_sequence_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_sequence_connection") = _GODOT_has_sequence_connection;
	/**
	Returns whether the specified sequence ports are connected.
	*/
	bool hasSequenceConnection(StringArg0)(in StringArg0 func, in long from_node, in long from_output, in long to_node) const
	{
		_GODOT_has_sequence_connection.bind("VisualScript", "has_sequence_connection");
		return ptrcall!(bool)(_GODOT_has_sequence_connection, _godot_object, func, from_node, from_output, to_node);
	}
	package(godot) static GodotMethod!(void, String, long, long, long, long) _GODOT_data_connect;
	package(godot) alias _GODOT_methodBindInfo(string name : "data_connect") = _GODOT_data_connect;
	/**
	Connect two data ports. The value of `from_node`'s `from_port` would be fed into `to_node`'s `to_port`.
	*/
	void dataConnect(StringArg0)(in StringArg0 func, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		_GODOT_data_connect.bind("VisualScript", "data_connect");
		ptrcall!(void)(_GODOT_data_connect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	package(godot) static GodotMethod!(void, String, long, long, long, long) _GODOT_data_disconnect;
	package(godot) alias _GODOT_methodBindInfo(string name : "data_disconnect") = _GODOT_data_disconnect;
	/**
	Disconnect two data ports previously connected with $(D dataConnect).
	*/
	void dataDisconnect(StringArg0)(in StringArg0 func, in long from_node, in long from_port, in long to_node, in long to_port)
	{
		_GODOT_data_disconnect.bind("VisualScript", "data_disconnect");
		ptrcall!(void)(_GODOT_data_disconnect, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	package(godot) static GodotMethod!(bool, String, long, long, long, long) _GODOT_has_data_connection;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_data_connection") = _GODOT_has_data_connection;
	/**
	Returns whether the specified data ports are connected.
	*/
	bool hasDataConnection(StringArg0)(in StringArg0 func, in long from_node, in long from_port, in long to_node, in long to_port) const
	{
		_GODOT_has_data_connection.bind("VisualScript", "has_data_connection");
		return ptrcall!(bool)(_GODOT_has_data_connection, _godot_object, func, from_node, from_port, to_node, to_port);
	}
	package(godot) static GodotMethod!(void, String, Variant, bool) _GODOT_add_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_variable") = _GODOT_add_variable;
	/**
	Add a variable to the VisualScript, optionally giving it a default value or marking it as exported.
	*/
	void addVariable(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 default_value = Variant.nil, in bool _export = false)
	{
		_GODOT_add_variable.bind("VisualScript", "add_variable");
		ptrcall!(void)(_GODOT_add_variable, _godot_object, name, default_value, _export);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_variable") = _GODOT_has_variable;
	/**
	Returns whether a variable exists with the specified name.
	*/
	bool hasVariable(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_variable.bind("VisualScript", "has_variable");
		return ptrcall!(bool)(_GODOT_has_variable, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_variable") = _GODOT_remove_variable;
	/**
	Remove a variable with the given name.
	*/
	void removeVariable(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_variable.bind("VisualScript", "remove_variable");
		ptrcall!(void)(_GODOT_remove_variable, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_variable_default_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_variable_default_value") = _GODOT_set_variable_default_value;
	/**
	Change the default (initial) value of a variable.
	*/
	void setVariableDefaultValue(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		_GODOT_set_variable_default_value.bind("VisualScript", "set_variable_default_value");
		ptrcall!(void)(_GODOT_set_variable_default_value, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_get_variable_default_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_variable_default_value") = _GODOT_get_variable_default_value;
	/**
	Returns the default (initial) value of a variable.
	*/
	Variant getVariableDefaultValue(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_variable_default_value.bind("VisualScript", "get_variable_default_value");
		return ptrcall!(Variant)(_GODOT_get_variable_default_value, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, Dictionary) _GODOT_set_variable_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_variable_info") = _GODOT_set_variable_info;
	/**
	Set a variable's info, using the same format as $(D getVariableInfo).
	*/
	void setVariableInfo(StringArg0)(in StringArg0 name, in Dictionary value)
	{
		_GODOT_set_variable_info.bind("VisualScript", "set_variable_info");
		ptrcall!(void)(_GODOT_set_variable_info, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(Dictionary, String) _GODOT_get_variable_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_variable_info") = _GODOT_get_variable_info;
	/**
	Returns the info for a given variable as a dictionary. The information includes its name, type, hint and usage.
	*/
	Dictionary getVariableInfo(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_variable_info.bind("VisualScript", "get_variable_info");
		return ptrcall!(Dictionary)(_GODOT_get_variable_info, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, bool) _GODOT_set_variable_export;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_variable_export") = _GODOT_set_variable_export;
	/**
	Change whether a variable is exported.
	*/
	void setVariableExport(StringArg0)(in StringArg0 name, in bool enable)
	{
		_GODOT_set_variable_export.bind("VisualScript", "set_variable_export");
		ptrcall!(void)(_GODOT_set_variable_export, _godot_object, name, enable);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_get_variable_export;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_variable_export") = _GODOT_get_variable_export;
	/**
	Returns whether a variable is exported.
	*/
	bool getVariableExport(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_variable_export.bind("VisualScript", "get_variable_export");
		return ptrcall!(bool)(_GODOT_get_variable_export, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_variable;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_variable") = _GODOT_rename_variable;
	/**
	Change the name of a variable.
	*/
	void renameVariable(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		_GODOT_rename_variable.bind("VisualScript", "rename_variable");
		ptrcall!(void)(_GODOT_rename_variable, _godot_object, name, new_name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_add_custom_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_custom_signal") = _GODOT_add_custom_signal;
	/**
	Add a custom signal with the specified name to the VisualScript.
	*/
	void addCustomSignal(StringArg0)(in StringArg0 name)
	{
		_GODOT_add_custom_signal.bind("VisualScript", "add_custom_signal");
		ptrcall!(void)(_GODOT_add_custom_signal, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_custom_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_custom_signal") = _GODOT_has_custom_signal;
	/**
	Returns whether a signal exists with the specified name.
	*/
	bool hasCustomSignal(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_custom_signal.bind("VisualScript", "has_custom_signal");
		return ptrcall!(bool)(_GODOT_has_custom_signal, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, long, String, long) _GODOT_custom_signal_add_argument;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_add_argument") = _GODOT_custom_signal_add_argument;
	/**
	Add an argument to a custom signal added with $(D addCustomSignal).
	*/
	void customSignalAddArgument(StringArg0, StringArg2)(in StringArg0 name, in long type, in StringArg2 argname, in long index = -1)
	{
		_GODOT_custom_signal_add_argument.bind("VisualScript", "custom_signal_add_argument");
		ptrcall!(void)(_GODOT_custom_signal_add_argument, _godot_object, name, type, argname, index);
	}
	package(godot) static GodotMethod!(void, String, long, long) _GODOT_custom_signal_set_argument_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_set_argument_type") = _GODOT_custom_signal_set_argument_type;
	/**
	Change the type of a custom signal's argument.
	*/
	void customSignalSetArgumentType(StringArg0)(in StringArg0 name, in long argidx, in long type)
	{
		_GODOT_custom_signal_set_argument_type.bind("VisualScript", "custom_signal_set_argument_type");
		ptrcall!(void)(_GODOT_custom_signal_set_argument_type, _godot_object, name, argidx, type);
	}
	package(godot) static GodotMethod!(Variant.Type, String, long) _GODOT_custom_signal_get_argument_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_get_argument_type") = _GODOT_custom_signal_get_argument_type;
	/**
	Get the type of a custom signal's argument.
	*/
	Variant.Type customSignalGetArgumentType(StringArg0)(in StringArg0 name, in long argidx) const
	{
		_GODOT_custom_signal_get_argument_type.bind("VisualScript", "custom_signal_get_argument_type");
		return ptrcall!(Variant.Type)(_GODOT_custom_signal_get_argument_type, _godot_object, name, argidx);
	}
	package(godot) static GodotMethod!(void, String, long, String) _GODOT_custom_signal_set_argument_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_set_argument_name") = _GODOT_custom_signal_set_argument_name;
	/**
	Rename a custom signal's argument.
	*/
	void customSignalSetArgumentName(StringArg0, StringArg2)(in StringArg0 name, in long argidx, in StringArg2 argname)
	{
		_GODOT_custom_signal_set_argument_name.bind("VisualScript", "custom_signal_set_argument_name");
		ptrcall!(void)(_GODOT_custom_signal_set_argument_name, _godot_object, name, argidx, argname);
	}
	package(godot) static GodotMethod!(String, String, long) _GODOT_custom_signal_get_argument_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_get_argument_name") = _GODOT_custom_signal_get_argument_name;
	/**
	Get the name of a custom signal's argument.
	*/
	String customSignalGetArgumentName(StringArg0)(in StringArg0 name, in long argidx) const
	{
		_GODOT_custom_signal_get_argument_name.bind("VisualScript", "custom_signal_get_argument_name");
		return ptrcall!(String)(_GODOT_custom_signal_get_argument_name, _godot_object, name, argidx);
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_custom_signal_remove_argument;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_remove_argument") = _GODOT_custom_signal_remove_argument;
	/**
	Remove a specific custom signal's argument.
	*/
	void customSignalRemoveArgument(StringArg0)(in StringArg0 name, in long argidx)
	{
		_GODOT_custom_signal_remove_argument.bind("VisualScript", "custom_signal_remove_argument");
		ptrcall!(void)(_GODOT_custom_signal_remove_argument, _godot_object, name, argidx);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_custom_signal_get_argument_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_get_argument_count") = _GODOT_custom_signal_get_argument_count;
	/**
	Get the count of a custom signal's arguments.
	*/
	long customSignalGetArgumentCount(StringArg0)(in StringArg0 name) const
	{
		_GODOT_custom_signal_get_argument_count.bind("VisualScript", "custom_signal_get_argument_count");
		return ptrcall!(long)(_GODOT_custom_signal_get_argument_count, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, long, long) _GODOT_custom_signal_swap_argument;
	package(godot) alias _GODOT_methodBindInfo(string name : "custom_signal_swap_argument") = _GODOT_custom_signal_swap_argument;
	/**
	Swap two of the arguments of a custom signal.
	*/
	void customSignalSwapArgument(StringArg0)(in StringArg0 name, in long argidx, in long withidx)
	{
		_GODOT_custom_signal_swap_argument.bind("VisualScript", "custom_signal_swap_argument");
		ptrcall!(void)(_GODOT_custom_signal_swap_argument, _godot_object, name, argidx, withidx);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_remove_custom_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_custom_signal") = _GODOT_remove_custom_signal;
	/**
	Remove a custom signal with the given name.
	*/
	void removeCustomSignal(StringArg0)(in StringArg0 name)
	{
		_GODOT_remove_custom_signal.bind("VisualScript", "remove_custom_signal");
		ptrcall!(void)(_GODOT_remove_custom_signal, _godot_object, name);
	}
	package(godot) static GodotMethod!(void, String, String) _GODOT_rename_custom_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "rename_custom_signal") = _GODOT_rename_custom_signal;
	/**
	Change the name of a custom signal.
	*/
	void renameCustomSignal(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		_GODOT_rename_custom_signal.bind("VisualScript", "rename_custom_signal");
		ptrcall!(void)(_GODOT_rename_custom_signal, _godot_object, name, new_name);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_instance_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_instance_base_type") = _GODOT_set_instance_base_type;
	/**
	Set the base type of the script.
	*/
	void setInstanceBaseType(StringArg0)(in StringArg0 type)
	{
		_GODOT_set_instance_base_type.bind("VisualScript", "set_instance_base_type");
		ptrcall!(void)(_GODOT_set_instance_base_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	/**
	
	*/
	void _setData(in Dictionary data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
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
