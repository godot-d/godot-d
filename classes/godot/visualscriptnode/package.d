/**
A node which is part of a $(D VisualScript).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.reference;
import godot.visualscript;
/**
A node which is part of a $(D VisualScript).

Not to be confused with $(D Node), which is a part of a $(D SceneTree).
*/
@GodotBaseClass struct VisualScriptNode
{
	enum string _GODOT_internal_name = "VisualScriptNode";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_get_default_input_values") GodotMethod!(Array) _getDefaultInputValues;
		@GodotName("_set_default_input_values") GodotMethod!(void, Array) _setDefaultInputValues;
		@GodotName("get_default_input_value") GodotMethod!(Variant, long) getDefaultInputValue;
		@GodotName("get_visual_script") GodotMethod!(VisualScript) getVisualScript;
		@GodotName("ports_changed_notify") GodotMethod!(void) portsChangedNotify;
		@GodotName("set_default_input_value") GodotMethod!(void, long, Variant) setDefaultInputValue;
	}
	bool opEquals(in VisualScriptNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptNode");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptNode)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array _getDefaultInputValues() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_default_input_values");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setDefaultInputValues(in Array values)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(values);
		String _GODOT_method_name = String("_set_default_input_values");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the default value of a given port. The default value is used when nothing is connected to the port.
	*/
	Variant getDefaultInputValue(in long port_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getDefaultInputValue, _godot_object, port_idx);
	}
	/**
	Returns the $(D VisualScript) instance the node is bound to.
	*/
	Ref!VisualScript getVisualScript() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScript)(_classBinding.getVisualScript, _godot_object);
	}
	/**
	Notify that the node's ports have changed. Usually used in conjunction with $(D VisualScriptCustomNode) .
	*/
	void portsChangedNotify()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.portsChangedNotify, _godot_object);
	}
	/**
	Change the default value of a given port.
	*/
	void setDefaultInputValue(VariantArg1)(in long port_idx, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultInputValue, _godot_object, port_idx, value);
	}
	/**
	
	*/
	@property Array _defaultInputValues()
	{
		return _getDefaultInputValues();
	}
	/// ditto
	@property void _defaultInputValues(Array v)
	{
		_setDefaultInputValues(v);
	}
}
