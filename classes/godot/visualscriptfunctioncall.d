/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptfunctioncall;
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

*/
@GodotBaseClass struct VisualScriptFunctionCall
{
	static immutable string _GODOT_internal_name = "VisualScriptFunctionCall";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptFunctionCall other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptFunctionCall opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptFunctionCall _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptFunctionCall");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptFunctionCall)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum RPCCallMode : int
	{
		/**
		
		*/
		rpcDisabled = 0,
		/**
		
		*/
		rpcReliable = 1,
		/**
		
		*/
		rpcUnreliable = 2,
		/**
		
		*/
		rpcReliableToId = 3,
		/**
		
		*/
		rpcUnreliableToId = 4,
	}
	/// 
	enum CallMode : int
	{
		/**
		
		*/
		callModeSelf = 0,
		/**
		
		*/
		callModeNodePath = 1,
		/**
		
		*/
		callModeInstance = 2,
		/**
		
		*/
		callModeBasicType = 3,
		/**
		
		*/
		callModeSingleton = 4,
	}
	/// 
	enum Constants : int
	{
		callModeSelf = 0,
		rpcDisabled = 0,
		rpcReliable = 1,
		callModeNodePath = 1,
		callModeInstance = 2,
		rpcUnreliable = 2,
		callModeBasicType = 3,
		rpcReliableToId = 3,
		rpcUnreliableToId = 4,
		callModeSingleton = 4,
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_type") = _GODOT_set_base_type;
	/**
	
	*/
	void setBaseType(StringArg0)(in StringArg0 base_type)
	{
		_GODOT_set_base_type.bind("VisualScriptFunctionCall", "set_base_type");
		ptrcall!(void)(_GODOT_set_base_type, _godot_object, base_type);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_type") = _GODOT_get_base_type;
	/**
	
	*/
	String getBaseType() const
	{
		_GODOT_get_base_type.bind("VisualScriptFunctionCall", "get_base_type");
		return ptrcall!(String)(_GODOT_get_base_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_script") = _GODOT_set_base_script;
	/**
	
	*/
	void setBaseScript(StringArg0)(in StringArg0 base_script)
	{
		_GODOT_set_base_script.bind("VisualScriptFunctionCall", "set_base_script");
		ptrcall!(void)(_GODOT_set_base_script, _godot_object, base_script);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_script") = _GODOT_get_base_script;
	/**
	
	*/
	String getBaseScript() const
	{
		_GODOT_get_base_script.bind("VisualScriptFunctionCall", "get_base_script");
		return ptrcall!(String)(_GODOT_get_base_script, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_basic_type") = _GODOT_set_basic_type;
	/**
	
	*/
	void setBasicType(in long basic_type)
	{
		_GODOT_set_basic_type.bind("VisualScriptFunctionCall", "set_basic_type");
		ptrcall!(void)(_GODOT_set_basic_type, _godot_object, basic_type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_basic_type") = _GODOT_get_basic_type;
	/**
	
	*/
	Variant.Type getBasicType() const
	{
		_GODOT_get_basic_type.bind("VisualScriptFunctionCall", "get_basic_type");
		return ptrcall!(Variant.Type)(_GODOT_get_basic_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_singleton") = _GODOT_set_singleton;
	/**
	
	*/
	void setSingleton(StringArg0)(in StringArg0 singleton)
	{
		_GODOT_set_singleton.bind("VisualScriptFunctionCall", "set_singleton");
		ptrcall!(void)(_GODOT_set_singleton, _godot_object, singleton);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_singleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_singleton") = _GODOT_get_singleton;
	/**
	
	*/
	String getSingleton() const
	{
		_GODOT_get_singleton.bind("VisualScriptFunctionCall", "get_singleton");
		return ptrcall!(String)(_GODOT_get_singleton, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_function") = _GODOT_set_function;
	/**
	
	*/
	void setFunction(StringArg0)(in StringArg0 _function)
	{
		_GODOT_set_function.bind("VisualScriptFunctionCall", "set_function");
		ptrcall!(void)(_GODOT_set_function, _godot_object, _function);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_function;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_function") = _GODOT_get_function;
	/**
	
	*/
	String getFunction() const
	{
		_GODOT_get_function.bind("VisualScriptFunctionCall", "get_function");
		return ptrcall!(String)(_GODOT_get_function, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_call_mode") = _GODOT_set_call_mode;
	/**
	
	*/
	void setCallMode(in long mode)
	{
		_GODOT_set_call_mode.bind("VisualScriptFunctionCall", "set_call_mode");
		ptrcall!(void)(_GODOT_set_call_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptFunctionCall.CallMode) _GODOT_get_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_call_mode") = _GODOT_get_call_mode;
	/**
	
	*/
	VisualScriptFunctionCall.CallMode getCallMode() const
	{
		_GODOT_get_call_mode.bind("VisualScriptFunctionCall", "get_call_mode");
		return ptrcall!(VisualScriptFunctionCall.CallMode)(_GODOT_get_call_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_path") = _GODOT_set_base_path;
	/**
	
	*/
	void setBasePath(NodePathArg0)(in NodePathArg0 base_path)
	{
		_GODOT_set_base_path.bind("VisualScriptFunctionCall", "set_base_path");
		ptrcall!(void)(_GODOT_set_base_path, _godot_object, base_path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_path") = _GODOT_get_base_path;
	/**
	
	*/
	NodePath getBasePath() const
	{
		_GODOT_get_base_path.bind("VisualScriptFunctionCall", "get_base_path");
		return ptrcall!(NodePath)(_GODOT_get_base_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_use_default_args;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_default_args") = _GODOT_set_use_default_args;
	/**
	
	*/
	void setUseDefaultArgs(in long amount)
	{
		_GODOT_set_use_default_args.bind("VisualScriptFunctionCall", "set_use_default_args");
		ptrcall!(void)(_GODOT_set_use_default_args, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_use_default_args;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_use_default_args") = _GODOT_get_use_default_args;
	/**
	
	*/
	long getUseDefaultArgs() const
	{
		_GODOT_get_use_default_args.bind("VisualScriptFunctionCall", "get_use_default_args");
		return ptrcall!(long)(_GODOT_get_use_default_args, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT__set_argument_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_argument_cache") = _GODOT__set_argument_cache;
	/**
	
	*/
	void _setArgumentCache(in Dictionary argument_cache)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(argument_cache);
		String _GODOT_method_name = String("_set_argument_cache");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT__get_argument_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_argument_cache") = _GODOT__get_argument_cache;
	/**
	
	*/
	Dictionary _getArgumentCache() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_argument_cache");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_rpc_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_rpc_call_mode") = _GODOT_set_rpc_call_mode;
	/**
	
	*/
	void setRpcCallMode(in long mode)
	{
		_GODOT_set_rpc_call_mode.bind("VisualScriptFunctionCall", "set_rpc_call_mode");
		ptrcall!(void)(_GODOT_set_rpc_call_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptFunctionCall.RPCCallMode) _GODOT_get_rpc_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_rpc_call_mode") = _GODOT_get_rpc_call_mode;
	/**
	
	*/
	VisualScriptFunctionCall.RPCCallMode getRpcCallMode() const
	{
		_GODOT_get_rpc_call_mode.bind("VisualScriptFunctionCall", "get_rpc_call_mode");
		return ptrcall!(VisualScriptFunctionCall.RPCCallMode)(_GODOT_get_rpc_call_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_validate;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_validate") = _GODOT_set_validate;
	/**
	
	*/
	void setValidate(in bool enable)
	{
		_GODOT_set_validate.bind("VisualScriptFunctionCall", "set_validate");
		ptrcall!(void)(_GODOT_set_validate, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_validate;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_validate") = _GODOT_get_validate;
	/**
	
	*/
	bool getValidate() const
	{
		_GODOT_get_validate.bind("VisualScriptFunctionCall", "get_validate");
		return ptrcall!(bool)(_GODOT_get_validate, _godot_object);
	}
	/**
	
	*/
	@property VisualScriptFunctionCall.CallMode callMode()
	{
		return getCallMode();
	}
	/// ditto
	@property void callMode(long v)
	{
		setCallMode(v);
	}
	/**
	
	*/
	@property String baseType()
	{
		return getBaseType();
	}
	/// ditto
	@property void baseType(String v)
	{
		setBaseType(v);
	}
	/**
	
	*/
	@property String baseScript()
	{
		return getBaseScript();
	}
	/// ditto
	@property void baseScript(String v)
	{
		setBaseScript(v);
	}
	/**
	
	*/
	@property String singleton()
	{
		return getSingleton();
	}
	/// ditto
	@property void singleton(String v)
	{
		setSingleton(v);
	}
	/**
	
	*/
	@property Variant.Type basicType()
	{
		return getBasicType();
	}
	/// ditto
	@property void basicType(long v)
	{
		setBasicType(v);
	}
	/**
	
	*/
	@property NodePath nodePath()
	{
		return getBasePath();
	}
	/// ditto
	@property void nodePath(NodePath v)
	{
		setBasePath(v);
	}
	/**
	
	*/
	@property Dictionary argumentCache()
	{
		return _getArgumentCache();
	}
	/// ditto
	@property void argumentCache(Dictionary v)
	{
		_setArgumentCache(v);
	}
	/**
	
	*/
	@property String _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(String v)
	{
		setFunction(v);
	}
	/**
	
	*/
	@property long useDefaultArgs()
	{
		return getUseDefaultArgs();
	}
	/// ditto
	@property void useDefaultArgs(long v)
	{
		setUseDefaultArgs(v);
	}
	/**
	
	*/
	@property bool validate()
	{
		return getValidate();
	}
	/// ditto
	@property void validate(bool v)
	{
		setValidate(v);
	}
	/**
	
	*/
	@property VisualScriptFunctionCall.RPCCallMode rpcCallMode()
	{
		return getRpcCallMode();
	}
	/// ditto
	@property void rpcCallMode(long v)
	{
		setRpcCallMode(v);
	}
}
