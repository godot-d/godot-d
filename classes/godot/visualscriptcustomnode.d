/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptcustomnode;
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
import godot.visualscriptnode;
/**

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
		@GodotName("_get_input_value_port_hint") GodotMethod!(long, long) _getInputValuePortHint;
		@GodotName("_get_input_value_port_hint_string") GodotMethod!(String, long) _getInputValuePortHintString;
		@GodotName("_get_input_value_port_name") GodotMethod!(String, long) _getInputValuePortName;
		@GodotName("_get_input_value_port_type") GodotMethod!(long, long) _getInputValuePortType;
		@GodotName("_get_output_sequence_port_count") GodotMethod!(long) _getOutputSequencePortCount;
		@GodotName("_get_output_sequence_port_text") GodotMethod!(String, long) _getOutputSequencePortText;
		@GodotName("_get_output_value_port_count") GodotMethod!(long) _getOutputValuePortCount;
		@GodotName("_get_output_value_port_hint") GodotMethod!(long, long) _getOutputValuePortHint;
		@GodotName("_get_output_value_port_hint_string") GodotMethod!(String, long) _getOutputValuePortHintString;
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
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
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
	/// 
	enum StartMode : int
	{
		/** */
		startModeBeginSequence = 0,
		/** */
		startModeContinueSequence = 1,
		/** */
		startModeResumeYield = 2,
	}
	/// 
	enum Constants : int
	{
		startModeBeginSequence = 0,
		startModeContinueSequence = 1,
		startModeResumeYield = 2,
		/** */
		stepPushStackBit = 16777216,
		/** */
		stepGoBackBit = 33554432,
		/** */
		stepNoAdvanceBit = 67108864,
		/** */
		stepExitFunctionBit = 134217728,
		/** */
		stepYieldBit = 268435456,
	}
	/**
	
	*/
	String _getCaption()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_caption");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
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
	long _getInputValuePortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_input_value_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	long _getInputValuePortHint(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_hint");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	String _getInputValuePortHintString(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_hint_string");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	String _getInputValuePortName(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long _getInputValuePortType(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_input_value_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	long _getOutputSequencePortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_output_sequence_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	String _getOutputSequencePortText(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_sequence_port_text");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long _getOutputValuePortCount()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_output_value_port_count");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	long _getOutputValuePortHint(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_hint");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	String _getOutputValuePortHintString(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_hint_string");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	String _getOutputValuePortName(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long _getOutputValuePortType(in long idx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(idx);
		String _GODOT_method_name = String("_get_output_value_port_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	String _getText()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_text");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long _getWorkingMemorySize()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_working_memory_size");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
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
