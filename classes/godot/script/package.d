/**
A class stored as a resource.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.script;
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
/**
A class stored as a resource.

A script extends the functionality of all objects that instance it.
The `new` method of a script subclass creates a new instance. $(D GodotObject.setScript) extends an existing object, if that object's class matches one of the script's base classes.
*/
@GodotBaseClass struct Script
{
	enum string _GODOT_internal_name = "Script";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("can_instance") GodotMethod!(bool) canInstance;
		@GodotName("get_base_script") GodotMethod!(Script) getBaseScript;
		@GodotName("get_instance_base_type") GodotMethod!(String) getInstanceBaseType;
		@GodotName("get_property_default_value") GodotMethod!(Variant, String) getPropertyDefaultValue;
		@GodotName("get_script_constant_map") GodotMethod!(Dictionary) getScriptConstantMap;
		@GodotName("get_script_method_list") GodotMethod!(Array) getScriptMethodList;
		@GodotName("get_script_property_list") GodotMethod!(Array) getScriptPropertyList;
		@GodotName("get_script_signal_list") GodotMethod!(Array) getScriptSignalList;
		@GodotName("get_source_code") GodotMethod!(String) getSourceCode;
		@GodotName("has_script_signal") GodotMethod!(bool, String) hasScriptSignal;
		@GodotName("has_source_code") GodotMethod!(bool) hasSourceCode;
		@GodotName("instance_has") GodotMethod!(bool, GodotObject) instanceHas;
		@GodotName("is_tool") GodotMethod!(bool) isTool;
		@GodotName("reload") GodotMethod!(GodotError, bool) reload;
		@GodotName("set_source_code") GodotMethod!(void, String) setSourceCode;
	}
	bool opEquals(in Script other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Script opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Script _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Script");
		if(constructor is null) return typeof(this).init;
		return cast(Script)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns `true` if the script can be instanced.
	*/
	bool canInstance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canInstance, _godot_object);
	}
	/**
	Returns the script directly inherited by this script.
	*/
	Ref!Script getBaseScript() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Script)(_classBinding.getBaseScript, _godot_object);
	}
	/**
	Returns the script's base type.
	*/
	String getInstanceBaseType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getInstanceBaseType, _godot_object);
	}
	/**
	
	*/
	Variant getPropertyDefaultValue(in String property)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getPropertyDefaultValue, _godot_object, property);
	}
	/**
	
	*/
	Dictionary getScriptConstantMap()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getScriptConstantMap, _godot_object);
	}
	/**
	
	*/
	Array getScriptMethodList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getScriptMethodList, _godot_object);
	}
	/**
	
	*/
	Array getScriptPropertyList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getScriptPropertyList, _godot_object);
	}
	/**
	
	*/
	Array getScriptSignalList()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getScriptSignalList, _godot_object);
	}
	/**
	
	*/
	String getSourceCode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSourceCode, _godot_object);
	}
	/**
	Returns `true` if the script, or a base class, defines a signal with the given name.
	*/
	bool hasScriptSignal(in String signal_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasScriptSignal, _godot_object, signal_name);
	}
	/**
	Returns `true` if the script contains non-empty source code.
	*/
	bool hasSourceCode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasSourceCode, _godot_object);
	}
	/**
	Returns `true` if `base_object` is an instance of this script.
	*/
	bool instanceHas(GodotObject base_object) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.instanceHas, _godot_object, base_object);
	}
	/**
	Returns `true` if the script is a tool script. A tool script can run in the editor.
	*/
	bool isTool() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isTool, _godot_object);
	}
	/**
	Reloads the script's class implementation. Returns an error code.
	*/
	GodotError reload(in bool keep_state = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.reload, _godot_object, keep_state);
	}
	/**
	
	*/
	void setSourceCode(in String source)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSourceCode, _godot_object, source);
	}
	/**
	The script source code or an empty string if source code is not available. When set, does not reload the class implementation automatically.
	*/
	@property String sourceCode()
	{
		return getSourceCode();
	}
	/// ditto
	@property void sourceCode(String v)
	{
		setSourceCode(v);
	}
}
