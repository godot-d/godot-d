/**
A scripted Visual Script node.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptcustomnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**
A scripted Visual Script node.

A custom Visual Script node which can be scripted in powerful ways.
*/
@GodotBaseClass struct VisualScriptCustomNode
{
	static immutable string _GODOT_internal_name = "VisualScriptCustomNode";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptCustomNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptCustomNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptCustomNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptCustomNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptCustomNode)(constructor());
	}
	/// 
	enum StartMode : int
	{
		/**
		The start mode used the first time when $(D _step) is called.
		*/
		startModeBeginSequence = 0,
		/**
		The start mode used when $(D _step) is called after coming back from a STEP_PUSH_STACK_BIT.
		*/
		startModeContinueSequence = 1,
		/**
		The start mode used when $(D _step) is called after resuming from STEP_YIELD_BIT.
		*/
		startModeResumeYield = 2,
	}
	/// 
	enum Constants : int
	{
		startModeBeginSequence = 0,
		startModeContinueSequence = 1,
		startModeResumeYield = 2,
		/**
		Hint used by $(D _step) to tell that control should return to it when there is no other node left to execute.
		This is used by $(D VisualScriptCondition) to redirect the sequence to the "Done" port after the true/false branch has finished execution.
		*/
		stepPushStackBit = 16777216,
		/**
		Hint used by $(D _step) to tell that control should return back, either hitting a previous STEP_PUSH_STACK_BIT or exiting the function.
		*/
		stepGoBackBit = 33554432,
		/**
		
		*/
		stepNoAdvanceBit = 67108864,
		/**
		Hint used by $(D _step) to tell that control should stop and exit the function.
		*/
		stepExitFunctionBit = 134217728,
		/**
		Hint used by $(D _step) to tell that the function should be yielded.
		Using this requires you to have at least one working memory slot, which is used for the $(D VisualScriptFunctionState).
		*/
		stepYieldBit = 268435456,
	}
	package(godot) static GodotMethod!(long) _GODOT__get_output_sequence_port_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_sequence_port_count") = _GODOT__get_output_sequence_port_count;
	/**
	Return the amount of output $(B sequence) ports.
	*/
	long _getOutputSequencePortCount()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_output_sequence_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	package(godot) static GodotMethod!(bool) _GODOT__has_input_sequence_port;
	package(godot) alias _GODOT_methodBindInfo(string name : "_has_input_sequence_port") = _GODOT__has_input_sequence_port;
	/**
	Return whether the custom node has an input $(B sequence) port.
	*/
	bool _hasInputSequencePort()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_has_input_sequence_port");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(String, long) _GODOT__get_output_sequence_port_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_sequence_port_text") = _GODOT__get_output_sequence_port_text;
	/**
	Return the specified $(B sequence) output's name.
	*/
	String _getOutputSequencePortText(in long idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_sequence_port_text");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(long) _GODOT__get_input_value_port_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_input_value_port_count") = _GODOT__get_input_value_port_count;
	/**
	Return the count of input value ports.
	*/
	long _getInputValuePortCount()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_input_value_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	package(godot) static GodotMethod!(long) _GODOT__get_output_value_port_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_value_port_count") = _GODOT__get_output_value_port_count;
	/**
	Return the amount of output value ports.
	*/
	long _getOutputValuePortCount()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_output_value_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	package(godot) static GodotMethod!(long, long) _GODOT__get_input_value_port_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_input_value_port_type") = _GODOT__get_input_value_port_type;
	/**
	Return the specified input port's type. See the TYPE_* enum in $(D @GlobalScope).
	*/
	long _getInputValuePortType(in long idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	package(godot) static GodotMethod!(String, long) _GODOT__get_input_value_port_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_input_value_port_name") = _GODOT__get_input_value_port_name;
	/**
	Return the specified input port's name.
	*/
	String _getInputValuePortName(in long idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(long, long) _GODOT__get_output_value_port_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_value_port_type") = _GODOT__get_output_value_port_type;
	/**
	Return the specified output's type. See the TYPE_* enum in $(D @GlobalScope).
	*/
	long _getOutputValuePortType(in long idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	package(godot) static GodotMethod!(String, long) _GODOT__get_output_value_port_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_output_value_port_name") = _GODOT__get_output_value_port_name;
	/**
	Return the specified output's name.
	*/
	String _getOutputValuePortName(in long idx)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(String) _GODOT__get_caption;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_caption") = _GODOT__get_caption;
	/**
	Return the node's title.
	*/
	String _getCaption()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_caption");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(String) _GODOT__get_text;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_text") = _GODOT__get_text;
	/**
	Return the custom node's text, which is shown right next to the input $(B sequence) port (if there is none, on the place that is usually taken by it).
	*/
	String _getText()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_text");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(String) _GODOT__get_category;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_category") = _GODOT__get_category;
	/**
	Return the node's category.
	*/
	String _getCategory()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_category");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(long) _GODOT__get_working_memory_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_working_memory_size") = _GODOT__get_working_memory_size;
	/**
	Return the size of the custom node's working memory. See $(D _step) for more details.
	*/
	long _getWorkingMemorySize()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_working_memory_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	package(godot) static GodotMethod!(Variant, Array, Array, long, Array) _GODOT__step;
	package(godot) alias _GODOT_methodBindInfo(string name : "_step") = _GODOT__step;
	/**
	Execute the custom node's logic, returning the index of the output sequence port to use or a $(D String) when there is an error.
	
	The `inputs` array contains the values of the input ports.
	`outputs` is an array whose indices should be set to the respective outputs.
	The `start_mode` is usually `START_MODE_BEGIN_SEQUENCE`, unless you have used the STEP_* constants.
	`working_mem` is an array which can be used to persist information between runs of the custom node.
	
	When returning, you can mask the returned value with one of the STEP_* constants.
	*/
	Variant _step(in Array inputs, in Array outputs, in long start_mode, in Array working_mem)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(inputs);
		_GODOT_args.append(outputs);
		_GODOT_args.append(start_mode);
		_GODOT_args.append(working_mem);
		String _GODOT_method_name = String("_step");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void) _GODOT__script_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "_script_changed") = _GODOT__script_changed;
	/**
	
	*/
	void _scriptChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_script_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
