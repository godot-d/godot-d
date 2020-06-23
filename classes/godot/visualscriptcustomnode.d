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
	package(godot) enum string _GODOT_internal_name = "VisualScriptCustomNode";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_caption") GodotMethod!(String) _getCaption;
		@GodotName("_get_category") GodotMethod!(String) _getCategory;
		@GodotName("_get_input_value_port_count") GodotMethod!(long) _getInputValuePortCount;
		@GodotName("_get_input_value_port_name") GodotMethod!(String, long) _getInputValuePortName;
		@GodotName("_get_input_value_port_type") GodotMethod!(long, long) _getInputValuePortType;
		@GodotName("_get_output_sequence_port_count") GodotMethod!(long) _getOutputSequencePortCount;
		@GodotName("_get_output_sequence_port_text") GodotMethod!(String, long) _getOutputSequencePortText;
		@GodotName("_get_output_value_port_count") GodotMethod!(long) _getOutputValuePortCount;
		@GodotName("_get_output_value_port_name") GodotMethod!(String, long) _getOutputValuePortName;
		@GodotName("_get_output_value_port_type") GodotMethod!(long, long) _getOutputValuePortType;
		@GodotName("_get_text") GodotMethod!(String) _getText;
		@GodotName("_get_working_memory_size") GodotMethod!(long) _getWorkingMemorySize;
		@GodotName("_has_input_sequence_port") GodotMethod!(bool) _hasInputSequencePort;
		@GodotName("_script_changed") GodotMethod!(void) _scriptChanged;
		@GodotName("_step") GodotMethod!(Variant, Array, Array, long, Array) _step;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptCustomNode other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualScriptCustomNode opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualScriptCustomNode.
	/// Note: use `memnew!VisualScriptCustomNode` instead.
	static VisualScriptCustomNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptCustomNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptCustomNode)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum StartMode : int
	{
		/**
		The start mode used the first time when $(D _step) is called.
		*/
		startModeBeginSequence = 0,
		/**
		The start mode used when $(D _step) is called after coming back from a $(D constant STEP_PUSH_STACK_BIT).
		*/
		startModeContinueSequence = 1,
		/**
		The start mode used when $(D _step) is called after resuming from $(D constant STEP_YIELD_BIT).
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
		This is used by $(D VisualScriptCondition) to redirect the sequence to the "Done" port after the `true`/`false` branch has finished execution.
		*/
		stepPushStackBit = 16777216,
		/**
		Hint used by $(D _step) to tell that control should return back, either hitting a previous $(D constant STEP_PUSH_STACK_BIT) or exiting the function.
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
	/**
	Return the node's title.
	*/
	String _getCaption()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_caption");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Return the node's category.
	*/
	String _getCategory()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_category");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Return the count of input value ports.
	*/
	long _getInputValuePortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_input_value_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Return the specified input port's name.
	*/
	String _getInputValuePortName(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Return the specified input port's type. See the $(D Variant.type) values.
	*/
	long _getInputValuePortType(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Return the amount of output $(B sequence) ports.
	*/
	long _getOutputSequencePortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_output_sequence_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Return the specified $(B sequence) output's name.
	*/
	String _getOutputSequencePortText(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_sequence_port_text");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Return the amount of output value ports.
	*/
	long _getOutputValuePortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_output_value_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Return the specified output's name.
	*/
	String _getOutputValuePortName(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Return the specified output's type. See the $(D Variant.type) values.
	*/
	long _getOutputValuePortType(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Return the custom node's text, which is shown right next to the input $(B sequence) port (if there is none, on the place that is usually taken by it).
	*/
	String _getText()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_text");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Return the size of the custom node's working memory. See $(D _step) for more details.
	*/
	long _getWorkingMemorySize()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_working_memory_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	Return whether the custom node has an input $(B sequence) port.
	*/
	bool _hasInputSequencePort()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_has_input_sequence_port");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _scriptChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_script_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Execute the custom node's logic, returning the index of the output sequence port to use or a $(D String) when there is an error.
	The `inputs` array contains the values of the input ports.
	`outputs` is an array whose indices should be set to the respective outputs.
	The `start_mode` is usually $(D constant START_MODE_BEGIN_SEQUENCE), unless you have used the `STEP_*` constants.
	`working_mem` is an array which can be used to persist information between runs of the custom node.
	When returning, you can mask the returned value with one of the `STEP_*` constants.
	*/
	Variant _step(in Array inputs, in Array outputs, in long start_mode, in Array working_mem)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(inputs);
		_GODOT_args.append(outputs);
		_GODOT_args.append(start_mode);
		_GODOT_args.append(working_mem);
		String _GODOT_method_name = String("_step");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
}
