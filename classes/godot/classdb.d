/**
Class information repository.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.classdb;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Class information repository.

Provides access to metadata stored for every available class.
*/
@GodotBaseClass struct ClassDBSingleton
{
	static immutable string _GODOT_internal_name = "_ClassDB";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "ClassDB";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ClassDBSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ClassDBSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ClassDBSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_ClassDB");
		if(constructor is null) return typeof(this).init;
		return cast(ClassDBSingleton)(constructor());
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_class_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_class_list") = _GODOT_get_class_list;
	/**
	Returns the names of all the classes available.
	*/
	PoolStringArray getClassList() const
	{
		_GODOT_get_class_list.bind("_ClassDB", "get_class_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_class_list, _godot_object);
	}
	package(godot) static GodotMethod!(PoolStringArray, String) _GODOT_get_inheriters_from_class;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_inheriters_from_class") = _GODOT_get_inheriters_from_class;
	/**
	Returns the names of all the classes that directly or indirectly inherit from 'class'.
	*/
	PoolStringArray getInheritersFromClass(StringArg0)(in StringArg0 _class) const
	{
		_GODOT_get_inheriters_from_class.bind("_ClassDB", "get_inheriters_from_class");
		return ptrcall!(PoolStringArray)(_GODOT_get_inheriters_from_class, _godot_object, _class);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_parent_class;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_parent_class") = _GODOT_get_parent_class;
	/**
	Returns the parent class of 'class'.
	*/
	String getParentClass(StringArg0)(in StringArg0 _class) const
	{
		_GODOT_get_parent_class.bind("_ClassDB", "get_parent_class");
		return ptrcall!(String)(_GODOT_get_parent_class, _godot_object, _class);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_class_exists;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_exists") = _GODOT_class_exists;
	/**
	Returns whether the specified 'class' is available or not.
	*/
	bool classExists(StringArg0)(in StringArg0 _class) const
	{
		_GODOT_class_exists.bind("_ClassDB", "class_exists");
		return ptrcall!(bool)(_GODOT_class_exists, _godot_object, _class);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_is_parent_class;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_parent_class") = _GODOT_is_parent_class;
	/**
	Returns whether 'inherits' is an ancestor of 'class' or not.
	*/
	bool isParentClass(StringArg0, StringArg1)(in StringArg0 _class, in StringArg1 inherits) const
	{
		_GODOT_is_parent_class.bind("_ClassDB", "is_parent_class");
		return ptrcall!(bool)(_GODOT_is_parent_class, _godot_object, _class, inherits);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_can_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_instance") = _GODOT_can_instance;
	/**
	Returns true if you can instance objects from the specified 'class', false in other case.
	*/
	bool canInstance(StringArg0)(in StringArg0 _class) const
	{
		_GODOT_can_instance.bind("_ClassDB", "can_instance");
		return ptrcall!(bool)(_GODOT_can_instance, _godot_object, _class);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance") = _GODOT_instance;
	/**
	Creates an instance of 'class'.
	*/
	Variant instance(StringArg0)(in StringArg0 _class) const
	{
		_GODOT_instance.bind("_ClassDB", "instance");
		return ptrcall!(Variant)(_GODOT_instance, _godot_object, _class);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_class_has_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_has_signal") = _GODOT_class_has_signal;
	/**
	Return whether 'class' or its ancestry has a signal called 'signal' or not.
	*/
	bool classHasSignal(StringArg0, StringArg1)(in StringArg0 _class, in StringArg1 signal) const
	{
		_GODOT_class_has_signal.bind("_ClassDB", "class_has_signal");
		return ptrcall!(bool)(_GODOT_class_has_signal, _godot_object, _class, signal);
	}
	package(godot) static GodotMethod!(Dictionary, String, String) _GODOT_class_get_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_get_signal") = _GODOT_class_get_signal;
	/**
	Returns the 'signal' data of 'class' or its ancestry. The returned value is a $(D Dictionary) with the following keys: args, default_args, flags, id, name, return: (class_name, hint, hint_string, name, type, usage).
	*/
	Dictionary classGetSignal(StringArg0, StringArg1)(in StringArg0 _class, in StringArg1 signal) const
	{
		_GODOT_class_get_signal.bind("_ClassDB", "class_get_signal");
		return ptrcall!(Dictionary)(_GODOT_class_get_signal, _godot_object, _class, signal);
	}
	package(godot) static GodotMethod!(Array, String, bool) _GODOT_class_get_signal_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_get_signal_list") = _GODOT_class_get_signal_list;
	/**
	Returns an array with all the signals of 'class' or its ancestry if 'no_inheritance' is false. Every element of the array is a $(D Dictionary) as described in $(D class_get_signal).
	*/
	Array classGetSignalList(StringArg0)(in StringArg0 _class, in bool no_inheritance = false) const
	{
		_GODOT_class_get_signal_list.bind("_ClassDB", "class_get_signal_list");
		return ptrcall!(Array)(_GODOT_class_get_signal_list, _godot_object, _class, no_inheritance);
	}
	package(godot) static GodotMethod!(Array, String, bool) _GODOT_class_get_property_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_get_property_list") = _GODOT_class_get_property_list;
	/**
	Returns an array with all the properties of 'class' or its ancestry if 'no_inheritance' is false.
	*/
	Array classGetPropertyList(StringArg0)(in StringArg0 _class, in bool no_inheritance = false) const
	{
		_GODOT_class_get_property_list.bind("_ClassDB", "class_get_property_list");
		return ptrcall!(Array)(_GODOT_class_get_property_list, _godot_object, _class, no_inheritance);
	}
	package(godot) static GodotMethod!(Variant, GodotObject, String) _GODOT_class_get_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_get_property") = _GODOT_class_get_property;
	/**
	Returns the value of 'property' of 'class' or its ancestry.
	*/
	Variant classGetProperty(StringArg1)(GodotObject object, in StringArg1 property) const
	{
		_GODOT_class_get_property.bind("_ClassDB", "class_get_property");
		return ptrcall!(Variant)(_GODOT_class_get_property, _godot_object, object, property);
	}
	package(godot) static GodotMethod!(GodotError, GodotObject, String, Variant) _GODOT_class_set_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_set_property") = _GODOT_class_set_property;
	/**
	Sets 'property' value of 'class' to 'value'.
	*/
	GodotError classSetProperty(StringArg1, VariantArg2)(GodotObject object, in StringArg1 property, in VariantArg2 value) const
	{
		_GODOT_class_set_property.bind("_ClassDB", "class_set_property");
		return ptrcall!(GodotError)(_GODOT_class_set_property, _godot_object, object, property, value);
	}
	package(godot) static GodotMethod!(bool, String, String, bool) _GODOT_class_has_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_has_method") = _GODOT_class_has_method;
	/**
	Return whether 'class' (or its ancestry if 'no_inheritance' is false) has a method called 'method' or not.
	*/
	bool classHasMethod(StringArg0, StringArg1)(in StringArg0 _class, in StringArg1 method, in bool no_inheritance = false) const
	{
		_GODOT_class_has_method.bind("_ClassDB", "class_has_method");
		return ptrcall!(bool)(_GODOT_class_has_method, _godot_object, _class, method, no_inheritance);
	}
	package(godot) static GodotMethod!(Array, String, bool) _GODOT_class_get_method_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_get_method_list") = _GODOT_class_get_method_list;
	/**
	Returns an array with all the methods of 'class' or its ancestry if 'no_inheritance' is false. Every element of the array is a $(D Dictionary) with the following keys: args, default_args, flags, id, name, return: (class_name, hint, hint_string, name, type, usage).
	*/
	Array classGetMethodList(StringArg0)(in StringArg0 _class, in bool no_inheritance = false) const
	{
		_GODOT_class_get_method_list.bind("_ClassDB", "class_get_method_list");
		return ptrcall!(Array)(_GODOT_class_get_method_list, _godot_object, _class, no_inheritance);
	}
	package(godot) static GodotMethod!(PoolStringArray, String, bool) _GODOT_class_get_integer_constant_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_get_integer_constant_list") = _GODOT_class_get_integer_constant_list;
	/**
	Returns an array with the names all the integer constants of 'class' or its ancestry.
	*/
	PoolStringArray classGetIntegerConstantList(StringArg0)(in StringArg0 _class, in bool no_inheritance = false) const
	{
		_GODOT_class_get_integer_constant_list.bind("_ClassDB", "class_get_integer_constant_list");
		return ptrcall!(PoolStringArray)(_GODOT_class_get_integer_constant_list, _godot_object, _class, no_inheritance);
	}
	package(godot) static GodotMethod!(bool, String, String) _GODOT_class_has_integer_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_has_integer_constant") = _GODOT_class_has_integer_constant;
	/**
	Return whether 'class' or its ancestry has an integer constant called 'name' or not.
	*/
	bool classHasIntegerConstant(StringArg0, StringArg1)(in StringArg0 _class, in StringArg1 name) const
	{
		_GODOT_class_has_integer_constant.bind("_ClassDB", "class_has_integer_constant");
		return ptrcall!(bool)(_GODOT_class_has_integer_constant, _godot_object, _class, name);
	}
	package(godot) static GodotMethod!(long, String, String) _GODOT_class_get_integer_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_get_integer_constant") = _GODOT_class_get_integer_constant;
	/**
	Returns the value of the integer constant 'name' of 'class' or its ancestry. Always returns 0 when the constant could not be found.
	*/
	long classGetIntegerConstant(StringArg0, StringArg1)(in StringArg0 _class, in StringArg1 name) const
	{
		_GODOT_class_get_integer_constant.bind("_ClassDB", "class_get_integer_constant");
		return ptrcall!(long)(_GODOT_class_get_integer_constant, _godot_object, _class, name);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_class_get_category;
	package(godot) alias _GODOT_methodBindInfo(string name : "class_get_category") = _GODOT_class_get_category;
	/**
	Returns a category associated with the class for use in documentation and the Asset Library. Debug mode required.
	*/
	String classGetCategory(StringArg0)(in StringArg0 _class) const
	{
		_GODOT_class_get_category.bind("_ClassDB", "class_get_category");
		return ptrcall!(String)(_GODOT_class_get_category, _godot_object, _class);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_class_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_class_enabled") = _GODOT_is_class_enabled;
	/**
	Returns whether this class is enabled or not.
	*/
	bool isClassEnabled(StringArg0)(in StringArg0 _class) const
	{
		_GODOT_is_class_enabled.bind("_ClassDB", "is_class_enabled");
		return ptrcall!(bool)(_GODOT_is_class_enabled, _godot_object, _class);
	}
}
/// Returns: the ClassDBSingleton
@property @nogc nothrow pragma(inline, true)
ClassDBSingleton ClassDB()
{
	return ClassDBSingleton._GODOT_singleton();
}
