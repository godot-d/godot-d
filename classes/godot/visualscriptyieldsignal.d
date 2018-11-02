/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptyieldsignal;
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
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualScriptYieldSignal
{
	enum string _GODOT_internal_name = "VisualScriptYieldSignal";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_base_type") GodotMethod!(void, String) setBaseType;
		@GodotName("get_base_type") GodotMethod!(String) getBaseType;
		@GodotName("set_signal") GodotMethod!(void, String) setSignal;
		@GodotName("get_signal") GodotMethod!(String) getSignal;
		@GodotName("set_call_mode") GodotMethod!(void, long) setCallMode;
		@GodotName("get_call_mode") GodotMethod!(VisualScriptYieldSignal.CallMode) getCallMode;
		@GodotName("set_base_path") GodotMethod!(void, NodePath) setBasePath;
		@GodotName("get_base_path") GodotMethod!(NodePath) getBasePath;
	}
	bool opEquals(in VisualScriptYieldSignal other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptYieldSignal opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptYieldSignal _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptYieldSignal");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptYieldSignal)(constructor());
	}
	@disable new(size_t s);
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
	}
	/// 
	enum Constants : int
	{
		callModeSelf = 0,
		callModeNodePath = 1,
		callModeInstance = 2,
	}
	/**
	
	*/
	void setBaseType(StringArg0)(in StringArg0 base_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBaseType, _godot_object, base_type);
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
	void setSignal(StringArg0)(in StringArg0 signal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSignal, _godot_object, signal);
	}
	/**
	
	*/
	String getSignal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSignal, _godot_object);
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
	VisualScriptYieldSignal.CallMode getCallMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptYieldSignal.CallMode)(_classBinding.getCallMode, _godot_object);
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
	NodePath getBasePath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getBasePath, _godot_object);
	}
	/**
	
	*/
	@property VisualScriptYieldSignal.CallMode callMode()
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
	@property String signal()
	{
		return getSignal();
	}
	/// ditto
	@property void signal(String v)
	{
		setSignal(v);
	}
}
