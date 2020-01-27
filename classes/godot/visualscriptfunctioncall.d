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
	enum string _GODOT_internal_name = "VisualScriptFunctionCall";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_get_argument_cache") GodotMethod!(Dictionary) _getArgumentCache;
		@GodotName("_set_argument_cache") GodotMethod!(void, Dictionary) _setArgumentCache;
		@GodotName("get_base_path") GodotMethod!(NodePath) getBasePath;
		@GodotName("get_base_script") GodotMethod!(String) getBaseScript;
		@GodotName("get_base_type") GodotMethod!(String) getBaseType;
		@GodotName("get_basic_type") GodotMethod!(Variant.Type) getBasicType;
		@GodotName("get_call_mode") GodotMethod!(VisualScriptFunctionCall.CallMode) getCallMode;
		@GodotName("get_function") GodotMethod!(String) getFunction;
		@GodotName("get_rpc_call_mode") GodotMethod!(VisualScriptFunctionCall.RPCCallMode) getRpcCallMode;
		@GodotName("get_singleton") GodotMethod!(String) getSingleton;
		@GodotName("get_use_default_args") GodotMethod!(long) getUseDefaultArgs;
		@GodotName("get_validate") GodotMethod!(bool) getValidate;
		@GodotName("set_base_path") GodotMethod!(void, NodePath) setBasePath;
		@GodotName("set_base_script") GodotMethod!(void, String) setBaseScript;
		@GodotName("set_base_type") GodotMethod!(void, String) setBaseType;
		@GodotName("set_basic_type") GodotMethod!(void, long) setBasicType;
		@GodotName("set_call_mode") GodotMethod!(void, long) setCallMode;
		@GodotName("set_function") GodotMethod!(void, String) setFunction;
		@GodotName("set_rpc_call_mode") GodotMethod!(void, long) setRpcCallMode;
		@GodotName("set_singleton") GodotMethod!(void, String) setSingleton;
		@GodotName("set_use_default_args") GodotMethod!(void, long) setUseDefaultArgs;
		@GodotName("set_validate") GodotMethod!(void, bool) setValidate;
	}
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
		rpcUnreliable = 2,
		callModeInstance = 2,
		callModeBasicType = 3,
		rpcReliableToId = 3,
		callModeSingleton = 4,
		rpcUnreliableToId = 4,
	}
	/**
	
	*/
	Dictionary _getArgumentCache() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_argument_cache");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	void _setArgumentCache(in Dictionary argument_cache)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(argument_cache);
		String _GODOT_method_name = String("_set_argument_cache");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	NodePath getBasePath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getBasePath, _godot_object);
	}
	/**
	
	*/
	String getBaseScript() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBaseScript, _godot_object);
	}
	/**
	
	*/
	String getBaseType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBaseType, _godot_object);
	}
	/**
	
	*/
	Variant.Type getBasicType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(_classBinding.getBasicType, _godot_object);
	}
	/**
	
	*/
	VisualScriptFunctionCall.CallMode getCallMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptFunctionCall.CallMode)(_classBinding.getCallMode, _godot_object);
	}
	/**
	
	*/
	String getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	VisualScriptFunctionCall.RPCCallMode getRpcCallMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptFunctionCall.RPCCallMode)(_classBinding.getRpcCallMode, _godot_object);
	}
	/**
	
	*/
	String getSingleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSingleton, _godot_object);
	}
	/**
	
	*/
	long getUseDefaultArgs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getUseDefaultArgs, _godot_object);
	}
	/**
	
	*/
	bool getValidate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getValidate, _godot_object);
	}
	/**
	
	*/
	void setBasePath(NodePathArg0)(in NodePathArg0 base_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBasePath, _godot_object, base_path);
	}
	/**
	
	*/
	void setBaseScript(in String base_script)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBaseScript, _godot_object, base_script);
	}
	/**
	
	*/
	void setBaseType(in String base_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBaseType, _godot_object, base_type);
	}
	/**
	
	*/
	void setBasicType(in long basic_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBasicType, _godot_object, basic_type);
	}
	/**
	
	*/
	void setCallMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCallMode, _godot_object, mode);
	}
	/**
	
	*/
	void setFunction(in String _function)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFunction, _godot_object, _function);
	}
	/**
	
	*/
	void setRpcCallMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRpcCallMode, _godot_object, mode);
	}
	/**
	
	*/
	void setSingleton(in String singleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSingleton, _godot_object, singleton);
	}
	/**
	
	*/
	void setUseDefaultArgs(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseDefaultArgs, _godot_object, amount);
	}
	/**
	
	*/
	void setValidate(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setValidate, _godot_object, enable);
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
	@property VisualScriptFunctionCall.RPCCallMode rpcCallMode()
	{
		return getRpcCallMode();
	}
	/// ditto
	@property void rpcCallMode(long v)
	{
		setRpcCallMode(v);
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
}
