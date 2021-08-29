/**
A Visual Script virtual class for in-graph editable nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptlists;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.visualscriptnode;
/**
A Visual Script virtual class for in-graph editable nodes.

A Visual Script virtual class that defines the shape and the default behavior of the nodes that have to be in-graph editable nodes.
*/
@GodotBaseClass struct VisualScriptLists
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptLists";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_input_data_port") GodotMethod!(void, long, String, long) addInputDataPort;
		@GodotName("add_output_data_port") GodotMethod!(void, long, String, long) addOutputDataPort;
		@GodotName("remove_input_data_port") GodotMethod!(void, long) removeInputDataPort;
		@GodotName("remove_output_data_port") GodotMethod!(void, long) removeOutputDataPort;
		@GodotName("set_input_data_port_name") GodotMethod!(void, long, String) setInputDataPortName;
		@GodotName("set_input_data_port_type") GodotMethod!(void, long, long) setInputDataPortType;
		@GodotName("set_output_data_port_name") GodotMethod!(void, long, String) setOutputDataPortName;
		@GodotName("set_output_data_port_type") GodotMethod!(void, long, long) setOutputDataPortType;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptLists other) const
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
	/// Construct a new instance of VisualScriptLists.
	/// Note: use `memnew!VisualScriptLists` instead.
	static VisualScriptLists _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptLists");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptLists)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void addInputDataPort(in long type, in String name, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addInputDataPort, _godot_object, type, name, index);
	}
	/**
	
	*/
	void addOutputDataPort(in long type, in String name, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addOutputDataPort, _godot_object, type, name, index);
	}
	/**
	
	*/
	void removeInputDataPort(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeInputDataPort, _godot_object, index);
	}
	/**
	
	*/
	void removeOutputDataPort(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeOutputDataPort, _godot_object, index);
	}
	/**
	
	*/
	void setInputDataPortName(in long index, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputDataPortName, _godot_object, index, name);
	}
	/**
	
	*/
	void setInputDataPortType(in long index, in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInputDataPortType, _godot_object, index, type);
	}
	/**
	
	*/
	void setOutputDataPortName(in long index, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutputDataPortName, _godot_object, index, name);
	}
	/**
	
	*/
	void setOutputDataPortType(in long index, in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutputDataPortType, _godot_object, index, type);
	}
}
