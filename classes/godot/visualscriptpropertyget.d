/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptpropertyget;
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
@GodotBaseClass struct VisualScriptPropertyGet
{
	enum string _GODOT_internal_name = "VisualScriptPropertyGet";
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
		@GodotName("set_base_script") GodotMethod!(void, String) setBaseScript;
		@GodotName("get_base_script") GodotMethod!(String) getBaseScript;
		@GodotName("set_basic_type") GodotMethod!(void, long) setBasicType;
		@GodotName("get_basic_type") GodotMethod!(Variant.Type) getBasicType;
		@GodotName("_set_type_cache") GodotMethod!(void, long) _setTypeCache;
		@GodotName("_get_type_cache") GodotMethod!(Variant.Type) _getTypeCache;
		@GodotName("set_property") GodotMethod!(void, String) setProperty;
		@GodotName("get_property") GodotMethod!(String) getProperty;
		@GodotName("set_call_mode") GodotMethod!(void, long) setCallMode;
		@GodotName("get_call_mode") GodotMethod!(VisualScriptPropertyGet.CallMode) getCallMode;
		@GodotName("set_base_path") GodotMethod!(void, NodePath) setBasePath;
		@GodotName("get_base_path") GodotMethod!(NodePath) getBasePath;
		@GodotName("set_index") GodotMethod!(void, String) setIndex;
		@GodotName("get_index") GodotMethod!(String) getIndex;
	}
	bool opEquals(in VisualScriptPropertyGet other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptPropertyGet opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptPropertyGet _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptPropertyGet");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptPropertyGet)(constructor());
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
	void setBaseScript(StringArg0)(in StringArg0 base_script)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBaseScript, _godot_object, base_script);
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
	void setBasicType(in long basic_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBasicType, _godot_object, basic_type);
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
	void _setTypeCache(in long type_cache)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(type_cache);
		String _GODOT_method_name = String("_set_type_cache");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Variant.Type _getTypeCache() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_type_cache");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Variant.Type);
	}
	/**
	
	*/
	void setProperty(StringArg0)(in StringArg0 property)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProperty, _godot_object, property);
	}
	/**
	
	*/
	String getProperty() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getProperty, _godot_object);
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
	VisualScriptPropertyGet.CallMode getCallMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptPropertyGet.CallMode)(_classBinding.getCallMode, _godot_object);
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
	void setIndex(StringArg0)(in StringArg0 index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIndex, _godot_object, index);
	}
	/**
	
	*/
	String getIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getIndex, _godot_object);
	}
	/**
	
	*/
	@property VisualScriptPropertyGet.CallMode setMode()
	{
		return getCallMode();
	}
	/// ditto
	@property void setMode(long v)
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
	@property Variant.Type typeCache()
	{
		return _getTypeCache();
	}
	/// ditto
	@property void typeCache(long v)
	{
		_setTypeCache(v);
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
	@property String property()
	{
		return getProperty();
	}
	/// ditto
	@property void property(String v)
	{
		setProperty(v);
	}
	/**
	
	*/
	@property String index()
	{
		return getIndex();
	}
	/// ditto
	@property void index(String v)
	{
		setIndex(v);
	}
}
