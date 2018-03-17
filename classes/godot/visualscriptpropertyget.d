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
/**

*/
@GodotBaseClass struct VisualScriptPropertyGet
{
	static immutable string _GODOT_internal_name = "VisualScriptPropertyGet";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_type") = _GODOT_set_base_type;
	/**
	
	*/
	void setBaseType(StringArg0)(in StringArg0 base_type)
	{
		_GODOT_set_base_type.bind("VisualScriptPropertyGet", "set_base_type");
		ptrcall!(void)(_GODOT_set_base_type, _godot_object, base_type);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_type") = _GODOT_get_base_type;
	/**
	
	*/
	String getBaseType() const
	{
		_GODOT_get_base_type.bind("VisualScriptPropertyGet", "get_base_type");
		return ptrcall!(String)(_GODOT_get_base_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_script") = _GODOT_set_base_script;
	/**
	
	*/
	void setBaseScript(StringArg0)(in StringArg0 base_script)
	{
		_GODOT_set_base_script.bind("VisualScriptPropertyGet", "set_base_script");
		ptrcall!(void)(_GODOT_set_base_script, _godot_object, base_script);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_base_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_script") = _GODOT_get_base_script;
	/**
	
	*/
	String getBaseScript() const
	{
		_GODOT_get_base_script.bind("VisualScriptPropertyGet", "get_base_script");
		return ptrcall!(String)(_GODOT_get_base_script, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_basic_type") = _GODOT_set_basic_type;
	/**
	
	*/
	void setBasicType(in long basic_type)
	{
		_GODOT_set_basic_type.bind("VisualScriptPropertyGet", "set_basic_type");
		ptrcall!(void)(_GODOT_set_basic_type, _godot_object, basic_type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_basic_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_basic_type") = _GODOT_get_basic_type;
	/**
	
	*/
	Variant.Type getBasicType() const
	{
		_GODOT_get_basic_type.bind("VisualScriptPropertyGet", "get_basic_type");
		return ptrcall!(Variant.Type)(_GODOT_get_basic_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__set_type_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_type_cache") = _GODOT__set_type_cache;
	/**
	
	*/
	void _setTypeCache(in long type_cache)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(type_cache);
		String _GODOT_method_name = String("_set_type_cache");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT__get_type_cache;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_type_cache") = _GODOT__get_type_cache;
	/**
	
	*/
	Variant.Type _getTypeCache() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_type_cache");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Variant.Type);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_property") = _GODOT_set_property;
	/**
	
	*/
	void setProperty(StringArg0)(in StringArg0 property)
	{
		_GODOT_set_property.bind("VisualScriptPropertyGet", "set_property");
		ptrcall!(void)(_GODOT_set_property, _godot_object, property);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_property") = _GODOT_get_property;
	/**
	
	*/
	String getProperty() const
	{
		_GODOT_get_property.bind("VisualScriptPropertyGet", "get_property");
		return ptrcall!(String)(_GODOT_get_property, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_call_mode") = _GODOT_set_call_mode;
	/**
	
	*/
	void setCallMode(in long mode)
	{
		_GODOT_set_call_mode.bind("VisualScriptPropertyGet", "set_call_mode");
		ptrcall!(void)(_GODOT_set_call_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(VisualScriptPropertyGet.CallMode) _GODOT_get_call_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_call_mode") = _GODOT_get_call_mode;
	/**
	
	*/
	VisualScriptPropertyGet.CallMode getCallMode() const
	{
		_GODOT_get_call_mode.bind("VisualScriptPropertyGet", "get_call_mode");
		return ptrcall!(VisualScriptPropertyGet.CallMode)(_GODOT_get_call_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath) _GODOT_set_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_base_path") = _GODOT_set_base_path;
	/**
	
	*/
	void setBasePath(NodePathArg0)(in NodePathArg0 base_path)
	{
		_GODOT_set_base_path.bind("VisualScriptPropertyGet", "set_base_path");
		ptrcall!(void)(_GODOT_set_base_path, _godot_object, base_path);
	}
	package(godot) static GodotMethod!(NodePath) _GODOT_get_base_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_base_path") = _GODOT_get_base_path;
	/**
	
	*/
	NodePath getBasePath() const
	{
		_GODOT_get_base_path.bind("VisualScriptPropertyGet", "get_base_path");
		return ptrcall!(NodePath)(_GODOT_get_base_path, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_index") = _GODOT_set_index;
	/**
	
	*/
	void setIndex(StringArg0)(in StringArg0 index)
	{
		_GODOT_set_index.bind("VisualScriptPropertyGet", "set_index");
		ptrcall!(void)(_GODOT_set_index, _godot_object, index);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_index") = _GODOT_get_index;
	/**
	
	*/
	String getIndex() const
	{
		_GODOT_get_index.bind("VisualScriptPropertyGet", "get_index");
		return ptrcall!(String)(_GODOT_get_index, _godot_object);
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
