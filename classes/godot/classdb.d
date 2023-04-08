/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.classdb;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
/**

*/
@GodotBaseClass struct ClassDBSingleton
{
	package(godot) enum string _GODOT_internal_name = "_ClassDB";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "ClassDB";
		@GodotName("can_instance") GodotMethod!(bool, String) canInstance;
		@GodotName("class_exists") GodotMethod!(bool, String) classExists;
		@GodotName("class_get_category") GodotMethod!(String, String) classGetCategory;
		@GodotName("class_get_enum_constants") GodotMethod!(PoolStringArray, String, String, bool) classGetEnumConstants;
		@GodotName("class_get_enum_list") GodotMethod!(PoolStringArray, String, bool) classGetEnumList;
		@GodotName("class_get_integer_constant") GodotMethod!(long, String, String) classGetIntegerConstant;
		@GodotName("class_get_integer_constant_enum") GodotMethod!(String, String, String, bool) classGetIntegerConstantEnum;
		@GodotName("class_get_integer_constant_list") GodotMethod!(PoolStringArray, String, bool) classGetIntegerConstantList;
		@GodotName("class_get_method_list") GodotMethod!(Array, String, bool) classGetMethodList;
		@GodotName("class_get_property") GodotMethod!(Variant, GodotObject, String) classGetProperty;
		@GodotName("class_get_property_list") GodotMethod!(Array, String, bool) classGetPropertyList;
		@GodotName("class_get_signal") GodotMethod!(Dictionary, String, String) classGetSignal;
		@GodotName("class_get_signal_list") GodotMethod!(Array, String, bool) classGetSignalList;
		@GodotName("class_has_enum") GodotMethod!(bool, String, String, bool) classHasEnum;
		@GodotName("class_has_integer_constant") GodotMethod!(bool, String, String) classHasIntegerConstant;
		@GodotName("class_has_method") GodotMethod!(bool, String, String, bool) classHasMethod;
		@GodotName("class_has_signal") GodotMethod!(bool, String, String) classHasSignal;
		@GodotName("class_set_property") GodotMethod!(GodotError, GodotObject, String, Variant) classSetProperty;
		@GodotName("get_class_list") GodotMethod!(PoolStringArray) getClassList;
		@GodotName("get_inheriters_from_class") GodotMethod!(PoolStringArray, String) getInheritersFromClass;
		@GodotName("get_parent_class") GodotMethod!(String, String) getParentClass;
		@GodotName("instance") GodotMethod!(Variant, String) instance;
		@GodotName("is_class_enabled") GodotMethod!(bool, String) isClassEnabled;
		@GodotName("is_parent_class") GodotMethod!(bool, String, String) isParentClass;
	}
	/// 
	pragma(inline, true) bool opEquals(in ClassDBSingleton other) const
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
	/// Construct a new instance of ClassDBSingleton.
	/// Note: use `memnew!ClassDBSingleton` instead.
	static ClassDBSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_ClassDB");
		if(constructor is null) return typeof(this).init;
		return cast(ClassDBSingleton)(constructor());
	}
	/**
	
	*/
	bool canInstance(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canInstance, _godot_object, _class);
	}
	/**
	
	*/
	bool classExists(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.classExists, _godot_object, _class);
	}
	/**
	
	*/
	String classGetCategory(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.classGetCategory, _godot_object, _class);
	}
	/**
	
	*/
	PoolStringArray classGetEnumConstants(in String _class, in String _enum, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.classGetEnumConstants, _godot_object, _class, _enum, no_inheritance);
	}
	/**
	
	*/
	PoolStringArray classGetEnumList(in String _class, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.classGetEnumList, _godot_object, _class, no_inheritance);
	}
	/**
	
	*/
	long classGetIntegerConstant(in String _class, in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.classGetIntegerConstant, _godot_object, _class, name);
	}
	/**
	
	*/
	String classGetIntegerConstantEnum(in String _class, in String name, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.classGetIntegerConstantEnum, _godot_object, _class, name, no_inheritance);
	}
	/**
	
	*/
	PoolStringArray classGetIntegerConstantList(in String _class, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.classGetIntegerConstantList, _godot_object, _class, no_inheritance);
	}
	/**
	
	*/
	Array classGetMethodList(in String _class, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.classGetMethodList, _godot_object, _class, no_inheritance);
	}
	/**
	
	*/
	Variant classGetProperty(GodotObject object, in String property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.classGetProperty, _godot_object, object, property);
	}
	/**
	
	*/
	Array classGetPropertyList(in String _class, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.classGetPropertyList, _godot_object, _class, no_inheritance);
	}
	/**
	
	*/
	Dictionary classGetSignal(in String _class, in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.classGetSignal, _godot_object, _class, signal);
	}
	/**
	
	*/
	Array classGetSignalList(in String _class, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.classGetSignalList, _godot_object, _class, no_inheritance);
	}
	/**
	
	*/
	bool classHasEnum(in String _class, in String name, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.classHasEnum, _godot_object, _class, name, no_inheritance);
	}
	/**
	
	*/
	bool classHasIntegerConstant(in String _class, in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.classHasIntegerConstant, _godot_object, _class, name);
	}
	/**
	
	*/
	bool classHasMethod(in String _class, in String method, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.classHasMethod, _godot_object, _class, method, no_inheritance);
	}
	/**
	
	*/
	bool classHasSignal(in String _class, in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.classHasSignal, _godot_object, _class, signal);
	}
	/**
	
	*/
	GodotError classSetProperty(VariantArg2)(GodotObject object, in String property, in VariantArg2 value) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.classSetProperty, _godot_object, object, property, value);
	}
	/**
	
	*/
	PoolStringArray getClassList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getClassList, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getInheritersFromClass(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getInheritersFromClass, _godot_object, _class);
	}
	/**
	
	*/
	String getParentClass(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getParentClass, _godot_object, _class);
	}
	/**
	
	*/
	Variant instance(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.instance, _godot_object, _class);
	}
	/**
	
	*/
	bool isClassEnabled(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClassEnabled, _godot_object, _class);
	}
	/**
	
	*/
	bool isParentClass(in String _class, in String inherits) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isParentClass, _godot_object, _class, inherits);
	}
}
/// Returns: the ClassDBSingleton
@property @nogc nothrow pragma(inline, true)
ClassDBSingleton ClassDB()
{
	checkClassBinding!ClassDBSingleton();
	return ClassDBSingleton(ClassDBSingleton.GDNativeClassBinding._singleton);
}
